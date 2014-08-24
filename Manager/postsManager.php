<?php

require_once('../config.php');
require_once('../Models/Post.php');

class PostsManager{
    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    function getPostsByCategory(){
        $query = $this->pdo->prepare("SELECT posts.id, posts.title, posts.text, posts.user_id, posts.votes, posts.category_id
                                          FROM posts
                                          JOIN categories ON posts.category_id = categories.id ");

        $query->execute();

        $data = $query->fetchAll();
        $allPosts = [];
        foreach ($data as $post){
            array_push($allPosts, $post);
        }

        return $allPosts;
    }


}