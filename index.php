<?php
	//php logic
	require 'config.php';
	require 'manager.php';
	require 'services.php';

	include 'views/header.php';
	//if loged
	include('views/menu.php');
	include('views/main.php');
	//else
	//include('views/login.php');
	
	
	include 'views/footer.php';
?>