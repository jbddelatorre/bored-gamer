<?php 
	require_once('./connect.php');
	session_start();

	$sql = "SELECT  i.id, i.item_desc, i.item_image, i.name, i.price, i.min_players, i.max_players, i.average_length_id, tr.trend_names, cat.category_names, gt.game_type_names, i.publisher, i.rating 
		from items as i
			JOIN trends as tr
				ON i.trends_id = tr.id
			JOIN categories as cat 
				ON i.categories_id = cat.id
			JOIN game_types as gt 
				ON i.game_types_id = gt.id";

	$result = mysqli_query($conn, $sql);

	$items_array = array();

	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			array_push($items_array, $row);
		}
	}

	// echo $sql;

	echo json_encode($items_array);