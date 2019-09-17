<?php

session_start();

if(isset($_SESSION["un"]))
{
  header("Location:home.php");
}

if(isset($_SESSION['url']))
{
     $url=$_SESSION['url'];
               
}
else
{
      $url="home.php";
               
}      



?>

<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sign In</title>
         <?php
       require 'linkers.php';
        ?> 
 <style type="text/css">
 body{
  background-image: url('bg1.jpg');
  background-size: cover;
 }
 .aa{
  width: 300px;
  height: 260px;
  background-color: rgba(0,0,0,0.5);
  margin: 0 auto;
  margin-top: 200px;
  padding-top: 10px;
  padding-left: 100px;
  padding-bottom: 10px;
  -webkit-border-color: 15px;
  -moz-border-color: 15px;
  -ms-border-color: 15px;
  -o-border-color: 15px;
  border-color: 15px;
  color:white;
  font-weight: bolder;
  -webkit-box-shadow: inset -4px -4px rgba(0,0,0,0.5);
  box-shadow: inset -4px -4px rgba(0,0,0,0.5);
  font-size: 18px;
 }
 .aa input[type="text"]{
  width: 200px;
  height: 35px;
  border:0px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  padding-left: 10px;
  text-align: left;
 }
 .aa input[type="password"]{
  width: 200px;
  height: 35px;
  border:0px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  padding-left: 10px;
  text-align: left;
 }
 .aa input[type="submit"]{
  width: 100px;
  height: 35px;
  border:0px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  background-color: skyblue;
  text-align: center;
 }
  .bb{
  width: 200px;
  height: 50px;
  text-align: center;
   text-decoration-line: underline;
  text-decoration-style: bold;
  }
  .cc{
  padding-left: 50px;
  padding-right:30px;
}

  }
</style>

        
</head>

<body>
<div class="main">
  <?php require 'nav1.php'; ?>

<br><br>

<div class="row mu">
<div class="col-sm-1">
</div>
<div class="col-sm-9">
<center>
<div class="form-group log">
<div class="xmm">
<h2 style=""><u>Log In</u></h2><br><br>
<form>
   <input type="text" placeholder="Enter Your Username"><br><br>
   <input type="password" placeholder="Enter Your password"><br><br>
  <div class="cc">
  <input type="submit" value="Submit"><br>
</div>
  </form>
<?php

if(isset($_GET['value']))
{
   
   echo "<div class=\"alert alert-danger\">
  <strong>Sign in Failed!</strong>  Wrong Username And Password
   </div><br>";
    
}


?>

</div>
</div>
</center>
</div>

<div class="col-sm-2">
</div>
</div>
</div><br><br><br><br>

<div class="container">
<div class="row">
<div class="col-sm-9">

</div>
<div class="col-sm-3">
</div>
</div>
</div><br><br><br>


<div class="area sign">
<div class="well foot">
<div class="row area">
<div class="col-sm-3">
</div>

<div class="col-sm-5">


<div class="fm">

<b>Beta Version-2019</b><br>
<b>Developed By Ranak and Bala</b>

</div>
</div>


<div class="col-sm-4">

</div>
</div>
</div>
</div>



</body>
</html>


