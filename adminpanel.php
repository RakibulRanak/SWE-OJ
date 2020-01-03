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

$access=0;

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
<div class=""><h3 style="text-align:center;"><?php  echo" Update Admin Panel"; ?></h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>

<div class="row cspace">
<div class="col-sm-8">
<?php

if(isset($_POST['name']) || isset($_POST['email'])||isset($_POST['status']))
{
   $name=$_POST['name'];
   $email=$_POST['email'];
   $status=$_POST['status'];

   $sql="UPDATE user SET  status='$status' WHERE name='$name'";
   $send=mysqli_query($con,$sql);


   if($send)
   {
       echo "<div style=\"margin-left:250px;\" class=\"alert alert-success\">
  <strong>Admin Panel Has Been Updated! Go To his <a href=\"profile.php?user=$name\">Profile</a></strong>
   </div><br><br><br><br>";
   }
   else
   {
      echo "<div style=\"margin-left:250px;\" class=\"alert alert-danger\">
    <strong>Operation Failed. Please Try Again By Giving Correct Username And Email</strong>
   </div><br><br><br><br>";
   }
 

  


}





?>





  
   
  </div>


<div class="col-sm-4">

</div>
</div>
</div><br><br><br><br>
<br><br><br><br><br><br><br><br>

<?php require 'footer.php'; ?>



</body>
</html>
