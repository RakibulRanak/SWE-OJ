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

if (isset($_GET['user'])) {
	$data = $_GET['user'];
}

?>


<!DOCTYPE html>
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Profile</title>
  <?php include 'linkers.php';?>




</head>
<body>
<div class="main">
 <?php require 'nav2.php';?>

<div class="upore">
<div class="col-sm-12 autto">
<div class=""><h3 style="text-align:center;"><?php echo "Update $username's  Profile"; ?></h3></div>
</div>



</div>

<?php

$sql = "SELECT * FROM user WHERE name='$username'";
$send = mysqli_query($con, $sql);
$row = mysqli_fetch_array($send);
$pass = $row['pass'];

?>


<div class="upore container">
<div class="col-sm-6 autto upore">



   <form action="update.php" method="POST">

   <label for="ta">Email</label>
   <input type="text" name="email" value="<?php echo ("$row[email]") ?>" class="form-control rb" required><br><br>
   <label for="ta">Current Password</label>
   <input type="password" name="statusold" value=""placeholder="Current Password" class="form-control rb" required><br><br>
   <label for="ta">New Password</label>

   <input type="password" name="statusnew" value=""placeholder="New Password" class="form-control rb"><br><br>
   <input type="submit" class="btn btn-success" value="Update">

   </form>
  </div>

</div>
</div>



<?php require 'footer.php';?>



</body>
</html>
