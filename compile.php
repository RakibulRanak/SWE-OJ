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
        <title>Home</title>
        <?php require 'linkers.php'; ?>

</head>

<body>
<div class="main">
 <?php require 'nav2.php'; ?>

<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;">Output</h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>

<div class="row cspace">
<div class="col-sm-1">
</div>
<div class="col-sm-8">


<?php

	$languageID=$_POST["language"];
        error_reporting(0);
	if($_FILES["file"]["name"]!="")
	{
		include "compilers/make.php";
	}
	else
	{
		switch($languageID)
			{
				case "c":
				{
					include("compilers/c.php");
					break;
				}
				case "cpp":
				{
					include("compilers/cpp.php");
					break;
				}

				case "cpp11":
				{
					include("compilers/cpp11.php");
					break;
				}
				case "java":
				{	
					include("compilers/java.php");
					break;
				}
			
			}
	}
?>

</div>

<div class="col-sm-3">

</div>
</div>
</div>
</div><br><br><br>

<?php require 'footer.php'; ?>



</body>
</html>
