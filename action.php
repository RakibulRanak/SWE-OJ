<?php

require_once "config.php";

$user = $_POST['uname'];
$user = $mysqli->real_escape_string($user);
$email = $_POST['email'];
$email = $mysqli->real_escape_string($email);
$pass = $_POST['password'];
$pass = $mysqli->real_escape_string($pass);
$password = md5($pass);

$query = "INSERT into user(name,pass,status,email) VALUES('$user','$password','$user','$email')";
$sq = mysqli_query($con, $query);

if ($sq) {

	// $to = $email;
	// $subject = "Email Verification";
	// $message = "<a href='http//localhost/verify.php>Register</a>'";
	// $headers="From: php/"

	header("Location:signup.php?success=1");
} else {

	header("Location:signup.php?fail=1");
	echo ("Username already exists. Failed<br>");
	// echo $email;
	// echo $user;
	// echo $pass;
}

?>