<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    protected $fillable = ['name', 'icon'];
    
    public function counters()
    {
        return $this->hasMany('App\Counter');
    }
    public function positions()
    {
        return $this->hasMany('App\Position');
    }
}
