<?php

namespace App\Http\Controllers;

class ProfilController {
    public function profil() {
        $page = "Profil";
        return view('/pages/profil', compact('page'));
    }
}