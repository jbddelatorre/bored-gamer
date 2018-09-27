<?php 
	include_once '../partials/header.php';
	require_once('../controllers/connect.php');
	session_start();
?>

		<link rel='stylesheet' type='text/css' href='./account.css'>
</head>
<body>
	<?php include_once '../partials/navbar.php'; ?>
	<?php 
		if(!isset($_SESSION['user_data'])) {
			header('Location: ./register.php');
		} 
	 ?>

	 <div class="appViewBox" id="account-appViewBox">
	 	<div id="leftAccount">
	 		<div class="card" style="width: 18rem;">
			  <div class="card-header">
			    My Account Information
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">User Profile</li>
			    <li class="list-group-item">Default Email</li>
			    <li class="list-group-item">Default Shipping</li>
			    <li class="list-group-item">Default Billing</li>
			    <li class="list-group-item">Default Mobile Number</li>
			  </ul>
			</div>
	 	</div>
	 	<div id="rightAccount">
	 		
	 	</div>
	 </div>

	<script type="text/javascript">
		const get_user_profile = (info, dom) => {
			const val = $.ajax({
				url:'../controllers/get_user_info.php',
				data:{data: info},
				type:'GET',
				success: (data) => {
					const d = JSON.parse(data);
					const domEle = document.querySelector(`#${dom}`);

					if(info == 'password') {
						domEle.value = '*******'
					} else {
						domEle.value = d[info];
					}
					// const d = JSON.parse(data);
					// return d;
				}
			})
		}

		const edit_user_profile = (info, dom, update) => {
		}

		const generate_user_info = () => {

		const info = [
			{'id':'username','name':'Username', type:'text'},
			{'id':'password','name':'Password', type: 'password'}, 
			{'id':'first_name','name':'First Name', type: 'text'},
			{'id':'last_name','name':'Last Name', type: 'text'},
			{'id':'email','name':'Email', type: 'email'},
			{'id':'contact','name':'Mobile No.', type: 'tel'}];
		
		$('#rightAccount').empty();

		$('#rightAccount').append(`<h2>User Information</h2>`);

		info.forEach(ele => {
			get_user_profile(ele.id, `accountinput${ele.id}`)
			$('#rightAccount').append(`
				<div id="formgroup${ele.id}"class="form-group account-info-subcategory">
				    <label for="${ele.id}">${ele.name}</label>
				    <div class="accountInputButton">
					    <input type="text" class="form-control" id="accountinput${ele.id}" readonly>
					    <button type="button" class="btn btn-info accountButton" id="editButton${ele.id}"> Edit ${ele.name}</button>
				    </div>
				</div>
				`);
			})

		document.querySelectorAll('.accountButton').forEach((ele) => {
			ele.addEventListener("click", () => {
				
			});
		})


		$(`<div id="accountChangePassword">
			<h6>Change Password</h6>
			<label>Set new password</label>
			<input class="form-control" type="password">
			<div>
			<label>Confirm password</label><span id="changePasswordSpan">message</span>
			<div>
			<input class="form-control" type="password">
			<div id="changePasswordButtonContainer">
			<button type="button" class="btn btn-link" id="cancelChangepassword">Cancel</button>
			<button type="button" class="btn btn-link">Submit</button>
			</div>
			</div>`).insertAfter('#formgrouppassword')

		const changePassword = (event) => {
			document.querySelector('#accountChangePassword').classList.add('accountChangePasswordShow');
		} 

		document.querySelector('#editButtonpassword').addEventListener("click", () => changePassword(event))

		document.querySelector('#cancelChangepassword').addEventListener("click", (event) => {
			document.querySelector('#accountChangePassword').classList.remove('accountChangePasswordShow');
		})
		}

		
		

		// const change_password = () => {

		// }
	

	$(document).ready(generate_user_info());

	</script>

	<?php 
		include_once '../partials/footer.php';
	?>
