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

if(isset($_GET['user']))
{
  $data=$_GET['user'];
  $us=$_GET['user'];


}

$admin=0;

$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];

if($st=="Teacher" || $st=="Problem Setter" || $st=="Developer")
{
   $admin=1;
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
 <?php require 'nav2.php'; ?>


<div class="row log">

<?php

if(isset($_GET['user']))
{

   $username=$data;
   
}

$ac="SELECT COUNT(verdict) AS verdict FROM submissions where verdict='Accepted' and sname='$us'";
$wa="SELECT COUNT(verdict) AS verdict FROM submissions where verdict='Wrong Answer' and sname='$us'";
$tle="SELECT COUNT(verdict) AS verdict FROM submissions where verdict='Time Limit Exceed' and sname='$us'";

$s1=mysqli_query($con,$ac);
$s2=mysqli_query($con,$wa);
$s3=mysqli_query($con,$tle);


$d=array();
$result=array();


foreach($s1 as $nac)
{
  $d[]=$nac;
  //$i++;
}


foreach($s2 as $nwa)
{
  $d[]=$nwa;
  //$i++;
}

foreach($s3 as $ntle)
{
  $d[]=$ntle;
  //$i++;
}


json_encode($d);

$dd=$d;


?>



</div>
<div class=""><h3 style="text-align:center;"><?php  echo"$username's  Profile"; ?></h3></div>

<?php

$sql="SELECT * FROM user WHERE name='$username'";
$send=mysqli_query($con,$sql);
$row=mysqli_fetch_array($send);

?>

<div class="row cspace">
<div class="col-sm-2">
</div>
<div class="col-sm-6 pbs">

<div class="ym">
 <div class="pc">Information</div>
  
   
   <table class="table">
    <tr class="success"><td>Name : <?php echo("$row[name]") ?></td></tr>
    <tr class="info"><td>Email : <?php echo("$row[email]") ?></td></tr>
    <tr class="danger"><td>Occupation : <?php echo("$row[status]") ?></td></tr>
    <?php

     if($data==$_SESSION['un'])
     {
        echo "<tr class=\"warning\"><td><a href=\"edit.php?name=$username\">Edit Profile</a></td></tr>";
     }

    ?>
    <tr class="info"><td><?php echo("<a href=\"allsubmission.php?name=$username\">Submissions</a>") ?></td></tr>
    
    </table>
  </div>
  <br><br>

  <h3 style="text-align:center;"><?php  echo"$username's Statistics"?></h3><br><br>
  <div id="chart-container">
  <canvas id="mycanvas"></canvas>

  </div><br>

  <!--<div class="alert alert-success"><?php echo "<b>$username's Total Solved Problem = $tsolved</b>" ;?></div><br>--><br><br>
  
  <h3 style="text-align:center;"><?php  echo"$username's Contest History"?></h3><br><br>

  <div class="table-responsive">
    <table class="table">
    <thead>
    <tr>
     <th>ID</th>
     <th>Contest Name</th>
     <th>Date</th>
     <th>User's Activity</th>
    </tr>
    </thead>
    <tbody>

    <?php
    
    require_once("config.php");

    $his="SELECT DISTINCT cid FROM `submission` WHERE sname='$username'";
    $shis=mysqli_query($con,$his);
    while($chis=mysqli_fetch_array($shis))
    {
        $conid=$chis['cid'];
        $mycon="SELECT * from rapl_oj_contest WHERE id='$conid'";
        $sendcon=mysqli_query($con,$mycon);
        $rhis=mysqli_fetch_array($sendcon);

        echo "<tr><td>$rhis[id]</td><td><a href=\"contestproblem.php?name=$rhis[cname]\">$rhis[cname]</a></td><td>$rhis[date_on]</td><td><a class=\"btn btn-primary btn-xs \" href=\"contestsubmission.php?id=$rhis[id]&show=$username\">Show</a></td></tr>";

    }
      echo "</tbody>
           </table>
           </div><br><br>";

    ?>

    <?php

     if($data==$_SESSION['un']  && $admin==1)
     {
          echo " 
          <div class=\"ym\">
    <div class=\"pc\">Dashboard</div>
  
   
   <ul class=\"nav nav-pills nav-stacked\">

    <li role=\"presentation\" class=\"active\"><a href=\"setcontest.php\">Create Contest</a></li>
    <li role=\"presentation\"><a href=\"setcontestproblem.php\">Create Contest Problem</a></li>
    <li role=\"presentation\"><a href=\"setproblem.php\">Create Archive Problem</a></li>
    <li role=\"presentation\"><a href=\"allsubmission.php?name=$username\">My Submission</a></li>
    <li role=\"presentation\"><a href=\"announcement.php\">Announcement</a></li>
     <li role=\"presentation\"><a href=\"createadmin.php\">Create Admin</a></li>
  </ul></div>";
          
     }
   ?>

</div>

<div class="col-sm-4">

</div>
</div>
</div>
</div><br><br><br>

<div class="area">
<div class="well foot">
<div class="row area">
<div class="col-sm-3">
</div>

<div class="col-sm-5">
<div class="">

<b>Beta Version-2019</b><br>
<b>Developed By Ranak</b>

</div>
</div>

<div class="col-sm-4">
<?php

require_once("time.php");

?>
</div>
</div>
</div>
</div>
</body>
</html>