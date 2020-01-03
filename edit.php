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
<div class=""><h3 style="text-align:center;"><?php  echo"Update $username's  Profile"; ?></h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>

<?php

$sql="SELECT * FROM user WHERE name='$username'";
$send=mysqli_query($con,$sql);
$row=mysqli_fetch_array($send);
$pass=$row['pass'];




?>


<div class="row cspace">
<div class="col-sm-8">


  
   <form action="update.php" method="POST">

   <label for="ta">Email</label>
   <input type="text" name="email" value="<?php echo("$row[email]")  ?>" class="form-control"><br><br>
   <label for="ta">Change Password</label>
   <input type="password" name="status" value="<?php echo("$pass")  ?>" class="form-control"><br><br>
   <input type="submit" class="btn btn-success" value="Update">

   </form>
  </div>


<div class="col-sm-4">

</div>
</div>
</div><br><br><br>



<?php require 'footer.php'; ?>



</body>
</html>
