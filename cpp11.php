<?php
session_start();

require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];
if (!isset($_SESSION['un'])) {
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
    <title>Run Code</title>
    <?php include 'linkers.php';?>



</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>

        <div class=" log">



                <div class="">
                    <h3 style="text-align:center;">Code Compiler</h3>
                </div>




        </div>

        <div class="row cspace">
            <div class="col-sm-10">


                <?php

if ($_POST['code']) {

	$lang = $_POST['language'];
	$source = $_POST['code'];
//$input=$_POST['in'];
	$pb = $_POST['pbn'];
	$pid = $_POST['id'];
	$us = $_SESSION['un'];

	$isql = "SELECT * FROM archieve WHERE id='$pid'";
	$si = mysqli_query($con, $isql);
	$r4 = mysqli_fetch_array($si);

	$limit = $r4['tlimit'];

//$input=$r4['tc'];

	$CC = "g++ -std=c++11";
	$out = "timeout 4s ./a.out";
	$code = $_POST["code"];
	$input = $r4['tc'];
	$filename_code = "main.cpp";
	$filename_in = "input.txt";
	$filename_error = "error.txt";
	$executable = "a.out";
	$command = $CC . " -lm " . $filename_code;
	$command_error = $command . " 2>" . $filename_error;
	$check = 0;
	$tle = 0;
	$ce = 0;

	//if(trim($code)=="")
	//die("The code area is empty");

	$file_code = fopen($filename_code, "w+");
	fwrite($file_code, $code);
	fclose($file_code);
	$file_in = fopen($filename_in, "w+");
	fwrite($file_in, $input);
	fclose($file_in);
	exec("chmod -R 777 $filename_in");
	exec("chmod -R 777 $filename_code");
	exec("chmod 777 $filename_error");

	shell_exec($command_error);
	exec("chmod -R 777 $executable");
	$error = file_get_contents($filename_error);

	$sql = "SELECT output FROM archieve WHERE id='$pid'";

	$sq = mysqli_query($con, $sql);
	$row = mysqli_fetch_array($sq);

	$executionStartTime = microtime(true);
	if (trim($error) == "") {
		if (trim($input) == "") {
			$output = shell_exec($out);
		} else {
			$out = $out . " < " . $filename_in;
			$output = shell_exec($out);
		}

		//echo "<pre>$output</pre>";
		//echo "<textarea id='div' class=\"form-control\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
		echo "<div class=\"row\"><div class=\"col-sm-3\"></div><div class=\"col-sm-12\"><div class=\"alert alert-success rb\"> <strong>Successfully Compiled!</strong> Click Below Submit Button To Submit.</div></div><div class=\"col-sm-2\"></div></div><br>";
	} else if (!strpos($error, "error")) {
		//echo "<pre>$error</pre>";
		$error_message = htmlspecialchars($error);
		echo "<pre class=\"rb\">$error_message</pre>";
		if (trim($input) == "") {
			$output = shell_exec($out);
		} else {
			$out = $out . " < " . $filename_in;
			$output = shell_exec($out);
		}

		//echo "<pre>$output</pre>";
		//echo "<textarea id='div' class=\"form-control\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
		echo "<div class=\"row\"><div class=\"col-sm-3\"></div><div class=\"col-sm-12\"><div class=\"alert alert-success rb\"> <strong>Successfully Compiled!</strong> Click Below Submit Button To Submit.</div></div><div class=\"col-sm-2\"></div></div><br>";
	} else {

		//$error=str_replace("'", "''", $error);

		//echo "<div> <pre>$error</pre></div>";
		$error_message = htmlspecialchars($error);
		echo "<pre class=\"rb\">$error_message</pre>";
		//echo "hello";
		$check = 1;
		$ce = 1;

		echo "<div class=\"row\"><div class=\"col-sm-3\"></div><div class=\"col-sm-12\"><div class=\"alert alert-danger rb\"><strong>Compilation Error Or Submit Failed!</strong> Back To Problem Description And Submit Code Again.</div></div></div>";
	}
	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	$seconds = sprintf('%0.2f', $seconds);
	$coutput = $output;
	if (strlen($coutput) > 100000) {
		// $check=2;
		// echo "<script>
		//   document.getElementById(\"hide2\").style.display = \"none\";
		//   </script>";
		//   echo "<pre>Output memory limit exceeded</pre>";
		$coutput = "System changes this output because of huge output file";

	}
	//echo "<pre>Compiled And Executed In: $seconds s</pre>";
	if ($seconds > $limit) {
		$fr = "lt";
	} else if ($ce == 1) {
		$fr = "e";
	} else if (trim($output) == "") {
		$fr = "rte";
	}
	exec("rm $filename_code");
	exec("rm *.o");
	exec("rm *.txt");
	exec("rm $executable");

	if ($check == 0 || $check == 1) {

		$source = str_replace("'", "''", $source);
		//$nsql='INSERT into codes VALUES("$us","$source",NULL)';
		$nsql = "INSERT into codes VALUES('$us','$source',NULL)";

		$snq = mysqli_query($con, $nsql);

		if ($snq) {
			//echo " Kaam Korse ";
		}

		$usql = "UPDATE archieve SET uoutput='$coutput' WHERE id='$pid'";

		$csql = "SELECT uoutput FROM archieve WHERE id='$pid'";

		$q3 = "SELECT id FROM codes ORDER BY id DESC ";

		$snd = mysqli_query($con, $usql); //updating ooutput in database
		$cnd = mysqli_query($con, $csql);
		$sq3 = mysqli_query($con, $q3);
		$r2 = mysqli_fetch_array($cnd);
		$r4 = mysqli_fetch_array($sq3);

		//$uo=$r2['uoutput'];
		$ac = $row['output'];

		//echo $uo;
		//echo $ac;

		$nid = $r4['id'];
		//echo $nid;

		//var_dump($uo);
		//echo "<br><br>";
		//var_dump($ac);

		//echo "$uo<br>";

	}

	echo "<div class=\"\" style=\"margin-left:31%\"><form action=\"allsubmission.php\" method=\"POST\"><input type=\"hidden\" name=\"pb\" value=\"$pb\"><input type=\"hidden\" name=\"id\" value=\"$pid\"><input type=\"hidden\" name=\"mid\" value=\"$nid\"><input type=\"hidden\" name=\"vd\" value=\"$fr\"><input type=\"hidden\" name=\"il\" value=\"$seconds\"><textarea style=\"display:none\" name=\"result\" rows=\"10\" cols=\"10\">$output</textarea><input class=\"btn btn-success tm\" type=\"submit\" value=\"Submit Code\"></div>";

} else if ($_POST['src']) {

	require_once "config.php";

	$lang = $_POST['language'];
	$source = $_POST['src'];
	$pb = $_POST['pbn'];
	$pid = $_POST['id'];
	$us = $_SESSION['un'];
	$check = 0;
	$tle = 0;
	$ce = 0;

	$isql = "SELECT * FROM element WHERE pbid='$pid'";
	$si = mysqli_query($con, $isql);
	$r4 = mysqli_fetch_array($si);

	$limit = $r4['tlimit'];

	$CC = "g++ -std=c++11";
	$out = "timeout 4s ./a.out";
	$code = $_POST["src"];
	$input = $r4['tc'];
	$filename_code = "main.cpp";
	$filename_in = "input.txt";
	$filename_error = "error.txt";
	$executable = "a.out";
	$command = $CC . " -lm " . $filename_code;
	$command_error = $command . " 2>" . $filename_error;

	//if(trim($code)=="")
	//die("The code area is empty");

	$file_code = fopen($filename_code, "w+");
	fwrite($file_code, $code);
	fclose($file_code);
	$file_in = fopen($filename_in, "w+");
	fwrite($file_in, $input);
	fclose($file_in);
	exec("chmod -R 777 $filename_in");
	exec("chmod -R 777 $filename_code");
	exec("chmod 777 $filename_error");

	shell_exec($command_error);
	exec("chmod -R 777 $executable");
	$error = file_get_contents($filename_error);

	$sql = "SELECT output FROM element WHERE pbid='$pid'";
	$sq = mysqli_query($con, $sql);
	$row = mysqli_fetch_array($sq);

	$executionStartTime = microtime(true);

	if (trim($error) == "") {
		if (trim($input) == "") {
			$output = shell_exec($out);
		} else {
			$out = $out . " < " . $filename_in;
			$output = shell_exec($out);
		}
		//echo "<pre>$output</pre>";
		//echo "<textarea id='div' class=\"form-control\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
		echo "<div class=\"row\"><div class=\"col-sm-5\"></div><div class=\"col-sm-12\"><div class=\"alert alert-success rb\"><strong>Successfully Compiled!</strong> Click  Submit Button To Submit.</div></div><div class=\"col-sm-2\"></div></div><br>";
	} else if (!strpos($error, "error")) {
		//echo "<pre>$error</pre>";
		$error_message = htmlspecialchars($error);
		echo "<pre class=\"rb\">$error_message</pre>";
		if (trim($input) == "") {
			$output = shell_exec($out);
		} else {
			$out = $out . " < " . $filename_in;
			$output = shell_exec($out);
		}
		//echo "<pre>$output</pre>";
		//echo "<textarea id='div' class=\"form-control\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
		echo "<div class=\"row\"><div class=\"col-sm-5\"></div><div class=\"col-sm-12\"><div class=\"alert alert-success rb\"><strong>Successfully Compiled!</strong> Click  Submit Button To Submit.</div></div><div class=\"col-sm-2\"></div></div><br>";
	} else {
		//echo "<pre>$error</pre>";
		$error_message = htmlspecialchars($error);
		echo "<pre class=\"rb\">$error_message</pre>";
		$check = 1;
		$ce = 1;

		echo "<div class=\"row\"><div class=\"col-sm-5\"></div><div class=\"col-sm-12\"><div class=\"alert alert-danger rb\"><strong>Compilation Error Or Submit Failed!</strong> Back To Problem Description And Submit Code Again.</div></div><div class=\"col-sm-2\"></div></div><br>";
	}
	$executionEndTime = microtime(true);
	$seconds = $executionEndTime - $executionStartTime;
	$seconds = sprintf('%0.2f', $seconds);
	//echo "<pre>Compiled And Executed In: $seconds s</pre>";
	$coutput = $output;
	if (strlen($coutput) > 100000) {
		// $check=2;
		// echo "<script>
		//   document.getElementById(\"hide2\").style.display = \"none\";
		//   </script>";
		//   echo "<pre>Output memory limit exceeded</pre>";
		$coutput = "System changes this output because of huge output file";

	}
	if ($seconds > 3) {
		$fr = "lt";
	} else if ($ce == 1) {
		$fr = "e";
	} else if (trim($output) == "") {
		$fr = "rte";
	}
	exec("rm $filename_code");
	exec("rm *.o");
	exec("rm *.txt");
	exec("rm $executable");

	if ($check == 0 || $check == 1) {

		$code = str_replace("'", "''", $code);
		$nsql = "INSERT into code VALUES('$us','$code',NULL)";
		$usql = "UPDATE element SET uoutput='$coutput' WHERE pbid='$pid'"; //verdict update
		$csql = "SELECT uoutput FROM element WHERE pbid='$pid'";
		$q3 = "SELECT id FROM code ORDER BY id DESC ";
		$snq = mysqli_query($con, $nsql);
		$snd = mysqli_query($con, $usql);
		$cnd = mysqli_query($con, $csql);
		$sq3 = mysqli_query($con, $q3);
		$r2 = mysqli_fetch_array($cnd);
		$r4 = mysqli_fetch_array($sq3);

		//$uo=$r2['uoutput'];
		$ac = $row['output'];
		$nid = $r4['id']; //solution id of user

		$quo = "SELECT * FROM element WHERE pbid='$pid'";
		$sq1 = mysqli_query($con, $quo);
		$r4 = mysqli_fetch_array($sq1);

		$conid = $r4['id'];

	}

	echo "<div class=\"row\"><div class=\"col-sm-4\"></div><div class=\"col-sm-5\"><form action=\"contestsubmission.php\" method=\"POST\"><input type=\"hidden\" name=\"pb\" value=\"$pb\"><input type=\"hidden\" name=\"id\" value=\"$pid\"><input type=\"hidden\" name=\"mid\" value=\"$nid\"><input type=\"hidden\" name=\"vd\" value=\"$fr\"><input type=\"hidden\" name=\"il\" value=\"$seconds\"><textarea style=\"display:none\" name=\"result\" rows=\"10\" cols=\"10\">$output</textarea><input class=\"btn btn-success tm\" type=\"submit\" value=\"Submit Code\"> </div><div class=\"col-sm-3\"></div></div>";
}

?>

            </div>

        </div>
    </div>
    </div><br><br><br><br><br><br><br><br><br><br>


    <?php require 'footer.php';?>


</body>

</html>