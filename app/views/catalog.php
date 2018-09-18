<?php 
	include_once '../partials/header.php';
	require_once('../controllers/connect.php');
	session_start();
	// $_SESSION['game_id_filter'] = 'ALL';
	// $_SESSION['type_id_filter'] = 'ALL';
?>

	<link rel='stylesheet' type='text/css' href='./catalog.css'>
</head>
<body>
	<?php include_once '../partials/navbar.php'; ?>
	<?php include_once '../partials/subnavbar.php'; ?>

	<div class="appViewBox">
	
	<h1>Board Game Store - Catalog</h1>
	<h2>Welcome 
		<span><?php 
			if(!isset($_SESSION['user_data'])) echo 'Guest';
			else echo $_SESSION['user_data']['first_name'];?>
		</span>
		<span><?php 
			if(!isset($_SESSION['user_data'])) echo '<a href="./login.php">Login</a>';
			else echo '<a href="../controllers/logout.php">Logout</a>';?>
		</span>
		<span><?php 
			if(!isset($_SESSION['user_data'])) echo '<a href="./register.php">Register</a>';
			else echo '<a href="./cart.php">Go to my Cart</a>'; ?>
		</span>
		<span>

		</span>
	</h2>


	<div id='catalogContainer'>
		<div id='filterbarContainer'>
			<ul class='list-group'>
			  <li class='list-group borderless'>Filter by Game</li>
			  <li class='list-group-item' onClick = set_filter('board_games')>Board Games</li>
			  <li class='list-group-item' onClick = set_filter('card_games')>Card Games</li>
			  <li class='list-group-item' onClick = set_filter('special_games')>Special Games</li>
			</ul>
			<ul class='list-group'>
			  <li class='list-group borderless'>Filter by Type</li>
			  <li class='list-group-item' onClick = set_filter('strategy')>Strategy</li>
			  <li class='list-group-item' onClick = set_filter('party')>Party / Socialize</li>
			  <li class='list-group-item' onClick = set_filter('for_fun')>For Fun</li>
			  <li class='list-group-item' onClick = set_filter('kids')>Kids</li>
			  <li class='list-group-item' onClick = set_filter('cooperative')>Cooperative</li>
			  <li class='list-group-item' onClick = set_filter('puzzle')>Puzzle</li>
			</ul>	
			<ul class='list-group'>
			  <li class='list-group borderless'>Remove Filters</li>
			</ul>	
		</div>

		<div id='rightSide'>
			<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="../assets/image/carousel-image1.jpg" alt="First slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="../assets/image/carousel-image2.jpg" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="../assets/image/carousel-image3.jpg" alt="Third slide">
			    </div>
			  </div>
			</div>
			<h2 id="forSaleHeader">Board Games</h2>
			<div id='itemsForSale'>

				<?php
					$sql = "SELECT * FROM items";
					// if (isset($_SESSION['game_id_filter']) && isset($_SESSION['type_id_filter'])) {
					// 	
					// } else {
					// 	if (!isset($_SESSION['game_id_filter']) && !isset($_SESSION['type_id_filter']))
					// 	if (isset($_SESSION['game_id_filter'])) {
					// 		$sql = $sql . " where categories_id = $gamefilter";
					// 	} 
					// 	if (isset($_SESSION['type_id_filter'])) {
					// 		$sql = $sql . " where game_types_id = $typefilter";
					// 	}
					// }

					// echo $sql;

					$result = mysqli_query($conn, $sql);

					if (mysqli_num_rows($result) > 0) {

						while($row = mysqli_fetch_assoc($result)) {
							echo "<div id='cardContainer'>
								<div class='card' style='width: 18rem;'>
								  <img class='card-img-top' src='". $row['item_image'] ."' alt='Card image cap'>
								  <div class='card-body'>
								    <h5 class='card-title'>". $row['name'] ."</h5>
								    <p class='card-text'>". $row['item_desc'] ."</p>
								    <h6> <strong>PHP</strong> ". $row['price'] ."<span><input type='number' id=qty".$row['id']." class='item-qty' name='inputQuantity' min='1' value='1'></span> QTY</h6>
								    ";
								    	if(isset($_SESSION['user_data'])) {
											echo "<a onClick=addToCart(".$row['id'].") class='btn btn-primary'>Add To Cart</a>";
										} else {
											echo "<a href='./login.php' class='btn btn-primary'>Add To Cart</a>";
										}
								     echo "</div>
								</div>
							</div>";  
						}
					}
				 ?>

			</div>
		</div>
	</div>
	</div>



<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>

<script type="text/javascript">
	const set_filter = (filter) => {
		$.ajax({
			url: '../controllers/filter_items.php',
			data: {filter: filter},
			type: 'GET',
			success: (data) => {
				let dataParse = JSON.parse(data);

				const dataFiltered = dataParse.filter;
				const login = dataParse.login;

				$('#itemsForSale').empty();

				for (let key in dataFiltered) {
					$('#itemsForSale').append(`
						<div id='cardContainer'>
							<div class='card' style='width: 18rem;'>
								<img class='card-img-top' src="${dataFiltered[key]['item_image']}" alt='Card image cap'>
								<div class='card-body'>
									<h5 class='card-title'>${dataFiltered[key]["name"]}</h5>
									<p class='card-text'>${dataFiltered[key]["item_desc"]}</p>
									<h6> <strong>PHP</strong>${dataFiltered[key]["price"]}<span><input type='number' id=qty${dataFiltered[key]['id']} class='item-qty' name='inputQuantity' min='1' value='1'></span> QTY</h6>
									${login 
										? `<a onClick=addToCart(${dataFiltered[key]['id']}) class='btn btn-primary'>Add To Cart</a>`
										: `<a href="./login.php" class='btn btn-primary'>Add To Cart</a>`	
									}
								</div>
							</div>
					</div>`)
				}
			}
		})
	}



	const addToCart = (id) => {
		const qty_dom = document.querySelector(`input[id="qty${id}"]`)
		qty = Math.floor(qty_dom.value);

		if (qty < 1) {
			qty = 1;
		}

		$.ajax({
			url: '../controllers/add_to_cart.php',
			data: {id: id, qty: qty},
			type: 'POST',
			success: (data) => {
				console.log(data);
			}
		})
	}

</script>

	

<?php 
	include_once '../partials/footer.php';
?>


