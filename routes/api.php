<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\ProgramsController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\SeoController;
use App\Http\Controllers\DerslerController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Controller;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });



Route::group(['middleware' => ['access', 'change_lang']], function () {
    Route::get('/',[CoursesController::class,'allapi'])->name('allapi');
    Route::post('/message', [MessageController::class, 'index']);
});



Route::prefix('courses')->group(function(){
    Route::get('/',[CoursesController::class,'index'])->name('getcourses');
    Route::get('/{slug}',[CoursesController::class,'single'])->name('getsinglecourses');
    Route::post('/create',[CoursesController::class,'create'])->name('createcourses');
    Route::delete('/delete/{id}',[CoursesController::class,'delete'])->name('deletecourses');
});
Route::prefix('programs')->group(function(){
    Route::get('/',[ProgramsController::class,'index'])->name('getprograms');
    Route::get('/{id}',[ProgramsController::class,'single'])->name('getsingleprogram');
    Route::post('/create',[ProgramsController::class,'create'])->name('createprogram');
    Route::delete('/delete/{id}',[ProgramsController::class,'delete'])->name('deleteprogram');
});

Route::prefix('gallery')->group(function(){
    Route::get('/',[GalleryController::class,'index'])->name('getgallery');
    Route::get('/{id}',[GalleryController::class,'single'])->name('getsinglegallery');
    Route::delete('/delete/{id}',[GalleryController::class,'delete'])->name('deletegallery');
});

Route::prefix('seo')->group(function(){
    Route::get('/',[SeoController::class,'index'])->name('getseo');
    Route::get('/{id}',[SeoController::class,'single'])->name('getsingleseo');
    Route::delete('/delete/{id}',[SeoController::class,'delete'])->name('deleteseo');
});

Route::prefix('dersler')->group(function(){
    Route::get('/',[DerslerController::class,'index'])->name('getdersler');
    Route::get('/{id}',[DerslerController::class,'single'])->name('getsingledersler');
});
Route::prefix('category')->group(function(){
    Route::get('/',[CategoryController::class,'index'])->name('getcategory');
    Route::get('/{id}',[CategoryController::class,'single'])->name('getsinglecategory');
});

Route::post('/sendmail',[Controller::class,'sendmail3'])->name('sendmail');




Route::prefix('auth')->group(function(){
    Route::post('/login',[AuthController::class,'login']);
    Route::post('/register',[AuthController::class,'register']);
    Route::get('/logout',[AuthController::class,'logout']);
});

