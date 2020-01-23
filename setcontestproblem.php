<?php

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

if ($st == "Teacher" || $st == "Problem Setter" || $st == "Developer") {
	$access = 1;
} else {
	header("Location:home.php");
}
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
    <title>Set Problem</title>


    <?php include 'linkers.php';?>







</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>



        <div class="">
            <div class="col-sm-12 upore">
                <div class="">
                    <h3 style="text-align:center;">Set Problem</h3>
                </div>
            </div>



        </div>




        <div class="container">
            <div class="col-sm-10 upore autto">
                <div class="form-group">
                    <form action="contestproblem.php" name="f2" method="POST">
                       <!--  <input type=\"hidden\" name=\"pbid\" class=\"form-control\" value=\"$row[pbid]\";> -->
                        <!-- <label for="ta">Enter Your Contest ID</label> -->
                        <input type="hidden"name="ci" class="form-control" value="<?php echo $cid ?>"><br><br>
                        <!-- <label for="ta">Enter Your Contest Name</label>
                        <input type="text" name="cn" class="form-control rb"><br><br> -->
                        <label for="ta">Enter Problem Name</label>
                        <input type="text" name="pb" class="form-control rb" required><br><br>
                        <label for="in">Enter Problem Description</label>
                        <textarea name="c1" class="form-control rb" rows="30" cols="80" required></textarea><br><br>
                        <label for="ta">Enter Problem Author</label>
                        <input type="text" name="c2" class="form-control rb" required><br><br>
                        <label for="ta">Enter Time Limit</label>
                        <input type="text" name="tll" title="Only float is allowed (Ex:3.00)" placeholder="1.00"
                            class="form-control rb" value="1" ><br><br>
                        <b>Enter Test Cases</b><br>
                        <textarea class="form-control rb" name="c3" rows="30" cols="80" required></textarea><br><br>
                        <b>Enter Output Of Test Cases</b><br>
                        <textarea class="form-control rb" name="c4" rows="30" cols="80" required></textarea><br><br>
                        <input type="submit" name="new" class="btn btn-success" value="Create Problem">




                    </form>

                    <?php

if (isset($_GET['fail'])) {

	?>

                    <script type="text/javascript">
                    alert("You Are Not Owner Of This Contest . Only Owner Can Add Problems");
                    </script>


                    <?php

}

?>



                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div><br><br><br>

    <?php require 'footer.php';?>

</body>

</html>