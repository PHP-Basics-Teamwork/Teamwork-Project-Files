<div id="menu">
<ul>
	<li><a href="index.php?page=main">Home</a></li>

	<?php
       if($user){
    ?>
           <li><a href="index.php?page=question">Question</a></li>
           <li><a href="index.php?page=addPost">Добави тема</a></li>
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
</div>