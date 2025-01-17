<?php

use Src\Router;
use App\Http\Controllers\WEB\HomeController;
use App\Http\Controllers\WEB\UserController;

Router::get('/', [HomeController::class, 'home']);
Router::get('/about', [HomeController::class, 'about']);
Router::get('/login', [HomeController::class, 'login']);
Router::get('/register', [HomeController::class, 'register']);

Router::get('/take-quiz', [HomeController::class, 'takeQuiz']);

Router::get('/dashboard', [UserController::class, 'home']);

//Quizzes
Router::get('/dashboard/quizzes', [UserController::class, 'quizzes']);
Router::get('/dashboard/create-quiz', [UserController::class, 'createQuiz']);
Router::get('/dashboard/quizzes/{id}/update', [UserController::class, 'update']);


Router::get('/dashboard/statistics', [UserController::class, 'statistics']);


Router::notFound();

