<ul>
	<li><a href="index.php?page=main">Home</a></li>
	<li><a href="index.php?page=question">Question</a></li>
	<li><a href="index.php?page=profiletemplate">Profile Example</a></li>
	<?php
       if($user){
    ?>
    <li><a href="index.php?page=profile">Profile</a></li>
           <li><a href="index.php?page=logout">Logout</a></li>
    <?php
       }
       else {
    ?>
	<li><a href="index.php?page=login">Login</a></li>
    <li><a href="index.php?page=register">Register</a></li>
    <?php
        }
    ?>
</ul>