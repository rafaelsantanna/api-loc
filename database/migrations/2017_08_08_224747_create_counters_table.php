<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCountersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('counters', function (Blueprint $table) {
            $table->increments('id');
            $table->boolean('counter');
            
            $table->integer('heroes_id')->unsigned();
            $table->foreign('heroes_id')
                ->references('id')
                ->on('heroes')
                ->onDelete('cascade');
                
            $table->integer('positions_id')->unsigned();
            $table->foreign('positions_id')
                ->references('id')
                ->on('positions')
                ->onDelete('cascade');
            
            $table->integer('countersheroes_id')->unsigned();
            $table->foreign('countersheroes_id')
                ->references('id')
                ->on('countersheroes')
                ->onDelete('cascade');
                
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('counters');
    }
}
