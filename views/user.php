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
            <h1>USER INFORMATION</h1>
        </header>
	   <ul id="basicinfo">
		   <li><h4><?php echo $user->getUsername()?></h4></li>
		   <li><h5 class="postition">
                   <?php
                    if ($user->isAdmin() == 1){
                        echo "Administrator";
                    } else {
                        echo "User";
                    }
                   ?>
               </h5></li>
		   <li><img src="resources/userPic.jpg" alt="userPic"></li>
		   <li><div id="userstatus">Online</div></li>
	   </ul>
        <div id="aboutUser">
            <ul>
                <li><span class="profile-label">First name:</span> <?php echo $user->getFirstName()?></li>
                <li><span class="profile-label">Last name: </span> <?php echo $user->getLastName()?></li>
                <li><span class="profile-label">Gender: </span> <?php echo /*$user->getGender()*/ "Male";?></li>
                <li><span class="profile-label">E-mail:</span> <?php echo $user->getEmail()?></li>
            </ul>

        </div>
    </section>
</main>
