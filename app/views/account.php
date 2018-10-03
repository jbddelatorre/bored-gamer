<?php 
include_once '../partials/header.php';
require_once('../controllers/connect.php');
session_start();
?>

<link rel='stylesheet' type='text/css' href='./account.css'>
<link rel='stylesheet' type='text/css' href='../assets/css/spinner.css'>
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
		const info = [
			{'id':'username','name':'Username', type:'text'},
			{'id':'password','name':'Password', type: 'password'}, 
			{'id':'first_name','name':'First Name', type: 'text'},
			{'id':'last_name','name':'Last Name', type: 'text'},
			{'id':'email','name':'Email', type: 'email'},
			{'id':'contact','name':'Mobile No.', type: 'tel'}];

		const get_user_profile = (info, dom) => {

			const val = $.ajax({
				url:'../controllers/get_user_info.php',
				data:{data: info},
				type:'GET',
				success: (data) => {
					const d = JSON.parse(data);
					const domEle = document.querySelector(`#${dom}`);

					if(info == 'password') {
						domEle.value = '**********'
					} else {
						domEle.value = d[info];
					}
					// const d = JSON.parse(data);
					// return d;
				}
			})
		}

		const edit_user_profile = (id, newvalue) => {
			$('#rightAccount').empty();
			$('#rightAccount').append(`<div style="display:flex;justify-content:center;"><div class="loader"></div></div>`);
			
			setTimeout(() => $.ajax({
				url: '../controllers/update_user_info.php',
				data: {id: id, value: newvalue},
				type: 'POST',
				success: (data) => {
					console.log(data);
					generate_user_info();

					const d  = JSON.parse(data);
					if (d == 0) {
						const errorSpan = document.querySelector(`#error${id}`)

						errorSpan.style.color = 'red';
						errorSpan.textContent = `${info.filter(e => e.id == id)[0]['name']} is already taken.`
					} else if (d == 1) {
						const errorSpan = document.querySelector(`#error${id}`)

						errorSpan.style.color = '#24d224';
						errorSpan.textContent = `${info.filter(e => e.id == id)[0]['name']} successfully updated!`
					} else {
						
					}
				}
			}),200)
		}

		const generate_user_info = () => {

			$('#rightAccount').empty();
			$('#rightAccount').append(`<h2>User Information</h2>`);

			info.forEach(ele => {
				get_user_profile(ele.id, `accountinput${ele.id}`)
				$('#rightAccount').append(`
					<div id="formgroup${ele.id}"class="form-group account-info-subcategory">
					<label for="${ele.id}">${ele.name}</label><span id="error${ele.id}"></span>
					<div class="accountInputButton">
					<input type="text" class="form-control" id="accountinput${ele.id}" readonly>
					<button type="button" class="btn btn-info accountButton" id="editButton${ele.id}"> Edit ${ele.name}</button>
					</div>
					</div>
					`);
			})

			document.querySelectorAll('.accountButton').forEach((ele) => {
				ele.addEventListener("click", () => {
					const buttonid = event.target.id;
					const id = buttonid.replace('editButton','');
					const accountInput = document.querySelector(`#accountinput${id}`)
					const newInputValue = accountInput.value;

					accountInput.readOnly = false;
					accountInput.style.pointerEvents = "auto";

					const edit = document.querySelector(`#editButton${id}`)

					if (edit.textContent == 'Save Changes') {
						edit.textContent = `Edit ${(info.filter((e) => e.id == id)[0]['name'])}`
						edit.classList.remove('btn-success');
						edit.classList.add('btn-info');
						accountInput.readOnly = true;
						accountInput.style.pointerEvents = "none"
						
						if(id == 'password') {
							edit.textContent = 'Save Changes';
						} else {
							edit_user_profile(id, newInputValue);
						}
					} else {
						edit.textContent = `Save Changes`;
						edit.classList.remove('btn-info');
						edit.classList.add('btn-success');

						if (id == 'password') {
							accountInput.readOnly = true;
							accountInput.style.pointerEvents = "none"
							edit.classList.remove('btn-success');
							edit.classList.add('btn-info');
						} else {
							accountInput.readOnly = false;
							accountInput.style.pointerEvents = "auto"	
						}		
					}
				});
			})


			$(`<div id="accountChangePassword">
				<h6>Change Password</h6>
				<label>Enter Old Password</label>
				<input class="form-control" type="password">
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
				document.querySelector('#formgroupfirst_name').classList.add('formgroupfirst_name-down');
			} 

			document.querySelector('#editButtonpassword').addEventListener("click", () => changePassword(event))

			document.querySelector('#cancelChangepassword').addEventListener("click", (event) => {
				document.querySelector('#accountChangePassword').classList.remove('accountChangePasswordShow');
				const ebp = document.querySelector('#editButtonpassword')
				ebp.textContent = "Edit Password";
				ebp.classList.remove("btn-success");
				ebp.classList.add("btn-info");
			})
		}

		
		

		// const change_password = () => {

		// }


		$(document).ready(generate_user_info());

	</script>

	<?php 
	include_once '../partials/footer.php';
	?>
