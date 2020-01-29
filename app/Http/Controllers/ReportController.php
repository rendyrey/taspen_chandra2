<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Bidang;
use App\User;
use App\Cabang;
use App\Employee;
use App\Globals;
use App\Kcu;
use App\Position;
use App\Seksi;
use App\Sirkulasi;
use App\TaskDetail;
use App\TaskHeader;
use App\Exports\TasksExport;
use Excel;
use Auth;

class ReportController extends Controller
{
    public function generate(Request $request){
      // return (new TasksExport)->download('task.xlsx');
      $auth = Auth::user();
      $employee_id = $auth->employee_id;
      $employee = Employee::findOrFail($employee_id);
      $role = $auth->role;
      $employees = Employee::select('id');
      if($role == 'pelaksana'){
        $employees = $employees->where('id',$employee_id);
      }else if($role == 'kepala-seksi'){
        $employees = $employees->where('seksi_id',$employee->seksi_id)
        ->where('bidang_id',$employee->bidang_id)
        ->where('kcu_id',$employee->kcu_id)
        ->where('cabang_id',$employee->cabang_id);
      }else if($role == 'kepala-bidang'){
        $employees = $employees->where('bidang_id',$employee->bidang_id);
      }else if($role == 'wakil-kepala-cabang'){
        $employees->where('kcu_id',$employee->kcu_id);
      }else if($role == 'kepala-cabang'){
        $employees = $employees->where('cabang_id',$employee->cabang_id);
      }
      // $employees = $employees->get();
      if($request->bidang_id != ''){
        $employees = $employees->where('bidang_id',$request->bidang_id);
      }
      $employees = $employees->get();
      return Excel::download(new TasksExport($request->start_date_submit,$request->end_date_submit,$request->bidang_id,$employee_id,$employees),
       "Task $request->start_date_submit - $request->end_date_submit.xlsx");
    }
}
