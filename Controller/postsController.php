<?php

    require_once('Service/postsService.php');

    $postsService = new PostsService();

    if(isset($_POST['addPost'])){
        try{
            if(!$user){
                throw new Exception('Не сте влезли в акаунта си!');
            }
            $newPost = new Post($_POST);
            $newPost->setUserID($user->getId());
            $postsService->addPost($newPost);

            header("Location: index.php");
        }
        catch(Exception $ex){
            $error = $ex->getMessage();
            header("Location: index.php?page=error&error=".$error);
        }
    }

    function getSearchResults($postsService){
        try{
            if(isset($_POST['search']) && strlen($_POST['search']) != 0){
                $results = $postsService->search($_POST['search']);
                return $results;
            }
        }
        catch(Exception $ex){
            $error = $ex->getMessage();
            header("Location: index.php?page=error&error=".$error);
        }
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