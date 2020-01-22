<?php

session_start();

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

?>


<!DOCTYPE html>
<html>
<head>

       <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <?php require 'linkers.php';?>

</head>

<body>
<div class="main">
 <?php require 'nav2.php';?>

<div class="upore">
<div class="col-sm-12">
<div class=""><h3 style="text-align:center;">Output</h3></div>
</div>



</div>

<div class="container">

<div class="col-sm-10 autto upore">


<?php
if (!isset($_POST["language"])) {
	header("Location:compiler.php");
}
$languageID = $_POST["language"];
error_reporting(0);
if ($_FILES["file"]["name"] != "") {
	include "compilers/make.php";
} else {
	if ($languageID == "c" || $languageID == "cpp" || $languageID == "cpp11") {
		//echo "c";
		include 'compilers/cpp1114c.php';
	} // else if ($languageID == "python") {
	// 	//echo "c na";
	// 	include 'compilers/python.php';
	//}
	else {
		include 'compilers/java.php';
	}

}
?>

</div>


</div>
</div>
</div>

<?php require 'footer.php';?>
</body>
</html>
