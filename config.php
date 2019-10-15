<?php


//$host="192.168.31.159";
//$host="10.100.165.235";
$host='localhost';
$user="root";
$pass="";
$db="sweoj";

//$con=mysqli_connect("localhost",$user,$pass,$db);
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
