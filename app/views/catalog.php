<?php 
	include_once '../partials/header.php';
	require_once('../controllers/connect.php');
	session_start();
	// $_SESSION['game_id_filter'] = 'ALL';
	// $_SESSION['type_id_filter'] = 'ALL';
?>

	<link rel='stylesheet' type='text/css' href='./catalog.css'>
	<link rel="stylesheet" href="../assets/css/spinner.css">
</head>
<body onscroll="adjustHeight()">
	<?php include_once '../partials/navbar.php'; ?>
	
	<div class="appViewBox">
	
		<h1>Our Board Game Library</h1>

		<!-- <div class="loader"></div> -->

		<div id='catalogContainer'>
			<div id='filterbarContainer'>
				<div id="filterdiv">
				<p>Filter by Game</p>
				<ul class='list-group'>
				  <li id='board_games'class='list-group-item game-filter-list-item' onClick = set_filter('board_games')>Board Games</li>
				  <li id='card_games'class='list-group-item game-filter-list-item' onClick = set_filter('card_games')>Card Games</li>
				  <li id='special_games'class='list-group-item game-filter-list-item' onClick = set_filter('special_games')>Special Games</li>
				</ul>
				<p>Filter by Type</p>
				<ul class='list-group'>
				  <li id='strategy' class='list-group-item type-filter-list-item' onClick = set_filter('strategy')>Strategy</li>
				  <li id='party' class='list-group-item type-filter-list-item' onClick = set_filter('party')>Party / Socialize</li>
				  <li id='for_fun' class='list-group-item type-filter-list-item' onClick = set_filter('for_fun')>For Fun</li>
				  <li id='kids' class='list-group-item type-filter-list-item' onClick = set_filter('kids')>Kids</li>
				  <li id='cooperative' class='list-group-item type-filter-list-item' onClick = set_filter('cooperative')>Cooperative</li>
				  <li id='puzzle' class='list-group-item type-filter-list-item' onClick = set_filter('puzzle')>Puzzle</li>
				</ul>	
	
				  <p id="clearFilter" onClick = set_filter('none')>Remove Filters</p>
		
				</div>	
			</div>

			<div id='rightSide'>
				<!-- <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
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
				<h2 id="forSaleHeader">Board Games</h2> -->
				<div id="filterToolbar">
						<button id="gridButton"><i class="fas fa-th"></i></button>
						<button id="listButton"><i class="fas fa-list"></i></button>
				</div>
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
							//<p class='card-text'>". $row['item_desc'] ."</p>
							//<input type='number' id=qty".$row['id']." class='item-qty' name='inputQuantity' min='1' value='1'>

							while($row = mysqli_fetch_assoc($result)) {
								echo "<div class='cardContainer'>
									<div class='card' id='".$row['id']."'>
									  <img class='card-img-top' src='". $row['item_image'] ."' alt='Card image cap' id='".$row['id']."'>
									  <div class='card-body' id='".$row['id']."'>
									    <h5 class='card-title' id='".$row['id']."'>". $row['name'] ."</h5>
									    
									    <h6> <strong>PHP</strong> ". $row['price'] ."<span></span> QTY</h6><div>
									    ";
									    	if(isset($_SESSION['user_data'])) {
												echo "<button onClick=event.stopPropagation();addToCart(".$row['id'].") class='btn btn-outline-dark'>Add to Cart <i class='fas fa-shopping-cart'></i></button></div>";
											} else {
												echo "<button onClick=event.stopPropagation();location.href='./login.php' class='btn btn-outline-dark'>Add To Cart <i class='fas fa-shopping-cart'></i></button></div>";
											};

											echo "<div><button class='btn btn-outline-danger'> Wishlist <i class='far fa-heart'></i></button></div>";
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

		if(filter === 'board_games' || filter === 'card_games' || filter === 'special_games') {
			const selected_li = document.querySelector(`#${filter}`);
			const all_game_type = $('.game-filter-list-item')

			$.each(all_game_type, (index, value) => {
				value.classList.remove('selected-filter');
			})
				selected_li.classList.add('selected-filter');
		} else {
			if (filter === 'none') {
				const all_filters = $('.list-group-item');
				$.each(all_filters, (index, value) => {
					value.classList.remove('selected-filter');
				})
			} else {
				const selected_li = document.querySelector(`#${filter}`);
				const all_game_type = $('.type-filter-list-item')

				$.each(all_game_type, (index, value) => {
					value.classList.remove('selected-filter');
				})
					selected_li.classList.add('selected-filter');
			}
		} 
	
		$('#itemsForSale').empty();
		$('#itemsForSale').append(`<div class="loader"></div>`);
		
		setTimeout(() => $.ajax({
			url: '../controllers/filter_items.php',
			data: {filter: filter},
			type: 'GET',
			success: (data) => {
				// console.log(data);

				let dataParse = JSON.parse(data);

				const dataFiltered = dataParse.filter;
				const login = dataParse.login;

				$('#itemsForSale').empty();

				if (dataParse.filter.length === 0) {
					$('#itemsForSale').append(
						`<p>Item not found</p>`
						);
				}

				//<input type='number' id=qty${dataFiltered[key]['id']} class='item-qty' name='inputQuantity' min='1' value='1'></span>
				//<p class='card-text'>${dataFiltered[key]["item_desc"]}</p>

				for (let key in dataFiltered) {
					$('#itemsForSale').append(`
						<div class='cardContainer'>
							<div class='card' id='${dataFiltered[key]['id']}'>
								<img class='card-img-top' src="${dataFiltered[key]['item_image']}" alt='Card image cap' id='${dataFiltered[key]['id']}'>
								<div class='card-body' id='${dataFiltered[key]['id']}'>
									<h5 class='card-title' id='${dataFiltered[key]['id']}'>${dataFiltered[key]["name"]}</h5>
									<h6> <strong>PHP</strong>${dataFiltered[key]["price"]}<span> QTY</h6>
									${login 
										? `<div><button onClick=addToCart(${dataFiltered[key]['id']}) class='btn btn-outline-dark'>Add To Cart <i class='fas fa-shopping-cart'></i></button></div>`
										: `<div><button onClick=event.stopPropagation();location.href='./login.php' class='btn btn-outline-dark'>Add To Cart <i class='fas fa-shopping-cart'></i><</button></div>`	
									}
									<div><button class='btn btn-outline-danger'> Wishlist <i class='far fa-heart'></i></button></div>
								</div>
							</div>
					</div>`)
				}
			}
		}), 200)
	}


	const addToCart = (id) => {
		// const qty_dom = document.querySelector(`input[id="qty${id}"]`)
		// qty = Math.floor(qty_dom.value);

		// alert(`added ${qty} item(s) to cart`);

		// if (qty < 1) {
		// 	qty = 1;
		// }

		$.ajax({
			url: '../controllers/add_to_cart.php',
			data: {id: id, qty: 1},
			type: 'POST',
			success: (data) => {
				const cartQty = document.querySelector('#cartQuantity')
				cartQty.textContent = data;
			}
		})
	}

	const addListenerToCards = () => {
		const cards = document.querySelectorAll('.cardContainer .card');
		// console.log(cards);

		cards.forEach(card => {
			card.addEventListener("click", (event) => {
				const card_id = event.target.id;
				console.log(card_id);
				window.location.href = `./product.php?id=${card_id}`
				// $.ajax({
				// 	url:'../controllers/get_product.php',
				// 	data:{id:cart_id},
				// 	type:'GET',
				// 	success: () => {

				// 	}
				// })
			})
		})
	}

	const adjustHeight = () => {
		let distancePX = $(window).scrollTop();
		let windowHeight = $(window).height();
		let distanceVH = 100*distancePX/windowHeight;

		const filterbar = document.querySelector('#filterdiv');
		// console.log(distanceVH);
		if (distanceVH >= 20) {
			filterbar.classList.add('filter-move-up');
		} else {
			filterbar.classList.remove('filter-move-up');
		}
	}

	// adjustHeight();
	addListenerToCards();
</script>

	

<?php 
	include_once '../partials/footer.php';
?>


