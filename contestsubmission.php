<?php

session_start();
date_default_timezone_set("Asia/Dhaka");

$_SESSION['url'] = $_SERVER['REQUEST_URI'];
//echo $_SESSION['url'];

require_once "config.php";
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

require_once "config.php";

?>



<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>All Submission</title>

    <?php include 'linkers.php';?>


    <style>
    .deactive {
        pointer-events: none;
        color: gray;
    }
    </style>

</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>

        <div class=" log">
            <h3 style="text-align:center;">Contest Submission</h3><br>


            <?php
//echo $_SESSION['url'];

//click submissions from contest dashboard

if (isset($_GET['id'])) {
	$conid = $_GET['id'];
	$mycon = "SELECT * from contest WHERE id='$conid'";
	$sendcon = mysqli_query($con, $mycon);
	$rhis = mysqli_fetch_array($sendcon);

	echo "<center><a class=\"btn btn-primary\" href=\"contestproblem.php?id=$conid\">$rhis[cname]</a></center>";

}

?>

        </div>


        <?php

if (isset($_POST['id'])) {

	$ci = $_POST['id'];
//echo "hehe";
	$fowner = "SELECT  owner from contest where id='$ci'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	}

	if ($access == 1) {

		$lnk = "contestshowcode.php?";
		$link = "";

	} else {
		$lnk = "notfound.php?";
		$link = "deactive";
	}
}

//click submissions from contest dashboard

if (isset($_GET['id'])) {

	$ci = $_GET['id'];

	$fowner = "SELECT  owner from contest where id='$ci'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];
	//echo "Get";

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	}

	if ($access == 1) {

		$lnk = "contestshowcode.php";
		$link = "";

	} else {
		$lnk = "notfound.php?";
		$link = "deactive";
	}
}

?>

        <div class="row cspace">

            <div class="col-sm-10">
                <div class="table-responsive">
                    <table class="table-dark table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Problem Name</th>
                                <th>Verdict</th>
                                <th>Penalty</th>
                                <th>Time</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php

error_reporting(0);
if (isset($_POST['id'])) {

	//echo "post2";
	$cid = $_POST['id'];
	$uo = $_POST['result'];
	$pname = $_POST['pb'];
	$nid = $_POST['mid'];
	// $conid=$r4['id'];
	$result = $_POST['vd'];

}

$ch = 1;

if (isset($_GET['id']) && !isset($_GET['show'])) {
	$conid = $_GET['id'];
	$ch = 0;
	error_reporting(0);
	$per_page = 5;

	if (isset($_GET['page'])) {
		$page = $_GET['page'];
	} else {
		$page = 1;
	}

	$start = ($page - 1) * $per_page;

	$show = "SELECT * FROM submission WHERE cid='$conid' ORDER BY sid DESC limit $start,$per_page";

	$sts = mysqli_query($con, $show);

	$sql = "SELECT sname, SUM(status) As Solved, SUM(penalty) As penalty FROM submission Where cid='$conid' GROUP BY sname ORDER BY Solved DESC , penalty ASC";

	$send = mysqli_query($con, $sql);
	$i = 0;
	while ($bow = mysqli_fetch_array($send)) {
		$i++;

		if ($bow['sname'] == $username) {
			echo "<center><a class=\"btn btn-success\" href=\"standings.php?id=$conid\">$username's Rank = $i</a></center><br>";
			break;
		}
	}

	while ($row = mysqli_fetch_array($sts)) {

		if ($row['verdict'] == "Accepted") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-success btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else if ($row['verdict'] == "Time Limit Exceed") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-primary btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else if ($row['verdict'] == "Runtime Error") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-warning btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-danger btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		}
	}

	echo "</tbody>
</table>
</div>";

	$psql = "SELECT * FROM submission WHERE cid='$conid' ORDER BY sid DESC";
	$sn = mysqli_query($con, $psql);
	$total_rows = mysqli_num_rows($sn);
	$total_page = ceil($total_rows / $per_page);
	$c = "active";

	//////
	echo "<div style=\"text-align:center\"><div class=\"paginationr upore\"><a href=\"contestsubmission.php?id=$conid&page=1\">First Page</a>";

	for ($i = 1; $i < $total_page; $i++) {

		if ($page == $i) {
			$c = "active";
		} else {
			$c = "";
		}
		echo "<a class=\"$c\" href=\"contestsubmission.php?id=$conid&page=$i\">$i</a>";
	}
	echo "<a href=\"contestsubmission.php?id=$conid&page=$total_page\">Last Page</a></li></div>";

}

