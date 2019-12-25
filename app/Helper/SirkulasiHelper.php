<?php

namespace App\Helper;

use DB;
use Carbon\Carbon;
use App\Sirkulasi;

class SirkulasiHelper
{

  public static function teruskan($task_header_id,$slot_id,$status,$user_last_update_id,$remark){

    try{
      $sirkulasi = new Sirkulasi();
      $sirkulasi->task_header_id = $task_header_id;
      $sirkulasi->slot_id = $slot_id;
      $sirkulasi->status = $status;
      $sirkulasi->user_last_update_id = $user_last_update_id;
      $sirkulasi->remark = $remark;
      $sirkulasi->save();
      return 'success';
    }catch(\Exception $e){
      return $e->getMessage();
    }

  }

}
