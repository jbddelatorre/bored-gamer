<?php 
	session_start();
	
	$id = $_POST['id'];
	$qty = $_POST['qty'];

	$duplicate = false;

	// var_dump(array('id' => $id, 'qty' => $qty));
	// var_dump($id, $qty);

	// $_SESSION['datatrial'] = $data;

	foreach($_SESSION['cart'] as $key => $cart_item) {
		if ($cart_item['id'] == $id) {
			$duplicate = true;

			$_SESSION['cart'][$key]['qty'] += $qty;
			echo 'duplicate';
		} 
	}

	if ($duplicate == false) {
		echo 'success';
		array_push($_SESSION['cart'], array('id' => $id, 'qty' => $qty));
	}

	

	$cart = $_SESSION['cart'];

	// var_dump($cart);

	
?>