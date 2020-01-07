<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use App\User;
use App\Globals;
use App\TaskHeader;
use App\TaskDetail;
use App\Sirkulasi;
use App\Helper\SirkulasiHelper;
use Auth;
use DB;
use Storage;

class PelaksanaController extends Controller
{
  public function create(){
    $data['page_menu'] = "Tambah data pelaksana";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['employee'] = $user->employee;
    $seksi_id = Employee::where('id',$user->employee->id)->first()->seksi_id;
    $data['user_approval'] = User::leftJoin('mst_employee','users.employee_id','=','mst_employee.id')->where('mst_employee.position_id',2)->where('mst_employee.seksi_id',$seksi_id)->pluck('users.name','users.id');

    $data['jenis_pekerjaan'] = Globals::where('condition','JenisPekerjaan')->pluck('description','code');
    $data['jenis_pekerjaan']->prepend('','');
    $data['status_pekerjaan'] = Globals::where('condition','StatusHeader')->pluck('description','code');
    $data['status_pekerjaan']->prepend('','');
    $data['status_detail'] = Globals::where('condition','StatusDetail')->pluck('description','code');
    $data['status_detail']->prepend('','');
    $data['progress_detail'] = Globals::where('condition','ProgressDetail')->pluck('description','code');
    $data['progress_detail']->prepend('','');

    return view('pelaksana.create',$data);
  }

  public function view($id){
    $data['page_menu'] = "View data";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['employee'] = $user->employee;
    $data['task_header'] = TaskHeader::findOrFail($id);
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    return view("pelaksana.view",$data);
  }

  public function edit($id){
    $data['page_menu'] = "Tambah data pelaksana";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['employee'] = $user->employee;
    $seksi_id = Employee::where('id',$user->employee->id)->first()->seksi_id;
    $employee_id = Employee::select('id')->where('position_id',2)->where('seksi_id',$seksi_id)->get();
    $sirkulasi = Sirkulasi::where('task_header_id',$id)->orderBy('id','desc')->first();
    $slot_aktif = $sirkulasi->slot_id;
    // check apakah kepala cabang berhak untuk edit atau tidak
    if($slot_aktif != $user->employee->position_id){
      return redirect('pelaksana/dashboard');
    }
    $data['user_approval'] = User::whereIn('employee_id',$employee_id)->pluck('name','id');
    $data['jenis_pekerjaan'] = Globals::where('condition','JenisPekerjaan')->pluck('description','code');
    $data['jenis_pekerjaan']->prepend('','');
    $data['status_pekerjaan'] = Globals::where('condition','StatusHeader')->pluck('description','code');
    $data['status_pekerjaan']->prepend('','');
    $data['status_detail'] = Globals::where('condition','StatusDetail')->pluck('description','code');
    $data['status_detail']->prepend('','');
    $data['progress_detail'] = Globals::where('condition','ProgressDetail')->pluck('description','code');
    $data['progress_detail']->prepend('','');
    $data['id'] = $id;
    $data['sirkulasi'] = Sirkulasi::where('task_header_id',$id)->get();
    return view('pelaksana.edit',$data);
  }

  public function getHeader($header_id){
    $task_header = TaskHeader::findOrFail($header_id);
    return response()->json($task_header);
  }

  public function getDetail($id){
    $task_detail = TaskDetail::where('task_header_id',$id)->get();
    return response()->json($task_detail);
  }

