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
<form action="process.php" name="f1" method="POST">

<label for="username">Username</label>
<input type="text" name="un" class="form-control" placeholder="Enter Username" required><br>
<label for="password">Password</label>
<input type="password" class="form-control"  name="ps" placeholder="Enter Password" required><br>
<input type="hidden" class="form-control"  name="uri" value="<?php echo("$url");?>">

<button type="submit" class="btn btn-success">Sign In</button><br><br>
  

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


