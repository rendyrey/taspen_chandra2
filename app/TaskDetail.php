<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Globals;
use Storage;

class TaskDetail extends Model
{
    protected $table = 'trn_task_detail';
    protected $guarded = [];

    public function task_header(){
      return $this->belongsTo('App\TaskHeader','task_header_id','id');
    }

    public function task_type($task_type_id){
      return Globals::where('condition','JenisPekerjaan')->where('code',$task_type_id)->first();
    }

    public function progress($progress_id){
      return Globals::where('condition','ProgressDetail')->where('code',$progress_id)->first();
    }

    public function file($file){
      return url(Storage::url($file));
    }
}
