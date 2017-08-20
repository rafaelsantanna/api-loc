<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Counter;

class CountersController extends Controller
{
    public function index()
    {
        $counters = Counter::all();
        return response()->json($counters);
    }
    
    public function show($id)
    {
        $counter = Counter::find($id);
        
        if(!$counter){
            return response()->json([
                'message' => 'Record not found',
                ], 404);
        }
        
        return response()->json($counter);
    }
    
    public function store(Request $request)
    {
        $counter = new Counter();
        $counter->fill($request->all());
        $counter->save();
        
        return response()->json($request,201);
    }
    
    public function update(Request $request, $id)
    {
        $counter = Counter::find($id);
        
        if(!$counter) {
            return response()->json([
                'message' => 'Record not found',
            ], 404);
            
        $counter->fill($request->all());
        $counter->save();
        
        return response()->json($counter);
        }
    }
    
    public function destroy($id)
    {
        $counter = Counter::find($id);
        
        if(!$counter){
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }
        
        $counter->delete();
    }
}
