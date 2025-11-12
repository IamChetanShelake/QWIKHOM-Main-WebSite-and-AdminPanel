<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HeroController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\HowItWorksController;
use App\Http\Controllers\PlansController;
use App\Http\Controllers\ProgressController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ContactSubmissionController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('auth.login');
});

// Admin Routes (Protected by Authentication)
Route::prefix('admin')->middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');

    // Hero Section CRUD
    Route::resource('hero', HeroController::class, [
        'as' => 'admin',
        'parameters' => ['hero' => 'heroSection']
    ]);

    // About Section CRUD
    Route::resource('about', AboutController::class, [
        'as' => 'admin',
        'parameters' => ['about' => 'aboutSection']
    ]);

    // Services CRUD
    Route::resource('services', ServicesController::class, [
        'as' => 'admin',
        'parameters' => ['services' => 'service']
    ]);

    // How It Works CRUD (Limited to 4 records)
    Route::resource('howitworks', HowItWorksController::class, [
        'as' => 'admin',
        'parameters' => ['howitworks' => 'howItWork']
    ]);

    // Plans CRUD
    Route::resource('plans', PlansController::class, [
        'as' => 'admin',
        'parameters' => ['plans' => 'plan']
    ]);

    // Progress Statistics CRUD
    Route::resource('progress', ProgressController::class, [
        'as' => 'admin',
        'parameters' => ['progress' => 'progressStatistic']
    ]);

    // Contact Information CRUD
    Route::resource('contact', ContactController::class, [
        'as' => 'admin'
    ]);

    // Contact Submissions Management
    Route::prefix('contact-submissions')->name('admin.contact-submissions.')->group(function () {
        Route::get('/', [ContactSubmissionController::class, 'index'])->name('index');
        Route::get('/{contactSubmission}', [ContactSubmissionController::class, 'show'])->name('show');
        Route::patch('/{contactSubmission}/status', [ContactSubmissionController::class, 'updateStatus'])->name('update-status');
        Route::post('/{contactSubmission}/mark-read', [ContactSubmissionController::class, 'markAsRead'])->name('mark-read');
        Route::post('/{contactSubmission}/mark-replied', [ContactSubmissionController::class, 'markAsReplied'])->name('mark-replied');
        Route::post('/{contactSubmission}/archive', [ContactSubmissionController::class, 'archive'])->name('archive');
        Route::delete('/{contactSubmission}', [ContactSubmissionController::class, 'destroy'])->name('destroy');
        Route::post('/bulk-action', [ContactSubmissionController::class, 'bulkAction'])->name('bulk-action');
    });
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
