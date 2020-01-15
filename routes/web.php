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
Route::post('generate_report','ReportController@generate');

Route::get('profile','ProfileController@profile');
Route::put('profile/update/{id}','ProfileController@update');
Route::get('profile/change-password/','ProfileController@change_password');
Route::put('profile/change-password/update/{id}','ProfileController@change_password_update');

Route::middleware(['pelaksana'])->group(function(){
    Route::prefix('pelaksana')->group(function(){
        Route::get('/dashboard','DashboardController@pelaksana');
        Route::get('/create','PelaksanaController@create');
        Route::post('/create','PelaksanaController@save');
        Route::get('/edit/{id}','PelaksanaController@edit');
        Route::get('/view/{id}','PelaksanaController@view');
        Route::put('/update/{id}','PelaksanaController@update');
        Route::delete('/delete/{id}','PelaksanaController@delete');

        Route::get('/report','PelaksanaController@report');

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

        Route::get('/report','KepalaSeksiController@report');
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

        Route::get('/report','KepalaBidangController@report');
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

        Route::get('/report','WakilKepalaCabangController@report');
    });
});

Route::middleware(['kepala-cabang'])->group(function(){
    Route::prefix('kepala-cabang')->group(function(){
        Route::get('/dashboard','DashboardController@kepala_cabang');
        Route::get('/create','KepalaCabangController@create');
        Route::post('/create','KepalaCabangController@save');
        Route::get('/edit/{id}','KepalaCabangController@edit');
        Route::get('/view/{id}','KepalaCabangController@view');
        Route::put('/update/{id}','KepalaCabangController@update');
        Route::delete('/delete/{id}','KepalaCabangController@delete');

        Route::get('/report','KepalaCabangController@report');
    });
});

Route::middleware(['administrator'])->group(function(){
  Route::prefix('administrator')->group(function(){
    Route::get('/dashboard','DashboardController@administrator');
    Route::get('/karyawan','AdministratorController@karyawan');
    Route::get('/karyawan/get_all','KaryawanController@get_all');
    Route::get('/karyawan/create','KaryawanController@create');
    Route::post('/karyawan/create','KaryawanController@save');
    Route::get('/karyawan/edit/{id}','KaryawanController@edit');
    Route::put('/karyawan/update/{id}','KaryawanController@update');
    Route::delete('/karyawan/delete/{id}','KaryawanController@delete');
    Route::put('/karyawan/reset_password/{id}','KaryawanController@reset_password');

    Route::get('/bidang','AdministratorController@bidang');
    Route::get('/bidang/get_all','BidangController@get_all');
    Route::get('/bidang/create','BidangController@create');
    Route::post('/bidang/create','BidangController@save');
    Route::get('/bidang/edit/{id}','BidangController@edit');
    Route::put('/bidang/update/{id}','BidangController@update');
    Route::delete('/bidang/delete/{id}','BidangController@delete');

    Route::get('/cabang','AdministratorController@cabang');
    Route::get('/cabang/get_all','CabangController@get_all');
    Route::get('/cabang/create','CabangController@create');
    Route::post('/cabang/create','CabangController@save');
    Route::get('/cabang/edit/{id}','CabangController@edit');
    Route::put('/cabang/update/{id}','CabangController@update');
    Route::delete('/cabang/delete/{id}','CabangController@delete');

    Route::get('/kcu','AdministratorController@kcu');
    Route::get('/kcu/get_all','KcuController@get_all');
    Route::get('/kcu/create','KcuController@create');
    Route::post('/kcu/create','KcuController@save');
    Route::get('/kcu/edit/{id}','KcuController@edit');
    Route::put('/kcu/update/{id}','KcuController@update');
    Route::delete('/kcu/delete/{id}','KcuController@delete');

    Route::get('/seksi','AdministratorController@seksi');
    Route::get('/seksi/get_all','SeksiController@get_all');
    Route::get('/seksi/create','SeksiController@create');
    Route::post('/seksi/create','SeksiController@save');
    Route::get('/seksi/edit/{id}','SeksiController@edit');
    Route::put('/seksi/update/{id}','SeksiController@update');
    Route::delete('/seksi/delete/{id}','SeksiController@delete');
    Route::get('/seksi/get-by-bidang/{id}','SeksiController@get_by_bidang');

    Route::get('global','AdministratorController@global');
    Route::get('global/get_all','GlobalController@get_all');
    Route::get('global/create','GlobalController@create');
    Route::post('global/create','GlobalController@save');
    Route::get('global/edit/{id}','GlobalController@edit');
    Route::put('global/update/{id}','GlobalController@update');
    Route::delete('global/delete/{id}','GlobalController@delete');
  });
});
