<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class LogLogin extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_login',function(Blueprint $table){
            $table->bigIncrements('id');
            $table->string('username');
            $table->dateTime('last_login');
            $table->string('alamat_ip');
            $table->string('browser');
            $table->timestamps();
            $table->softDeletes();
          });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('log_login');
    }
}
