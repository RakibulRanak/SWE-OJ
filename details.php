<?php

ob_start();
session_start();
require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION['un'])) {
	header("Location:login.php");
}
if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

$mysql = "SELECT  status from user WHERE name='$username'";
$snd = mysqli_query($con, $mysql);
$arrow = mysqli_fetch_array($snd);

$st = $arrow['status'];

$access = 0;

if (isset($_GET['id'])) {
	$pid = $_GET['id'];
}

?>

<?php

require_once "config.php";

if (isset($_GET['id'])) {

	$getcon = "SELECT * from contestproblems WHERE pbid='$pid'";
	$sendcon = mysqli_query($con, $getcon);
	$namerow = mysqli_fetch_array($sendcon);
	$coname = $namerow['cname'];

	$fowner = "SELECT  owner from contest where cname='$coname'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];

	$conid = $namerow['id'];
	$mycon = "SELECT * from contest WHERE id='$conid'";
	$sendcon = mysqli_query($con, $mycon);
	$rhis = mysqli_fetch_array($sendcon);

	//$owner = $rhis['owner'];
	$passdb = $rhis['pass'];

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	} else {
		$access = 0;
	}
	if ($passdb != NULL && $access == 0) {
		if (!isset($_SESSION["con" . $conid])) {
			header("Location:countdown.php?id=$conid");
		}

	}
}

?>

<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contest</title>

        <?php require 'linkers.php';?>


         <script>
// Set the date we're counting down to

function call(d,st,xd){

var countDownDate = new Date(d).getTime();
var start =new Date(st).getTime();

var nowserver=xd;
 //document.write(nowserver + "<br>");
 nowserver=  new Date(nowserver).getTime();
 var nowclient = Math.floor(new Date().getTime());
 var diff= nowserver-nowclient;

//console.log(start);

var result;

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    //console.log(now);
    now+=diff;

    // Find the distance between now an the count down date





    if(start>now)
    {

       var distance = start - now;

        // Time calculations for days, hours, minutes and seconds
      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);


      // Output the result in an contestproblems with id="demo"
      var result=days + "d " + hours + "h "
      + minutes + "m " + seconds + "s ";

      //console.log(result);

       document.getElementById("demo").innerHTML = "Countdown : " + days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
    }
    else if(countDownDate>=now)
    {


        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);


        // Output the result in an contestproblems with id="demo"
        var result=days + "d " + hours + "h "
        + minutes + "m " + seconds + "s ";

      //console.log(result);
       document.getElementById("demo").innerHTML = "Running : "+ days + "d " + hours + "h "
       + minutes + "m " + seconds + "s ";

      // document.getElementById("dem").innerHTML = " Running.... : "+ days + "d " + hours + "h "
       //+ minutes + "m " + seconds + "s ";

       document.getElementById("show").style.display="block";




    }

    // If the count down is over, write some text
    else if (now>countDownDate) {
        clearInterval(x);

        document.getElementById("demo").innerHTML = "Status : Finished";

        document.getElementById("fin").innerHTML = "Contest has Finished";


    }



}, 1000);

  return x;
}


</script>






</head>
<body>
<div class="main">
<?php require 'nav2.php';?>


<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;">Problem Details</h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">

</div>

</div>

<div class="row cspace">
<div class="col-sm-8">


<?php

require_once "config.php";

date_default_timezone_set("Asia/Dhaka");

if (isset($_GET['id'])) {
	$des = $_GET['id'];
	//echo $des;

	$q3 = "SELECT * FROM contestproblems WHERE pbid='$des'";

	$sq3 = mysqli_query($con, $q3);

	$r1 = mysqli_fetch_array($sq3);

	$cnt = $r1['cname'];
	$str = "$r1[pbdes]";

	echo "Problem Name: $r1[pbname]<br><br> Problem ID: $r1[pbid]<br><br>Time Limit: $r1[tlimit] Seconds<br><br> Problem Details<br><br>";
	// if (strpos($str, $key) == true) {
	echo "
		<div id=\"\" class=\"rb math-tex\"style=\"height: 600px; width: 55vw ;background-color:white !important; overflow: scroll;padding:20px; line-height: 200%;\">
      <h6>$str</h6>
    </div>";
	// } else {
	// 	echo "
	// 	<textarea class=\"form-control rb\" rows=\"30\" cols=\"95\" readonly>$r1[pbdes]</textarea>";
	// }

	echo "<br><br>Problem Setter: $r1[pbauthor]<br><br>";

	$conid = $r1['id'];

	$q3 = "SELECT * FROM contest WHERE id='$conid'";
	$sq3 = mysqli_query($con, $q3);

	while ($row = mysqli_fetch_array($sq3)) {

		$current = date("Y-m-d H:i:s ");

		$nv = $row['start_at'];

		//var_dump($demo);

		$en = $row['end_at'];

		?>

    <script type="text/javascript">
    var end=<?php print json_encode($en);?>;

    var nv=<?php print json_encode($nv);?>;
    var cur=<?php print json_encode(date("Y-m-d H:i:s "));?>;

    //console.log("Start" +nv);

    call(end,nv,cur);


   </script>

    <?php

		$diff = strtotime($nv) - strtotime($current);
		$current = strtotime($current);

		// echo "$current<br>";

		//echo "$diff";

		if ($diff > 0 && $access == 0) {

			header("Location:countdown.php?id=$conid");

		}

		echo ("<div id=\"show\" style=\"display:none;\"><a class=\"btn btn-success\" href=\"contestsubmit.php?id=$r1[pbid]\">Submit Your Code</a></div>");

		echo "<div id=\"fin\"></div><br><br>";

	}

}

?>

</div>
<div class="col-sm-4">

<?php

if (isset($_GET['id'])) {
	$des = $_GET['id'];

	$q3 = "SELECT * FROM contestproblems WHERE pbid='$des'";

	$sq3 = mysqli_query($con, $q3);

	$r1 = mysqli_fetch_array($sq3);

	$cnt = $r1['cname'];

	$conid = $r1['id'];

	$q3 = "SELECT * FROM contest WHERE id='$conid'";
	$sq3 = mysqli_query($con, $q3);

	while ($row = mysqli_fetch_array($sq3)) {

		$current = date("Y-m-d H:i:s ");

		$nv = $row['start_at'];

		$en = $row['end_at'];

		?>

    <script type="text/javascript">
    var end=<?php print json_encode($en);?>;
    //var val=<?php print json_encode($i);?>;
    var nv=<?php print json_encode($nv);?>;
    var cur=<?php print json_encode(date("Y-m-d H:i:s "));?>;

    //console.log("Start" +nv);

    call(end,nv,cur);


   </script>

    <?php

		$diff = strtotime($nv) - strtotime($current);
		$current = strtotime($current);

		if ($diff > 0 && $access == 0) {

			header("Location:countdown.php?id=$conid");

		}

		if ($access == 1) {
			echo "<center><a class=\"btn btn-success\" href=\"editcontestproblem.php?id=$pid\">Edit</a></center>";
		}

		echo ("<center><h2 id=\"demo\" class=\"btn btn-primary btn-lg\"></h2></center><br><br>");

		echo ("<div class=\"xmm\">Contest Name: <a class=\"blue\"href=\"contestproblem.php?id=$row[id]\">$row[cname]</a><br><br>Contest Date: $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br><br><br></div>");

	}

}

?>
</div>
</div>
</div>
</div><br><br><br>

<?php

require_once "footer.php";

?>


</body>
</html>
