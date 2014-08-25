<?php

require_once('Manager/postManager.php');

class UsersService {

    private $manager;

    function __construct() {
        $this->manager = new PostManager();
    }

    function changePost($id, $title, $text) {

        $this->manager->changePost($post->getId(), $title, $text);
    }

    function getPostByID($id) {
        return $this->manager->getPostByID($id);
    }

}
