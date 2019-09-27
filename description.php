<?php

session_start();

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

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
        <title>Description</title>
                 <?php include 'linkers.php';?>







</head>
<body>
<div class="main">
 <?php require 'nav2.php'; ?>

<?php

require_once("config.php");

if($_GET['id'])
{
  $problemid=$_GET['id'];
}

if(isset($_GET['name']))
{
	$problem=$_GET['name'];
	$sql="SELECT * FROM archieve WHERE pbname='$problem'";
}
else
{
  $sql="SELECT * FROM archieve WHERE id='$problemid'";
}



$sq=mysqli_query($con,$sql);

$row=mysqli_fetch_array($sq);



echo "
<div class=\"row log\">
<div class=\"col-sm-10\">
<div class=\"\"><h3 style=\"text-align:center;\">$row[pbname]</h3></div>
</div>

<div class=\"col-sm-1\">

</div>

<div class=\"col-sm-1\">
  
</div>

</div>";


echo "

<div class=\"row cspace\">
<div class=\"col-sm-10\">
<p>Time Limit: $row[tlimit] Seconds</p><br><br>
<b>Problem Description</b><br><br><textarea class=\"form-control\" rows=\"30\" cols=\"100\" readonly>$row[pbdes]</textarea><br>";

echo "<b>Problem Setter : <a href=\"profile.php?user=$row[pbauthor]\">$row[pbauthor]</a></b><br><br>";

//echo "<form action=\"submit.php\" method=\"POST\"><textarea style=\"display:none\" name=\"tcase\">$row[tc]</textarea><br><br><textarea style=\"display:none\" name=\"out\">$row[output]</textarea><br><br></form>";


echo "<a class=\"btn btn-success\" href=\"submit.php?id=$row[id]\">Submit Your Code</a></div>";





?>

<div class="col-sm-2">

</div>
</div>
</div>
</div><br><br><br>

<div class="area">
<div class="well foot">
<div class="row area">
<div class="col-sm-3">
</div>

<div class="col-sm-5">


<div class="">

<b>Beta Version-2019</b><br>
<b>Developed By Ranak</b>

</div>
</div>


<div class="col-sm-4">
<?php

require_once("time.php");

?>
</div>
</div>
</div>
</div>



</body>
</html>
