<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\CounterHero;

class CountersHeroesController extends Controller
{
    public function index()
    {
        $heroes = CounterHero::all();
        return response()->json($heroes);
    }
    
    public function show($id)
    {
        $hero = CounterHero::find($id);
        
        if(!$hero){
            return response()->json([
                'message' => 'Record not found',
                ], 404);
        }
        
        return response()->json($hero);
    }
    
    public function store(Request $request)
    {
        $hero = new CounterHero();
        $hero->fill($request->all());
        $hero->save();
        
        return response()->json($request,201);
    }
    
    public function update(Request $request, $id)
    {
        $hero = CounterHero::find($id);
        
        if(!$hero) {
            return response()->json([
                'message' => 'Record not found',
            ], 404);
            
        $hero->fill($request->all());
        $hero->save();
        
        return response()->json($hero);
        }
    }
    
    public function destroy($id)
    {
        $hero = CounterHero::find($id);
        
        if(!$hero){
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }
        
        $hero->delete();
    }
}
