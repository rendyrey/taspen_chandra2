<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use DataTables;
use App\User;
use App\Seksi;
use App\Cabang;
use App\Kcu;
use App\Position;
use App\Bidang;
use Auth;
use DB;


class KaryawanController extends Controller
{

  public function get_all(){
    return DataTables::of(Employee::query()->orderBy('employee_name'))
    ->addIndexColumn()
    ->escapeColumns([])
    ->addColumn('posisi',function($value){
      return $value->position->slot;
    })
    ->addColumn('cabang',function($value){
      return $value->cabang->cabang;
    })
    ->addColumn('bidang',function($value){
      return $value->bidang->bidang;
    })
    ->addColumn('seksi',function($value){
      return $value->seksi->seksi;
    })
    ->addColumn('kcu',function($value){
      return $value->kcu->kcu;
    })
    ->addColumn('status',function($value){
      if($value->active){
        return 'Yes';
      }else{
        return 'No';
      }
    })
    ->addColumn('aksi',function($value){
      $text = "<a href='".url("administrator/karyawan/edit/$value->id")."'><button class='btn btn-sm btn-icon btn-primary'>Edit</button></a> ";
      $text .= "<form action='".url("administrator/karyawan/delete/$value->id")."' method='get' style='display:inline' id='delete_data$value->id'>";
      $text .= "<button type='button' class='delete btn btn-sm btn-icon btn-danger' onclick='delete_data($value->id)'>Delete</button>";
      $text .= "</form>";
      return $text;
    })->make(true);
  }

  public function create(){
    $data['page_menu'] = "Form Data Karyawan";
    $data['user'] = Auth::user();
    $data['seksi'] = Seksi::pluck('seksi','id');
    $data['bidang'] = Bidang::pluck('bidang','id');
    $data['cabang'] = Cabang::pluck('cabang','id');
    $data['kcu'] = Kcu::pluck('kcu','id');
    $data['position'] = Position::pluck('slot','id');
    $data['seksi']->prepend('','');
    $data['bidang']->prepend('','');
    $data['cabang']->prepend('','');
    $data['kcu']->prepend('','');
    $data['position']->prepend('','');
    return view("admin.karyawan.create",$data);
  }


  public function save(Request $request){
    if(User::where('email',$request->email)->exists()){
      return response()->json(['error'=>'Email sudah terdaftar']);
    }

    if($request->password != $request->password_confirm){
      return response()->json(['error'=>'Password tidak sama!']);
    }
    DB::beginTransaction();

    try{
      $employee = new Employee();
      $employee->employee_name = $request->employee_name;
      $employee->position_id = $request->position_id;
      $employee->seksi_id = $request->seksi_id;
      $employee->bidang_id = $request->bidang_id;
      $employee->kcu_id = $request->kcu_id;
      $employee->cabang_id = $request->cabang_id;
      $employee->active = $request->active ? 1:0;
      $employee->save();

      $user = new User();
      $user->name = $request->employee_name;
      $user->email = $request->email;
      $user->password = bcrypt($request->password);
      $user->role = str_replace(" ","-",strtolower($employee->position->slot));
      $user->active = $request->active ? 1:0;
      $user->employee_id = $employee->id;
      $user->save();
      // $user = new User();
      // $user->email = $request->email;
      DB::commit();
      return response()->json(['pesan'=>'Berhasil simpan karyawan!','url'=>url('administrator/karyawan')]);
    }catch(\Exception $e){
      DB::rollback();
      return response()->json(['error'=>$e->getMessage()]);
    }

  }

  public function edit($id){
    $data['page_menu'] = "Edit Data Karyawan";
    $data['karyawan'] = Employee::findOrFail($id);
    $data['user'] = Auth::user();
    $data['seksi'] = Seksi::where('bidang_id',$data['karyawan']->bidang_id)->pluck('seksi','id');
    $data['bidang'] = Bidang::pluck('bidang','id');
    $data['cabang'] = Cabang::pluck('cabang','id');
    $data['kcu'] = Kcu::pluck('kcu','id');
    $data['position'] = Position::pluck('slot','id');
    $data['seksi']->prepend('','');
    $data['bidang']->prepend('','');
    $data['cabang']->prepend('','');
    $data['kcu']->prepend('','');
    $data['position']->prepend('','');
    $data['user_account'] = User::where('employee_id',$id)->first();
    $data['id'] = $id;
    return view("admin.karyawan.edit",$data);

  }

  public function update(Request $request,$id){

    DB::beginTransaction();

    try{
      $employee = Employee::findOrFail($id);
      $employee->employee_name = $request->employee_name;
      $employee->position_id = $request->position_id;
      $employee->seksi_id = $request->seksi_id;
      $employee->bidang_id = $request->bidang_id;
      $employee->kcu_id = $request->kcu_id;
      $employee->cabang_id = $request->cabang_id;
      $employee->active = $request->active ? 1:0;
      $employee->save();

      $user = User::where('employee_id',$id)->first();
      $user->name = $request->employee_name;
      $user->email = $request->email;
      if($request->password != ''){
        $user->password = bcrypt($request->password);
      }
      $user->role = str_replace(" ","-",strtolower($employee->position->slot));
      $user->active = $request->active ? 1:0;
      $user->employee_id = $employee->id;
      $user->save();

      // $user = new User();
      // $user->email = $request->email;
      DB::commit();
      return response()->json(['pesan'=>'Berhasil simpan karyawan!','url'=> url('administrator/karyawan')]);
    }catch(\Exception $e){
      DB::rollback();
      return response()->json(['error'=>$e->getMessage()]);
    }
  }

  public function delete($id){
    DB::beginTransaction();
    try{
      Employee::findOrFail($id)->delete();
      // User::where('employee_id',$id)->delete();
      DB::commit();
      return ['pesan'=>'Berhasil hapus karyawan!','url'=>url('administrator/karyawan')];
    }catch(\Exception $e){
      DB::rollback();
      return response()->json(['error'=>'Karyawan tidak dapat dihapus!']);
    }


  }
}
