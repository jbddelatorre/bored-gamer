<?php 
	require_once('./connect.php');
	session_start();

	$id = $_POST['id'];

	// echo "$id";

	foreach($_SESSION['cart'] as $key => $cart_item) {
		if ($cart_item['id'] == $id) {
			unset($_SESSION['cart'][$key]);
		} else {
			echo 'fail';
		}
	}

	// $cart = $_SESSION['cart'];

	// var_dump($cart);

	// 

 ?>