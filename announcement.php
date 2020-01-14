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

    <link href="dcss/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />






</head>
<body>
<div class="main">
 <?php require 'nav2.php'; ?>



<div class="row log">
<div class="col-sm-10">
<div class=""><h3 style="text-align:center;">Announcement</h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>




<div class="row cspace">
<div class="col-sm-7">

<?php

require_once("config.php");



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

     $query="INSERT INTO announcement(des,exdate) VALUES($announcement','')";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "Submitted Successfully. <a href=\"announcement.php\">Check Here</a>";
     }
   }
   else
   {
      header("Location:announcement.php?fail=1");
   }


   
   
  
 

}
else
{
   $query="SELECT * from announcement";
   $send=mysqli_query($con,$query);
  
   while($row=mysqli_fetch_array($send))
   {
       $aid=$row['id'];
       echo "<button class=\"btn btn-success\">$aid</button><button class=\"btn btn-primary\">$row[id]</button> <div class=\"alert alert-info\">$row[des]</div><br>";
   }

}


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
       echo "Deleted Successfully. <a href=\"announcement.php\">Check Here</a>";
     }
  }
 else
 {
    header("Location:announcement.php?fail=1");
 }
}



?>


</div>

<?php

if($st=="Teacher" || $st=="Developer" || $st=="Problem Setter")
{
?>

<div class="col-sm-5">
<div class="form-group">
<legend>Create Announcement</legend>
<form action="<?php echo $_SERVER['PHP_SELF']?>" name="f2" method="POST">


<label for="ta">Enter Expire Date</label>

                        <!-- <div class="input-group date form_datetime2 col-md-5" data-date="2017-06-15T05:25:07Z"
                            data-date-format=" yyyy-mm-dd " data-link-field="dtp_input1">
                            <input type='text' name="cd" class="form-control" readonly class="form_datetime2" />

                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div><br><br> -->
                        <input id="datepicker" width="276" />
                        <br>
    <script>
        $('#datepicker').datepicker({
           // uiLibrary: 'bootstrap4'
            format: 'yyyy-mm-dd'
        });
    </script>
<label for="in">Enter Announcement Description</label>
<textarea name="an" class="form-control" rows="10" cols="60" required></textarea><br><br>
<input type="submit" name="cr" class="btn btn-success" value="Create Announcement">
<br><br>

</form>

<form action="<?php echo $_SERVER['PHP_SELF']?>" name="f3" method="POST">
  
<legend>Delete Announcement</legend>
<label for="ta">Enter Announcement id</label>
<input type="text" name="ann" class="form-control"><br><br>
<input type="submit" name="up" class="btn btn-danger" value="Delete">
<input type="submit" name="up2" class="btn btn-danger" value="Delete All">




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
<script type="text/javascript" src="djquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="dboot/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="djs/bootstrap-datetimepicker.js" charset="UTF-8"></script>

    <script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>

    <script type="text/javascript">
    $('.form_datetime1').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>

    <script type="text/javascript">
    $('.form_datetime2').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    </script>



<?php require 'footer.php'; ?>

</body>
</html>
















