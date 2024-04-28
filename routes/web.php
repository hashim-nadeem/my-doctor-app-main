<?php

use App\Http\Controllers\CampusController;
use App\Http\Controllers\ChapterController;
use App\Http\Controllers\ClassRoomController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProvinceController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\ResultController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\UserController;
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
    return redirect()->route('login');
});

Route::get('/dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth', 'userType')->group(function () {

    // users
    Route::resource('users', UserController::class);

    // province
    Route::resource('province', ProvinceController::class);

    // district
    Route::resource('district', DistrictController::class);

    // campus
    Route::resource('campus', CampusController::class);

    // session
    Route::resource('session', SessionController::class);

    // classroom
    Route::resource('classroom', ClassRoomController::class);

    // subject
    Route::resource('subject', SubjectController::class);

    // chapter
    Route::resource('chapter', ChapterController::class);

    // question
    Route::get('questions', [QuestionController::class, 'index'])->name('questions.index');
    Route::get('questions/show/{id}', [QuestionController::class, 'show'])->name('questions.show');
    Route::delete('questions/destroy/{id}', [QuestionController::class, 'destroy'])->name('questions.destroy');
    Route::get('questions/download-import-format', [QuestionController::class, 'downloadImportFormatFile'])->name('questions.download.import.format');
    Route::get('questions/import', [QuestionController::class, 'import'])->name('questions.import');
    Route::get('questions/import/get-subjects', [QuestionController::class, 'getSubjects'])->name('question.import.getSubjects');
    Route::get('questions/import/get-chapters', [QuestionController::class, 'getChapters'])->name('question.import.getChapters');
    Route::post('questions/import', [QuestionController::class, 'store'])->name('questions.import');

    //Results
    Route::resource('results', ResultController::class);
});

Route::middleware('auth')->group(function () {

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::get('/profile/edit', [ProfileController::class, 'view'])->name('profile.view');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});



require __DIR__ . '/auth.php';
