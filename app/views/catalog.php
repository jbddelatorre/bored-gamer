<?php 
	include_once '../partials/header.php';
	require_once('../controllers/connect.php');
	session_start();
?>

	<link rel='stylesheet' type='text/css' href='./catalog.css'>
</head>
<body>
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
			if(!isset($_SESSION['user_data'])) echo '<a href="./register.php">Register</a>';?>
		</span>
	</h2>


	<div id='catalogContainer'>
		<div id='filterbarContainer'>
			<ul class='list-group'>
			  <li class='list-group borderless'>Filter by Game</li>
			  <li class='list-group-item'>Board Games</li>
			  <li class='list-group-item'>Card Games</li>
			  <li class='list-group-item'>Special Games</li>
			</ul>
			<ul class='list-group'>
			  <li class='list-group borderless'>Filter by Type</li>
			  <li class='list-group-item'>Strategy</li>
			  <li class='list-group-item'>Party / Socialize</li>
			  <li class='list-group-item'>For Fun</li>
			  <li class='list-group-item'>Kids</li>
			  <li class='list-group-item'>Cooperative</li>
			  <li class='list-group-item'>Puzzle</li>
			</ul>	
		</div>

		<div id='rightSide'>
			<div id='carouselContainer' class='carousel slide' data-ride='carousel'>
			  <ol class='carousel-indicators'>
			    <li data-target='#carouselExampleIndicators' data-slide-to='0' class='active'></li>
			    <li data-target='#carouselExampleIndicators' data-slide-to='1'></li>
			    <li data-target='#carouselExampleIndicators' data-slide-to='2'></li>
			  </ol>
			  <div class='carousel-inner'>
			    <div class='carousel-item active'>
			      <img class='d-block w-100' src='../assets/image/carousel-image1.jpg' alt='First slide'>
			    </div>
			    <div class='carousel-item'>
			      <img class='d-block w-100' src='../assets/image/carousel-image2.jpg' alt='Second slide'>
			    </div>
			    <div class='carousel-item'>
			      <img class='d-block w-100' src='../assets/image/carousel-image3.jpg' alt='Third slide'>
			    </div>
			  </div>
			  <a class='carousel-control-prev' href='#carouselExampleIndicators' role='button' data-slide='prev'>
			    <span class='carousel-control-prev-icon' aria-hidden='true'></span>
			    <span class='sr-only'>Previous</span>
			  </a>
			  <a class='carousel-control-next' href='#carouselExampleIndicators' role='button' data-slide='next'>
			    <span class='carousel-control-next-icon' aria-hidden='true'></span>
			    <span class='sr-only'>Next</span>
			  </a>
			</div>
			<h2 id="forSaleHeader">Board Games</h2>

			<div id='itemsForSale'>
				
				<?php 
					$sql = 'SELECT * FROM items';

					$result = mysqli_query($conn, $sql);

					if (mysqli_num_rows($result) > 0) {

						while($row = mysqli_fetch_assoc($result)) {
							echo "<div id='cardContainer'>
								<div class='card' style='width: 18rem;'>
								  <img class='card-img-top' src='". $row['item_image'] ."' alt='Card image cap'>
								  <div class='card-body'>
								    <h5 class='card-title'>". $row['name'] ."</h5>
								    <p class='card-text'>". $row['item_desc'] ."</p>
								    <h6> <strong>PHP</strong> ". $row['price'] ."</h6>
								    <a href='#' class='btn btn-primary'>Add to Cart</a>
								  </div>
								</div>
							</div>";
						}
					}
				 ?>

			</div>
		</div>
	</div>
	</div>

<?php 
	include_once '../partials/footer.php';
?>