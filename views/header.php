<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="styles/styles.css"/>
    <meta charset="UTF-8">
</head>
<body>
<header>
    <div id="navigation">
    <?php
    include 'views/search.php';
    include('views/menu.php');
    ?>
    </div>
    <a href="index.php?page=main">
    <img src="images/logo.png" alt="" class="logo"/>
    </a>
</header>