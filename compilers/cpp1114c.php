<?php
if ($languageID == "c") {
	//echo "c";
	$CC = "gcc -o " . $username;
	$filename_code = $username . "main.c";
} else if ($languageID == "cpp") {
	$CC = "g++ -o " . $username;
	$filename_code = $username . "main.cpp";
} else {
	$CC = "g++ -o " . $username . " -std=c++11";
	$filename_code = $username . "main.cpp";
}
$out = "timeout 5s ./" . $username;
$code = $_POST["code"];
$input = $_POST["input"];
$filename_in = $username . "input.txt";
$filename_error = $username . "error.txt";
$executable = $username;
$command = $CC . " -lm " . $filename_code;
$command_error = $command . " 2>" . $filename_error;
$check = 0;

$code = str_replace("system", "changed", $code);
//$source = str_replace("system", "changed", $source);
$code = str_replace("exec", "changed", $code);
//$source = str_replace("exec", "changed", $source);
$code = str_replace("bash", "changed", $code);
//$source = str_replace("bash", "changed", $source);
$code = str_replace("fork", "changed", $code);
//$source = str_replace("form", "changed", $source);

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
$executionStartTime = microtime(true);

if (trim($error) == "") {
	if (trim($input) == "") {
		$output = shell_exec($out);
	} else {
		$out = $out . " < " . $filename_in;
		$output = shell_exec($out);

	}
	echo "<textarea id='div' class=\"form-control rb\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
} else if (!strpos($error, "error")) {

	$error_message = htmlspecialchars($error);
	echo "<pre class=\"rb\">$error_message</pre>";
	if (trim($input) == "") {
		$output = shell_exec($out);
	} else {
		$out = $out . " < " . $filename_in;
		$output = shell_exec($out);
	}
	echo "<textarea id='div' class=\"form-control rb\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
} else {

	$error_message = htmlspecialchars($error);
	echo "<pre class=\"rb\">$error_message</pre>";
	$check = 1;
}
$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
$seconds = sprintf('%0.2f', $seconds);
echo "<pre class=\"rb\">Compiled And Executed In: $seconds s</pre>";

if ($check == 1) {
	echo "<pre class=\"rb\">Verdict : CE</pre>";
} else if ($check == 0 && $seconds > 3) {
	echo "<pre class=\"rb\">Verdict : TLE</pre>";
} else if (trim($output) == "") {
	echo "<pre class=\"rb\">Verdict : Run Time Error</pre>";
} else if ($check == 0) {
	echo "<pre class=\"rb\">Verdict : AC</pre>";
}

exec("rm $filename_code");
exec("rm *.o");
exec("rm *.txt");
exec("rm $executable");
?>