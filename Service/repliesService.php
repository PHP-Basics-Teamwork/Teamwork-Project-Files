<?php
require_once('Manager/replyManager.php');

class RepliesService{
    private $manager;

    function __construct() {
        $this->manager = new ReplyManager();
    }

    function addReply(Reply $reply){
        $this->manager->addReply($reply);
    }

}