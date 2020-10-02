<?php

use Illuminate\Support\Facades\Route;

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



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// route FizzBuzz 
Route::get('/FizzBuzz', 'AppContoller@FizzBuzz')->name('FizzBuzz');
// route Fibonacci 
Route::get('/Fibonacci/{n}', 'AppContoller@Fibonacci')->name('Fibonacci');
Route::get('/get/magic/{n}', 'AppContoller@magic')->name('magic');

// route posts 
Route::resource('posts', 'PostController');
// route comments 
Route::resource('comments', 'CommentController');
