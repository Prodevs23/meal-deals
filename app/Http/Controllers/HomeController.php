<?php


namespace App\Http\Controllers;
use App\Models\Name;

class HomeController
{
    public function home()
{
    
    $page = $_SERVER['REQUEST_URI'];

    switch ($page) {
        case "/":
            $page = "Nyitóoldal";
            break;
        case "/home":
            $page = "Főoldal";
            break;
        case "/login":
            $page = "Login";
            break;
        case "/subscribe":
            $page = "Subscribe";
            break;
        case "about":
            $page = "Rólunk";
            break;
        case "ing":
            $page = "Ingredients";
            break;
        }
    return view('/pages/home', compact('page'));
    //return view('teszt');
}

}