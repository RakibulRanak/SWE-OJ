<?php

session_start();
require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

if (isset($_GET['user'])) {
	$data = $_GET['user'];
}

?>


<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Profile</title>
        <?php include 'linkers.php';?>




</head>
<body>
<div class="main">
  <?php require 'nav2.php';?>


<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;"><?php echo "Update $username's  Profile"; ?></h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">

</div>

</div>

<div class="row cspace">
<div class="col-sm-8">
<?php

if (isset($_POST['email']) && empty($_POST['statusnew'])) {
	$name = $username;
	$email = $_POST['email'];
	$status = $_POST['statusold'];
	$password = md5($status);

	echo $email;
	echo $status;

	$lq = "SELECT * FROM `user` WHERE name='$name' AND pass='$password'";

	$sq = mysqli_query($con, $lq);

	$row = mysqli_fetch_array($sq);

	if (!empty($row)) {
		$sql = "UPDATE user SET name='$name', email='$email'  WHERE name='$username'";
		$send = mysqli_query($con, $sql);
		//echo $send;
		if ($send) {
			echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
   <strong>Your Email Has Been Updated! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
    </div><br><br><br><br>";
		} else {
			echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
    <strong>Wrong Password! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
     </div><br><br><br><br>";
		}

	} else {
		echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
    <strong>Wrong Password! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
     </div><br><br><br><br>";
	}
} else if (isset($_POST['statusnew'])) {

	$name = $username;
	$email = $_POST['email'];
	$status1 = $_POST['statusold'];
	$status2 = $_POST['statusnew'];
	$passold = md5($status1);
	$password = md5($status2);

	$lq = "SELECT * FROM `user` WHERE name='$name' AND pass='$passold'";

	$sq = mysqli_query($con, $lq);

	$row = mysqli_fetch_array($sq);

	if (!empty($row)) {
		$sql = "UPDATE user SET name='$name', email='$email', pass='$password' WHERE name='$username'";
		$send = mysqli_query($con, $sql);

		if ($send) {
			echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
   <strong>Your Profile Has Been Updated! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
    </div><br><br><br><br>";
		} else {
			echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
    <strong>Wrong Password! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
     </div><br><br><br><br>";
		}

	} else {
		echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
    <strong>Wrong Password! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
     </div><br><br><br><br>";
	}
}

//echo "2";

// echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
//  <strong>Your Profile Has Been Updated! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
//   </div><br><br><br><br>";

?>







  </div>


<div class="col-sm-4">

</div>
</div>
</div><br><br><br><br>

<?php require 'footer.php';?>



</body>
</html>
