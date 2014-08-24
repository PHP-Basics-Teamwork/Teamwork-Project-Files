<?php

require_once('../config.php');
require_once('../Models/Post.php');

class PostsManager{
    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    function getPostsByCategory($categoryID){
        $query = $this->pdo->prepare("SELECT id, title, text, user_id, votes, category_id
                                          FROM posts
                                          WHERE category_id LIKE :catID");
        $query->bindParam(':catID', $categoryID);
        $query->execute();

        $data = $query->fetch();
        if($data){
            return new Post($data);
        }
        return null;
    }


}

$posts = new PostsManager();
$allPosts = $posts->getPostsByCategory(1);
var_dump($allPosts);