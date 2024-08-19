<?php
use App\Http\Controllers\CctvController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

// Redirect rute '/' ke '/login'
Route::get('/', function () {
    return redirect()->route('login');
});

Route::get('/dashboard', [CctvController::class, 'dashboard'])->name('dashboard');
Route::get('/cctv', [CctvController::class, 'index'])->middleware(['auth', 'verified'])->name('cctvs.index');

Route::middleware('auth')->group(function () {
    Route::get('/cctv/create', [CctvController::class, 'create'])->name('cctvs.create');
    Route::post('/cctv', [CctvController::class, 'store'])->name('cctvs.store');
    Route::get('/cctv/{cctv}/edit', [CctvController::class, 'edit'])->name('cctvs.edit');
    Route::patch('/cctv/{cctv}', [CctvController::class, 'update'])->name('cctvs.update');
    Route::delete('/cctv/{cctv}', [CctvController::class, 'destroy'])->name('cctvs.destroy');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
