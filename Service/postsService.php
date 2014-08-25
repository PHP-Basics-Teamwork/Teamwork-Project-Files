<<<<<<< HEAD
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
=======
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
>>>>>>> 8aeaa281dc1b280511e7a1ae21b7402d69d5b672
