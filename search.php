<?php

header("Cache-Control: no cache");
session_cache_limiter("private_no_expire");
session_start();
require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

$goto = $_SERVER['HTTP_REFERER'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];

}
?>

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
            <h3>Search Result</h3>
        </div>




<?php
if (isset($_POST['submit'])) {

	$select = $_POST['selection'];
	//echo $select;
	$name = $_POST['name'];
	require_once "config.php";
	if ($select == 1) {
		//user
		$user = $name;
		//echo $user;

		$mysql = "SELECT * FROM user WHERE name LIKE '%$user%'";
		//$mysql = "SELECT * FROM user WHERE Contains(name, '*$user*')>0";
		// SELECT name FROM `user` WHERE name LIKE '%rak%'
		$snd = mysqli_query($con, $mysql);

		$arrow = mysqli_fetch_array($snd);
		if ($arrow == NULL) {
			echo '<div class="autto upore" style="text-align:center">
    <h1>No user found!!</h1>  </div>';
		} else {
			echo '
      <div class="container">

            <div class="col-sm-12 autto upore">
                <div class="upore table-responsive">
                <!--   <input class="form-control rb" id="myInput" type="text" placeholder="Search.."> -->
                    <table class="table-dark table  table-striped table-hover">
			  <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody >';
			$mysql = "SELECT * FROM user WHERE name LIKE '%$user%'";
			$snd = mysqli_query($con, $mysql);

			while ($row = mysqli_fetch_array($snd)) {

				$name = $row['name'];

				$email = $row['email'];

				$status = $row['status'];

				echo "


          <tr><td><a href=\"profile.php?user=$name\">$name</a></td><td>$email</td> <td>$status</td></tr>";

			}
			echo "</tbody>
</table>
</div></div></div>";

		}

	} else if ($select == 2) {
		//probname

		$pbname = $name;
		//echo $pbname;

		$mysql = "SELECT * FROM archieve WHERE pbname LIKE '%$pbname%'";
		// SELECT name FROM `user` WHERE name LIKE '%rak%'
		$snd = mysqli_query($con, $mysql);

		$arrow = mysqli_fetch_array($snd);
		//var_dump($arrow);
		if ($arrow == NULL) {
			echo '<div class="autto upore" style="text-align:center">
    <h1>No problem found!!</h1>  </div>';
		} else {
			//echo "hii";
			echo '
      <div class="container">

            <div class="col-sm-12 autto upore">
                <div class="upore table-responsive">
                <!--   <input class="form-control rb" id="myInput" type="text" placeholder="Search.."> -->
                    <table class="table-dark table  table-striped table-hover">
        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Problem Name</th>
                                <th>Status</th>
                                 <th>AC-Submission</th>
                                <th>Problem Setter</th>
                            </tr>
                        </thead>
                        <tbody >';
			$mysql = "SELECT * FROM archieve WHERE pbname LIKE '%$pbname%'";
			$snd = mysqli_query($con, $mysql);

			while ($row = mysqli_fetch_array($snd)) {

				$number = "SELECT verdict from submissions WHERE pbname='$row[pbname]' AND sname='$username' AND verdict='Accepted'";
				$snumber = mysqli_query($con, $number);
				$tsol = mysqli_num_rows($snumber);

				$acn = "SELECT COUNT(verdict) AS verdict from submissions WHERE verdict='Accepted' AND pbname='$row[pbname]' GROUP BY pbname";
				$sacn = mysqli_query($con, $acn);
				$sol = mysqli_fetch_array($sacn);

				$tsub = "SELECT COUNT(verdict) as sub from submissions WHERE pbname='$row[pbname]' GROUP BY pbname";
				$stsub = mysqli_query($con, $tsub);
				$ntsub = mysqli_fetch_array($stsub);

				if ($tsol > 0) {
					$ver = "Solved";
					echo "


          <tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-success btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";

				} else {
					$ver = "Unsolved";
					echo "


  <tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-danger btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";
				}
			}
			echo "</tbody>
</table>
</div></div></div>";

		}

	} else if ($select == 3) {
		//probid
		//echo "hhhhhhhhhhhhhhhhhhhhhh";
		$pbid = $name;
		//echo $pbname;

		$mysql = "SELECT * FROM archieve WHERE id = '$pbid'";
		// SELECT name FROM `user` WHERE name LIKE '%rak%'
		$snd = mysqli_query($con, $mysql);

		$arrow = mysqli_fetch_array($snd);
		//var_dump($arrow);
		if ($arrow == NULL) {
			echo '<div class="autto upore" style="text-align:center">
    <h1>No problem found!!</h1>  </div>';
		} else {
			//echo "hii";
			echo '
      <div class="container">

            <div class="col-sm-12 autto upore">
                <div class="upore table-responsive">
                <!--   <input class="form-control rb" id="myInput" type="text" placeholder="Search.."> -->
                    <table class="table-dark table  table-striped table-hover">
        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Problem Name</th>
                                <th>Status</th>
                                 <th>AC-Submission</th>
                                <th>Problem Setter</th>
                            </tr>
                        </thead>
                        <tbody >';

			$snd = mysqli_query($con, $mysql);

			while ($row = mysqli_fetch_array($snd)) {

				$number = "SELECT verdict from submissions WHERE pbname='$row[pbname]' AND sname='$username' AND verdict='Accepted'";
				$snumber = mysqli_query($con, $number);
				$tsol = mysqli_num_rows($snumber);

				$acn = "SELECT COUNT(verdict) AS verdict from submissions WHERE verdict='Accepted' AND pbname='$row[pbname]' GROUP BY pbname";
				$sacn = mysqli_query($con, $acn);
				$sol = mysqli_fetch_array($sacn);

				$tsub = "SELECT COUNT(verdict) as sub from submissions WHERE pbname='$row[pbname]' GROUP BY pbname";
				$stsub = mysqli_query($con, $tsub);
				$ntsub = mysqli_fetch_array($stsub);

				if ($tsol > 0) {
					$ver = "Solved";
					echo "


          <tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-success btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";

				} else {
					$ver = "Unsolved";
					echo "


  <tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btnn2 btn-danger btn-sm\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";
				}
			}
			echo "</tbody>
</table>
</div></div></div>";

		}

	}

}

?>
</div>
</div>


    <?php require 'footer.php';?>

</body>

</html>

