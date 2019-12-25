<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $table = 'mst_employee';
    protected $guarded = [];

    public function position(){
      return $this->belongsTo('App\Position','position_id','id');
    }

    public function cabang(){
      return $this->belongsTo('App\Cabang','cabang_id','id');
    }

    public function kcu(){
      return $this->belongsTo('App\Kcu','kcu_id','id');
    }

    public function seksi(){
      return $this->belongsTo('App\Seksi','seksi_id','id');
    }

    public function bidang(){
      return $this->belongsTo('App\Bidang','bidang_id','id');
    }
}
