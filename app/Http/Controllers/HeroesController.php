<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Hero;

class HeroesController extends Controller
{
    public function index(){
        $heroes = Hero::all();
        return response()->json($heroes);
    }
}
