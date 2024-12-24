<?php


//use App\Router;
//use Controllers\UserController;
//use Controllers\TodoController;
use App\Models\User;

$user = new User();
//dd($user->getUser('abdullajon@gmail.com', '123456789'));
dd($user->create('Kimdur', 'kimdur@gmail.com', '123456789'));




//Router::get('/todos', [TodoController::class, 'show']);
//Router::get('/users', [UserController::class, 'index']);
//Router::get('/', function (){
//    echo 'Welcome to home page';
//});



/*
 * TODO
 *  1. Add User Model
 *  2. Add create, getUser methods to the User model
 *  3. create user_api_tokens table
 *  3. Add Trait(HasApiTokens)
 *  4. Add createApiToken method to HasApiTokens trait
 *  5. Use the HasApiTokens Trait in User model
 */


