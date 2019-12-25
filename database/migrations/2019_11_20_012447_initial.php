<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Initial extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users',function(Blueprint $table){
            $table->boolean('active')->default(true);
        });

        Schema::create('mst_global',function(Blueprint $table){
            $table->bigIncrements('id');
            $able->integer('code');
            $table->string('condition');
            $table->string('description');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('mst_employee',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('position_id')->unsigned();
            $table->bigInteger('cabang_id')->unsigned();
            $table->bigInteger('kcu_id')->unsigned();
            $table->bigInteger('seksi_id')->unsigned();
            $table->bigInteger('bidang_id')->unsigned();
            $table->string('employee_name');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('trn_task_header',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->bigInteger('cabang_id')->unsigned();
            $table->bigInteger('user_last_update_id')->unsigned();
            $table->bigInteger('user_approval_id')->unsigned();
            $table->string('task_title');
            $table->string('description');
            $table->date('date_task');
            $table->integer('status_id')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('trn_task_detail',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('task_header_id')->unsigned();
            $table->bigInteger('status_id')->unsigned();
            $table->integer('detail_count');
            $table->string('description');
            $table->integer('task_type');
            $table->time('start_time');
            $table->time('end_time');
            $table->integer('progress');
            $table->string('remark')->nullable();
            $table->string('file')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('data_slot',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('slot');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('mst_cabang',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('cabang');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('mst_kcu',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('cabang_id')->unsigned();
            $table->string('kcu');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('mst_bidang',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('bidang');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('mst_seksi',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('bidang_id')->unsigned();
            $table->string('seksi');
            $table->boolean('active');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('sirkulasi',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->bigInteger('task_header_id')->unsigned();
            $table->bigInteger('slot_id')->unsigned();
            $table->bigInteger('user_last_update_id')->unsigned();
            $table->bigInteger('status_id')->unsigned()->nullable();
            $table->text('remark');
            $table->timestamps();
            $table->softDelets();
        });

        Schema::table('mst_employee',function(Blueprint $table){
            $table->foreign('kcu_id')->references('id')->on('mst_kcu');
            $table->foreign('cabang_id')->references('id')->on('mst_cabang');
            $table->foreign('seksi_id')->references('id')->on('mst_seksi');
            $table->foreign('bidang_id')->references('id')->on('mst_bidang');
        });

        Schema::table('mst_kcu',function(Blueprint $table){
            $table->foreign('cabang_id')->references('id')->on('mst_cabang');
        });

        Schema::table('trn_task_header',function(Blueprint $table){
            $table->foreign('employee_id')->references('id')->on('mst_employee');
            $table->foreign('cabang_id')->references('id')->on('mst_cabang');
            $table->foreign('user_last_update_id')->references('id')->on('users');
        });

        Schema::table('trn_task_detail',function(Blueprint $table){
            $table->foreign('task_header_id')->references('id')->on('trn_task_header');
            // $table->foreign('status_id')->references('id')->on('mst_global');
        });

        Schema::table('mst_seksi',function(Blueprint $table){
            $table->foreign('bidang_id')->references('id')->on('mst_bidang');
        });

        Schema::table('sirkulasi',function(Blueprint $table){
            $table->foreign('task_header_id')->references('id')->on('trn_task_header');
            $table->foreign('slot_id')->references('id')->on('data_slot');
            $table->foreign('user_last_update_id')->references('id')->on('users');
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
            $table->dropColumn('active');
        });

        Schema::dropIfExists('mst_global');
        Schema::dropIfExists('mst_employee');
        Schema::dropIfExists('trn_task_header');
        Schema::dropIfExists('trn_task_detail');
        Schema::dropIfExists('data_slot');
        Schema::dropIfExists('mst_cabang');
        Schema::dropIfExists('mst_kcu');
        Schema::dropIfExists('mst_bidang');
        Schema::dropIfExists('sirkulasi');
    }
}
