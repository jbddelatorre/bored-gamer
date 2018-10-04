<?php 
	require_once('./connect.php');
	session_start();

	$item_id = $_POST['id'];
	$name = $_POST['name'];
	$price = $_POST['price'];
	$item_image = $_POST['item_image'];
	$item_desc = $_POST['item_desc'];
	$min_players = $_POST['min_players'];
	$max_players = $_POST['max_players'];
	$average_length_id = $_POST['average_length_id'];
	$categories_id = $_POST['categories_id'];
	$game_types_id = $_POST['game_types_id'];
	$trends_id = $_POST['trends_id'];
	$publisher = $_POST['publisher'];
	$rating = $_POST['rating'];

	$sql = "UPDATE items SET item_desc='$item_desc', item_image='$item_image', name='$name', price=$price, min_players=$min_players, max_players=$max_players, average_length_id=$average_length_id, game_types_id=$game_types_id, trends_id=$trends_id, categories_id=$categories_id, publisher='$publisher', rating=$rating where id=$item_id";

	$result = mysqli_query($conn, $sql);

	// echo json_encode($sql);