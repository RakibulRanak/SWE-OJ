<?php

header("Cache-Control: no cache");
session_cache_limiter("private_no_expire");

// $hh=$_SERVER['HTTP_REFERER'];
//$hh=substr($hh,-17,17);
//header("Location:submit.php?id=$pid");

$languageID = $_POST["language"];

//echo "hi";
error_reporting(0);

if ($_FILES["file"]["name"] != "") {
	include "compilers/make.php";
} else {
	switch ($languageID) {
	case "c":
		{
			include "c.php";
			break;
		}
	case "cpp":
		{
			include "cpp.php";
			break;
		}
	case "cpp11":
		{
			include "cpp11.php";
			break;
		}

	}
}

?>