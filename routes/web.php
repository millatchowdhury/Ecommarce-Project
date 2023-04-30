<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('frontend.index');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/frontend/product', function(){
    return view('frontend.product_details');
});

Route::get('/login', function(){
    return redirect()->to('/');
})->name('login');

Route::get('/register', function(){
    return redirect()->to('/');
})->name('register');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/customer/logout', [App\Http\Controllers\HomeController::class, 'logout'])->name('customer.logout');

Route::group(['namespace'=>'App\Http\Controllers\Front'], function(){
    Route::get('/', 'IndexController@index');
    Route::get('/product-details/{slug}', 'IndexController@ProductDetails')->name('product.details');
});