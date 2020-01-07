<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use App\TaskHeader;
use Auth;
use App\User;

class DashboardController extends Controller
{
  public function administrator(){
    $data['page_menu'] = "Dashboard Administrator";
    $data['user'] = Auth::user();
    $data['login'] = User::where('username',$data['user']->username)->first();
    return view("admin.index",$data);
  }

  public function pelaksana(){
    $data['page_menu'] = "Dashboard Pelaksana";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['login'] = $user;
    $data['task_header'] = TaskHeader::where('employee_id',$user->employee->id)->get();
    $data['slot_aktif'] = $user->employee->position_id;
    return view('pelaksana.index',$data);
  }

  public function kepala_seksi(){
    $data['page_menu'] = "Dashboard Kepala Seksi";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['login'] = $user;
    $employee_id = Employee::select('id')->where('seksi_id',$user->employee->seksi_id)->get();
    $data['task_header'] = TaskHeader::whereIn('employee_id',$employee_id)->get();
    $data['slot_aktif'] = $user->employee->position_id;
    return view('kepala.index',$data);
  }

  public function kepala_bidang(){
    $data['page_menu'] = "Dashboard Kepala Bidang";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['login'] = $user;
    $employee_id = Employee::select('id')->where('bidang_id',$user->employee->bidang_id)->get();
    $data['task_header'] = TaskHeader::whereIn('employee_id',$employee_id)->get();
    $data['slot_aktif'] = $user->employee->position_id;
    return view('kepala.index',$data);
  }

  public function wakil_kepala_cabang(){
    $data['page_menu'] = "Dashboard Wakil Kepala Cabang";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['login'] = $user;
    $employee_id = Employee::select('id')->where('cabang_id',$user->employee->cabang_id)->get();
    $data['task_header'] = TaskHeader::whereIn('employee_id',$employee_id)->get();
    $data['slot_aktif'] = $user->employee->position_id;
    return view('kepala.index',$data);
  }

  public function kepala_cabang(){
    $data['page_menu'] = "Dashboard Kepala Cabang";
    $data['user'] = Auth::user();
    $user = User::where('username',$data['user']->username)->first();
    $data['login'] = $user;
    $employee_id = Employee::select('id')->where('cabang_id',$user->employee->cabang_id)->get();
    $data['task_header'] = TaskHeader::whereIn('employee_id',$employee_id)->get();
    $data['slot_aktif'] = $user->employee->position_id;
    return view('kepala.index',$data);
  }
}
