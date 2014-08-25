<?php

    require_once('Service/postsService.php');

    $postsService = new PostsService();

    if(isset($_POST['addPost'])){
        if(!isset($_SESSION['sessionKey'])){
            throw new Exception('Не сте влезли в акаунта си!');
        }
        $user = $userService->getUserBySessionKey($_SESSION['sessionKey']);

        $newPost = new Post($_POST);
        $newPost->setUserID($user->getId());
        $postsService->addPost($newPost);

        header("Location: index.php");
    }

    function getPosts($postsService){
        $allPosts = $postsService->getAllPosts();
        return $allPosts;
    }

    function getAllCategories($postsService){
        return $postsService->getAllCategories();
    }

    function validatePostData($postData){
        if(!isset($postData['title']) || strlen($postData['tile']) < 10){
            throw new Exception("Заглавието трябва да е поне 10 символа!", 400);
        }
        if(!isset($postData['summary']) || $postData['summary'] < 10){
            throw new Exception("Резюмето трябва да е поне 10 символа!", 400);
        }
        if(!isset($postData['text']) || $postData['text'] < 20){
            throw new Exception("Текства трябва да е поне 20 символа!", 400);
        }
        if(!isset($postData['category_id'])){
            throw new Exception("Трябва да изберете категория!!", 400);
        }
    }