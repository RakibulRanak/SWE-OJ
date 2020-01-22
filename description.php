<?php

session_start();

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}
require_once "config.php";
$mysql = "SELECT  status from user WHERE name='$username'";
$snd = mysqli_query($con, $mysql);
$arrow = mysqli_fetch_array($snd);

$st = $arrow['status'];

$access = 0;
if ($st == "Teacher" || $st == "Developer") {
	$access = 1;
}

?>




<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Description</title>
    <?php include 'linkers.php';?>







</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>

        <?php

if (isset($_GET['id'])) {
	$problemid = $_GET['id'];
}

if (isset($_GET['name'])) {
	$problem = $_GET['name'];
	$sql = "SELECT * FROM archieve WHERE pbname='$problem'";
} else {
	$sql = "SELECT * FROM archieve WHERE id='$problemid'";
}

$sq = mysqli_query($con, $sql);

$row = mysqli_fetch_array($sq);
$str = "$row[pbdes]";
$key = "<br>";

echo "
<div class=\"container \">
<div class=\"col-sm-12 upore\">
<div class=\"\"><h3 style=\"text-align:center;\">$row[pbname]</h3></div>";

if ($access == 1) {
	echo "<center><a class=\"btn btn-success\" href=\"editarchiveproblem.php?id=$row[id]\">Edit</a></center>";
}

echo "

</div>


</div>


<div class=\"autto container\">
<div class=\"col-sm-12\">
<p>Time Limit: $row[tlimit] Seconds</p><br><br>
<b>Problem Description</b><br><br>";

if (strpos($str, $key) == true) {
	echo "

<div id=\"\" class=\"rb\"style=\"height: 600px; width: 1100px ;background-color:white !important; overflow: scroll;padding:20px; line-height: 200%;\">
      <h6>$str</h6>
    </div> ";
} else {
	echo "

        <textarea class=\"form-control rb\" rows=\"30\" cols=\"100\" readonly>$row[pbdes]</textarea>
    ";
}

echo "
<br>

<b>Problem Setter : <a class=\"blue\" href=\"profile.php?user=$row[pbauthor]\">$row[pbauthor]</a></b><br><br>";

echo "<a class=\"btn btn-success\" href=\"submit.php?id=$row[id]\">Submit Your Code</a></div>";

?>


    </div>
    </div>
    </div><br><br><br>

    <?php require 'footer.php';?>



</body>

</html>
<!-- <textarea class=\"form-control rb\" rows=\"30\" cols=\"100\" readonly>$row[pbdes]</textarea> -->