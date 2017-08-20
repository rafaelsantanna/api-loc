<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CounterHero extends Model
{
    protected $table = 'countersheroes';
    
    protected $fillable = ['name','icon'];
    
    public function counters()
    {
        return $this->belongsTo('App\Counter');
    }
}
