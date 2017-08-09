<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $fillable = ['name', 'heroes_id'];
    public function heroes()
    {
        return $this->hasMany('App\Hero');
    }
}
