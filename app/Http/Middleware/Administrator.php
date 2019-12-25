<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class Administrator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      if(Auth::check() && Auth::user()->role == 'administrator'){
          return $next($request);
      }else if(!Auth::check()){
          return redirect("/")->with('message','Anda harus login terlebih dahulu')->with('panel','danger');
      }else{
          return redirect("/")->with('message','Anda tidak dapat mengakses halaman tersebut')->with('panel','danger');
      }
    }
}
