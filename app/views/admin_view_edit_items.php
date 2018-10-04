<?php 
include_once '../partials/header.php';
require_once('../controllers/connect.php');
session_start();
	// $_SESSION['game_id_filter'] = 'ALL';
	// $_SESSION['type_id_filter'] = 'ALL';
?>
<link rel="stylesheet" href="../assets/css/spinner.css">
<link rel="stylesheet" href="./admin_view_edit_items.css">
</head>
<body onscroll="adjustHeightModal()">
	<?php include_once '../partials/navbar.php'; ?>

	<?php include_once '../partials/admin_update_item_modal.php'; ?>


	<div class="appViewBox">
		<h1>The Board Game Library</h1>

		<!-- <div class="loader"></div> -->

		<div id='adminItemsApp'>
			<div id="adminCompleteItems">
				
			</div>
		</div>
	</div>

	<script type="text/javascript">
		const nameModal = document.querySelector('.admin-item-input-div [name="name"]');
				const priceModal = document.querySelector('.admin-item-input-div [name="price"]');
				const urlModal = document.querySelector('.admin-item-input-div [name="url"]');
				const itemdescModal = document.querySelector('.admin-item-input-div [name="desc"]');
				const minplayerModal = document.querySelector('.admin-item-input-div [name="minplayer"]');
				const maxplayerModal = document.querySelector('.admin-item-input-div [name="maxplayer"]');
				const timeModal = document.querySelector('.admin-item-input-div [name="time"]');
				const catModal = document.querySelector('.admin-item-input-div [name="category"]');
				const gtModal = document.querySelector('.admin-item-input-div [name="gametype"]');
				const trendModal = document.querySelector('.admin-item-input-div [name="trend"]');
				const designerModal = document.querySelector('.admin-item-input-div [name="designer"]');
				const ratingModal = document.querySelector('.admin-item-input-div [name="rating"]');
	const modalDom = [nameModal,priceModal,urlModal,itemdescModal,minplayerModal,maxplayerModal,timeModal,catModal,gtModal,trendModal,designerModal,ratingModal]



		const admin_complete_items = () => {
			$.ajax({
				url: '../controllers/admin_view_edit_items.php',
				data:{},
				type:'GET',
				success: (data) => {
					const d = JSON.parse(data);

					for(let item of d) {
						$('#adminCompleteItems').append(`
							<div class="adminItemContainer" id="adminItem${item.id}">
							<div class="adminItemContainerLeft">
							<div class="admin-admin-image">
							<img style="width:200px; height:200px;" src="${item.item_image}">
							<p><strong>Image URL</strong>: ${item.item_image}</p>
							</div>
							</div>
							<div class="adminItemContainerRight">
							<div class="admin-id-name-price">
							<p><strong>ID</strong>: ${item.id}</p>
							<p><strong>Name</strong>: ${item.name}</p>
							<p><strong>Price</strong>: ${item.price}</p>
							</div>
							<div class="admin-min-max-time">
							<p><strong>Min Players</strong>: ${item.min_players}</p>
							<p><strong>Max Players</strong>: ${item.max_players}</p>
							<p><strong>Average Time</strong>: ${item.average_length_id}</p>
							</div>

							<div class="admin-itemdesc">
							
							<p><strong>Item Description</strong>: ${item.item_desc}</p>
							</div>

							<div class="admin-cat-gt-trend">
							<p><strong>Category</strong>: ${item.category_names}</p>
							<p><strong>Type</strong>: ${item.game_type_names}</p>
							<p><strong>Trend</strong>: ${item.trend_names}</p>
							</div>
							<div class="admin-pub-rating">
							<p><strong>Designer</strong>: ${item.publisher}</p>
							<p><strong>Rating</strong>: ${item.rating}</p>
							</div>
							<div class="admin-update-button">
							<button class="btn btn-outline-primary" id="adminupdatebutton${item.id}">Update Item Information</button>
							</div>
							</div>
							</div>
							`);
					}

					const adminUpdateButton = document.querySelectorAll('[id^="adminupdatebutton"]');

					adminUpdateButton.forEach(button => {
						button.addEventListener("click", (event) => {
							const item_id = event.target.id.replace('adminupdatebutton', '');
						// console.log(item_id);

						document.querySelector('#adminUpdateModal').style.display = 'flex';
						setTimeout(() => document.querySelector('#adminUpdateModal').style.opacity = 1, 200)

						admin_single_item(item_id);
						})
					})

				}
			})
		}

		const adminSubmitUpdateItem = () => {
			modalDom.forEach(form => {
				const modalname = ['name', 'price', 'item_image', 'item_desc', 'minplayers','max_players', 'average_length_id', 'category_names', 'game_type_names', 'trend_names', 'publisher', 'rating']
				console.log(form.value)
			})
		}

		const admin_single_item = (id) => {
			$.ajax({
				url:'../controllers/admin_get_single_item.php',
				data:{id:id},
				type:'GET',
				success: (data) => {
					const d = JSON.parse(data);
				// console.log(d)
				nameModal.value = d.name;
				priceModal.value = d.price;
				urlModal.value = d.item_image;
				itemdescModal.value = d.item_desc;
				minplayerModal.value = d.min_players;
				maxplayerModal.value = d.max_players;
				timeModal.value = d.average_length_id;
				set_select_default(d.category_names,'category');
				set_select_default(d.game_type_names,'gametype');
				set_select_default(d.trend_names,'trend');
				designerModal.value = d.publisher;
				ratingModal.value = d.rating;
			}
		})
		}

		const set_select_default = (data, select) => {
			let temp = data;
			let mySelect = document.querySelector(`.admin-item-input-div [name="${select}"]`);

			// console.log(mySelect);

			for(var i, j = 0; i = mySelect.options[j]; j++) {
				// console.log(j)
				if(i.value == temp) {
					mySelect.selectedIndex = j;
					break;
				}
			}
		}

		document.querySelector('#adminCloseModalButton').addEventListener('click', () => {

			setTimeout(() => document.querySelector('#adminUpdateModal').style.display = 'none', 300)

			document.querySelector('#adminUpdateModal').style.opacity = 0;
		})

		document.querySelector('#adminSubmitUpdateItemButton').addEventListener('click', () => {

			adminSubmitUpdateItem();
		})


		const adjustHeightModal = () => {
			let distancePX = $(window).scrollTop();
			let windowHeight = $(window).height();

			const filterbar = document.querySelector('#filterdiv');

			document.querySelector('#adminUpdateModal').style.top = `${distancePX}px`;
		}

		admin_complete_items();

		


	</script>

	<?php 
	include_once '../partials/footer.php';
	?>
