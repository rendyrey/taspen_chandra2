<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cabang extends Model
{
    protected $table = 'mst_cabang';
    protected $guarded = [];

    public function employee(){
      return $this->hasMany('App\Employee','cabang_id','id');
    }
}
