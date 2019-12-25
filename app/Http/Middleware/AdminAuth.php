<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AdminAuth
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
        if(Auth::check() && Auth::user()->active){
            return $next($request);
        }else{
            return redirect("login")->with('message','Mohon masuk terlebih dahulu sebelum mengakses halaman')->with('panel','danger');
        }
    }
}