  public function save(Request $request){
    // return ['error'=>$request->status_id];
    DB::beginTransaction();
    try{
      $employee = Employee::findOrFail($request->employee_id);
      $user = User::where('employee_id',$employee->id)->first();
      $task_header = new TaskHeader();
      $task_header->employee_id = $employee->id;
      $task_header->cabang_id = $employee->cabang->id;
      $task_header->user_last_update_id = $user->id;
      $task_header->user_approval_id = $request->user_approval_id;
      $task_header->task_title = $request->task_title;
      $task_header->description = $request->description_header;
      $task_header->date_task = $request->date_task_submit;
      $task_header->status_id = $request->status_id;
      $task_header->save();
      $jml_task_detail = count($request->description);
      for($i = 0;$i < $jml_task_detail; $i++){
        if($request->end_time[$i]<$request->start_time[$i]){
            return ['error'=>'End time tidak boleh lebih kecil dari start time'];
        }
        $task_detail = new TaskDetail();
        $task_detail->task_header_id = $task_header->id;
        $task_detail->status_id = $request->detail_status_id[$i];
        $task_detail->detail_count = $i+1;
        $task_detail->description = $request->description[$i];
        $task_detail->task_type = $request->task_type[$i];
        $task_detail->start_time = $request->start_time[$i];
        $task_detail->end_time = $request->end_time[$i];
        $task_detail->progress = $request->progress[$i];
        $task_detail->remark = $request->remark[$i];
        if($request->hasFile('file.'.$i)){
          $file = $request->file('file')[$i];
          $originalName = $file->getClientOriginalName();
          $path = $file->storeAs('public/files/'.$task_header->id,$originalName);
          $task_detail->file = $path;
        }
        $task_detail->save();
      }

      // $sirkulasi = new Sirkulasi();
      // $sirkulasi->task_header_id = $task_header->id,
      // $sirkulasi->slot_id = 2;
      // $sirkulasi->status = '';
      // $sirkulasi->user_last_update_id = $user->id;
      // $sirkulasi->remark = '';
      // $sirkulasi->save();
      $slot_id = 2;
      $status = '';
      $user_last_update_id = $user->id;
      $remark = '';
      SirkulasiHelper::teruskan($task_header->id,$slot_id,$status,$user_last_update_id,$remark);

      DB::commit();
      return ['pesan'=>'Berhasil simpan dan akan diteruskan ke Kepala Seksi','url'=>url('pelaksana/dashboard')];
    }catch(\Exception $e){
      DB::rollback();
      return ['error'=>$e->getMessage()];
    }
  }

  public function update(Request $request,$id){

    DB::beginTransaction();
    try{
      $employee = Employee::findOrFail($request->employee_id);
      $user = User::where('employee_id',$employee->id)->first();
      $task_header = TaskHeader::findOrFail($id);
      $task_header->employee_id = $employee->id;
      $task_header->cabang_id = $employee->cabang->id;
      $task_header->user_last_update_id = $user->id;
      $task_header->user_approval_id = $request->user_approval_id;
      $task_header->task_title = $request->task_title;
      $task_header->description = $request->description_header;
      $task_header->date_task = $request->date_task;
      $task_header->status_id = $request->status_id;
      $task_header->save();
      $jml_task_detail = count($request->description);
      TaskDetail::where('task_header_id',$id)->delete();
      for($i = 0;$i < $jml_task_detail; $i++){
        if($request->end_time[$i]<$request->start_time[$i]){
            return ['error'=>'End time tidak boleh lebih kecil dari start time'];
        }
        $task_detail = new TaskDetail();
        $task_detail->task_header_id = $task_header->id;
        $task_detail->status_id = $request->detail_status_id[$i];
        $task_detail->detail_count = $i+1;
        $task_detail->description = $request->description[$i];
        $task_detail->task_type = $request->task_type[$i];
        $task_detail->start_time = $request->start_time[$i];
        $task_detail->end_time = $request->end_time[$i];
        $task_detail->progress = $request->progress[$i];
        $task_detail->remark = $request->remark[$i];
        if($request->hasFile('file.'.$i)){
          // throw new \Exception($request->file('file')[$i]->getSize());
          $file = $request->file('file')[$i];
          $originalName = $file->getClientOriginalName();
          $path = $file->storeAs('public/files/'.$task_header->id,$originalName);
          $task_detail->file = $path;
        }
        $task_detail->save();
      }

      // $sirkulasi = new Sirkulasi();
      // $sirkulasi->task_header_id = $task_header->id,
      // $sirkulasi->slot_id = 2;
      // $sirkulasi->status = '';
      // $sirkulasi->user_last_update_id = $user->id;
      // $sirkulasi->remark = '';
      // $sirkulasi->save();
      $slot_id = 2;
      $status = 'New';
      $user_last_update_id = $user->id;
      $remark = '';
      SirkulasiHelper::teruskan($task_header->id,$slot_id,$status,$user_last_update_id,$remark);

      DB::commit();
      return ['pesan'=>'Berhasil simpan dan akan diteruskan ke Kepala Seksi','url'=>url('pelaksana/dashboard')];
    }catch(\Exception $e){
      DB::rollback();
      return ['error'=>$e->getMessage()];
    }
  }
}
