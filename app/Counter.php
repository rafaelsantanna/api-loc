<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Counter extends Model
{
    protected $fillable = ['counter','heroes_id','positions_id','contersheroes_id'];
    
    public function heroes()
    {
        return $this->hasMany('App\Hero');
    }
    public function positions()
    {
        return $this->hasMany('App\Position');
    }
    public function countersheroes()
    {
        return $this->hasMany('App\CounterHero');
    }
    
}
