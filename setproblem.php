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

?>

<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Set Problem</title>
    <?php include 'linkers.php';?>
    <!-- <script id="MathJax-script" async src="MathJax-3.0.0/es5/latest.js?config=TeX-AMS_HTML"></script>  --><!-- mathjax -->
     <script src="ckeditor/ckeditor.js" type="text/javascript"></script>







</head>

<body>
    <div class="main">
        <?php require 'nav2.php';?>



        <div class="">
            <div class="col-sm-12 upore">
                <div class="">
                    <h3 style="text-align:center;">Create New Problem</h3>
                </div>
            </div>



        </div>




        <div class="container">
            <div class="col-sm-10 autto upore">
                <div class="form-group">
                    <form action="archive.php" name="f2" method="POST">
                        <script>
    MathJax = {
      tex: {
        inlineMath: [['$', '$'], ['\\(', '\\)']]
      }
    };
    </script>


                        <label for="ta">Enter Your Problem Name</label>
                        <input type="text" name="pname" class="form-control rb"><br><br>
                        <label for="in">Enter Problem Description</label>

                        <textarea class="ckeditor"name="editor" class="form-control rb" rows="30" cols="80" contenteditable="true"></textarea><br><br>

                         <script>
                                      CKEDITOR.replace('editor', {
                                      extraPlugins: 'mathjax',
                                      mathJaxLib: 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-AMS_HTML',
                                      height: 325
                                    }, 'article_content', {
                                            removeButtons: 'Source',
                                        });
                                  </script>
                        <label for="ta">Enter Problem Author</label>
                        <input type="text" name="c2" class="form-control rb"><br><br>
                        <label for="ta">Enter Time Limit</label>
                        <input type="text" name="tll" title="Only float is allowed (Ex:3.00)" value="1.0" placeholder="1.00"
                            class="form-control rb"><br><br>
                        <b>Enter Test Cases</b><br>
                        <textarea class="form-control rb" name="case" rows="30" cols="80"></textarea><br><br>
                        <b>Enter Output Of Test Cases</b><br>
                        <textarea class="form-control rb" name="result" rows="30" cols="80"></textarea><br><br>
                        <input type="submit" class="btn btn-success" value="Create Problem">


                    </form>



                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div><br><br><br>


    <?php require 'footer.php';?>

</body>

</html>