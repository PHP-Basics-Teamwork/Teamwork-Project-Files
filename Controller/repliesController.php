<?php
require_once('Service/repliesService.php');

$repliesService = new RepliesService();

if(isset($_POST['addReply'])){
    try{
        if(!$user){
            throw new Exception("Трябва да влезете в профила си!", 400);
        }
        if(!isset($_POST['text']) || strlen($_POST['text']) < 2 ){
            throw new Exception("Твърде кратък отговор!", 400);
        }

        $reply = new Reply($_POST);
        $reply->setPostID($_GET['id']);
        $reply->setUserID($user->getId());

        $repliesService->addReply($reply);
    }
    catch(Exception $ex){
        $error = $ex->getMessage();
        header("Location: index.php?page=error&error=".$error);
    }
}
