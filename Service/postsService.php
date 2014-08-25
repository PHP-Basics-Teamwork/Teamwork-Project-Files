<?php

require_once('Manager/postsManager.php');

class PostsService{
    private $manager;

    function __construct() {
        $this->manager = new PostsManager();
    }

    function getAllPosts(){
        return $this->manager->getPosts();
    }


    function changePost($id, $title, $text) {
        $this->manager->changePost($id, $title, $text);
    }

    function getPostByID($id) {
        return $this->manager->getPostByID($id);
    }

    function getPostByIDAll($id) {
        return $this->manager->getPostByIDAll($id);
    }

    function addPost(Post $post){
        $this->manager->addPost($post);
    }

    function getAllCategories(){
        return $this->manager->getAllCategories();
    }

    function search($queryText){
        return $this->manager->search($queryText);
    }
}