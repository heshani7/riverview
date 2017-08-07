<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

Route::get('/', function () {
    return view('welcome');
});


Route::get('api/articles', 'ArticleController@index')->name('api/articles');

Route::get('api/add_article', 'ArticleController@create')->name('api/add_article');

Route::post('api/store', 'ArticleController@store')->name('api/store');

Route::post('api/get_edit', 'ArticleController@show')->name('api/get_edit');
