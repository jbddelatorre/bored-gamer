<?php 
	session_start();

	$_SESSION['cart'] = array();

	header('Location: ../views/cart.php');

 ?>