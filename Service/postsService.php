<?php

require_once('Manager/postManager.php');

class UsersService {

    private $manager;

    function __construct() {
        $this->manager = new PostManager();
    }

    function changePost($title, $text) {

        $this->manager->changePost($post->getId(), $post->getTitle, $post->getText);
    }

    function getPostByID($id) {
        return $this->manager->getPostByID($id);
    }

}
