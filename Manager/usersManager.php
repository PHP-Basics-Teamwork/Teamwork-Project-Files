<?php
    require_once('config.php');
    require_once('Models/User.php');

    class UsersManager{
        private $pdo;

        function __construct() {
            $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        function registerUser(User $user){
            $query = $this->pdo->prepare("INSERT INTO users (username, email, first_name, last_name, password, gender_id, salt)
                                VALUES (:username, :email, :firstName, :lastName, :password, :genderId, :salt)");
            $query -> bindParam(':username', $user->getUsername());
            $query -> bindParam(':email', $user->getEmail());
            $query -> bindParam(':firstName', $user->getFirstName());
            $query -> bindParam(':lastName', $user->getLastName());
            $query -> bindParam(':password', $user->getPassword());
            $query -> bindParam(':genderId', $user->getGender());
            $query -> bindParam(':salt', $user->getSalt());
            $query->execute();
        }

        function getUserByUsername($username){
            $query = $this->pdo->prepare("SELECT id, username, first_name AS firstName, last_name AS lastName, password, salt
                                          FROM users
                                          WHERE username LIKE :username");
            $query->bindParam(':username', $username);
            $query->execute();

            $data = $query->fetch();
            if($data){
                return new User($data);
            }
            return null;
        }

        function getUserByEmail($email){
            $query = $this->pdo->prepare("SELECT id, username, first_name AS firstName, last_name AS lastName
                                          FROM users
                                          WHERE email LIKE :email");
            $query->bindParam(':email', $email);
            $query->execute();

            $data = $query->fetch();
            if($data){
                return new User($data);
            }
            return null;
        }

        function changeUserSessionKey($userId, $sessionKey){
            $query = $this->pdo->prepare("UPDATE users
                                          SET session_key = :sessionKey
                                          WHERE id LIKE :id");
            $query->bindParam(':id', $userId);
            $query->bindParam(':sessionKey', $sessionKey);
            $query->execute();
        }

        function getUserBySessionKey($sessionKey){
            $query = $this->pdo->prepare("SELECT id, username, first_name AS firstName, last_name AS lastName
                                          FROM users
                                          WHERE session_key LIKE :sessionKey");
            $query->bindParam(':sessionKey', $sessionKey);
            $query->execute();

            $data = $query->fetch();
            if($data){
                return new User($data);
            }
            return null;
        }

        function getUserByUsernameAndPassword($username, $password){
            $query = $this->pdo->prepare("SELECT id, username, first_name AS firstName, last_name AS lastName, salt
                                          FROM users
                                          WHERE username LIKE :username AND password LIKE :password");
            $query->bindParam(':username', $username);
            $query->bindParam(':password', $password);
            $query->execute();

            $data = $query->fetch();
            if($data){
                return new User($data);
            }
            return null;
        }

    }

?>