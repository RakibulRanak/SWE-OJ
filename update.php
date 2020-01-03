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

<div class="row cspace">
<div class="col-sm-8">
<?php

if( isset($_POST['email'])||isset($_POST['status']))
{
   $name=$username;
   $email=$_POST['email'];
   $status=$_POST['status'];
   $password=md5($status);

   $sql="UPDATE user SET name='$name', email='$email', pass='$password' WHERE name='$username'";
   $send=mysqli_query($con,$sql);
    

   echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
  <strong>Your Profile Has Been Updated! Go To Your <a href=\"profile.php?user=$username\">Profile</a></strong>
   </div><br><br><br><br>";


}





?>





  
   
  </div>


<div class="col-sm-4">

</div>
</div>
</div><br><br><br><br>

<?php require 'footer.php'; ?>



</body>
</html>
