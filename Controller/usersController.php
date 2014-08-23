<?php
    require('../Service/usersService.php');

    $userService = new UsersService();

    if(isset($_POST['registerUser'])){
        $userService->registerUser($_POST);
    }
?>