<?php

    require_once('../Manager/usersManager.php');

    class UsersService{

        private $manager;

        function __construct() {
            $this->manager = new UsersManager();
        }

        function registerUser($userData){
            $newUser = new User();
            $newUser->setUsername($userData['username']);
            $newUser->setFirstName($userData['firstName']);
            $newUser->setLastName($userData['lastName']);
            $newUser->setEmail($userData['email']);

            $password = sha1($userData['password']);
            $newUser->setPassword($password);

            $this->manager->registerUser($newUser);
        }
    }
?>