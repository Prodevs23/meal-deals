<?php

namespace App\Http\Controllers;

class AboutController {
    public function about() {
        $page = "Rólunk";
        return view('/pages/about', compact('page'));
    }
}