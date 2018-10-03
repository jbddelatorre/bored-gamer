<link rel="stylesheet" href="./checkout.css">

<style>
	#addAddressModal {
		display: flex;
		width:100vw;
		height:100vh;
		background-color:rgba(0,0,0,.5);
		position: absolute;
		top:0;
		left: 0;
		z-index: 10000;
		display: flex;
		justify-content: center;
		align-items: center;
		transition: opacity 0.3s linear;
		opacity: 1;
	}

	#addAddressModal #addShippingBilling {
		display: flex;
		background-color: white;
		box-shadow: 0 4px 7px 2px;  
		width:80vw;
		padding: 25px;
		justify-content: center;
		flex-direction: row;
		align-content: center;
		align-items: center;
	}
	
	#addAddressModal #addShippingForm,
	#addAddressModal #addBillingForm {
		flex:1;
		display: flex;
		flex-direction: column;
		align-content: center;
	}

	.modal-input-div-addshipping,
	.modal-input-div-addbilling {
		display: flex;
		flex-direction: column;
	}

</style>


<div id="addAddressModal" class="close-modal">
	<div id="addShippingBilling">
		<div id="addShippingForm">
			<header>
				<h2>Add Shipping Address</h2>
			</header>
			<main>
				<div class="modal-input-div-addshipping">
					<label for="region">Address Number and Street</label>
					<input class="modal-only" type="text" name="street" id="inputstreet">
				</div>
				<div class="modal-input-div-addshipping">
					<label for="region">Region</label>
					<select class="modal-only" name="region" id="selectregions">
					</select>
				</div>
				<div class="modal-input-div-addshipping">
					<label for="province">Province</label>
					<select class="modal-only" name="province" id="selectprovinces">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
				<div class="modal-input-div-addshipping">
					<label for="municipality">Municipality</label>
					<select class="modal-only" name="municipality" id="selectmunicipalities">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
				<div class="modal-input-div-addshipping">
					<label for="barangay">Barangay</label>
					<select class="modal-only" name="barangay" id="selectbarangays">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
			</main>
			<footer>
				<button type="button" class="btn btn-secondary close-modal">Close</button>
        		<button type="button" class="btn btn-primary" id="submitUpdateButton">Update Address</button>
			</footer>	
		</div>
		<div id="addBillingForm">
			<header>
				<h2>Add Billing Address</h2>
			</header>
			<main>
				<div class="modal-input-div-addbilling">
					<label for="region">Address Number and Street</label>
					<input class="modal-only" type="text" name="street" id="inputstreet">
				</div>
				<div class="modal-input-div-addbilling">
					<label for="region">Region</label>
					<select class="modal-only" name="region" id="selectregions">
					</select>
				</div>
				<div class="modal-input-div-addbilling">
					<label for="province">Province</label>
					<select class="modal-only" name="province" id="selectprovinces">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
				<div class="modal-input-div-addbilling">
					<label for="municipality">Municipality</label>
					<select class="modal-only" name="municipality" id="selectmunicipalities">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
				<div class="modal-input-div-addbilling">
					<label for="barangay">Barangay</label>
					<select class="modal-only" name="barangay" id="selectbarangays">
						<option value="null">--PLEASE SELECT--</option>
					</select>
				</div>
			</main>
			<footer>
				<button type="button" class="btn btn-secondary close-modal">Close</button>
        		<button type="button" class="btn btn-primary" id="submitUpdateButton">Update Address</button>
			</footer>	
		</div>
	</div>
</div>