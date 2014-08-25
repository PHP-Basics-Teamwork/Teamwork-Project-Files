<?php

class Reply {
    
    private $id;

    private $text;

    private $user_id;

    private $post_id;

    private $votes;
    
    function __construct($replyData = null) {

        if(isset($replyData['id'])){
            $this->id = $replyData['id'];
        }
        if(isset($replyData['text'])){
            $this->text = $replyData['text'];
        }
        if(isset($replyData['user_id'])){
            $this->user_id = $replyData['user_id'];
        }
        if(isset($replyData['post_id'])){
            $this->post_id = $replyData['post_id'];
        }
        if(isset($replyData['votes'])){
            $this->votes = $replyData['votes'];
        }

    }
    
    /**
     * @param int id
     * @return Reply
     */
    public function setId($id)
    {
        $this->id = $id;
        return $this;
    }

    /**
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param $text
     * @return Reply
     */
    public function setText($text)
    {
        $this->text = $text;
        return $this;
    }

    /**
     * @return string
     */
    public function getText()
    {
        return $this->text;
    }

    /**
     * @return int
     */
    public function getUserID()
    {
        return $this->user_id;
    }

    /**
     * @param int $user_id
     */
    public function setUserID($user_id)
    {
        $this->user_id = $user_id;
    }

    /**
     * @return int
     */
    public function getPostID()
    {
        return $this->post_id;
    }

    /**
     * @param int $post_id
     */
    public function setPostID($post_id)
    {
        $this->post_id = $post_id;
    }
    
    /**
     * @return int
     */
    public function getVotes()
    {
        return $this->votes;
    }

    /**
     * @param int $votes
     */
    public function setVotes($votes)
    {
        $this->votes = $votes;
    }
    
}
