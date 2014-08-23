<?php
    require_once('Controller/usersController.php');

    include 'views/header.php';
    include('views/menu.php');

    if(isset($_GET['page'])){
        switch($_GET['page']){
            case "login":
                include 'views/login.php';
                break;
            case "register":
                include 'views/registration.php';
                break;
            case "profile":
                include 'views/profile.php';
                break;
            case "main":
                include "views/main.php";
                break;
            case "logout":
                logoutUser($userService);
                break;
            case "error":
                include "views/error.php";
                break;
            default:
                header("Location: error.php");
        }
    }
    else{
        include('views/main.php');
    }

    include 'views/footer.php';
?>