<?php 

//Credentials
$host = '127.0.0.100'; //127.0.0.1
$username = 'root';
$password = '';
$db_name = 'boardgames';

//Connection
$conn = mysqli_connect($host, $username, $password, $db_name);

//Check if Connection is Successful or Failed
if(!$conn) {
	die('Connection Failed: ' . mysqli_error($conn));
} else {
	// echo 'Connection Successful';
}