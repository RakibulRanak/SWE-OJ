<?php


$host="localhost";
$user="root";
$pass="";
$db="sweoj";

$con=mysqli_connect($host,$user,$pass,$db);

if(!$con)
{
	print("Not Connected<br>".mysql_error());

}
else
{
	//echo("Connected");
}






?>
