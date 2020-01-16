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

?>


<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <?php require 'linkers.php'; ?>


</head>

<body>
    <div class="main">



        <?php require 'nav2.php'; ?>

        <div class=" log">
        
                    <h3 style="text-align:center;">Online Compiler</h3>
            
         </div>


        <div class="row" style="margin-left: 8vw ; margin-top: 3vh">
            <div class="col-sm-8" style="margin-left: 11vw">
                <div class="form-group">
                    <form action="compile.php" name="f2" method="POST">
                        <label for="language">Choose Language</label>

                        <select class="form-control" name="language">
                            <option value="c">C</option>
                            <option value="cpp">C++</option>
                            <option value="cpp11">C++11</option>



                        </select><br><br>

                        <label for="ta">Write Your Code</label>
                        <textarea class="form-control" name="code" rows="10" cols="50"></textarea><br><br>
                        <label for="in">Enter Your Input</label>
                        <textarea class="form-control" name="input" rows="10" cols="50"></textarea><br><br>
                        <input type="submit" class="btn btn-success" value="Run Code"><br><br><br>


                    </form>



                </div>
            </div>

        </div>



    </div>
    <?php require 'footer.php'; ?>
</body>

</html>