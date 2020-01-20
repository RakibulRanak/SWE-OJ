<?php

session_start();
require_once("config.php");

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

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
error_reporting();


if($st=="Teacher" || $st=="Problem Setter" || $st=="Developer")
{
   $access=1;
}

?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contest</title>
    <?php include 'linkers.php';?>

</head>

<body>
    <div class="main">
      <?php require 'nav2.php'; ?>


        <div class="log">
            
                
               <h3 style="text-align:center;">All Contest</h3>
              
          
        </div>

            

        

     <div class="row cspace">
            <div class="col-sm-2">
            </div>
      <div class="col-sm-6 pbs">

<?php

require_once("config.php");

date_default_timezone_set("Asia/Dhaka");

if(isset($_POST['cn']))
{

      $contest=$_POST['cn'];
      $cid=$_POST['ci'];
      $date=$_POST['cd'];
      $start=$_POST['ct'];
      $end=$_POST['ce'];
      $owner=$username;
      //substr($owner ,0, -1);
      //$start .=":00";
      //$end .=":00";
      // echo $owner;
      // echo $date;
      // echo $start;
      // echo $end;


      $q1="INSERT into rapl_oj_contest  VALUES('$cid','$contest','$start','$end','$date','$owner')";
      $q3="SELECT * FROM rapl_oj_contest ORDER BY date_on DESC";

      $sq2=mysqli_query($con,$q1);

      if(!$sq2)
      {
        echo "Failed";
      }


}

if(isset($_POST['update']))
{

          $contest=$_POST['ucn'];
          $cid=$_POST['uci'];
          $date=$_POST['ucd'];
          $start=$_POST['uct'];
          $end=$_POST['uce'];

          $eft="UPDATE rapl_oj_contest SET cname='$contest',start_at='$start',end_at='$end',date_on='$date' WHERE  id=$cid";

          $sft=mysqli_query($con,$eft);


          if(!$sft)
          {
            echo "Failed";
          }

}


if(isset($_POST['delete']))
{
    //$contest=$_POST['ucn'];
    $cid=$_POST['uci'];
    //$date=$_POST['ucd'];
    //$start=$_POST['uct'];
    //$end=$_POST['uce'];
    $efetch="DELETE FROM rapl_oj_contest WHERE id=$cid";
    $sendfetch=mysqli_query($con,$efetch);
    if(!$sendfetch)
    {
       echo "Failed";
    }
}


$q3="SELECT * FROM rapl_oj_contest ORDER BY date_on DESC";
$sq3=mysqli_query($con,$q3);


$i=0;

while($row=mysqli_fetch_array($sq3))
{
      
      $i++;
      $demo="demo".$i;

     if($access==1)
     {
         echo("<div class=\"xmm\">Contest Name: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Contest ID: $row[id]<br>Start Time: $row[start_at]<br>End Time: $row[end_at] <br><div id=$demo></div> <br><a href=\"editcontest.php?name=$row[cname]\">Edit</a><br></div>");
     }
     else
     {
          echo("<div class=\"xmm\">Contest Name: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br>Contest ID: $row[id]<br>Start Time: $row[start_at]<br>End Time: $row[end_at] <br><div id=$demo></div> <br></div>");
          echo "<br>";

     }

      
}


?>

            </div>
            <div class="col-sm-4">

            </div>
        </div>
    </div>
  </div><br><br><br>

    <?php require 'footer.php'; ?>

</body>

</html>