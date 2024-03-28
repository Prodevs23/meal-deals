<?php
define('DB_SERVER', 'localhost');
define('DB_USER', 'root');
define('DB_PASS' , '');
define('DB_NAME', 'mealdeals');

class DB_con
{
    public $dbh;

    function __construct()
    {
        $con = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
        if (!$con) {
            throw new Exception("Failed to connect to MySQL: " . mysqli_connect_error());
        }
        mysqli_set_charset($con, "utf8mb4");
        $this->dbh = $con;
    }

    public function signin($userName, $pasword) {
        $stmt = $this->dbh->prepare("SELECT * FROM users WHERE username = ? AND pass = ?;");
        $stmt->bind_param("ss", $userName, $pasword);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }

    public function registration($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword) {
        $stmt = $this->dbh->prepare("SELECT * FROM users WHERE username = ? OR pass = ?;");
        $stmt->bind_param("ss", $userName, $pasword);
        $stmt->execute();
        $result = $stmt->get_result();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            // Hibakezelés, ha a felhasználónév vagy jelszó már létezik
            return false;
        } else {
            // Folytatás a regisztrációval
            $pasword = password_hash($pasword, PASSWORD_DEFAULT);
            $stmt = $this->dbh->prepare("INSERT INTO users (lastname, middlename, firstname, username, email, phone, address, pass) VALUES (?, ?, ?, ?, ?, ?, ?, ?);");
            $stmt->bind_param("sssssss", $lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword);
            $stmt->execute();
            return $stmt->affected_rows;
        }
    }

    // A többi függvényt itt hozzáadhatod, például a listIngredients-t

    public function listIngredients($userid) {
        $stmt = $this->dbh->prepare("SELECT * FROM ingredients WHERE user_id IS NULL OR user_id = ?;");
        $stmt->bind_param("i", $userid);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
}
?>