<?php

namespace App\Http\Controllers;

class SubscribeController {
    public function subscribe() {
        $page = "Feliratkozás";
        return view('/pages/subscribe', compact('page'));
    }
}