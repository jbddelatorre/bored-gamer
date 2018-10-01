<?php 
	require_once('./connect.php');
	session_start();

$username = $_POST['inputUsername'];
$password = $_POST['inputPassword'];

	$sql = "SELECT * FROM users where username='$username'";

	// $password_input = password_hash($password, PASSWORD_BCRYPT);

	// echo "$sql";

	$result = mysqli_query($conn, $sql);


	if ( mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_assoc($result);

		// echo $row['password'];
		// echo '00000000';
		// echo $row['password'];		

		// if ($row['password'] == $password_input) {
		if (password_verify($password, $row['password'])) {
			$_SESSION['user_data'] = $row;
			$_SESSION['cartQuantity'] = 0;
			$_SESSION['cart'] = array();

			header('Location: ../views/catalog.php' );
		} else {
			$_SESSION['login_message'] = 'Incorrect Password';
			header('Location: ../views/login.php' );
		}
		// var_dump($row) ;
	} else {
		$_SESSION['login_message'] = 'Username does not exist';
		header('Location: ../views/login.php' );
	}
