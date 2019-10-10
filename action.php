<?php

require_once("config.php");

$user=$_POST['uname'];
$email=$_POST['email'];
$pass=$_POST['password'];
$password=md5($pass);

$query="INSERT into user(name,pass,status,email) VALUES('$user','$password','user','$email')";
$sq=mysqli_query($con,$query);


if($sq)
{
	header("Location:login.php");
}
else
{

  header("Location:signup.php?value=fail");
	echo("Username already exists. Failed<br>");
}


?>
