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
use Auth;
use DB;

class KepalaCabangController extends Controller
{
  public function create(Request $request){
    $data['page_menu'] = "Tambah data Kepala Cabang";
    $data['user'] = Auth::user();
    return view('kepala.create',$data);
  }

  public function view($id){
    $data['page_menu'] = "View data";
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->email)->first();
    $data['employee'] = $user->employee;
    $data['task_header'] = TaskHeader::findOrFail($id);
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    return view("kepala.view",$data);
  }

  public function edit($id){
    $data['page_menu'] = "Update data";
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->email)->first();
    $data['employee'] = $user->employee;
    $cabang_id = Employee::where('id',$user->employee->id)->first()->cabang_id;
    $data['task_header'] = TaskHeader::findOrFail($id);
    $sirkulasi = Sirkulasi::where('task_header_id',$id)->orderBy('id','desc')->first();
    $slot_aktif = $sirkulasi->slot_id;
    $data['last_sirkulasi'] = $sirkulasi;
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    // check apakah kepala cabang berhak untuk edit atau tidak
    if($slot_aktif != $user->employee->position_id){
      return redirect('kepala-cabang/dashboard');
    }
    $data['final'] = true;
    return view("kepala.edit",$data);
  }

  public function update(Request $request,$id){
    $data['user'] = Auth::user();
    $user = User::where('email',$data['user']->email)->first();

    DB::beginTransaction();
    try{
      $task_header = TaskHeader::findOrFail($id);
      if($request->submit == 'teruskan'){
        $task_header->status_id = 3;
      }else if($request->submit == 'kembalikan'){
        $task_header->status_id = 2;
      }else{
        $task_header->status_id = 4;
      }
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
        $slot_id = 6; // next slot
        $posisi = Position::findOrFail($slot_id);
        $pesan = 'Approved!';
      }else if($request->submit == 'kembalikan'){
        $slot_id = 4; // previous slot
        $status = 'Declined';
        $posisi = Position::findOrFail($slot_id);
        $pesan = 'Berhasil dikembalikan ke '.$posisi->slot.'!';
      }else{
        $slot_id = 6;
        $status = 'Declined';
        $pesan = "Declined";
      }
      SirkulasiHelper::teruskan($id,$slot_id,$status,$user_last_update_id,$remark);
      DB::commit();
      return ['pesan'=>$pesan,'url'=>url('kepala-cabang/dashboard')];
    }catch(\Exception $e){
      DB::rollback();
      return ['error'=>$e->getMessage()];
    }

  }

    public function delete($id){

    }
}