if (isset($_GET['id']) && isset($_GET['show'])) {
	$conid = $_GET['id'];
	$suser = $_GET['show'];
	$ch = 0;
	error_reporting(0);
	$per_page = 5;

	if (isset($_GET['page'])) {
		$page = $_GET['page'];
	} else {
		$page = 1;
	}

	$start = ($page - 1) * $per_page;

	$show = "SELECT * FROM submission WHERE cid='$conid' AND sname='$suser' ORDER BY sid DESC limit $start,$per_page";
	$show2 = "SELECT * FROM submission WHERE cid='$conid' AND sname='$suser'";

	$sts = mysqli_query($con, $show);
	$sts2 = mysqli_query($con, $show2);
	$detect = mysqli_num_rows($sts);
	$detect2 = mysqli_num_rows($sts2);

	$ts = "SELECT DISTINCT sname, COUNT(verdict) AS verdict FROM ( SELECT * FROM submission where verdict='Accepted' AND cid='$conid' AND sname='$suser' GROUP BY pbname, sname)T1 GROUP BY sname";

	$stss = mysqli_query($con, $ts);

	$solved = mysqli_fetch_array($stss);

	$tsolved = $solved['verdict'];

	$sql = "SELECT sname, SUM(status) As Solved, SUM(penalty) As penalty FROM submission Where cid='$conid' GROUP BY sname ORDER BY Solved DESC , penalty ASC";

	$send = mysqli_query($con, $sql);
	$i = 0;
	while ($bow = mysqli_fetch_array($send)) {
		$i++;

		if ($bow[sname] == $suser) {
			echo "<center><a class=\"btn btn-success\" href=\"standings.php?id=$conid\">$suser's Rank = $i</a></center><br><br><br>";
			break;
		}
	}

	while ($row = mysqli_fetch_array($sts)) {

		if ($row['verdict'] == "Accepted") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-success btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else if ($row['verdict'] == "Time Limit Exceed") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-primary btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else if ($row['verdict'] == "Runtime Error") {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-warning btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		} else {
			echo "<tr><td><a class=\"$link\" href=\"$lnk?id=$row[sid]&nm=$row[sname]&cn=$ci\">$row[sid]</a></td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td><a href=\"details.php?name=$row[pbname]&cod=$conid\">$row[pbname]</a></td><td><div class=\"btn btnn btn-danger btn-sm\">$row[verdict]</div></td><td>$row[penalty]</td><td>$row[time]</td></tr>";
		}
	}

	echo "</tbody>
</table>
</div><br><br>";

	if ($tsolved >= 1) {
		$tsolved = $tsolved;
	} else {
		$tsolved = 0;
	}

	echo "<div class=\"alert alert-success\">$suser's Total Submission=$detect2</div>";

	$psql = "SELECT * FROM submission WHERE cid='$conid' AND sname='$suser' ORDER BY sid DESC";
	$sn = mysqli_query($con, $psql);
	$total_rows = mysqli_num_rows($sn);
	$total_page = ceil($total_rows / $per_page);
	$c = "active";
	//echo "hi";

	echo "<div style=\"text-align:center\"><div class=\"paginationr upore\"><a href=\"contestsubmission.php?id=$conid&show=$suser&page=1\">First Page</a>";

	for ($i = 1; $i < $total_page; $i++) {

		if ($page == $i) {
			$c = "active";
		} else {
			$c = "";
		}
		echo "<a class=\"$c\" href=\"contestsubmission.php?id=$conid&show=$suser&page=$i\">$i</a>";
	}
	echo "<a href=\"contestsubmission.php?id=$conid&show=$suser&page=$total_page\">Last Page</a></li></div>";

}

