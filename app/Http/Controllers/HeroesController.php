<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Hero;

class HeroesController extends Controller
{
    public function index()
    {
        $heroes = Hero::all();
        return response()->json($heroes);
    }
    
    public function show($id)
    {
        $hero = Hero::find($id);
        
        if(!$hero){
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }
        
        return response()->json($hero);
    }
    
    public function store(Request $request)
    {
        $hero = new Hero();
        $hero->fill($request->all());
        $hero->save();
        
        return response()->json($request,201);
    }
    
    public function update(Request $request, $id)
    {
        $hero = Hero::find($id);
        
        if(!$hero) {
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }

        $hero->update($request->all());
        $hero->save();
        
        return response()->json($hero);
    }
    
    public function destroy($id)
    {
        $hero = Hero::find($id);
        
        if(!$hero){
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }
        
        $hero->delete();
    }
}
