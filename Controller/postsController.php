<?php
    session_start();

    require_once('Service/postService.php');
    
    $postService = new PostService();