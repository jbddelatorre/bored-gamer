

<style type="text/css">
	#subNavBarContainer,
	.subNavBarUl,
	.subNavBarLi {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}

	#subNavBarContainer {
		background-color: red;
		display: flex;
		flex: 1;
		justify-content: flex-end;
	}

	.subNavBarUl {
		list-style: none;
		display: flex;
		justify-content: flex-end;
		margin-right: 2rem;
		background-color: lightgrey;
	}

	.subNavBarLi {
		display: flex;
		justify-content: flex-end;
		align-items: center;
		padding: 2px 5px 2px 10px;
		margin-left: 10px;
	}

</style>

<nav id='subNavBarContainer'>
	<div id="subNavLeft">
	</div>
	<div id="subNavRight">
		<ul class='subNavBarUl'>
			<li class="subNavBarLi">Wishlist</li>
			<li class="subNavBarLi">Track my orders</li>
			<li class="subNavBarLi">Welcome Jason/Guest</li>
		</ul>
		<ul class='subNavBarUl'>
			<li class="subNavBarLi">Register/Cart</li>
			<li class="subNavBarLi">Login/Logout</li>
		</ul>
	</div>
</nav>