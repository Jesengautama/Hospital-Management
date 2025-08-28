<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ReservationController;
use App\Http\Controllers\HospitalController;
use App\Http\Controllers\SpecialtyController;
use App\Http\Controllers\DoctorController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Api\DoctorApiController;
use App\Http\Controllers\Api\ScheduleApiController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', [DashboardController::class, 'index'])
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
    // Reservation routes
    Route::resource('reservations', ReservationController::class);
    Route::get('/reservations/slots/{doctor}', [ReservationController::class, 'slots'])->name('reservations.slots');
    Route::get('/reservations/alternatives', [ReservationController::class, 'alternatives'])->name('reservations.alternatives');
    
    // Admin routes
    Route::middleware('admin')->group(function () {
        Route::resource('hospitals', HospitalController::class);
        Route::resource('specialties', SpecialtyController::class);
        Route::resource('doctors', DoctorController::class);
        Route::resource('schedules', ScheduleController::class);
    });
});

// API routes
Route::get('/api/doctors', [DoctorApiController::class, 'index'])->name('api.doctors.index');
Route::get('/api/schedules', [ScheduleApiController::class, 'index'])->name('api.schedules.index');

require __DIR__.'/auth.php';
