<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CounterHero extends Model
{
    protected $fillable = ['name','icon'];
    
    public function counters()
    {
        return $this->hasMany('App\Counter');
    }
}
