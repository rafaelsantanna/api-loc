<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    protected $fillable = ['name', 'icon'];
    
    public function counters()
    {
        return $this->belongsTo('App\Counter');
    }

}
