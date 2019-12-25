<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('login','LoginController@index')->name('login');
Route::post('login','LoginController@login')->name('login');
Route::get('logout','LoginController@logout')->name('logout');
Route::get('/','LoginController@index');
Route::middleware(['pelaksana'])->group(function(){
    Route::prefix('pelaksana')->group(function(){
        Route::get('/dashboard','DashboardController@pelaksana');
        Route::get('/create','PelaksanaController@create');
        Route::post('/create','PelaksanaController@save');
        Route::get('/edit/{id}','PelaksanaController@edit');
        Route::get('/view/{id}','PelaksanaController@view');
        Route::put('/update/{id}','PelaksanaController@update');
        Route::delete('/delete/{id}','PelaksanaController@delete');

        Route::get('get-header/{id}','PelaksanaController@getHeader');
        Route::get('get-detail/{id}','PelaksanaController@getDetail');
    });
});

Route::middleware(['kepala-seksi'])->group(function(){
    Route::prefix('kepala-seksi')->group(function(){
        Route::get('/dashboard','DashboardController@kepala_seksi');
        Route::get('/create','KepalaSeksiController@create');
        Route::post('/create','KepalaSeksiController@save');
        Route::get('/edit/{id}','KepalaSeksiController@edit');
        Route::get('/view/{id}','KepalaSeksiController@view');
        Route::put('/update/{id}','KepalaSeksiController@update');
        Route::delete('/delete/{id}','KepalaSeksiController@delete');
    });
});

Route::middleware(['kepala-bidang'])->group(function(){
    Route::prefix('kepala-bidang')->group(function(){
        Route::get('/dashboard','DashboardController@kepala_bidang');
        Route::get('/create','KepalaBidangController@create');
        Route::post('/create','KepalaBidangController@save');
        Route::get('/edit/{id}','KepalaBidangController@edit');
        Route::get('/view/{id}','KepalaBidangController@view');
        Route::put('/update/{id}','KepalaBidangController@update');
        Route::delete('/delete/{id}','KepalaBidangController@delete');
    });
});

Route::middleware(['wakil-kepala-cabang'])->group(function(){
    Route::prefix('wakil-kepala-cabang')->group(function(){
        Route::get('/dashboard','DashboardController@wakil_kepala_cabang');
        Route::get('/create','WakilKepalaCabangController@create');
        Route::post('/create','WakilKepalaCabangController@save');
        Route::get('/edit/{id}','WakilKepalaCabangController@edit');
        Route::get('/view/{id}','WakilKepalaCabangController@view');
        Route::put('/update/{id}','WakilKepalaCabangController@update');
        Route::delete('/delete/{id}','WakilKepalaCabangController@delete');
    });
});

Route::middleware(['kepala-cabang'])->group(function(){
    Route::prefix('kepala-cabang')->group(function(){
        Route::get('/dashboard','DashboardController@kepala_cabang');
        Route::get('/create','KepalaCabangController@create');
        Route::post('/create','KepalaCabangController@save');
        Route::get('/edit/{id}','KepalaCabangController@edit');
        Route::put('/update/{id}','KepalaCabangController@update');
        Route::delete('/delete/{id}','KepalaCabangController@delete');
    });
});

Route::middleware(['administrator'])->group(function(){
  Route::prefix('administrator')->group(function(){
    Route::get('/dashboard','AdministratorController@karyawan');
    Route::get('/karyawan','AdministratorController@karyawan');
    Route::get('/karyawan/get_all','KaryawanController@get_all');
    Route::get('/karyawan/create','KaryawanController@create');
    Route::post('/karyawan/create','KaryawanController@save');
    Route::get('/karyawan/edit/{id}','KaryawanController@edit');
    Route::put('/karyawan/update/{id}','KaryawanController@update');
    Route::delete('/karyawan/delete/{id}','KaryawanController@delete');

  
  });
});
