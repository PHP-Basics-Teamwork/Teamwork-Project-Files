<main>

    <?php
    require_once('Controller/usersController.php');

    $userService = new UsersService();

    if(isset($_SESSION['sessionKey'])){
        $user = $userService->getUserBySessionKey($_SESSION['sessionKey']);
    }
    else{
        $user = null;
    }

   // var_dump($user);

    ?>

    <section>
        <header>
            <h1>ИНФОРМАЦИЯ ЗА ПОТРЕБИТЕЛ</h1>
        </header>
	   <ul id="basicinfo">
		   <li><h4><?php echo $user->getUsername()?></h4></li>
		   <li><h5 class="postition">
                   <?php
                    if ($user->isAdmin() == 1){
                        echo "Администратор";
                    } else {
                        echo "Потребител";
                    }
                   ?>
               </h5></li>
		   <li><img src="img/Icon-user.png" alt="userPic"></li>
<!--		   <li><a href="#" class="showMore">Show Posts</a></li>-->
	   </ul>
        <div id="aboutUser">
            <ul>
                <li><span class="profile-label">Име:</span> <?php echo $user->getFirstName()?></li>
                <li><span class="profile-label">Фамилия: </span> <?php echo $user->getLastName()?></li>
                <li><span class="profile-label">Пол: </span> <?php echo $user->getGender()?></li>
                <li><span class="profile-label">E-mail:</span> <?php echo $user->getEmail()?></li>
            </ul>

        </div>
    </section>
</main>
