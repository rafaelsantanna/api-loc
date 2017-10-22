<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Position;

class PositionsController extends Controller
{
    public function index()
    {
        $positions = Position::all();
        return response()->json($positions);
    }
    
    public function show($id)
    {
        $position = Position::find($id);
        
        if(!$position){
            return response()->json([
                'message' => 'Record not found',
                ], 404);
        }
        
        return response()->json($position);
    }
    
    public function store(Request $request)
    {
        $position = new Position();
        $position->fill($request->all());
        $position->save();
        
        return response()->json($request,201);
    }
    
    public function update(Request $request, $id)
    {
        $position = Position::find($id);
        
        if(!$position) {
            return response()->json([
                'message' => 'Record not found',
            ], 404);    
        }

        $position->update($request->all());
        $position->save();
        
        return response()->json($position);
    }
    
    public function destroy($id)
    {
        $position = Position::find($id);
        
        if(!$position){
            return response()->json([
                'message' => 'Record not found',
            ], 404);
        }
        
        $position->delete();
    }
}
