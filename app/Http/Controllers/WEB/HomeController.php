<?php

namespace App\Http\Controllers\WEB;

class HomeController {
    public function home (): void {
        view('home');
    }
    public function about (): void {
        view('about');
    }
    public function login () {
        view('auth/login');
    }
    public function register () {
        view('auth/register');
    }
    public function contact (): void {
        view('contact',[
            'contact_message' => 'Message'
        ]);
    }
}