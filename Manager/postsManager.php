<?php

require_once('config.php');
require_once('Models/Post.php');

class PostsManager{
    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    function getPosts(){
        $query = $this->pdo->prepare("SELECT posts.id, posts.title, posts.text, users.username, posts.votes, categories.name, posts.summary, posts.answers
                                          FROM posts
                                          JOIN categories ON posts.category_id = categories.id
                                           JOIN users ON posts.user_id = users.id");

        $query->execute();

        $data = $query->fetchAll();
        $allPosts = [];
        foreach ($data as $post){
            array_push($allPosts, $post);
        }

        return $allPosts;
    }
}