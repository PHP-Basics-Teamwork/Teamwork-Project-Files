<?php
    require_once('Controller/usersController.php');
    require_once('Controller/postsController.php');

    include 'views/header.php';


    if(isset($_GET['page'])){
        switch($_GET['page']){
            case "login":
                include 'views/login.php';
                break;
			case "question":
                include 'views/question.php';
                break;
			case "profiletemplate":
				include 'views/profile.php';
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
            case "addPost":
                include "views/addPost.php";
                break;
            default:
                header("Location: views/error.php");
        }
    }
    else{
        include('views/main.php');
    }
	
	
    include 'views/footer.php';
?>