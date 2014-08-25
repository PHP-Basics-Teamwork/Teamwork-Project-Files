<?php

require_once('../config.php');
require_once('../Models/Post.php');

class PostsManager {

    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    function getPostsByCategory() {
        $query = $this->pdo->prepare("SELECT posts.id, posts.title, posts.text, posts.user_id, posts.votes, posts.category_id
                                          FROM posts
                                          JOIN categories ON posts.category_id = categories.id ");

        $query->execute();

        $data = $query->fetchAll();
        $allPosts = [];
        foreach ($data as $post) {
            array_push($allPosts, $post);
        }

        return $allPosts;
    }

    function getPostByID($id) {
        $query = $this->pdo->prepare("SELECT id, title, text 
                                          FROM posts
                                          WHERE id = :id");
        $query->bindParam(':id', $id);
        $query->execute();

        $data = $query->fetch();
        if ($data) {
            return new Post($data);
        }
        return null;
    }

    function changePost($id, $title, $text) {
        $query = $this->pdo->prepare("UPDATE posts
                                          SET title = :title 
                                          AND text = :text
                                          WHERE id = :id");
        $query->bindParam(':id', $id);
        $query->bindParam(':title', $title);
        $query->bindParam(':text', $text);
        $query->execute();
    }

    function deletePost($id) {
        $query = $this->pdo->prepare("DELETE FROM posts
                                        WHERE id = :id");
        $query->bindParam(':id', $id);
        $query->execute();
    }

}
