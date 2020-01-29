<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\LogLogin;
use Carbon\Carbon;
use App\User;
use Session;
use Hash;

class LoginController extends Controller
{
  public function index(){
    if(Auth::check()){
      $role = Auth::user()->role;
      if($role == 'administrator'){
        return redirect($role.'/karyawan');
      }
      return redirect($role.'/dashboard');
    }
    return view('auth.login');
  }

  public function login(Request $request){
    $data = array();
    $username    = $request->input('username', "");
    $password = $request->input('password', "");
    $user = User::where('username',$username)->orWhere('nik',$username)->first();
    $user_inactive = User::where('active','<>','1')->where(function($q) use($username){
      $q->where('username',$username)->orWhere('nik',$username);
    })->first();

    if($user_inactive){
      return redirect("login")->with('message','User tidak aktif')->with('panel','danger');
    }
    // dd($request);
    if(!$user){
      return redirect("login")->with('message','User tidak terdaftar')->with('panel','danger');
    }
    $role = $user->role;
    $password_hashed = $user->password;
    if(Hash::check($password,$password_hashed)){
      // =========================================================================
      // cek login terakhir, klo blom di log-out, log out otomatis
      // =========================================================================
      $login_terakhir = LogLogin::where('username', $username)
      ->select('id','username', 'created_at', 'deleted_at')
      ->orderBy('created_at', 'desc')
      ->first();

      if ($login_terakhir === null) {
        $last_login = Carbon::now();
      } else {
        $last_login        = $login_terakhir->created_at;
        $id_login_terakhir = $login_terakhir->id;

        if ($login_terakhir->deleted_at === null) {
          $this->_logout($login_terakhir->username);
        }
      }
      // =========================================================================

      $LogLogin             = new LogLogin();
      $LogLogin->username   = $username;
      $LogLogin->role       = $role;
      $LogLogin->last_login = $last_login;
      $LogLogin->alamat_ip  = $request->ip();
      $LogLogin->browser    = $request->header('User-Agent');
      $LogLogin->created_at = Carbon::now();
      $LogLogin->save();

      // Auth::login($LogLogin);
      Auth::login($user);
      if($role == 'administrator'){
        return redirect($role.'/karyawan');
      }
      return redirect($role.'/dashboard');
    }else{
      return redirect("login")->with('message','Password yang dimasukkan salah!')->with('panel','danger');
    }
  }

  private function _logout($email)
  {
    Loglogin::where('username',$email)->delete();
    Auth::logout();
    Session::flush();
  }

  public function logout()
  {
    if (Auth::check()) {
      $this->_logout(Auth::user()->email);
    }
    return redirect('login');
  }

}
