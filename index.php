<?php
 ob_start();
session_start();
require_once("config.php");

if(!isset($_SESSION["un"]))
{
  header("Location:login.php");
}

if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}

?>


<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <?php include 'linkers.php';?>

</head>

<body onload="set()">
    <div class="main">

        <?php require 'nav2.php'; 

      header("Location:home.php");
      ?>
    </div>


    <?php require 'footer.php'; ?>

</body>

</html>
