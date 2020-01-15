<?php

session_start();
require_once("config.php");

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if(!isset($_SESSION["un"]))
{
  header("Location:login.php");
}

if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}

$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];

$access=0;

if($st=="Teacher" || $st=="Problem Setter" || $st=="Developer")
{
   $access=1;
}
else
{
    header("Location:home.php");
}



?>

<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Set Contest</title>

    <?php include 'linkers.php';?>

    <link href="dcss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <!---<script src="djs/vendor/bootstrap-datetimepicker.js"></script>  -->








</head>

<body>
    <div class="main">
        <?php require 'nav2.php'; ?>



        <div class="row log">
            <div class="col-sm-10">
                <div class="">
                    <h3 style="text-align:center;">Create New Contest</h3>
                </div>
            </div>

            <div class="col-sm-1">

            </div>

            <div class="col-sm-1">

            </div>

        </div>




        <div class="row cspace">
            <div class="col-sm-8">



                <div class="form-group">
                    <form action="contest.php" name="f2" method="POST">

                        <label for="ta">Enter Your Contest ID</label>
                        <input type="text" name="ci" class="form-control"><br><br>
                        <label for="ta">Enter Your Contest Name</label>
                        <input type="text" name="cn" class="form-control"><br><br>
                        <label for="ta">Enter Contest Date</label>
                        <div class="input-group date form_datetime2 " data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd " data-link-field="dtp_input1">
                            <input type='text' name="cd" class="form-control" readonly class="form_datetime2" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>
                        <label for="ta">Enter Contest Start Time</label>
                        <!--<input type="text" name="ct" class="form-control"><br><br>-->

                        <div class="input-group date form_datetime" data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd hh:ii:ss " data-link-field="dtp_input1">
                            <input type='text' name="ct" class="form-control" readonly class="form_datetime" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>

                        <label for="ta">Enter Contest End Time</label>
                        <!--<input type="text" name="ce" class="form-control"><br><br>-->


                        <div class="input-group date form_datetime1" data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd hh:ii:ss " data-link-field="dtp_input1">
                            <input type='text' name="ce" class="form-control" readonly class="form_datetime1" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br>
                        <br><br>


                        <input type="submit" class="btn btn-success" value="Create Contest">


                    </form>


                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div><br><br><br>



    </div>


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

    <?php require 'footer.php'; ?>




</body>

</html>