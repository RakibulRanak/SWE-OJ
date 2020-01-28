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

if (isset($_GET['id'])) {
	$pid = $_GET['id'];
}

?>

<?php

require_once "config.php";

if (isset($_GET['id'])) {

	$getcon = "SELECT cname from contestproblems WHERE pbid='$pid'";
	$sendcon = mysqli_query($con, $getcon);
	$namerow = mysqli_fetch_array($sendcon);
	$coname = $namerow['cname'];

	$fowner = "SELECT  owner from contest where cname='$coname'";
	$sendit = mysqli_query($con, $fowner);
	$frow = mysqli_fetch_array($sendit);
	$owner = $frow['owner'];

	if ($username == $owner) {
		$access = 1;
	} else if ($st == "Teacher" || $st == "Developer") {
		$access = 1;
	}if ($access == 0) {
		header("Location:contest.php");
	}

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




<div class="upore">
<div class=""><h3 style="text-align:center;">Set Problem</h3></div>
</div>





<?php

require_once "config.php";

$fetch = "SELECT * from contestproblems where pbid='$pid'";
$sfetch = mysqli_query($con, $fetch);
$erow = mysqli_fetch_array($sfetch);
$name = $erow['cname'];
$cid = $erow['id'];
$pbname = $erow['pbname'];
$pbdes = $erow['pbdes'];
$pbauthor = $erow['pbauthor'];
$tc = $erow['tc'];
$output = $erow['output'];
$uoutput = $erow['uoutput'];
$tlimit = $erow['tlimit'];
$pbid = $erow['pbid'];

$q3 = "SELECT cname FROM contest WHERE id='$cid'";

$r = mysqli_query($con, $q3);

$r1 = mysqli_fetch_array($r);

$n = $r1['cname'];

?>

  <div class="container ">
    <div class="col-sm-10 autto ">
      <div class="form-group ">

        <script>
    MathJax = {
      tex: {
        inlineMath: [['$', '$'], ['\\(', '\\)']]
      }
    };
    </script>

        <form action="contestproblem.php?id=<?php echo $cid; ?> name="f2" method="POST">

            <input type="hidden" name="ccid" class="form-control" value="<?php echo "$cid"; ?>"><br><br>
            <input type="hidden" name="ci" class="form-control" value="<?php echo "$pid"; ?>"><br><br>
            <input type="hidden" name="cnn" class="form-control" value="<?php echo "$name"; ?>"><br><br>
            <label for="ta">Enter Problem Name</label>
            <?php echo $n; ?>
            <input type="text" name="pb" class="form-control rb" value="<?php echo "$pbname"; ?>"><br><br>
            <label for="in">Enter Problem Description</label>
            <textarea name="editor" class="form-control rb" rows="20" cols="60"><?php echo "$pbdes"; ?></textarea><br><br>
            <label for="ta">Enter Problem Author</label>
            <input type="text" name="c2" class="form-control rb" value="<?php echo "$pbauthor"; ?>"><br><br>
            <label for="ta">Enter Time Limit</label>
            <input type="text" name="tll" title="Only float is allowed (Ex:3.00)" placeholder="1.00" class="form-control rb" value="<?php echo "$tlimit"; ?>"><br><br>
            <b>Enter Test Cases</b><br>
            <textarea class="form-control rb" name="c3" rows="20" cols="60"><?php echo "$tc"; ?></textarea><br><br>
            <b>Enter Output Of Test Cases</b><br>
            <textarea class="form-control rb" name="c4" rows="20" cols="60"><?php echo "$output"; ?></textarea><br><br>
            <input type="submit" class="btn btn-success" name="up" value="Update">
            <input type="submit" class="btn btn-danger" name="del" value="Delete">




       </form>
<script>
                                      CKEDITOR.replace('editor', {
                                      extraPlugins: 'mathjax',
                                      mathJaxLib: 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-AMS_HTML',
                                      height: 325
                                    }, 'article_content', {
                                            removeButtons: 'Source',
                                        });
                                  </script>
        <?php

if (isset($_GET['fail'])) {

	?>

        <script type="text/javascript">alert("You Are Not Owner Of This Contest . Only Owner Can Add Problems");</script>


        <?php

}

?>



    </div>
</div>


</div>
</div><br><br><br>

<?php require 'footer.php';?>
</body>
</html>
















