<?php 
	include_once '../partials/header.php';
	require_once('../controllers/connect.php');
	session_start();
?>

	<link rel='stylesheet' type='text/css' href='./cart.css'>
</head>
<body>
	
	<?php 
		if(!isset($_SESSION['user_data'])) {
			header('Location: ./catalog.php');
		}
	 ?>


		<h1>Board Game Store - CartPage</h1>
		<a href="./catalog.php">go to catalog</a>
		<a href="../controllers/clear_cart.php">CLEAR CART</a>

		<div id="cartApp">
			<div id="cartContainer">
				<?php 
					if(count($_SESSION['cart']) > 0) {
						$cart = $_SESSION['cart'];
						$totalprice = 0;

							echo '<table>';
							echo '<tr>';
								echo '<th>Image</th>';
								echo '<th>Name</th>';
								echo '<th>Qty</th>';
								echo '<th>Price</th>';
								echo '<th>Item Description</th>';
								echo '<th>Subtotal</th>';
								echo '<th class="td-short"></th>';
							echo '</tr>';

						foreach($cart as $cart_item) {
							$sql = "SELECT * from items where id='$cart_item[id]'";

							if ($cart_item['qty'] <= 0) {
								continue;
							}

							$result = mysqli_query($conn, $sql);
							$row = mysqli_fetch_assoc($result);

							$subtotal = $row['price'] * $cart_item['qty'];

							echo '<tr>';
								echo "<td><img src=".$row['item_image']."></td>";
								echo "<td>".$row['name']."</td>";
								echo "<td>". $cart_item['qty'] ."</td>";
								echo "<td>".$row['price']."</td>";
								echo "<td>".$row['item_desc']."</td>";
								echo "<td>PHP ". $subtotal."</td>";
								echo "<td><button onClick = deleteItem(". $row['id'] .") class='btn btn-danger'>DELETE</button></td>";
								$totalprice = $totalprice + $subtotal;
							echo '</tr>';
						}
							echo '<tr>';
								echo "<td></td>";
								echo "<td></td>";
								echo "<td></td>";
								echo "<td></td>";
								echo "<td><strong>Total Price</strong></td>";
								echo "<td><strong>PHP ".$totalprice."</strong></td>";
							echo '</tr>';

							echo '</table>';
					} else {
						echo '<p>Empty Cart</p>';
					}

				 ?>
			</div>
		</div>


<script type="text/javascript">
	const deleteItem = (id) => {
		$.ajax({
			url: '../controllers/delete_cart_item.php',
			data: {id:id},
			type:'POST',
			success: (data) => {
				console.log(data);
				window.location.reload();
			}
		}) 
	}

</script>

<?php 
	include_once '../partials/footer.php';
?>