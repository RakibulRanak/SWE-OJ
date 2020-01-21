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


$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];


$access=0;






?>

<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Announcement</title>
        <?php include 'linkers.php';?>
      





</head>
<body>
<div class="main">
<?php include 'nav2.php';?>



<div class="">
<div class="col-sm-12 upore">
<div class=""><h3 style="text-align:center;">Announcement</h3></div>
</div>



</div>




<div class="row container-fluid autto upore">
<div class="col-sm-7">

<?php

require_once("config.php");

//create announcement from profile announcement

if(isset($_POST['cr']))
{

   

   $cid=$_POST['ci'];
   $cname=$_POST['cn'];
   $announcement=$_POST['an'];

 $fowner="SELECT  owner from rapl_oj_contest where cname='$cname'";
 $sendit=mysqli_query($con,$fowner);
 $frow=mysqli_fetch_array($sendit);
 $owner=$frow['owner'];

 if($username==$owner)
 {
      $access=1;
 }
 else if($st=="Teacher" || $st=="Developer")
 {   
      $access=1;
 }


   if($access==1)
   {
     $query="INSERT INTO announcement(id,cname,des) VALUES('$cid','$cname','$announcement')";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "<b>Submitted Successfully.</b> <br><br>";
      // echo "gd";
     }
   }
   else
   {
       header("Location:announcement.php?fail=1");
    //echo "bal";
   }

}
   
//announcement delete from profile>announcement


if(isset($_POST['up']))
{

  

   $aid=$_POST['ann'];
   $cont=$_POST['con'];
   

 $fowner="SELECT  owner from rapl_oj_contest where cname='$cont'";
 $sendit=mysqli_query($con,$fowner);
 $frow=mysqli_fetch_array($sendit);
 $owner=$frow['owner'];

 if($username==$owner)
 {
      $access=1;
 }
 else if($st=="Teacher" || $st=="Developer")
 {   
      $access=1;
 }


   if($access==1)
   {
     $query="DELETE FROM announcement WHERE aid='$aid'";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "<b>Deleted Successfully.</b> <br><br>";
     }
  }
 else
 {
    header("Location:announcement.php?fail=1");
 }
}

$query="SELECT * from announcement";
   $send=mysqli_query($con,$query);
  
   while($row=mysqli_fetch_array($send))
   {
       $aid=$row['aid'];
       echo "<button class=\"btn btn-success\">$aid</button><button class=\"btn btn-primary\">$row[cname]</button> <div class=\"alert alert-info\">$row[des]</div><br>";
   }




?>


</div>

<?php

if($st=="Teacher" || $st=="Developer" || $st=="Problem Setter")
{
?>

<div class="col-sm-5 upore autto">
<div class="form-group">
<legend>Create Announcement</legend>
<form action="<?php echo $_SERVER['PHP_SELF']?>" name="f2" method="POST">
<label for="ta">Enter Your Contest ID</label>
<input type="text" name="ci" class="form-control rb" required><br><br>
<label for="ta">Enter Your Contest Name</label>
<input type="text" name="cn" class="form-control rb" required><br><br>
<label for="in">Enter Announcement Description</label>
<textarea name="an" class="form-control rb" rows="10" cols="60" required></textarea><br><br>
<input type="submit" name="cr" class="btn btn-success" value="Create Announcement">
<br><br>

</form>

<form action="<?php echo $_SERVER['PHP_SELF']?>" name="f3" method="POST">
  
<legend>Delete Announcement</legend>
<label for="ta">Enter Announcement Number</label>
<input type="text" name="ann" class="form-control rb"><br><br>
<label for="ta">Enter Contest Name</label>
<input type="text" name="con" class="form-control rb" required><br><br>
<input type="submit" name="up" class="btn btn-danger" value="Delete">




</form>


</div>

</div>

<?php
}

if(isset($_GET['fail']))
{
   echo "<script>alert(\"You Are Not Owner Of This Contest. Only Owner Can Control Announcement\");</script>";
}
?>


</div>
</div><br><br><br>
<?php include 'footer.php';?>




</body>
</html>
















