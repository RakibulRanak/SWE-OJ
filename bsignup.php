

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
  height: 300px;
  background-color: rgba(0,0,0,0.5);
  margin: 0 auto;
  margin-top: 100px;
  padding-top: 0px;
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
  .aa input[type="email"]{
  width: 200px;
  height: 35px;
  border:10px;
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
  border:10px;
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
  border:px;
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
  padding-top: 10px;
}

  }
</style>
</head>
<body>
 
 <div class="aa">
  <div class="bb">
 <h2 style="color: skyblue">Sign-Up</h2>

</div>
  <form action="action.php" name="f1" method="POST">

<input type="email" name="email" placeholder="Email" required><br> <br>

<input type="text" name="uname" placeholder="Username" required><br><br>

<input type="password" name="password" placeholder="Password" required><br><br>

<div class="cc">
  
  <input type="submit"  value="Sign Up"><br>
  
  <li> <a href="blogin.php"> Login</a></li>
</div>
</form>

<?php
if(isset($_GET['value']))
{
   
   echo "<div class=\"alert alert-danger\">
  <strong>Sign up Failed!</strong>  Username already exists!!
   </div><br>";
    
}

?>
 </div><!-- close aa -->
</body>
</html>