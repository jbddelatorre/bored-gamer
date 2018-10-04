<link rel="stylesheet" href="../partials/admin_update_item_modal.css">
<?php require_once('../controllers/connect.php'); ?>

<div id="adminUpdateModal">
		<div id="adminUpdateModalForm">
			<header>
				<h2>Update Item Information</h2>
			</header>
			<main>
				<div class="admin-item-input-div">
					<label for="name">Name</label>
					<input class="form-control" type="text" name="name">
					<label for="price">Price</label>
					<input class="form-control" type="text" name="price">
				</div>
		<!-- 		<div class="admin-item-input-div">
					
				</div> -->
				<div class="admin-item-input-div admin-item-input-div-long">
					<label for="url">Image URL</label>
					<input class="form-control" type="text" name="url" required>
				</div>
				<div class="admin-item-input-div admin-item-input-div-long">
					<label for="desc">Item Description</label>
					<input class="form-control" type="text" name="desc" required>
				</div>
				<div class="admin-item-input-div">
					<label for="minplayer">Min Players</label>
					<input class="form-control" type="number" name="minplayer" required>
					<label for="maxplayer">Max Players</label>
					<input class="form-control" type="number" name="maxplayer" required>
					<label for="time">Average Time (Mins.)</label>
					<input class="form-control" type="number" name="time" required>
				</div>
				<!-- <div class="admin-item-input-div">
					
				</div> -->
				<div class="admin-item-input-div">
					<label for="category">Category</label>
					<select class="modal-only form-control" name="category" required>
						<?php 
							$sql = "SELECT * from categories";
							$result = mysqli_query($conn, $sql);

							while($row = mysqli_fetch_assoc($result)) {
								echo "<option class='form-control adminModalOption' value='".$row['category_names']."'>".$row['category_names']."</option>";
							}
						?>
					</select>
		<!-- 		</div>
				<div class="admin-item-input-div"> -->
					<label for="gametype">Type</label>
					<select class="modal-only form-control" name="gametype" required>
						<?php 
							$sql = "SELECT * from game_types";
							$result = mysqli_query($conn, $sql);

							while($row = mysqli_fetch_assoc($result)) {
								echo "<option class='form-control adminModalOption' value='".$row['game_type_names']."'>".$row['game_type_names']."</option>";
							}
						?>
					</select>
			<!-- 	</div>
				<div class="admin-item-input-div"> -->
					<label for="trend">Trend</label>
					<select class="modal-only form-control" name="trend" required>
						<?php 
							$sql = "SELECT * from trends";
							$result = mysqli_query($conn, $sql);

							while($row = mysqli_fetch_assoc($result)) {
								echo "<option class='form-control adminModalOption' value='".$row['trend_names']."'>".$row['trend_names']."</option>";
							}
						?>
					</select>
				</div>
				<div class="admin-item-input-div">
					<label for="designer">Designer</label>
					<input class="form-control" type="text" name="designer" required>
					<label for="rating">Rating</label>
					<input class="form-control" type="number" name="rating" required>
				</div>
			</main>
			<footer>
				<button type="button" class="btn btn-secondary" id="adminCloseModalButton">Close</button>
        		<button type="button" class="btn btn-primary" id="adminSubmitUpdateItemButton">Update Item Information</button>
			</footer>	
		</div>
	</div>