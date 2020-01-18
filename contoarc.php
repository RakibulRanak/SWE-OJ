<?php

session_start();

require_once("config.php");

if(!isset($_SESSION['un']))
{
  header("Location:login.php");
}
if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}
$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];
$access=0;

if(isset($_POST['up']))
{
  $pbid=$_POST['pbid'];
  $cname=$_POST['cname'];
  $pn=$_POST['pn'];
  $pd=$_POST['pd'];
  $author=$_POST['author'];

  $tc=$_POST['tc'];
  $ac=$_POST['ac'];
  $ptl=$_POST['ptl'];
  

  //echo $cname;
  
  
}
else
{
  header("Location:home.php");
}



 if($st=="Teacher" || $st=="Developer")
 {   
      $access=1;
 }
 else
 {
     header("Location:home.php");
 }
 if($access==1)
 {
    $sss="UPDATE `element` SET `sts`='1' WHERE  pbid ='$pbid' ";
    $hhh=mysqli_query($con,$sss);

    $sql="INSERT INTO archieve VALUES(NULL,'$pn','$pd','$author','$tc','$ac','','$ptl')";
    $sq=mysqli_query($con,$sql);
    header("Location:contestproblem.php?name=$cname");
 }


  










?>