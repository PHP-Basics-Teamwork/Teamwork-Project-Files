<?php

require_once('../config.php');
require_once('../Models/Reply.php');

class replyManager {

    private $pdo;

    function __construct() {
        $this->pdo = new PDO('mysql:host=localhost;dbname=forum', DATABASE_USER);
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
    
}
