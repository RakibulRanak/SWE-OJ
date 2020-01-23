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
    <title>Standings</title>


    <?php include 'linkers.php';?>




</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>

        <?php

if (isset($_GET['id'])) {
	$conid = $_GET['id'];
	$mycon = "SELECT * from contest WHERE id='$conid'";
	$sendcon = mysqli_query($con, $mycon);
	$rhis = mysqli_fetch_array($sendcon);

}

?>

        <div class=" upore">

            <div style="text-align:center;">
<!--                 <h3 style="text-align:center;">Standings</h3> -->
                <h3>Standings</h3>
            </div><br>
            <h3 style="text-align:center;">
                <?php echo "<a class=\"btn btn-primary\" href=\"contestproblem.php?id=$conid\">$rhis[cname]</a>"; ?>
            </h3>
        </div>




        <div class="container upore">

            <div class="col-sm-10 autto upore">
                <div class="table-responsive">
                    <table class="table-dark table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Rank</th>
                                <th>Name</th>
                                <th>Total Solved</th>
                                <th>Total Points</th>
                                <th>Submission</th>
                            </tr>
                        </thead>
                        <tbody>



                            <?php

if (isset($_GET['id'])) {
	$conid = $_GET['id'];

	$sql = "SELECT sname, SUM(status) As Solved, SUM(point) As Points FROM submission Where cid='$conid' GROUP BY sname ORDER BY Solved DESC , Points DESC";

	$send = mysqli_query($con, $sql);
	$i = 0;
	while ($row = mysqli_fetch_array($send)) {
		$i++;
		echo "<tr><td>$i</td><td><a href=\"profile.php?user=$row[sname]\">$row[sname]</a></td><td>$row[Solved]</td><td>$row[Points]</td><td><a href=\"contestsubmission.php?id=$conid&show=$row[sname]\"><div class=\"btn btn-primary btn-sm\">Show</td></tr>";
	}

	echo "</tbody>
        </table>
        </div><br><br><br><br><br>";

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