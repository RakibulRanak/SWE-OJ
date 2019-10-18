<?php

session_start();

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if(!isset($_SESSION["un"]))
{
  header("Location:login.php");
}

if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}


?>


<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>

    <?php include 'linkers.php';?>
    <style>
    code {
        background-color: #EEEEEE;
        font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;
        white-space: pre;
    }

    pre {
        background-color: #EEEEEE;
        font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;
        margin-bottom: 10px;
        max-height: 600px;
        overflow: auto;
        padding: 5px;
        width: auto;
        white-space: pre;
    }
    </style>






</head>

<body>
    <div class="main">
        <?php require 'nav2.php'; ?>

        <div class="row log">
            <div class="col-sm-10">
                <div class="">
                    <h3 style="text-align:center;">Show Code</h3>
                </div>
            </div>

            <div class="col-sm-1">

            </div>

            <div class="col-sm-1">

            </div>

        </div>




        <div class="row cspace">
            <div class="col-sm-8">

                <?php



require_once("config.php");

if(isset($_GET['nm']))
{
$data=$_GET['nm'];
$get=$_GET['id'];
}



$show="SELECT * FROM codes WHERE id='$get'";

$sq=mysqli_query($con,$show);

echo "Submitted By : $data<br><br>";

while($row=mysqli_fetch_array($sq))
{
	echo("Submit Id: $row[id]<br><br><textarea id='div' class=\"form-control\" rows=\"50\" cols=\"40\">$row[source_code]</textarea>");
}



?>


            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div>
    </div><br><br><br>

    <?php require 'footer.php'; ?>



</body>

</html>