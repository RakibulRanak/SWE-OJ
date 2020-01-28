<?php

ob_start();
session_start();

require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
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

require_once "config.php";

if (isset($_GET['id'])) {
	$cid = $_GET['id'];

	$fowner = "SELECT  owner from contest where id='$cid'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	} else {
		$access = 0;
	}
} else {
	header("Location:contest.php");
}

?>

<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contest Problems</title>

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
          now+=diff;

          // Find the distance between now an the count down date

          if(start>now)
          {

             var distance = start - now;

             console.log(distance);

              // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);


            // Output the result in an contestproblems with id="demo"
            var result=days + "d " + hours + "h "
            + minutes + "m " + seconds + "s ";

            //console.log(result);
            //change korsi
             document.getElementById("demo").innerHTML = "Countdown : "+ days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
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
             //  document.getElementById(val).innerHTML = "Running : "+ days + "d " + hours + "h "
             // + minutes + "m " + seconds + "s ";
              document.getElementById("demo").innerHTML = "Running : "+ days + "d " + hours + "h "
             + minutes + "m " + seconds + "s ";
          }

          // If the count down is over, write some text
          else if (now>countDownDate) {
              clearInterval(x);
              //document.getElementById(val).innerHTML = "Status : Finished";
              document.getElementById("demo").innerHTML = "Finished";
          }



      }, 1000);

        return x;
      }


      </script>


</head>
<body>
<div class="main">
<?php require 'nav2.php';?>
<div class="container-fluid log">

<div class="alert alert-info">
  <button id="an" class="btn btn-success">
   <script type="text/javascript">

        $("#an").click(function() {
           $('html,body').animate({
        scrollTop: $("#fn").offset().top},
        'slow');
});
</script>
</button>
</div>
<div class="row">
<div class="col-sm-8">
<div class=""><h3 style="text-align:center;">Contest Problems</h3></div>
 <?php if ($access == 1) {
	echo "
  <div class=\"col-sm-12\"><h3 style=\"text-align:center;\">
                <a class=\"btn btn-primary\" href=\"setcontestproblem.php?id=$cid\">+</a></h3></div> ";

}?>
<br>

<h2><div id="tc"></div></h2>

<div class="table-responsive">
    <table class="table-dark table table-striped table-hover">
    <thead>
    <tr>
     <th>ID</th>
     <th>Problem Name</th>
     <th>Status</th>
     <th>Accepted/Submission</th>
     <th>Problem Setter</th>
     <th id="show" style="display:none;">ADD</th>
    </tr>
    </thead>
    <tbody>



<?php
require_once "config.php";

date_default_timezone_set("Asia/Dhaka");

//updateeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee from editcontestproblem

if (isset($_POST['up'])) {

	$contest = $_POST['cnn'];
	$cid = $_POST['ccid'];
	$pbid = $_POST['ci'];
	$pn = $_POST['pb'];
	$des = $_POST['editor'];
	$des = str_replace("'", "''", $des);
	$des = str_replace('\\', '\\\\', str_replace('\\\\', '\\', $des));
	$au = $_POST['c2'];
	$tc = $_POST['c3'];
	$out = $_POST['c4'];
	$ptl = $_POST['tll'];
	//echo $cid;

	if ($access == 1) {
		$update = "UPDATE contestproblems SET pbname='$pn',pbdes='$des',pbauthor='$au',tc='$tc',output='$out',tlimit=$ptl WHERE pbid=$pbid";
		$supdate = mysqli_query($con, $update);

		if ($supdate) {
			//echo "<script>alert(\"Updated Successfully\");</script>";
			header("Location:contestproblem.php?id=$cid");
		} else {
			echo "<script>alert(\"Failed\");</script>";

		}
	}
	if ($access == 0) {
		echo "<script>alert(\"Forbidden\");</script>";
	}

}

//delllllllllllllllllllllllllllllllllll  from editcontestproblem

if (isset($_POST['del'])) {
	$contest = $_POST['cnn'];
	$cid = $_POST['ccid'];
	$pbid = $_POST['ci'];
	$pn = $_POST['pb'];
	$des = $_POST['editor'];
	$au = $_POST['c2'];
	$tc = $_POST['c3'];
	$out = $_POST['c4'];
	$ptl = $_POST['tll'];
	echo "hidel";

	if ($access == 1) {
		$delete = "DELETE FROM contestproblems WHERE pbid=$pbid";
		$sdelete = mysqli_query($con, $delete);
		header("Location:contestproblem.php?id=$cid");
	} else if ($access == 0) {
		echo "<script>alert(\"Forbidden\");</script>";

	}

}

