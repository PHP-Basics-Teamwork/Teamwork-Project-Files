<?php
    require_once('Controller/usersController.php');
    require_once('Controller/postsController.php');
    require_once('Controller/repliesController.php');

    include 'views/header.php';


    if(isset($_GET['page'])){
        switch($_GET['page']){
            case "login":
                include 'views/login.php';
                break;
			case "question":
                include 'views/question.php';
                break;
            case "register":
                include 'views/registration.php';
                break;
            case "user":
                if(!$user){
                    include 'views/login.php';
                } else {
                    include 'views/user.php';
                }
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
            case "addPost":
                if(!$user){
                    include 'views/login.php';
                } else {
                    include "views/addPost.php";
                }
                break;
            case "search":
                include "views/searchPage.php";
                break;
            default:
                include "views/error.php";
        }
    }
    else{
        include('views/main.php');
    }

    include 'views/footer.php';
?>