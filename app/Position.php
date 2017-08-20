<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $fillable = ['name'];
    
    
    public function counters()
    {
        return $this->belongsTo('App\Counter');
    }
}