if (isset($_POST['id'])) {

	//echo "here";
	// $hha=$_POST['id'];
	//echo $hha;
	$sqlp = "SELECT * FROM contestproblems WHERE pbid='$cid'";

	$sqp = mysqli_query($con, $sqlp);

	$rowp = mysqli_fetch_array($sqp);

	$conid = $rowp['id'];
	//contest id problem id got!!

	$q3 = "SELECT * FROM contest WHERE id='$conid'";
	$sq3 = mysqli_query($con, $q3);

	// $q4 = "SELECT TIME_FORMAT(end_at,'%H') end_at FROM contest  ORDER BY date_on DESC";
	// $q5 = "SELECT TIME_FORMAT(end_at,'%i') end_at FROM contest  ORDER BY date_on DESC";
	// $q6 = "SELECT TIME_FORMAT(end_at,'%s') end_at FROM contest  ORDER BY date_on DESC";

	// $sq4 = mysqli_query($con, $q4);
	// $sq5 = mysqli_query($con, $q5);
	// $sq6 = mysqli_query($con, $q6);

	while ($rowp = mysqli_fetch_array($sq3)) {
		// $d = date("Y-m-d");
		$t = date("Y-m-d H:i:s");
		$start = $rowp['start_at'];

		// $nr = mysqli_fetch_array($sq4);
		// $nm = mysqli_fetch_array($sq5);
		// $ns = mysqli_fetch_array($sq6);

		// $shr = $nr['end_at'];
		// $shm = $nm['end_at'];
		// $shs = $ns['end_at'];
		// $cur = date('H');
		// $curm = date('i');
		// $curs = date('s');

		// $h = $shr - $cur;
		// $mt = $shm - $curm;
		// $scnd = $shs - $curs;

		// if ($scnd < 0) {
		// 	$scnd = $scnd + 60;
		// 	$mt = $mt - 1;
		// }

		// if ($mt < 0) {
		// 	$mt = $mt + 60;
		// 	$h = $h - 1;
		// }

		// if ($h < 0) {
		// 	$h = $h + 24;
		// }

		//$en = $rowp['end_at'];

		//$seconds = strtotime($en) - strtotime($m);
		$ss = strtotime($t) - strtotime($start);
		//$mincon = intval($seconds / 60);
		$minow = intval($ss / 60);

		//$total_time = (($h * 60 + $mt) * 60) + $scnd;
		//$point = (200 / $s) * $total_time;
		//$cpoint = sprintf('%0.2f', $point);
		$penalty = $minow;
		echo $penalty;

	}

	$query = "SELECT output FROM contestproblems WHERE pbid='$cid'";
	$quo = "SELECT * FROM contestproblems WHERE pbid='$cid'";
	$sq = mysqli_query($con, $query);
	$sq1 = mysqli_query($con, $quo);
	$r3 = mysqli_fetch_array($sq);
	$r4 = mysqli_fetch_array($sq1);

	$ao = $r3['output'];
	$to = $r4['uoutput'];
	$conid = $r4['id'];
	//echo "kire";

	//echo "mama";
	$proname = $r4['pbname'];
	$count = 0;
	$mpoint = 0.00;
	$ignore = 0;
	//var_dump($uo);
	//var_dump($ao);

	$checkq = "SELECT * FROM submission WHERE pbname='$proname' AND cid='$conid' AND
    sname='$username' AND status='1'";
	$scheckq = mysqli_query($con, $checkq);
	$detect = mysqli_num_rows($scheckq);
	if ($detect >= 1) {

		$ignore = 1;
		//etay dhuka mane agei AC hoiise

	} else {
		$ignore = 0;
	}

	if ($result != "lt") {

		if ($result == "e") {
			$result = "Compilation Error";
			$count = 0;
			//$mpoint = $mpoint - 5.00;
		} else if (strcmp($uo, $ao) == 0) {
			//echo "Accepted";
			$result = "Accepted";
			$count = 1;
			$mpoint = $penalty;

			//1st AC ...

			$checkq = "SELECT * FROM submission WHERE pbname='$proname' AND cid='$conid' AND
    sname='$username' AND status='0'";
			$scheckq = mysqli_query($con, $checkq);
			$detect = mysqli_num_rows($scheckq);
			$mpoint += 10 * $detect;

		} else if ($result == "rte") {
			$result = "Runtime Error";
			$count = 0;
			//$mpoint = $mpoint - 5.00;
		} else {
			//echo "Wrong Answer";
			$result = "Wrong Answer";
			$count = 0;
			//$mpoint = $mpoint - 5.00;
		}
	} else {
		$result = "Time Limit Exceed";
		$count = 0;
		//$mpoint = $mpoint - 5.00;
	}

	if ($ignore == 0) {
		$t = date("Y-m-d H:i:s");
		$sql = "INSERT INTO submission VALUES('$nid','$username','$result','$pname','$conid','$count','$mpoint' ,'$t')";
		$stq = mysqli_query($con, $sql);
		header("Location:contestsubmission.php?id=$conid");
		echo "
    <script type=\"text/javascript\">

      window.location.href=\"contestsubmission.php?id=$conid\";
    </script>";
	} else {
		echo "
    <script type=\"text/javascript\">
      alert('You have already got accepted!');
      window.location.href=\"contestsubmission.php?id=$conid\";
    </script>";
	}

	// echo "mami";

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