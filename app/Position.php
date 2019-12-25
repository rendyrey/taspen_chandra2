<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $table = 'data_slot';
    protected $guarded = [];

    public function employee(){
      return $this->hasMany('App\Employee','position_id','id');
    }

}
