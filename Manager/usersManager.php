<?php
    require_once('../config.php');
    require_once('../Models/User.php');

    class UsersManager{
        private $pdo;

        function __construct() {
            $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
        }

        function registerUser(User $user){
            $query = $this->pdo->prepare("INSERT INTO users (username, email, first_name, last_name, password)
                                VALUES (:username, :email, :firstName, :lastName, :password)");
            $query -> bindParam(':username', $user->getUsername());
            $query -> bindParam(':email', $user->getEmail());
            $query -> bindParam(':firstName', $user->getFirstName());
            $query -> bindParam(':lastName', $user->getLastName());
            $query -> bindParam(':password', $user->getPassword());
            $query->execute();
        }

    }

?>