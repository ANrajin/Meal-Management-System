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


Auth::routes();

Route::middleware('auth')->group(function () {
    Route::get('/', 'HomeController@index')->name('home');

    Route::resource('students', 'StudentController');

    Route::get('foods', 'FoodController@index')->name('foods.index');
    Route::get('food-menu', 'FoodController@menu')->name('foods.menu');
    Route::post('food-menu', 'FoodController@menuCreate')->name('menu.create');
    Route::post('food-menu-items', 'FoodController@foodMenuItem')->name('menu.items');
    Route::get('foodList', 'FoodController@foodList')->name('foodList');
    Route::post('food-search', 'FoodController@search')->name('food.search');
    Route::get('food-search-clear', 'FoodController@searchClear')->name('food.searchClear');

    Route::get('inventory', 'StockController@index')->name('inventory.index');
    Route::get('dispatch', 'StockController@stockOut')->name('inventory.dispatch');
    Route::post('dispatch', 'StockController@dispatchItems')->name('inventory.dispatch');
    Route::get('dispatch/list', 'StockController@dispatchItemsList')->name('inventory.dispatchList');

    Route::get('student', 'StudentController@home')->name('student');
    Route::get('student/food-menu', 'StudentController@foodMenu')->name('student.foodMenu');
    Route::post('student/food-menu-create', 'StudentController@foodMenuCreate')->name('student.foodMenuCreate');
});
