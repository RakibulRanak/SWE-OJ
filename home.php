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


<!--<script type="text/javascript">var hour=<?php print json_encode(date("H"));?>; call(hour); </script>-->
<div class="main">

 <?php require 'nav2.php'; ?>
 
 	<img src="Images/sust.jpg" alt="Italian Trulli" width="1024px" height="400px">
 	<a href="https://codeforces.com/">Codeforces</a>
 </br>
 	<a href="https://uva.onlinejudge.org">UVa</a>












</div>




<div class="col-sm-4">
    


<!-- <?php include 'myfooter.php';?> -->
<div id="tx"></div>

</div>
</div>
</div>
</div>
</body>
</html>


