<?php
    session_start();

    require_once('Service/usersService.php');

    $userService = new UsersService();

    //get current logged user
    if(isset($_SESSION['sessionKey'])){
        $user = $userService->getUserBySessionKey($_SESSION['sessionKey']);
    }
    else{
        $user = null;
    }

    //Handle login request
    if(isset($_POST['login'])){
        try{
            $sessionKey = $userService->loginUser($_POST['username'], $_POST['password']);

            if($sessionKey != ""){
                header("Location: index.php");
            }
            else{
                header("Location: index.php?page=error&error=Wrong username or password!");
            }

        }
        catch(Exception $ex){
            $error = $ex->getMessage();
            header("Location: index.php?page=error&error=".$error);
        }
    }


    if(isset($_POST['registerUser'])){
        try{
            validateUserData($_POST);

            if($userService->getUserByUsername($_POST['username'])){
                throw new Exception("This username is not free!", 400);
            }
            if($userService->getUserByEmail($_POST['email'])){
                throw new Exception("There is user with the same email!", 400);
            }
            if($_POST['password'] != $_POST['confirmPassword']){
                throw new Exception("Passwords do not match!", 400);
            }if($_POST['email'] != $_POST['confirmEmail']){
                throw new Exception("Emails do not match!", 400);
            }

            $newUser = new User();
            $newUser->setUsername($_POST['username']);
            $newUser->setFirstName($_POST['firstName']);
            $newUser->setLastName($_POST['lastName']);
            $newUser->setEmail($_POST['email']);
            $newUser->setPassword($_POST['password']);

            $newUser->setGender($_POST['gender']);

            $userService->registerUser($newUser);
            header("Location: index.php");
        }
        catch(Exception $ex){
            $error = $ex->getMessage();
            header("Location: index.php?page=error&error=".$error);
        }
    }

    function validateUserData($userData){
        if(!isset($userData['username']) || $userData['username'] == ""){
            throw new Exception("Username can not be empty!", 400);
        }
        if(!isValid($userData['username'])){
            throw new Exception("Username must contains only latin chars and numbers", 400);
        }
        if(!isset($userData['firstName']) || $userData['firstName'] == ""){
            throw new Exception("First name can not be empty!", 400);
        }
        if(!isValid($userData['firstName'])){
            throw new Exception("First name must contains only latin chars and numbers", 400);
        }
        if(!isset($userData['lastName']) || $userData['lastName'] == ""){
            throw new Exception("Last name can not be empty!", 400);
        }
        if(!isValid($userData['lastName'])){
            throw new Exception("Last name must contains only latin chars and numbers", 400);
        }
        if(!isset($userData['email']) || $userData['email'] == ""){
            throw new Exception("Email can not be empty!", 400);
        }
        if(!isset($userData['password']) || strlen($userData['password']) < PASSWORD_MIN_LENGTH){
            throw new Exception("Password must be at least " . PASSWORD_MIN_LENGTH . " chars!", 400);
        }
        if(!isset($userData['gender']) || $userData['gender'] == null){
            throw new Exception("You must select gender!", 400);
        }
    }

    function getGender(){
        $userService = new UsersService();
        return $userService->getGender();

    }

    function logoutUser($userService){
        $userService->logoutUser();
        header("Location: index.php");
    }

    function isValid($str) {
        return !preg_match('/[^A-Za-z0-9.#\\-$]/', $str);
    }

?>