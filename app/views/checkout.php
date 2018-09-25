<?php 
include_once '../partials/header.php';
require_once('../controllers/connect.php');
session_start();
?>

<?php 
// if ($_SERVER['HTTP_REFERER'] !== 'http://localhost:8000/views/cart.php') {
// 	header('Location: ../views/cart.php');
// }
?>

<link rel='stylesheet' type='text/css' href='./checkout.css'>
</head>
<body>
	<?php include_once '../partials/navbar.php'; ?>
	<?php 
	if(!isset($_SESSION['user_data'])) {
		header('Location: ./catalog.php');
	}
	?>


	<div id="updateModal" class="close-modal">
		<div id="updateForm">
			<header>
				<h2>Update Address</h2>
				<div class="close-modal"><i class="fas fa-times"></i></div>
			</header>
			<main>
				<input class="modal-only" type="text">
				<select class="modal-only" name="" id="">
					<option value="">12</option>
				</select>
				<select class="modal-only" name="" id="">
					<option value="">12</option>
				</select>
				<select class="modal-only" name="" id="">
					<option value="">12</option>
				</select>
			</main>
			<footer>
				<button type="button" class="btn btn-secondary close-modal">Close</button>
        		<button type="button" class="btn btn-primary">Save changes</button>
			</footer>	
		</div>
	</div>

	<div class="appViewBox">
		<h1>Board Game Store - Checkout Page</h1>
		<a href="./catalog.php">go to catalog</a>

		<div id="checkoutApp">
			<form>
				<div id="shippingAndPayment">
					<div id="checkoutLeft">
						<div class="form-group">
							<label for="shippingAddress">Shipping Address</label><input type="button" id="updateAddressShipping" class="btn btn-info" value="Edit Shipping Address"></input>
							<p id="currentShipping">shipping</p>
							<label for="billingAddress">Billing Address</label><input type="button" id="updateAddressBilling" class="btn btn-info" value="Edit Billing Address"></input>
							<p id="currentBilling">billing</p>
						</div>
					</div>
					<div id="checkoutRight">add
						<h4>Payment Method</h4>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="payment-method" id="radioCOD" value="cod" checked>
							<label class="form-check-label" for="cod">
								COD
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="payment-method" id="radioPaypal" value="paypal">
							<label class="form-check-label" for="paypal">
								Paypal
							</label>
						</div>
						<h4>Order Summary</h4>
						<div class="list-group-item">PHP <span id="totalPrice"></span></div>
						<input type="button" style="{margin-top: 20px;}" class="btn btn-primary" value="Order"></input>
					</div>
				</div>
			</form>
			<div id="orderItemsCheckoutContainer">
				<table id="orderItemsCheckout">
				</table>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">

	const closeModal = document.querySelectorAll(".close-modal")

	closeModal.forEach(ele => {
		ele.addEventListener("click", (e) => {
			if(event.target == event.currentTarget) {	
				document.querySelector('#updateModal').style.opacity = "0";
			}
		})
	})
	
	const updateButton = document.querySelectorAll('[id^="updateAddress"]');

	updateButton.forEach(ele => {
		ele.addEventListener("click", (event) => {
			console.log(event.target.id);
		})
	})

	const get_checkout = () => {
		$.ajax({
			url: '../controllers/checkout.php',
			data:{},
			method: 'GET',
			success: (data) => {
				const itemData = JSON.parse(data);
				let shoppingCart;

				$.ajax({
					url: '../controllers/return_shopping_cart.php',
					data:{},
					method:'GET',
					success: (data) => {
						shoppingCart = JSON.parse(data);
						$('#orderItemsCheckout').empty();

						$('#orderItemsCheckout').append(`
							<tr>
							<th></th>
							<th>Item Name</th>
							<th>Item Price</th>
							<th>Quantity</th>
							<th>Subtotal</th>
							<th>Actions</th>
							</tr>
							`)

						let totalPrice = 0;

						for(let key in shoppingCart) {
							for(let key2 in itemData) {
								if (shoppingCart[key]['id'] == itemData[key2]['id']) {
									const subTotal = parseInt(shoppingCart[key]['qty'])*parseInt(itemData[key2]['price']);

									$('#orderItemsCheckout').append(`
										<tr>
										<td><image src="${itemData[key2]['item_image']}"></td>
										<td>${itemData[key2]['name']}</td>
										<td>${itemData[key2]['price']}</td>
										<td id='input${shoppingCart[key]['id']}'>${shoppingCart[key]['qty']}</td>
										<td id='sub${shoppingCart[key]['id']}'>${subTotal}</td>
										<td><button id='${shoppingCart[key]['id']}' class='btn btn-danger button-delete-item'>DELETE</button></td>
										</tr>
										`)
									totalPrice += subTotal;
								}
							}		
						} 

						document.querySelector("#totalPrice").textContent = totalPrice;

						const deleteItem = (id) => {
							$.ajax({
								url: '../controllers/delete_cart_item.php',
								data: {id:id},
								type:'POST',
								success: (data) => {
									// console.log(data);
								}
							}) 
						}

						const deletebuttons = document.querySelectorAll('.button-delete-item');

						deletebuttons.forEach(ele => {
							ele.addEventListener("click", (event)=> {
								const id = event.target.id;

								deleteItem(id);

								// const deletedQuantity = document.querySelector(`#${id}`).value;	
								const deletedQuantity = document.querySelector(`#input${id}`);
								const cartQuantity = document.querySelector('#cartQuantity').textContent;

								const totalPriceElement = document.querySelector('#totalPrice');
								const totalPrice = parseInt(totalPriceElement.innerHTML);
								const subtotal = document.querySelector(`#sub${id}`);

								document.querySelector('#cartQuantity').textContent = cartQuantity - deletedQuantity.innerHTML;

								document.querySelector("#totalPrice").textContent = totalPrice - subtotal.textContent;

								ele.parentElement.parentElement.remove();

								const table_rows = document.querySelectorAll('tr')
								console.log(table_rows)
								if (table_rows.length <= 1) {
									$('#orderItemsCheckoutContainer').empty();
									$('#orderItemsCheckoutContainer').append(`
										<p style="{text-align:center;}">Empty Cart</p>`)
								}
							})
						});
						const table_rows = document.querySelectorAll('tr')
						if (table_rows.length <= 1) {
							$('#orderItemsCheckoutContainer').empty();
							$('#orderItemsCheckoutContainer').append(`
								<p style="{text-align:center;}">Empty Cart</p>`)
						}
					}
				})
			}
		})
	}

	const load_address = (type) => {
		$.ajax({
			url: '../controllers/get_address.php',
			data: {data: type},
			type: 'GET',
			success: (data) => {
				const d = JSON.parse(data);
				const ele = document.querySelector(`#${type}`);

				ele.textContent = `${d.house_num_others}, ${d.barangay}, ${d.province_code}, ${d.region_province}`
			}
		})
	}

	$(document).ready(get_checkout);
	$(document).ready(() => load_address('currentShipping'));
	$(document).ready(() => load_address('currentBilling'));

	// document.addEventListener("DOMContentLoaded", get_checkout);
	// document.addEventListener("DOMContentLoaded", );
	// document.addEventListener("DOMContentLoaded", );


	
</script>

<?php 
include_once '../partials/footer.php';
?>