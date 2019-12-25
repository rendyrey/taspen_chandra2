<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Employee;
use App\User;
use App\Seksi;
use App\Bidang;
use App\Cabang;
use App\Kcu;
use App\Position;
use DataTables;
use DB;

class AdministratorController extends Controller
{


    public function karyawan(){
      $data['page_menu'] = "Data Karyawan";
      $data['user'] = Auth::user();
      return view("admin.karyawan.index",$data);
    }

    public function bidang(){
      $data['page_menu'] = "Data Bidang";
      $data['user'] = Auth::user();
      return view("admin.bidang.index",$data);
    }

    public function kcu(){
      $data['page_menu'] = "Data KCU";
      $data['user'] = Auth::user();
      return view("admin.kcu.index",$data);
    }

    public function position(){
      $data['page_menu'] = "Data Posisi";
      $data['user'] = Auth::user();
      return view("admin.position.index",$data);
    }

    public function seksi(){
      $data['page_menu'] = "Data Seksi";
      $data['user'] = Auth::user();
      return view("admin.seksi.index",$data);
    }

    public function cabang(){
      $data['page_menu'] = "Data Cabang";
      $data['user'] = Auth::user();
      return view("admin.cabang.index",$data);
    }

    public function global(){
      $data['page_menu'] = "Data Global";
      $data['user'] = Auth::user();
      return view("admin.global.index",$data);
    }


}
