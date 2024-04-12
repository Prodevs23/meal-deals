<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SubscribeController;
use App\Http\Controllers\ProfilController;

//Route::get('/', function () {
//    return view('pages/home');
//});

//Route::get('/home', function () {
//    return view('pages/home');
//});


//Route::get('/pages/home', 'HomeController@home');

Route::get('/', [HomeController::class, 'home']);
Route::get('/home', [HomeController::class, 'home']);
Route::get('/about', [AboutController::class, 'about']);
Route::get('/login', [LoginController::class, 'login']);
Route::get('/subscribe', [SubscribeController::class, 'subscribe']);
Route::get('/profil', [ProfilController::class, 'profil']);


//Route::get('pages/home/{title}', 'HomeController@home');  
//Route::get('/names/create/{name}', 'HomeController@namesCreate');

//Route::get('/home/allergies', 'HomeController@createAllergies2');
//Route::get('/allergies2/create/{name}', 'HomeController@allergies2Create');

