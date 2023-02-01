<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
|
| Front Panel Route List
|
*/

Route::get('change-links-url/{type}', 'dummy\APILinkFixer@toggleLinks');
