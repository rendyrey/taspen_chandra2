<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEmployeeId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users',function(Blueprint $table){
          $table->bigInteger('employee_id')->unsigned();
        });

        Schema::table('users',function(Blueprint $table){
          $table->foreign('employee_id')->references('id')->on('mst_employee');
        });

        Schema::table('mst_employee',function(Blueprint $table){
          $table->foreign('position_id')->references('id')->on('data_slot');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users',function(Blueprint $table){
          $table->dropColumn('employee_id');
        });
    }
}
