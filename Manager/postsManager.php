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

        //$query->bindParam(':catID', $categoryID);
        $query->execute();

        $data = $query->fetchAll();
        if($data){
            return new Post($data);
        }
        return null;
    }


}

$allPosts = [];
$posts = new PostsManager();
foreach ($posts->getPostsByCategory() as $post){
    array_push($allPosts, $post);
}

var_dump($posts->getText());
var_dump($allPosts->getText());