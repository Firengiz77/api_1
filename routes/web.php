<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

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
Route::get('/email2',[Controller::class,'index'])->name('email2');

// Route::post('/sendmail',[Controller::class,'sendmail'])->name('sendmail');


Route::get('/', function () {
    return view('welcome');
});

Route::get('/linkstorage', function () {
    Artisan::call('storage:link');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
