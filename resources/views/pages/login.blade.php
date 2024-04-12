@extends('layouts.app')
        
    @section('page', $page)
    
    @section('content')

    <div class="container login">

        <div class="imgcontainer">
          <img id="shef" src="{{ asset('pics/login_shef.avif') }}" alt="Chef" width="400px">
        </div>
      
        <form id="login" action="" method="POST">
      
          <div class="container">
            <label for="username"><b>Username</b></label>
            <input class="inputbox" type="text" placeholder="Enter Username" name="username" required> <!--onblur="checkusername(this.value)"-->
      
            <label for="pass"><b>Password</b></label>
            <input class="inputbox" type="password" placeholder="Enter Password" name="password" required>
              
            <button class='loginbtn' type="submit" formaction="" name="signin">Login</button>
            <div class="remember">
              <label for="remember">remember me</label>
              <input class="inputbox ch" type="checkbox" name="remember">
            </div>
          </div>
      
          <div class="container remember" style="">
            <button type="button" class="cancelbtn">Cancel</button>
            <a href="#">Forgot password?</a>
          </div>
        </form>
      </div>

@endsection