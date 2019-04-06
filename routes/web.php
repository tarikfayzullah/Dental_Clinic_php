<?php

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

// Route::get('/', function () {
//     return view('master');
// });

Route::get('/', 'HomeController@index')->name('index');
Route::get('/dentists', 'DentistsController@dentists')->name('dentists');
Route::get('/motive', 'MotiveController@motive')->name('motive');
Route::get('/location', 'LocationController@location')->name('location');
Route::get('/treatment', 'TreatmentController@treatment')->name('treatment');

//Group to put all the routes that need login first
Route::group(['middleware' => 'auth'], function(){

    Route::get('/appointment', 'AppointmentsController@appointment')->name('appointment');
    Route::post('/store', 'AppointmentsController@store')->name('store');
    Route::get('/management', 'ManageMentPage@managementpage')->name('managementpage');

});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


// Authentication Routes...
// $this->get('login', 'Auth\AuthController@showLoginForm');
// $this->post('login', 'Auth\AuthController@login');
// $this->get('logout', 'Auth\AuthController@logout');

// // Registration Routes...
// $this->get('register', 'Auth\AuthController@showRegistrationForm');
// $this->post('register', 'Auth\AuthController@register');

// // Password Reset Routes...
// $this->get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
// $this->post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
// $this->post('password/reset', 'Auth\PasswordController@reset');