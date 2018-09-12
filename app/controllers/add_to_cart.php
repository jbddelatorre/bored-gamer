<?php 
	session_start();
	
	$id = $_POST['id'];
	$qty = $_POST['qty'];

	// var_dump(array('id' => $id, 'qty' => $qty));
	// var_dump($id, $qty);

	// $_SESSION['datatrial'] = $data;
	array_push($_SESSION['cart'], array('id' => $id, 'qty' => $qty));

	$cart = $_SESSION['cart'];

	var_dump($cart);

	
?>