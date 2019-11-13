<?php

session_start();
require_once("config.php");

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if(!isset($_SESSION["un"]))
{
	header("Location:login.php");
}

if(isset($_SESSION['un']))
{
	$username=$_SESSION['un'];
}

$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];


if($st=="Teacher" || $st=="Problem Setter" || $st=="Developer")
{
   $access=1;
}
else
{
    header("Location:home.php");
}
if(isset($_GET['user']))
{
  $data=$_GET['user'];
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
 <?php require 'nav2.php'; ?>


<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;"><?php  echo" Create Admin"; ?></h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>


<div class="row cspace">
<div class="col-sm-8">


  
   <form action="adminpanel.php" method="POST">
   <label for="ta">Name</label>
   <input type="text" name="name" class="form-control" required><br><br>
   <label for="ta">Email</label>
   <input type="text" name="email" class="form-control" required><br><br>
   <label for="ta">Status</label>
   <select name="status" class="form-control">
     <option value="Teacher">Teacher</option>
     <option value="Problem Setter">Problem Setter</option>
     <?php
        if($st=="Developer")
        {
           echo "<option value=\"Developer\">Developer</option>";
        }

     ?>
     <option value="user">User</option>
   </select><br><br>
   <input type="submit" class="btn btn-success" value="Create Admin">

   </form>
  </div>


<div class="col-sm-4">

</div>
</div>
</div><br><br><br>

 <?php require 'footer.php'; ?>



</body>
</html>
