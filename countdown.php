<?php

session_start();

require_once "config.php";

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];
}

if (!isset($_GET['id'])) {
	header("Location:contest.php");
}

?>



<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>

        <?php require 'linkers.php';?>




 <script>
// Set the date we're counting down to

function call(d,st ,xd){

var countDownDate = new Date(d).getTime();
var start =new Date(st).getTime();
 var nowserver=xd;
 //document.write(nowserver + "<br>");
 nowserver=  new Date(nowserver).getTime();
 var nowclient = Math.floor(new Date().getTime());
 var diff= nowserver-nowclient;


var result;
//diff=1000*diff;

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
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


      // Output the result in an element with id="demo"
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


        // Output the result in an element with id="demo"
        var result=days + "d " + hours + "h "
        + minutes + "m " + seconds + "s ";


       // const show = document.getElementById("show")
       // if(show) show.style.display="block";
       document.getElementById("show").style.display="block";


      //console.log(result);
        document.getElementById("demo").innerHTML = " Running.... : "+ days + "d " + hours + "h "
       + minutes + "m " + seconds + "s ";





    }

    // If the count down is over, write some text
    else if (now>countDownDate) {
        clearInterval(x);

        document.getElementById("demo").innerHTML = "Status : Finished";
        document.getElementById("show").style.display="block";

    }



}, 1000);

  return x;
}


</script>




</head>
<body onload="set()">



<div class="main">

<?php require 'nav2.php';?>

<div class=" log">

<div class=""><h3 style="text-align: center;">Contest Countdown</h3></div>






</div>




<div class="row cspace">


</div>





<?php

require_once "config.php";
date_default_timezone_set("Asia/Dhaka");

$cid = $_GET['id'];
// echo $nam;
// echo "<br>";

$q3 = "SELECT * FROM contest where id='$cid' ORDER BY date_on DESC LIMIT 0,1";
$sq3 = mysqli_query($con, $q3);

while ($row = mysqli_fetch_array($sq3)) {

	$nv = $row['start_at'];
	$en = $row['end_at'];
	//$current=date("Y-m-d H:i:s ");

	?>

    <script type="text/javascript">
    var end=<?php print json_encode($en);?>;

    var nv=<?php print json_encode($nv);?>;
    var cur=<?php print json_encode(date("Y-m-d H:i:s "));?>;

    //console.log("Start" +nv);


    call(end,nv,cur);


   </script>

    <?php
// echo("<br><br><h1 id=$demo></h1> <br><br>");
	$fetch = "SELECT * from contest where id='$cid'";
	$sfetch = mysqli_query($con, $fetch);
	$erow = mysqli_fetch_array($sfetch);
	$pass = $erow['pass'];
	if ($pass != NULL) {
		//echo "hi";
		//SE_name($cid);
		//print_r($_SESSION);

		echo ("<br><br><center><h1 id=\"demo\"></h1> </center><br><br>");

		echo '<div id ="show" style="display:none"><form class="form-horizontal" method="post" action="contestaccess.php?id=' . $cid . '"><div class="form-group autto col-sm-3">

      <input type="pass" class="form-control" name="pass" placeholder="Password" required>
    <button type="submit" class="btn btn-success">Enter password</button>
  </div></form></div>';
		if (isset($_GET['fail'])) {

			echo '<div class="autto col-sm-4 upore" style="text-align:center;color:red">Wrong password.Try again</div>';
		}
	} else {

		echo ("<br><br><center><h1 id=\"demo\"></h1> </center><br><br>");
		echo ("<div id=\"show\" style=\"display:none; margin-left:46vw; margin-right:100px;\"><a class=\"btn btn-success\" href=\"contestproblem.php?id=$cid\">Enter Now</a></div>");
	}

}

?>



</div>

</div>
</div>




<?php

require_once "footer.php";

?>
</body>
</html>


