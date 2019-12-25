<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddRole extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users',function(Blueprint $table){
            $table->string('role')->after('password')->default('pelaksana');
        });

        Schema::table('log_login',function(Blueprint $table){
            $table->string('role')->after('username');
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
            $table->dropColumn('role');
        });

        Schema::table('log_login',function(Blueprint $table){
            $table->dropColumn('role');
        });
    }
}
