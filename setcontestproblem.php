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
    <title>Set Problem</title>
    <!--     <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <script src="bootstrap-3.3.7/js/bootstrap.min.js" </script>
        <script src="bootstrap-3.3.7/js/bootstrap.js" </script> -->

    <?php include 'linkers.php';?>







</head>

<body>
    <div class="main">
        <?php require 'nav2.php'; ?>



        <div class="row log">
            <div class="col-sm-10">
                <div class="">
                    <h3 style="text-align:center;">Set Problem</h3>
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
                    <form action="contestproblem.php" name="f2" method="POST">

                        <label for="ta">Enter Your Contest ID</label>
                        <input type="text" name="ci" class="form-control"><br><br>
                        <label for="ta">Enter Your Contest Name</label>
                        <input type="text" name="cn" class="form-control"><br><br>
                        <label for="ta">Enter Problem Name</label>
                        <input type="text" name="pb" class="form-control"><br><br>
                        <label for="in">Enter Problem Description</label>
                        <textarea name="c1" class="form-control" rows="30" cols="80"></textarea><br><br>
                        <label for="ta">Enter Problem Author</label>
                        <input type="text" name="c2" class="form-control"><br><br>
                        <label for="ta">Enter Time Limit</label>
                        <input type="text" name="tll" title="Only float is allowed (Ex:3.00)" placeholder="1.00"
                            class="form-control"><br><br>
                        <b>Enter Test Cases</b><br>
                        <textarea class="form-control" name="c3" rows="30" cols="80"></textarea><br><br>
                        <b>Enter Output Of Test Cases</b><br>
                        <textarea class="form-control" name="c4" rows="30" cols="80"></textarea><br><br>
                        <input type="submit" class="btn btn-success" value="Create Problem">




                    </form>

                    <?php

if(isset($_GET['fail']))
{

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

    <?php require 'footer.php'; ?>

</body>

</html>