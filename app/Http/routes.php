<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');

Route::group(array('prefix' => 'api'), function()
{
  Route::get('/', function () {
      return response()->json(['message' => 'League of Counter API', 'status' => 'Connected']);
  });
  Route::resource('heroes', 'HeroesController');
  Route::resource('positions', 'PositionsController');
  Route::resource('countersheroes', 'CountersHeroesController');
  Route::resource('counters', 'CountersController');
});
Route::get('/', function () {
    return redirect('api');
});

Route::get('/api/counters/listCounters/heroes_id/{heroes_id}/positions_id/{positions_id}', 'CountersController@listCounters');