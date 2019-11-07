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



  $msg = "";

$size=getimagesize($_FILES['myimage']['tmp_name']);
  $image = $_FILES['myimage']['name'];
  
  if($size!=false)
  {
 
  


$target = "users/".basename($image);
$sql1 = "SELECT * FROM `user` WHERE name = '$username'";
$var=mysqli_query($con,$sql1);
$row=mysqli_fetch_array($var);
if(!empty($row))
{
    $sql="UPDATE user SET photo = '$image' WHERE name = '$username'";
}
else{
    $sql = "INSERT INTO user (photo) VALUES ('$image')";

}


 mysqli_query($con, $sql);
  

if (move_uploaded_file($_FILES['myimage']['tmp_name'], $target)) {
  	$msg = "Image uploaded successfully";
}
else{
    $msg = "Failed to upload image";
 }
}
  echo $msg;
  header("Location:profile.php?user=$username");
?>