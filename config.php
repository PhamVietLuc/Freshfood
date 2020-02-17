<?php 
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$database = "fresh_food.vn";
	$db = mysqli_connect($hostname,$username,$password,$database);
	mysqli_set_charset($db,"UTF8");
 ?>