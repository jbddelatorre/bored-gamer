<?php 
	require_once('./connect.php');

	$username = $_POST['registerUsername'];
	$password = $_POST['registerPassword'];
	$verifypassword = $_POST['registerVerifyPassword'];
	$email = $_POST['registerEmail'];
	$first_name = $_POST['registerFirstName'];
	$last_name = $_POST['registerLastName'];
	$address = $_POST['registerAddress'];
	$contact = $_POST['registerContact'];


	$sql_query = "INSERT INTO users(first_name, last_name, email, contact, address, username, password, roles_id) values ('$first_name', '$last_name', '$email', '$contact', '$address', '$username', '$password', 1)";

	// var_dump($sql_query);
	// var_dump(mysqli_query($conn, $sql_query));

	if (mysqli_query($conn, $sql_query)) {
		header("Location: ../views/register.php");

	} else {
		echo "Error: " . $sql_query . "<br>" . mysqli_error($conn);
		echo "error";
	}

	