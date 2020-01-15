<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Employee;
use App\User;
use Auth;
use DB;

class ProfileController extends Controller
{
    public function profile(){
      $data['user'] = Auth::user();
      $id = $data['user']->employee_id;
      $data['page_menu'] = "Edit Profile";
      $data['karyawan'] = Employee::findOrFail($id);
      $data['user_account'] = User::where('employee_id',$id)->first();
      $data['id'] = $id;
      return view("profile.profile",$data);
    }

    public function update(Request $request,$id){
      if(User::where('email',$request->email)->where('employee_id','<>',$id)->exists() && $request->email != ''){
        return response()->json(['error'=>'Email sudah terdaftar']);
      }else if(User::where('username',$request->username)->where('employee_id','<>',$id)->exists()){
        return response()->json(['error'=>'Username sudah terdaftar']);
      }else if(User::where('nik',$request->nik)->where('employee_id','<>',$id)->exists()){
        return response()->json(['error'=>'NIK sudah terdaftar']);
      }
      DB::beginTransaction();

      try{
        $employee = Employee::findOrFail($id);
        $employee->employee_name = $request->employee_name;
        $employee->save();

        $user = User::where('employee_id',$id)->first();
        $user->name = $request->employee_name;
        $user->email = $request->email;
        $user->username = $request->username;
        $user->save();

        // $user = new User();
        // $user->email = $request->email;
        DB::commit();
        return response()->json(['pesan'=>'Berhasil simpan profile!','url'=> url('/')]);
      }catch(\Exception $e){
        DB::rollback();
        return response()->json(['error'=>$e->getMessage()]);
      }
    }
}
