<?php

session_start();
require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

$goto = $_SERVER['HTTP_REFERER'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];

}

if (isset($_POST['submit'])) {

	$select = $_POST['selection'];
	echo $select;
	$user = $_POST['name'];
	//echo $user;
	require_once "config.php";
	$mysql = "SELECT name FROM user WHERE name='$user'";
	$snd = mysqli_query($con, $mysql);

	$arrow = mysqli_fetch_array($snd);
	// if ($arrow == NULL) {
	// 	echo "

	//        <script>

	//         window.alert(\"User not found !!\");
	//         window.location.href=\"$goto\";

	//        </script> ";
	// } else {
	// 	header("Location:profile.php?user=$user");
	// 	//
	// }

}

?>

