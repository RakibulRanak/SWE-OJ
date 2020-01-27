<?php

session_start();
require_once "config.php";

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

?>


<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
        <title>Home</title>
            <style>
      marquee{
      font-size: 30px;
      font-weight: 800;
      color: #DA310D;
      font-family: sans-serif;
      }
      .scrolling-text {
        margin-top: 70px;
        position: absolute;
      }
      .home-text {
        margin-top: 60px;
        height: 100%;
        width: 100vw;
        position: absolute;
        backdrop-filter: blur(10px) brightness(60%);
      }
      .welcome {
        color: white;
        font-weight: bold;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -75%);
        font-size: 65px;
        text-align: center;
      }
    </style>
          <?php include 'linkers.php';?>

</head>
<body onload="set()">
<div>

 <?php require 'nav2.php';

require_once "config.php";
$show = "SELECT * FROM notice ORDER BY exdate ASC";

$sts = mysqli_query($con, $show);
$ann = "";
while ($row = mysqli_fetch_array($sts)) {
	$ann .= $row['des'];
	$ann .= str_repeat("&nbsp;", 10);

}
?>


 	<div style="background-image: url('Images/sust.jpg');  background-size: cover; filter:blur(0.8); height: 101vh">
  <div class="home-text"><h1 class="welcome">Welcome to SWE OJ !</h1></div>
  <marquee class="scrolling-text" direction="left" scrollamount="12"><?php echo $ann; ?></marquee>

</div>


<?php require 'footer.php';?>

</body>
</html>


