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
 <?php include 'navbar1.php';?>
 <div class="aa">
  <div class="bb">
 <h2 style="color: skyblue">Login</h2>
</div>
  <form>
   <input type="text" placeholder="Enter Your Username"><br><br>
   <input type="password" placeholder="Enter Your password"><br><br>
  <div class="cc">
  <input type="submit" value="Submit"><br>
</div>
  </form><!-- close form -->
 </div><!-- close aa -->
</body>
</html>