<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Counter;

use DB;

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
    
    //Função que retorna a lista de Counters do Herói selecionado
    public function listCounters($heroes_id,$positions_id)
    {
        // Faz Join de Counters e CountersHeroes , Compara a FK de Counters com o ID de CountersHeroes e
        // seleciona o nome e o counter dos IDs passados pelo parametro
        $counter = DB::table('counters')
        ->join('countersheroes','counters.countersheroes_id', '=','countersheroes.id')
        ->select('counters.counter','countersheroes.name')
        ->where('heroes_id',$heroes_id)
        ->where('positions_id',$positions_id)->get();
        
        if(!$counter){
            return response()->json([
                'message' => 'Record not found',
                ], 404);
        }
        
        return response()->json($counter);
    }
}
