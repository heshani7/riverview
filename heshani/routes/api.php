<?php

use Illuminate\Http\Request;

/*
  |--------------------------------------------------------------------------
  | API Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register API routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | is assigned the "api" middleware group. Enjoy building your API!
  |
 */

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'auth.basic'], function () {
    Route::get('/api/articles', 'ArticleController@index');
    Route::get('/api/articles/{id}', 'ArticleController@show');
    Route::post('/api/articles', 'ArticleController@store');
    Route::put('/api/articles/{id}', 'ArticleController@update');
    Route::delete('/api/articles/{id}', 'ArticleController@destroy');
});
