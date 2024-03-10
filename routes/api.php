<?php

use App\Http\Controllers\heroSectionController;
use App\Http\Controllers\userController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('register', [userController::class, 'register'])->name('register-post');
Route::post('login', [userController::class, 'login'])->name('login-post');

Route::middleware('auth:sanctum')->group(function () {
    Route::group(['middleware' => ['permission:create articles']], function () {
        Route::post('store', [heroSectionController::class, 'store'])->name('store-post');
        });
        Route::post('logout', [userController::class, 'logout'])->name('logout-post');
        Route::put('update/{id}', [heroSectionController::class, 'update'])->name('update-post');
        Route::delete('delete/{id}', [heroSectionController::class, 'destroy'])->name('delete-post');
        Route::get('view/{id}', [heroSectionController::class, 'show'])->name('show-get');
        Route::get('view', [heroSectionController::class, 'showAll'])->name('showAll-get');
    });
// });
