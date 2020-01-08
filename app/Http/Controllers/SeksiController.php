<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seksi;
use App\Bidang;
use Auth;
use DataTables;

class SeksiController extends Controller
{

  public function get_all(){
    return DataTables::of(Seksi::query()->orderBy('seksi'))
    ->addIndexColumn()
    ->escapeColumns([])
    ->addColumn('status',function($value){
      if($value->active){
        return 'Yes';
      }else{
        return 'No';
      }
    })
    ->addColumn('bidang',function($value){
      return $value->bidang->bidang;
    })
    ->addColumn('aksi',function($value){
      $text = "<a href='".url("administrator/seksi/edit/$value->id")."'><button class='btn btn-sm btn-icon btn-primary'>Edit</button></a> ";
      $text .= "<form action='".url("administrator/seksi/delete/$value->id")."' style='display:inline' id='delete_data$value->id'>";
      $text .= "<input type='hidden' name='_method' value='delete'>";
      $text .= "<button type='button' class='delete btn btn-sm btn-icon btn-danger' onclick='delete_data($value->id)'>Delete</button>";
      $text .= "</form>";
      return $text;
    })->make(true);
}

  public function create(){
    $data['page_menu'] = "Form data Seksi";
    $data['user'] = Auth::user();
    $data['bidang'] = Bidang::where('active','1')->pluck('bidang','id');
    $data['bidang']->prepend('','');
    return view('admin.seksi.create',$data);
  }

  public function save(Request $request){
    if($request->seksi == NULL){
      return ['error'=>'Seksi harus diisi'];
    }
    if($request->bidang_id == NULL){
      return ['error'=>'Bidang harus diisi'];
    }
    try{
      $seksi = new Seksi();
      $seksi->seksi = $request->seksi;
      $seksi->bidang_id = $request->bidang_id;
      $seksi->active = $request->active ? 1:0;
      $seksi->save();
      return ['pesan'=>'Berhasil simpan data Seksi','url'=>url('administrator/seksi')];
    }catch(\Exception $e){
      return ['error'=>$e->getMessage()];
    }
  }

  public function edit($id){
    $data['page_menu'] = "Edit data Seksi";
    $data['user'] = Auth::user();
    $data['seksi'] = Seksi::findOrFail($id);
    $data['bidang'] = Bidang::where('active','1')->pluck('bidang','id');
    $data['id'] = $id;
    return view("admin.seksi.edit",$data);
  }

  public function update(Request $request, $id){
    if($request->seksi == NULL){
      return ['error'=>'Seksi harus diisi'];
    }
    if($request->bidang_id == NULL){
      return ['error'=>'Bidang harus diisi'];
    }
    try{
      $seksi = Seksi::findOrFail($id);
      $seksi->seksi = $request->seksi;
      $seksi->bidang_id = $request->bidang_id;
      $seksi->active = $request->active ? 1:0;
      $seksi->save();
      return ['pesan'=>'Berhasil simpan data Seksi','url'=>url('administrator/seksi')];
    }catch(\Exception $e){
      return ['error'=>$e->getMessage()];
    }
  }

  public function delete($id){
    try{
      Seksi::findOrFail($id)->delete();
      return ['pesan'=>'Berhasil hapus data Seksi','url'=>url('administrator/seksi')];
    }catch(\Exception $e){
      return ['error'=>$e->getMessage()];
    }
  }

  public function get_by_bidang($id){
    try{
      $seksi = Seksi::where('bidang_id',$id)->pluck('seksi','id');
      $seksi->prepend('','');
      $option = '';
      foreach($seksi as $key=>$value){
        $option .= "<option value='$key'>$value</option>";
      }
      return $option;
    }catch(\Exception $e){
      return '';
    }
  }

  public function report(){
    return 'hi';
  }

}
