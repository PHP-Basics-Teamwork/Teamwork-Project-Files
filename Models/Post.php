<?php

class Post {

    private $id;

    private $title;

    private $text;

    private $categoryID;

    private $userID;

    private $votes;

    private $bestAnswerID;


    function __construct($userData = null) {

        if(isset($userData['id'])){
            $this->id = $userData['id'];
        }
        if(isset($userData['title'])){
            $this->title = $userData['title'];
        }
        if(isset($userData['text'])){
            $this->text = $userData['text'];
        }
        if(isset($userData['categoryID'])){
            $this->categoryID = $userData['categoryID'];
        }
        if(isset($userData['userID'])){
            $this->userID = $userData['userID'];
        }
        if(isset($userData['votes'])){
            $this->votes = $userData['votes'];
        }
        if(isset($userData['bestAnswerID'])){
            $this->bestAnswerID = $userData['bestAnswerID'];
        }

    }

    /**
     * @param string title
     * @return Post
     */
    public function setTitle($title)
    {
        $this->title = $title;
        return $this;
    }

    /**
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param int id
     * @return Post
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
     * @return Post
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
     * @return string
     */
    public function getCategoryID()
    {
        return $this->categoryID;
    }

    /**
     * @param $categoryID
     * @return Post
     */
    public function setCategoryID($categoryID)
    {
        $this->categoryID = $categoryID;
        return $this;
    }

    /**
     * @return int
     */
    public function getUserID()
    {
        return $this->userID;
    }

    /**
     * @param int $userID
     */
    public function setUserID($userID)
    {
        $this->userID = $userID;
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

    /**
     * @return int
     */
    public function getBestAnswerID()
    {
        return $this->bestAnswerID;
    }

    /**
     * @param int $bestAnswerID
     */
    public function setBestAnswerID($bestAnswerID)
    {
        $this->bestAnswerID = $bestAnswerID;
    }

}

