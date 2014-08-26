<?php

class Post {

    private $id;

    private $title;

    private $text;

    private $summary;

    private $categoryName;

    private $categoryID;

    private $userID;

    private $votes;

    private $answers;

    private $bestAnswerID;

    private $username;

    private $date;

    function __construct($postData = null) {

        if(isset($postData['id'])){
            $this->id = $postData['id'];
        }
        if(isset($postData['title'])){
            $this->title = htmlentities($postData['title']);
        }
        if(isset($postData['text'])){
            $this->text =  htmlentities($postData['text']);
        }
        if(isset($postData['categoryName'])){
            $this->categoryName =  htmlentities($postData['categoryName']);
        }
        if(isset($postData['user_id'])){
            $this->userID = $postData['user_id'];
        }
        if(isset($postData['votes'])){
            $this->votes = $postData['votes'];
        }
        if(isset($postData['answers'])){
            $this->answers = $postData['answers'];
        }
        if(isset($postData['summary'])){
            $this->summary =  htmlentities($postData['summary']);
        }
        if(isset($postData['best_answer_id'])){
            $this->bestAnswerID = $postData['best_answer_id'];
        }
        if(isset($postData['username'])){
            $this->username =  htmlentities($postData['username']);
        }
        if(isset($postData['category_id'])){
            $this->categoryID = $postData['category_id'];
        }
        if(isset($postData['date'])){
            $this->date = $postData['date'];
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
    public function getSummary()
    {
        return $this->summary;
    }

    /**
     * @param string summary
     * @return Post
     */
    public function setSummary($summary)
    {
        $this->summary = $summary;
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
    public function getCategoryName()
    {
        return $this->categoryName;
    }

    /**
     * @param $categoryName
     * @return Post
     */
    public function setCategoryName($categoryName)
    {
        $this->categoryName = $categoryName;
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
    public function getAnswers()
    {
        return $this->answers;
    }

    /**
     * @param int answers
     */
    public function setAnswers($answers)
    {
        $this->answers = $answers;
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

    /**
     * @return string
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * @param string summary
     * @return Post
     */
    public function setUsername($username)
    {
        $this->username = $username;
        return $this;
    }

    /**
     * @param $categoryID
     */
    public function setCategoryID($categoryID)
    {
        $this->categoryID = $categoryID;
    }

    /**
     * @return ind
     */
    public function getCategoryID()
    {
        return $this->categoryID;
    }

    /**
     * @param $date
     */
    public function setDate($date)
    {
        $this->date = $date;
    }

    /**
     * @return date
     */
    public function getDate()
    {
        return $this->date;
    }


}

