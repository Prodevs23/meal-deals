@extends('layouts.app')
        
    @section('page', $page)
    
    @section('content')

<div class="subscribeForm">
    <form action="" method="POST">
    <div class="container">
        <div class="img__container">
            <img src="https://images.unsplash.com/photo-1546793665-c74683f339c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" alt="salad" class="img"> 
        </div>   
        <div class="content">
            <h2 class="subtitle">Feliratkozás</h2>
            <input type="text" class="inputbox" placeholder="Vezetéknév" name="lastname" required>
            <input type="text" class="inputbox" placeholder="Középső név" name="middlename">
            <input type="text" class="inputbox" placeholder="Keresztnáv" name="firstname" required>
            <input type="text" class="inputbox" placeholder="Felhasználónév" name="username" required>
            <input type="text" class="inputbox" placeholder="Email" name="email" required>
            <input type="text" class="inputbox" placeholder="Telefon" name="phone">
            <input type="text" class="inputbox" placeholder="Cím" name="address">
            <input type="text" class="inputbox" placeholder="Jelszó name="pass1" required>
            <input type="text" class="inputbox" placeholder="Jelszó megerősítése" name="pass2" required>
            <input type="submit" value="Mehet" class="subscribe" name="subscribe">
            <p class="text"></p>
        </div>
    </div>
    </form>
    </div>

    @endsection