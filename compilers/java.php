<?php
$CC = "javac";
$out = "timeout 6s java Main";
$code = $_POST["code"];
$input = $_POST["input"];
$filename_code = "Main.java";
$filename_in = "input.txt";
$filename_error = "error.txt";
$runtime_file = "runtime.txt";
$executable = "*.class";
$command = $CC . " " . $filename_code;
$command_error = $command . " 2>" . $filename_error;
$runtime_error_command = $out . " 2>" . $runtime_file;

$code = str_replace("system", "changed", $code);
//$source = str_replace("system", "changed", $source);
$code = str_replace("exec", "changed", $code);
///$source = str_replace("exec", "changed", $source);
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
exec("chmod 777 $executable");
exec("chmod 777 $filename_error");

shell_exec($command_error);
$error = file_get_contents($filename_error);
$executionStartTime = microtime(true);

if (trim($error) == "") {
	if (trim($input) == "") {
		shell_exec($runtime_error_command);
		$runtime_error = file_get_contents($runtime_file);
		$output = shell_exec($out);
	} else {
		shell_exec($runtime_error_command);
		$runtime_error = file_get_contents($runtime_file);
		$out = $out . " < " . $filename_in;
		$output = shell_exec($out);
	}
	//echo "<pre>$runtime_error</pre>";
	//echo "<pre>$output</pre>";
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
	//echo "<pre>$output</pre>";
	echo "<textarea id='div' class=\"form-control rb\" name=\"output\" rows=\"10\" cols=\"50\">$output</textarea><br><br>";
} else {
	$error_message = htmlspecialchars($error);
	echo "<pre class=\"rb\">$error_message</pre>";
}
$executionEndTime = microtime(true);
$seconds = $executionEndTime - $executionStartTime;
$seconds = sprintf('%0.2f', $seconds);
echo "<pre class=\"rb\">Compiled And Executed In: $seconds s</pre>";
if ($seconds > 5) {
	echo "<pre class=\"rb\">Verdict : TLE</pre>";
} else {
	echo "<pre class=\"rb\">Verdict : AC</pre>";
}
exec("rm $filename_code");
exec("rm *.txt");
exec("rm $executable");
?>
