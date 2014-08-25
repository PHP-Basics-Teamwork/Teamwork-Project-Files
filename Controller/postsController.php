<?php

require_once('Service/postsService.php');

function getPosts(){
    $postsService = new PostsService();
    $allPosts = $postsService->getAllPosts();
    return $allPosts;
}
