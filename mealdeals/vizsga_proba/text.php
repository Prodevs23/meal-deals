<?php
$var = "";
//echo "{$_SERVER['REQUEST_URI']}";
$string = $_SERVER['REQUEST_URI'];
$str = substr($string, strrpos($string, '/') + 1);
   $character = ".";
   $position = strpos($str, $character);
   if ($position !== false) {
      $newstring = substr($str, 0, $position);
   }

   switch ($newstring) {
    case "index":
        $var = "Vizsgaremek";
        break;
    case "about":
        $var = "About";
        break;
    case "login":
        $var = "Login";
        break;
    case "subscribe":
        $var = "Subscribe";
        break;
    case "alapanyagok":
        $var = "Alapanyagok";
        break;
}
?>