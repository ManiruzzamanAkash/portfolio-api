<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['prefix' => 'users'], function () {
    Route::post('login', 'API\V1\Auth\LoginController@login');
});

Route::apiResource('categories', 'API\V1\Portfolio\CategoryController');
Route::apiResource('lifestory', 'API\V1\About\LifeStoryController');

Route::group(['prefix' => ''], function () {
    Route::apiResource('portfolios', 'API\V1\Portfolio\PortfolioController');
    Route::get('/portfolios/categories/{id}', 'API\V1\Portfolio\PortfolioController@portfolioByCategory');

    Route::apiResource('activities', 'API\V1\ExtraActivity\ExtraActivityController');
    Route::get('/activities/types/{name}', 'API\V1\ExtraActivity\ExtraActivityController@activityByType');
    Route::get('/activity-types', 'API\V1\ExtraActivity\ExtraActivityController@activityTypes');

    Route::get('/about', 'API\V1\About\AboutSettingsController@show');
    Route::post('/send-contact', 'API\V1\Contact\ContactsController@store');
});

Route::group(['middleware' => 'auth:api'], function () {
    Route::apiResource('users', 'API\V1\Auth\UserController');
});
