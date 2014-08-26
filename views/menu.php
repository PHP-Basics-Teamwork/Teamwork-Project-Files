<div id="menu">
<ul>
	<li><a href="index.php?page=main">Начало</a></li>

	<?php
       if($user){
    ?>
           <li><a href="index.php?page=user">Профил</a></li>
           <li><a href="index.php?page=addPost">Добави тема</a></li>
           <li><a href="index.php?page=logout">Изход</a></li>
    <?php
       }
       else {
    ?>
	<li><a href="index.php?page=login">Вход</a></li>
    <li><a href="index.php?page=register">Регистрация</a></li>
    <?php
        }
    ?>
</ul>
</div>