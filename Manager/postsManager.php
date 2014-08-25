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



    function getPostByIDAll($id) {
        $query = $this->pdo->prepare("SELECT *
                                          FROM posts
                                          JOIN users ON posts.user_id = users.id
                                          WHERE posts.id = :id");
        $query->bindParam(':id', $id);
        $query->execute();

        $data = $query->fetch();
        if ($data) {
            return new Post($data);
        }
        return null;
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

    function addPost(Post $post){
        $query = $this->pdo->prepare("INSERT INTO posts (title, summary, text, category_id, user_id)
                                VALUES (:title, :summary, :text, :categoryId, :userId)");
        $query -> bindParam(':title', $post->getTitle());
        $query -> bindParam(':summary', $post->getSummary());
        $query -> bindParam(':text', $post->getText());
        $query -> bindParam(':categoryId', $post->getCategoryID());
        $query -> bindParam(':userId', $post->getUserID());

        $query->execute();
    }

    function getAllCategories(){
        $query = $this->pdo->prepare("SELECT id, name
                                      FROM categories");
        $query->execute();

        $categories = $query->fetchAll();

        return $categories;
    }
}