// CREATE PROBLEM FROM SETCONTESTPROBLEM.PHP
if (isset($_POST['new'])) {

	$contest = $_POST['cn'];
	$cid = $_POST['ci'];
	$pn = $_POST['pb'];
	$des = $_POST['editor'];
	$des = str_replace("'", "''", $des);
	$des = str_replace('\\', '\\\\', str_replace('\\\\', '\\', $des));

	$au = $_POST['c2'];
	$tc = $_POST['c3'];
	$out = $_POST['c4'];
	$ptl = $_POST['tll'];
	echo "hiiSET";

	$fowner = "SELECT  owner from contest where id='$cid'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	} else {
		$access = 0;
	}
	echo $contest;

	if ($access == 1) {

		$q2 = "INSERT into contestproblems  (`id`,`cname`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`,
        `pbid`, `tlimit`) VALUES('$cid','$contest','$pn','$des','$au','$tc','$out','',NULL,'$ptl')";
		$sq2 = mysqli_query($con, $q2);
		header("Location:contestproblem.php?id=$cid");
	} else {
		header("Location:setcontestproblem.php?fail=1");
	}

}

//contestproblems-page

if (isset($_GET['id'])) {
	$cid = $_GET['id'];
	// echo "hhiii";
	$q3 = "SELECT * FROM contestproblems WHERE id='$cid'";
	//$fcontest = "SELECT id from contest where cname='$n'";
	//$sf = mysqli_query($con, $fcontest);
	//$myrow = mysqli_fetch_array($sf);

	$r = mysqli_query($con, $q3);
	$counter = 0;
	while ($row = mysqli_fetch_array($r)) {
		//echo("<a href=\"details.php?id=$row[pbid]\"><div class=\"pb\">$row[pbname]</div></a><br>");
		$counter++;
		$temp = "show" . $counter;
		//echo $temp;
		$problem_name = $row['pbname'];
		//$cid = $myrow['id'];

		//echo "hhiii";
		$number = "SELECT verdict from submission WHERE pbname='$row[pbname]'  and verdict='Accepted' AND cid='$cid' AND sname ='$username'";
		$snumber = mysqli_query($con, $number);
		$tsol = mysqli_num_rows($snumber);

		$acn = "SELECT COUNT(verdict) AS verdict from submission WHERE verdict='Accepted' AND pbname='$row[pbname]' AND cid='$cid' GROUP BY pbname";
		$sacn = mysqli_query($con, $acn);
		$sol = mysqli_fetch_array($sacn);

		$tsub = "SELECT COUNT(verdict) as sub from submission WHERE pbname='$row[pbname]' AND cid='$cid' GROUP BY pbname";
		$stsub = mysqli_query($con, $tsub);
		$ntsub = mysqli_fetch_array($stsub);
		//echo "$row[cname]";

		if ($tsol > 0) {
			$ver = "Solved";

			if ("$row[sts]" == 1) {

				echo "


      <tr><td>$row[pbid]</td><td><a href=\"details.php?id=$row[pbid]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-success btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td><td><div class=\"btn btn-primary btn-sm\" id=\"$temp\" style=\"display:none;\">Added</div></td></tr>";

			} else {

				echo "


      <tr><td>$row[pbid]</td><td><a href=\"details.php?id=$row[pbid]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-success btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td><td>




            <form action=\"contoarc.php\" name=\"f2\" method=\"POST\">

            <input type=\"hidden\" name=\"pbid\" class=\"form-control\" value=\"$row[pbid]\";>
            <input type=\"hidden\" name=\"cid\" class=\"form-control\" value=\"$row[id]\";>

            <input type=\"hidden\" name=\"pn\" class=\"form-control\" value=\"$row[pbname]\";>



            <input type=\"submit\" class=\"btn btn-sm btn-success\" id=\"$temp\" style=\"display:none;\" name=\"up\" value=\"Add\">





       </form>





      </td></tr>";
			}

		} else {
			$ver = "Unsolved";

			if ("$row[sts]" == 1) {
				echo "


      <tr><td>$row[pbid]</td><td><a href=\"details.php?id=$row[pbid]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-danger btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td> <td><div class=\"btn btn-primary btn-sm\" id=\"$temp\" style=\"display:none;\">Added</div></td></tr>";
			} else {

				echo "


      <tr>
      <td>$row[pbid]</td>
      <td><a href=\"details.php?id=$row[pbid]\"><div class=\"\">$row[pbname]</div></a></td>
      <td><div class=\"btn btnn2 btn-danger btn-sm\">$ver</div></td>
      <td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td>
      <td>$row[pbauthor]</td>
      <td>




            <form action=\"contoarc.php\" name=\"f2\" method=\"POST\">

            <input type=\"hidden\" name=\"pbid\" class=\"form-control\" value=\"$row[pbid]\";>
            <input type=\"hidden\" name=\"cid\" class=\"form-control\" value=\"$row[id]\";>


            <input type=\"hidden\" name=\"pn\" class=\"form-control\" value=\"$row[pbname]\";>



            <input type=\"submit\" class=\"btn btn-sm btn-success\" id=\"$temp\" style=\"display:none;\"name=\"up\" value=\"Add\">

          </form>

      </td>
    </tr>";

			}
		}
	}

	echo "</tbody>
</table>
</div><br><br>";

	echo "<div><h3 style=\"text-align:center;\">Announcement</h3>";
	if ($access == 1) {

		echo "
  <h3 style=\"text-align:center;\">
                <a class=\"btn btn-primary\" href=\"announcement.php?id=$cid\">+</a></h3> ";

	}
	echo "<br></div>";
	$query = "SELECT * from announcement where id='$cid'";
	$send = mysqli_query($con, $query);
	$nrow = mysqli_num_rows($send);

	if ($nrow > 0) {

		while ($arow = mysqli_fetch_array($send)) {

			echo "<div class=\"container row \">";
			echo "<div id=\"fn\" class=\"alert alert-info col-sm-11\">$arow[des]</div>";
			if ($access == 1) {

				echo "
  <div class=\"col-sm-1\"><h3 style=\"text-align:center;\">
                <a class=\"btn btn-primary\" href=\"announcement.php?id=$cid&aid=$arow[aid]\">-</a></h3></div> ";

			}
			echo '<br></div>';
		}
///
		echo "<script>
    document.getElementById(\"an\").innerHTML = \"$nrow Announcements</a>\";
    </script>";

	} else {
		echo "<div id=\"fn\" class=\"alert alert-info\">No Announcement Yet</div><br>";
		echo "<script>
    document.getElementById(\"an\").innerHTML = \"No New Announcement\";
    </script>";

	}

}

?>


</div>


<!-- danpasher dashboard!!!!!!!!!! -->

<div class="col-sm-4">



<?php echo ("<center><h2 id=\"demo\" class=\"btn btn-primary btn-lg\"></h2></center><br>"); ?>

<div class="sidebar">

<div class="menu">
<b>Dashboard</b>
<!-- <?php echo ("<center><h2 id=\"demo\" class=\"btn btn-primary btn-lg\"></h2></center><br>"); ?> -->
</div>
<?php

if (isset($_GET['id'])) {
	$cid = $_GET['id'];

	$q3 = "SELECT id FROM contest WHERE id='$cid'";

	$r = mysqli_query($con, $q3);

	$r1 = mysqli_fetch_array($r);

	//$conid = $r1['id'];

	$sql = "SELECT sname, SUM(status) As Solved, SUM(penalty) As penalty FROM submission Where cid='$cid' GROUP BY sname ORDER BY Solved DESC , penalty ASC";

	$send = mysqli_query($con, $sql);
	$i = 0;
	while ($bow = mysqli_fetch_array($send)) {
		$i++;

		if ($bow['sname'] == $username) {
			echo "<div class=\"row\"><div class=\"col-sm-12\"><a href=\"standings.php?id=$r1[id]\"><span class=\"pad btn btn-success\"><i class=\"fa fa-trophy\"></i>    $username 's Rank =$i</span></center></a></div></div>";
			break;
		}
	}

	echo ("<a href=\"contestsubmission.php?id=$r1[id]\"><span class=\"pad btn btn-primary\">Submissions</span></a>");
	echo ("<div style=\"margin-right:5px;\"><a href=\"standings.php?id=$r1[id]\"><div class=\"pad btn btn-primary\"> Standings </div></a></div><br><br><br>");

	$conid = $r1['id'];

	$q3 = "SELECT * FROM contest WHERE id='$conid'";
	$sq3 = mysqli_query($con, $q3);

	//$i = 0;

	while ($timerow = mysqli_fetch_array($sq3)) {

		$current = date("Y-m-d H:i:s ");
		$nv = $timerow['start_at'];
		$en = $timerow['end_at'];

		?>

    <script type="text/javascript">
    var end=<?php print json_encode($en);?>;
    var nv=<?php print json_encode($nv);?>;
    var cur=<?php print json_encode(date("Y-m-d H:i:s "));?>;


    call(end,nv,cur);


   </script>

    <?php

		$diff = strtotime($nv) - strtotime($current);

		$dd = strtotime($current) - strtotime($en);

		if ($dd > 0 && $access == 1) {

			?>
       <script>


       document.getElementById("show").style.display = "block";

       </script>
       <?php
// document.getElementById("show1").style.display = "text";
			for ($cc = 1; $cc <= $counter; $cc++) {
				$xxx = "show" . $cc;
				$yyy = "added" . $cc;
				//echo $xxx;
				?>
        <script>
          var xxx = "<?php echo $xxx ?>";
          var yyy = "<?php echo $yyy ?>";
             document.getElementById(xxx).style.display = "block";
              document.getElementById(yyy).style.display = "block";

       </script>
       <?php

			}

		}

		if ($diff > 0 && $access == 0) {

			header("Location:countdown.php?id=$cid");

		}

		echo ("<div style=\"border:1px solid gray; padding:10px; border-radius:0px;\"><h4>$timerow[cname]</h4><br><br>Contest Date: $timerow[date_on] <br><br>Start Time: $timerow[start_at]<br><br>End Time: $timerow[end_at] <br><br><div id=\"demo\"></div> <br><br></div>");

	}
}

?>

</div>
</div>
</div>
</div>


</div>
<br>
<br>
<?php

require_once "footer.php";

?>


</body>
</html>
