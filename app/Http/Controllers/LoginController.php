<?php

namespace App\Http\Controllers;

class LoginController {
    public function login() {
        $page = "Bejelentkezés";
        return view('/pages/login', compact('page'));
    }
}