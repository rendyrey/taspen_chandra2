<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sirkulasi extends Model
{
    protected $table = 'sirkulasi';
    protected $guarded = [];

    public function task_header(){
        return $this->belongsTo('App\TaskHeader','task_header_id','id');
    }

    public function slot(){
        return $this->belongsTo('App\Slot','slot_id','id');
    }

    public function user(){
        return $this->belongsTo('App\User','user_last_update_id','id');
    }
}
