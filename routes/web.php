<?php

use Src\Router;
use App\Http\Controllers\WEB\HomeController;
use App\Http\Controllers\WEB\UserController;

Router::get('/', [HomeController::class, 'home']);
Router::get('/about', [HomeController::class, 'about']);
Router::get('/login', [HomeController::class, 'login']);
Router::get('/register', [HomeController::class, 'register']);

Router::get('/dashboard', [UserController::class, 'home']);


Router::notFound();

