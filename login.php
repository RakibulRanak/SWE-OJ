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
<html lang="en">
<head>
 <meta charset="UTF-8">
 <title>Login Form with Glass Effect</title>
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
  margin-top: 20px;
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
  height: 30px;
  border:0px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  background-color: skyblue;
  text-align: center;
 }
  .Ranak{
  width: 100px;
  height: 30px;
  border:0px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  background-color: skyblue;
  text-align: center;
  margin-top: 10px;
  list-style: none;
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
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}

  }
</style>
</head>
<body>
  <div class="col-md-6"> <img src="Images/cover2.png" width="200px" height="300px"alt="" class="center"> </div>
 
 <div class="aa">
  <div class="bb">
 <h2 style="color: skyblue">Login</h2>
</div>
  <form action="process.php" name="f1" method="POST">
   <input type="text" name="un" class="form-control" placeholder="Enter Username" required><br> <br>
<!-- <label for="password">Password</label> -->
<input type="password" class="form-control"  name="ps" placeholder="Enter Password"> <br><br>
  <div class="cc">
    <input type="hidden" class="form-control"  name="uri" value="<?php echo("$url");?>">
  <input type="submit"  value="Login"><br>
  <li class="Ranak"> <a href="signup.php" style="text-decoration: none"> Sign Up</a></li>
</div>
  </form><!-- close form -->
  <?php

if(isset($_GET['value']))
{
   
   echo "<div class=\"alert alert-danger\">
  <strong>Sign in Failed!</strong>  Wrong Username And Password
   </div><br>";
    
}


?>
 </div><!-- close aa -->
</body>
</html>