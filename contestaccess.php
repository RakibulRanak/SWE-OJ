<?php

//ob_start();
session_start();

require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

if (isset($_POST['pass']) && isset($_GET['id'])) {
	$pass = $_POST['pass'];
	$cid = $_GET['id'];

	//require_once "config.php";
	//$_SESSION = array();

	$fetch = "SELECT * from contest where id='$cid'";
	$sfetch = mysqli_query($con, $fetch);
	$erow = mysqli_fetch_array($sfetch);
	$passdb = $erow['pass'];
	if ($passdb == $pass) {
		$_SESSION["con" . $cid] = $username;

		// echo "hiiiiiiiiiiiiiiiidhukse";
		// echo "<script>console.log('Debug Objects: " . $_SESSION["con" . $cid] . "' );</script>";
		header("Location: contestproblem.php?id=$cid");

		//print_r($_SESSION);

	} else {
		header("Location: countdown.php?id=$cid&fail=1");
		//echo "milenai";
	}

} else {
	header("Location: countdown.php?id=$cid");
}

?>