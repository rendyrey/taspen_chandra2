<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Employee;
use App\TaskHeader;
use App\TaskDetail;
use App\Position;
use App\Sirkulasi;
use App\Helper\SirkulasiHelper;
use DB;
use Auth;

class WakilKepalaCabangController extends Controller
{

  public function create(Request $request){
    $data['page_menu'] = "Tambah data Wakil Kepala Cabang";
    $data['user'] = Auth::user();
    return view('kepala.create',$data);
  }

  public function view($id){
    $data['page_menu'] = "View data";
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->username)->first();
    $data['employee'] = $user->employee;
    $data['task_header'] = TaskHeader::findOrFail($id);
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    return view("kepala.view",$data);
  }

  public function edit($id){
    $data['page_menu'] = "Update data";
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->username)->first();
    $data['employee'] = $user->employee;
    $cabang_id = Employee::where('id',$user->employee->id)->first()->cabang_id;
    $data['task_header'] = TaskHeader::findOrFail($id);
    $sirkulasi = Sirkulasi::where('task_header_id',$id)->orderBy('id','desc')->first();
    $slot_aktif = $sirkulasi->slot_id;
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    // check apakah wakil kepala cabang berhak untuk edit atau tidak
    if($slot_aktif != $user->employee->position_id){
      return redirect('wakil-kepala-cabang/dashboard');
    }
    return view("kepala.edit",$data);
  }

  public function update(Request $request,$id){
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->username)->first();

    DB::beginTransaction();
    try{
      $task_header = TaskHeader::findOrFail($id);
      $task_header->status_id = 2;
      $task_header->save();

      foreach($task_header->task_detail as $key=>$value){
        $detail = TaskDetail::findOrfail($value->id);
        $detail->status_id = $request->submit == 'teruskan' ? 1:2; // approve
        $detail->save();
      }

      $user_last_update_id = $user->id;
      $remark = $request->keterangan;
      if($request->submit == 'teruskan'){
        $status = 'Approved';
        $slot_id = 5; // next slot
        $posisi = Position::findOrFail($slot_id);
        $pesan = 'Berhasil diteruskan ke '.$posisi->slot.'!';
      }else{
        $status = 'Declined';
        $slot_id = 3; // previous slot
        $posisi = Position::findOrFail($slot_id);
        $pesan = 'Berhasil dikembalikan ke '.$posisi->slot.'!';
      }
      SirkulasiHelper::teruskan($id,$slot_id,$status,$user_last_update_id,$remark);
      DB::commit();
      return ['pesan'=>$pesan,'url'=>url('wakil-kepala-cabang/dashboard')];
    }catch(\Exception $e){
      DB::rollback();
      return ['error'=>$e->getMessage()];
    }

  }

  public function delete($id){

  }
}
