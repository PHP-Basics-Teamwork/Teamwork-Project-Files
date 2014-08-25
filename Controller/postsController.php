<<<<<<< HEAD
<?php

require_once('Service/postsService.php');

function getPosts(){
    $postsService = new PostsService();
    $allPosts = $postsService->getAllPosts();
    return $allPosts;
}

=======
<?php
    session_start();

    require_once('Service/postService.php');
    
    $postService = new PostService();
>>>>>>> 8aeaa281dc1b280511e7a1ae21b7402d69d5b672
