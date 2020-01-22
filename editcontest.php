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

if (isset($_GET['name'])) {

	$coname = $_GET['name'];

}

?>

<?php

require_once "config.php";

$fowner = "SELECT  owner from rapl_oj_contest where cname='$coname'";
$sendit = mysqli_query($con, $fowner);
$frow = mysqli_fetch_array($sendit);
$owner = $frow['owner'];

if ($username == $owner) {
	$access = 1;
} else if ($st == "Teacher" || $st == "Developer") {
	$access = 1;
} else {
	header("Location:contest.php");
}

?>

<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Edit Contest</title>

    <?php include 'linkers.php';?>

    <link href="dcss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <!---<script src="djs/vendor/bootstrap-datetimepicker.js"></script>  -->











</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>



        <div class="upore container">
            <div class="col-sm-12 autto">
                <div class="">
                    <h3 style="text-align:center;">Edit Contest</h3>
                </div>
            </div>



        </div>

        <?php

require_once "config.php";

$fetch = "SELECT * from rapl_oj_contest where cname='$coname'";
$sfetch = mysqli_query($con, $fetch);
$erow = mysqli_fetch_array($sfetch);
$name = $erow['cname'];
$id = $erow['id'];
$start = $erow['start_at'];
$end = $erow['end_at'];
$date = $erow['date_on'];

?>


        <div class=" container">
            <div class="col-sm-10 autto">



                <div class="form-group">
                    <form action="contest.php" name="f3" method="POST">

                        <input type="hidden" name="uci" class="form-control rb" value="<?php echo "$id"; ?>"><br><br>
                        <label for="ta">Enter Your Contest Name</label>
                        <input type="text" name="ucn" class="form-control rb" value="<?php echo "$name"; ?>"><br><br>
                        <label for="ta">Enter Contest Date</label>
                        <div class="input-group date form_datetime2 col-md-5" style="padding: 0"data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd " data-link-field="dtp_input1">
                            <input type='text' name="ucd" class="form-control rb" value="<?php echo "$date"; ?>" readonly
                                class="form_datetime2" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>
                        <label for="ta">Enter Contest Start Time</label>
                        <!--<input type="text" name="ct" class="form-control"><br><br>-->

                        <div class="input-group date form_datetime col-md-5 "style="padding: 0" data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd hh:ii:ss " data-link-field="dtp_input1">
                            <input type='text' name="uct" class="form-control rb" value="<?php echo "$start"; ?>" readonly
                                class="form_datetime" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>

                        <label for="ta">Enter Contest End Time</label>
                        <!--<input type="text" name="ce" class="form-control"><br><br>-->


                        <div class="input-group date form_datetime1 col-md-5 rb" data-date="2017-06-15T05:25:07Z" style="padding: 0"
                            data-date-format=" yyyy-mm-dd hh:ii:ss " data-link-field="dtp_input1">
                            <input type='text' name="uce" class="form-control" value="<?php echo "$end"; ?>" readonly
                                class="form_datetime1" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>
                        <br><br>

                        <input type="submit" name="update" class="btn btn-success" value="Update Contest">
                        <input type="submit" name="delete" class="btn btn-danger" value="Delete">



                    </form>


                </div>
            </div>


        </div>
    </div><br><br><br>



    <script type="text/javascript" src="djquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="dboot/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="djs/bootstrap-datetimepicker.js" charset="UTF-8"></script>

    <script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>

    <script type="text/javascript">
    $('.form_datetime1').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>

    <script type="text/javascript">
    $('.form_datetime2').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>


    <?php require 'footer.php';?>
</body>

</html>