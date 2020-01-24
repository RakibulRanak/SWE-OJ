<?php

session_start();
require_once "config.php";
date_default_timezone_set("Asia/Dhaka");

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
error_reporting();

if ($st == "Teacher" || $st == "Problem Setter" || $st == "Developer") {
	$access = 1;
}

?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contest</title>
    <?php include 'linkers.php';?>


</head>

<body>
    <div class="main">
      <?php require 'nav2.php';?>

      <div class="upore"style="text-align:center" ;>
            <h3>All Contest</h3>
        </div>
        <?php if ($access == 1) {
	echo "
  <div class=\"col-sm-12\"><h3 style=\"text-align:center;\">
                <a class=\"btn btn-primary\" href=\"setcontest.php\">+</a></h3></div> ";

}?>

        <div class="container">

            <div class="col-sm-12 autto upore">
                <div class="upore table-responsive">
                	<input class="form-control rb" id="myInput" type="text" placeholder="Search..">
                    <table class="table-dark table  table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Contest Name</th>
                                <th>Status</th>
                                <th>Owner</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="myTable">

                            <?php

require_once "config.php";

date_default_timezone_set("Asia/Dhaka");

//setcontest theke cn set hoye ashe
if (isset($_POST['cn'])) {

	$contest = $_POST['cn'];
	//$cid = $_POST['ci'];
	$date = $_POST['cd'];
	$start = $_POST['ct'];
	$end = $_POST['ce'];
	$owner = $username;
	//substr($owner ,0, -1);
	//$start .=":00";
	//$end .=":00";
	// echo $owner;
	// echo $date;
	// echo $start;
	// echo $end;

	$q1 = "INSERT into contest ( `cname`, `start_at`, `end_at`, `date_on`, `owner`) VALUES('$contest','$start','$end','$date','$owner')";
	$q3 = "SELECT * FROM contest ORDER BY date_on DESC";

	$sq2 = mysqli_query($con, $q1);

	if (!$sq2) {
		echo "Failed";
	}

}

//editcontest theke update button set hoy

if (isset($_POST['update'])) {

	$contest = $_POST['ucn'];
	$cid = $_POST['uci'];
	$date = $_POST['ucd'];
	$start = $_POST['uct'];
	$end = $_POST['uce'];

	$eft = "UPDATE contest SET cname='$contest',start_at='$start',end_at='$end',date_on='$date' WHERE  id=$cid";

	$sft = mysqli_query($con, $eft);

	if (!$sft) {
		echo "Failed";
	}

}

//edic contest theke

if (isset($_POST['delete'])) {
	//$contest=$_POST['ucn'];
	$cid = $_POST['uci'];
	//$date=$_POST['ucd'];
	//$start=$_POST['uct'];
	//$end=$_POST['uce'];
	$efetch = "DELETE FROM contest WHERE id=$cid";
	$sendfetch = mysqli_query($con, $efetch);
	if (!$sendfetch) {
		echo "Failed";
	}
}

$q3 = "SELECT * FROM contest ORDER BY id DESC";
$sq3 = mysqli_query($con, $q3);

while ($row = mysqli_fetch_array($sq3)) {

	$t = date("Y-m-d H:i:s");
	$now = strtotime($t);
	//echo $now;
	// echo "<br>";

	$start = strtotime($row['start_at']);
	$end = strtotime($row['end_at']);
	//echo $ss;
	$status = "";
	if ($now > $end) {
		$status = "Ended";
		$hh = "btn btn-primary";
	} else if ($now > $start) {
		$status = "Running";
		$hh = "btn btn-success";
	} else {
		$status = "Upcoming";
		$hh = "btn btn-danger";
	}
//echo "$status.\"<br>\"";

	if ($access == 1) {
		echo "


  <tr><td>$row[id]</td><td><a href=\"contestproblem.php?id=$row[id]\">$row[cname]</a></td><td><button type=\"button\" class=\"$hh btnn2 btn-sm\">$status</button> </td><td> <a href=profile.php?user=RakibulRanak>$row[owner]</a></td><td>$row[start_at]</td><td> $row[end_at]</td><td><a class=\"btn btn-sm btn-primary\" href=\"editcontest.php?id=$row[id]\">Edit</a></td></tr>";
	} else {
		echo "


  <tr><td>$row[id]</td><td><a href=\"contestproblem.php?id=$row[id]\">$row[cname]</a></td><td><button type=\"button\" class=\"$hh btnn2 btn-sm\">$status</button>    </td><td><a href=profile.php?user=RakibulRanak>$row[owner]</a></td><td>$row[start_at]</td><td> $row[end_at]</td></tr>";
	}

}
echo "</tbody>
</table>
</div></div></div><br><br>";

?>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

            </div>
            <div class="col-sm-4">

            </div>
        </div>
    </div>
  </div><br><br><br>

    <?php require 'footer.php';?>

</body>

</html>