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

}