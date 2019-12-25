<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bidang extends Model
{
    protected $table = 'mst_bidang';
    protected $guarded = [];

    public function employee(){
      return $this->hasMany('App\Employee','bidang_id','id');
    }
}
