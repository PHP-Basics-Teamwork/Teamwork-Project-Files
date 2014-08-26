<?php

require_once('config.php');
require_once('Models/Reply.php');

class replyManager {

    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum;charset=utf8', DATABASE_USER);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    
    function getReplyByID($id) {
        $query = $this->pdo->prepare("SELECT id, text, user_id, post_id, votes 
                                          FROM replies
                                          WHERE id LIKE :id");
        $query->bindParam(':id', $id);
        $query->execute();

        $data = $query->fetch();
        if ($data) {
            return new Reply($data);
        }
        return null;
    }

    function getAllRepliesByTopicID($id){
        $query = $this->pdo->prepare("SELECT *
                                          FROM replies
                                          JOIN users ON replies.user_id = users.id
                                          WHERE post_id LIKE :id ORDER BY replies.id ASC");
        $query->bindParam(':id', $id);
        $query->execute();


        $data = $query->fetchAll();
        $allReplies = [];
        foreach ($data as $reply){
            array_push($allReplies, $reply);
        }

        return $allReplies;
    }

    function addReply(Reply $reply){
        $query = $this->pdo->prepare("INSERT INTO replies (text, post_id, user_id)
                                VALUES (:text, :postId, :userId)");
        $query -> bindParam(':text', $reply->getText());
        $query -> bindParam(':postId', $reply->getPostID());
        $query -> bindParam(':userId', $reply->getUserID());

        $query->execute();

        $query = $this->pdo->prepare("UPDATE posts
                                          SET answers = answers + 1
                                          WHERE id = :id");
        $query->bindParam(':id', $reply->getPostID());
        $query->execute();
    }
    
}
