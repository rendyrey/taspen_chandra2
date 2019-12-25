<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
use App\Sirkulasi;
use App\Slot;

class TaskHeader extends Model
{
    protected $table = 'trn_task_header';
    protected $guarded = [];

    public function employee(){
        return $this->belongsTo('App\Employee','employee_id','id');
    }

    public static function status_header($id){
        return DB::table('mst_global')->where('condition','StatusHeader')->where('code',$id)->value('description');
    }

    public static function sirkulasi($task_header_id){
        return Sirkulasi::where('task_header_id',$task_header_id)->orderBy('id','desc')->first();
    }

    public function user(){
      return $this->belongsTo('App\User','user_approval_id','id');
    }

    public function task_detail(){
      return $this->hasMany('App\TaskDetail','task_header_id','id');
    }

    public function slot_aktif($task_header_id,$slot_id){
      $sirkulasi = Sirkulasi::where('task_header_id',$task_header_id)->orderBy('id','desc')->first();
      if ($sirkulasi->slot_id == $slot_id){
        return true;
      }else{
        return false;
      }
    }
}
