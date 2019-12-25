<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kcu extends Model
{
    protected $table = 'mst_kcu';
    protected $guarded = [];

    public function employee(){
      return $this->hasMany('App\Employee','kcu_id','id');
    }

    public function cabang(){
      return $this->belongsTo('App\Cabang','cabang_id','id');
    }
}
