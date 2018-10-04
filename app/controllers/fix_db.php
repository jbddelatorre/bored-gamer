<?php 
	require_once('./connect.php');
	session_start();

	// categories 1-3
	// games types 1-6
	// trends 1-5

	// rand(1-3)
	// rand(1-6)
	// rand(1-5)

	// $sql = "UPDATE items SET price = ROUND(400 + RAND()*5000, 2)";

	// $result = mysqli_query($conn, $sql);

	$sql = "SELECT id, name, mechanic, category FROM items";
	$result = mysqli_query($conn, $sql);

	while ($row = mysqli_fetch_assoc($result)) {
		$name = $row['name'];
		$mech = $row['mechanic'];
		$cat = $row['category'];
		$id = $row['id'];

		$sql_u = "UPDATE items set item_desc='The title of this boardgames is $name . Its main mechanics are the follow: $mech . This boardgame also falls under these sub categories: $cat' where id = $id";

		$result_u = mysqli_query($conn, $sql_u);
	}  

	$sql_delete = "DELETE from items where id > 2000";
	$result_delete = mysqli_query($conn, $sql_delete);


mysqli_close();

	// $num = rand(1,3);
	// echo $num;
