<?php

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
            <style>
      marquee{
      font-size: 30px;
      font-weight: 800;
      color: #DA310D;
      font-family: sans-serif;
      }
    </style>
          <?php include 'linkers.php';?>

</head>
<body onload="set()">
<div>

 <?php require 'nav2.php'; 

require_once("config.php");
$show="SELECT * FROM announcement ORDER BY exdate ASC";

$sts=mysqli_query($con,$show);
$ann="";
while($row=mysqli_fetch_array($sts))
{
	$ann.=$row['des'];
	$ann.=str_repeat("&nbsp;", 10);

}
?>
 
 
 	<div style="background-image: url('Images/sust.jpg');  background-size: 100% 100%; height: 800px">
 		<br>
 		<br>
 		<br>
 		<br>
 		    <marquee direction="left" scrollamount="12"><?php echo $ann ; ?></marquee>
 			<br>
 		<br>
 		<br>
 		<br>
 			<br>
 		<br>
 		
 <h1 align="center">Welcome to SWE OJ !</h1>


</div>


<?php require 'footer.php'; ?>

</body>
</html>


