<?php

session_start();
require_once("config.php");

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

</head>

<body onload="set()">
    <div class="main">

        <?php require 'nav2.php'; ?>

        <div class="titlebts"> 
            <div class="home-img"> 
                <a href="home.php"> <img class="home-img" src="Images/Name.png">  </a> 
            </div> 
            <h4>An Online Contest Platform</h4>
        </div>

        <div class="credit-header"> Developed By: </div>
        
        <div class="container" style="background: #FFFFFF; min-height: 340px;"> 
            <div class="rowbts row"> 
                <div class="col-md-6 text-center " style="width: 50%;display: inline-block;"> 
                    <img class="image-box" src="Images/ranak.jpg" alt="Farhad"> 
                    <p class="credit-title">MD. Rakibul Hasan</p> 
                    <p class="credit-details"> </p>
                    <ul class="list-group"> 
                        
                        <li class="list-group-item"> 2nd Year 2nd Semester <br>Dept. of SWE <br> Shahjalal University of Science &amp; Technology <br> </li> 
                    </ul> 
                    <p></p> 
                    <div class="fa-links"> 
                        <a href="https://fb.me/ranak127" target="_blank"> <i class="fab fa-facebook-f" aria-hidden="true"></i> </a> 
                        <a href="mailto:rakibulhasanranak1@gmail.com" target="_blank"> <i class="fa fa-envelope" aria-hidden="true"></i> </a> 
                        <a href="" target="_blank"> <i class="fab fa-linkedin-in" aria-hidden="true"></i> </a> 
                        <a href="https://github.com/RakibulRanak" target="_blank"> <i class="fab fa-github" aria-hidden="true"></i> </a> 
                    </div>
                </div> 
                <div class="col-md-6 text-center" style="width: 50%;display: inline-block;"> 
                    <img class="image-box" src="Images/bala.jpg" alt="Talat"> 
                    <p class="credit-title">Dipankar Bala</p> 
                    <p class="credit-details"> </p>
                    <ul class="list-group"> 
                           
                            <li class="list-group-item"> 2nd Year 2nd Semester <br>Dept. of SWE <br> Shahjalal University of Science &amp; Technology <br> </li>
                    </ul> 
                    <p> </p>
                    <div class="fa-links">
                        <a href=""> <i class="fab fa-facebook-f" aria-hidden="true"></i> </a> 
                        <a href=""> 
                        <i class="fa fa-envelope" aria-hidden="true"></i> 
                        </a> 
                       
                        <a href=""> <i class="fab fa-linkedin-in" aria-hidden="true"></i>
                         </a> 
                        <a href=""> <i class="fab fa-github" aria-hidden="true"></i> 
                        </a> 
                    </div>
                 </div> 
             </div> 
        </div>


    <?php require 'footer.php'; ?>

</body>

</html>