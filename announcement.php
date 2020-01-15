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

if(isset($_POST['up2']))
{

    if($st=="Teacher" || $st=="Developer")
   {   
        $access=1;
   }


   if($access==1)
   {
     $query="truncate announcement";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "Deleted All Successfully.</a>";
     }
    }
   else
   {
      header("Location:announcement.php?fail=1");
   }


}




//uppppp

if(isset($_POST['up']))
{

  

   $id=$_POST['id'];
   
    if($st=="Teacher" || $st=="Developer")
   {   
        $access=1;
   }


   if($access==1)
   {
     $query="DELETE FROM announcement WHERE id='$id'";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "Deleted Successfully.";
        echo "<br>";
         echo "<br>";
     }
    }
   else
   {
      header("Location:announcement.php?fail=1");
   }
}



//crrrrrrrrrr

if(isset($_POST['cr']))
{
   $ced=$_POST['ced'];
  
   $announcement=$_POST['an'];
   
 if($st=="Teacher" || $st=="Developer")
 {   
      $access=1;
 }


   if($access==1)
   {

     $query="INSERT INTO announcement(des,exdate) VALUES('$announcement','$ced')";
     $send=mysqli_query($con,$query);

     if($send)
     {
       echo "Submitted Successfully.";
       echo "<br>";
        echo "<br>";
     }
   }
   else
   {
      header("Location:announcement.php?fail=1");
   }

}



   $query="SELECT * from announcement";
   $send=mysqli_query($con,$query);
  echo "<button class=\"btn btn-primary\";>ID</button> <div class=\"alert alert-info col-sm-9\" style=\"display: inline-block\"><b>Details</b></div> <div class=\"alert alert-info col-sm-2\" style=\"display: inline-block\"><b>Expire Date</b></div><br>";

   while($row=mysqli_fetch_array($send))
   {
       $aid=$row['id'];
       echo "<button class=\"btn btn-primary\";>$row[id]</button> <div class=\"alert alert-info col-sm-9\" style=\"display: inline-block\">$row[des]</div> <div class=\"alert alert-info col-sm-2\" style=\"display: inline-block\">$row[exdate]</div><br>";
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

                         <input name="ced" id="datepicker" width="276" />
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
<input type="number" name="id" class="form-control"><br><br>
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
<!-- <script type="text/javascript" src="djquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="dboot/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="djs/bootstrap-datetimepicker.js" charset="UTF-8"></script> -->

   

<?php require 'footer.php'; ?>

</body>
</html>
















