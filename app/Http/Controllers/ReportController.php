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
      $employee_id = $auth->employee->id;
      return Excel::download(new TasksExport($request->start_date_submit,$request->end_date_submit,$request->bidang_id,$employee_id),
       "Task $request->start_date_submit - $request->end_date_submit.xlsx");
    }
}
