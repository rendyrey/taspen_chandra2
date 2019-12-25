<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seksi extends Model
{
    protected $table = 'mst_seksi';
    protected $guarded = [];

    public function employee(){
      return $this->hasMany('App\Employee','seksi_id','id');
    }

    public function bidang(){
      return $this->belongsTo('App\Bidang','bidang_id','id');
    }

}
