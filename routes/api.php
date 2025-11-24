<?php

use App\Http\Controllers\API\LocationController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::post('/getLocation', [LocationController::class, 'show']);
Route::post('/updateLocation', [LocationController::class, 'update']);
