<?php 
	require_once('./connect.php');
	session_start();

	$id = $_SESSION['user_data']['id'];

	$type = $_POST['id'];
	$value = $_POST['value'];








	if ($type == 'username' or $type == 'email') {
		$sql_find = "SELECT $type from users where $type = '$value'";
		$result_find = mysqli_query($conn, $sql_find);

		if (mysqli_num_rows($result_find) > 0) {

			while ($row = mysqli_fetch_assoc($result_find)) {
				if ($row[$type] == $value) echo json_encode(2);
			}

			echo json_encode(0);
		}
	} else {
		$sql = "UPDATE users SET $type = '$value' where id = $id";
		$result = mysqli_query($conn, $sql);

		$_SESSION['user_data'][$type] = $value;

		echo json_encode(1);
	}


	

	// echo $sql;

	// var_dump($_SESSION['user_data']);


