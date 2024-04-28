<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\CampusController;
use App\Http\Controllers\Api\ChapterController;
use App\Http\Controllers\Api\ClassRoomController;
use App\Http\Controllers\Api\CodeCheckController;
use App\Http\Controllers\Api\DistrictController;
use App\Http\Controllers\Api\ForgotPasswordController;
use App\Http\Controllers\Api\ProvinceController;
use App\Http\Controllers\Api\QuestionController;
use App\Http\Controllers\Api\ResetPasswordController;
use App\Http\Controllers\Api\ResultController;
use App\Http\Controllers\Api\SessionController;
use App\Http\Controllers\Api\SubjectController;
use App\Http\Controllers\Api\UserController;
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

Route::group(['middleware' => ['auth:sanctum', 'formatResponse']], function () {
    // logout 
    Route::post('logout', [AuthController::class, 'logout']);

    // user details
    Route::get('user', [UserController::class, 'getUserDetails']);
    //user Result Submission Route:
    Route::post('submit-user-result', [ResultController::class, 'submit_user_result']);
    //user Get Result Route:
    Route::get('get-user-results', [ResultController::class, 'index']);
});
// questions
Route::get('question', [QuestionController::class, 'index']);


// province
Route::get('province', [ProvinceController::class, 'index']);

// district
Route::get('district', [DistrictController::class, 'index']);

// campus
Route::get('campus', [CampusController::class, 'index']);

// session
Route::get('session', [SessionController::class, 'index']);

// classrooms
Route::get('classroom', [ClassRoomController::class, 'index']);

// subjects
Route::get('subject', [SubjectController::class, 'index']);

// chapters
Route::get('chapter', [ChapterController::class, 'index']);


// login , register and logout
Route::controller(AuthController::class)->group(function () {

    Route::post('login', 'login');
    Route::post('register', 'register');
});

// forgot password
Route::post('forgot-password',  ForgotPasswordController::class);
Route::post('forgot-password/check', CodeCheckController::class);
Route::post('reset-password', ResetPasswordController::class);
