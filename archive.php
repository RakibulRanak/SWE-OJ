<?php

session_start();

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if(!isset($_SESSION["un"]))
{

	
	header("Location:login.php");
	
	

}

if(isset($_SESSION['un']))
{
	$username=$_SESSION['un'];
}

?>




<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Archive</title>
   	    <?php include 'linkers.php';?>
       
</head>
<body>
<div class="main">
	 <?php require 'nav2.php'; ?>


<div class="row log">
<div><h3 style="padding-left: 350px";>Problem Archive</h3></div>

</div>

<div class="row cspace">
<div class="col-sm-1">
</div>
<div class="col-sm-9">
<div class="table-responsive">
    <table class="table">
    <thead>
    <tr>
     <th>ID</th>
     <th>Problem Name</th>
     <th>Status</th>
     <th>Accepted/Submission</th>
     <th>Problem Setter</th>
    </tr>
    </thead>
    <tbody>


<?php

require_once("config.php");

error_reporting(0);

if(isset($_POST['pname']))
{
	$pn=$_POST['pname'];
	$pd=$_POST['description'];
	$author=$_POST['c2'];
	$tc=$_POST['case'];
	$ac=$_POST['result'];
	$ptl=$_POST['tll'];
}

error_reporting(0);

if(isset($pn))
{


$sql="INSERT INTO archieve VALUES(NULL,'$pn','$pd','$author','$tc','$ac','','$ptl')";

$sq=mysqli_query($con,$sql);

$per_page=10;

if(isset($_GET['page']))
{
	$page=$_GET['page'];
}
else
{
	$page=1;
}

$start=($page-1)*$per_page;

$show="SELECT * FROM archieve limit $start,$per_page"; //start from 0 index
$send=mysqli_query($con,$show);





while($row=mysqli_fetch_array($send))
{

    $problem_name=$row['pbname'];

	$number="SELECT verdict from submissions WHERE pbname='$row[pbname]' and sname='$username' and verdict='Accepted'";
	$snumber=mysqli_query($con,$number);
	$tsol=mysqli_num_rows($snumber);

	$acn="SELECT COUNT(verdict) AS verdict from submissions WHERE verdict='Accepted' AND pbname='$row[pbname]' GROUP BY pbname";
	$sacn=mysqli_query($con,$acn);
	$sol=mysqli_fetch_array($sacn);



	$tsub="SELECT COUNT(verdict) as sub from submissions WHERE pbname='$row[pbname]' GROUP BY pbname";
	$stsub=mysqli_query($con,$tsub);
	$ntsub=mysqli_fetch_array($stsub);


	if($tsol>0)
	{
		 $ver="Solved";
         echo "

   
	<tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btn-success btn-xs\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";

	}
	else
	{
         $ver="Unsolved";
         echo "

   
	<tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btn-danger btn-xs\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";
	}

	


	
}

echo "</tbody>
</table>
</div><br><br>";




$psql="SELECT * FROM archieve";
$sn=mysqli_query($con,$psql);
$total_rows=mysqli_num_rows($sn);
$total_page=ceil($total_rows/$per_page);

    $c="active";

	echo "<div style=\"text-align:center\"><ul class=\"pagination\"><li><a href=\"archive.php?page=1\">First Page</a></li>";

	for ($i=1; $i <$total_page ; $i++) {
	    
		if($page==$i)
		{
			$c="active";
        }
        else
        {
        	$c="";
        }
		echo "<li class=\"$c\"><a href=\"archive.php?page=$i\">$i</a></li>";
	}


	echo "<li><a href=\"archive.php?page=$total_page\">Last Page</a></li></ul></div>";

}

if(!isset($pn))
{
    $per_page=10;

	if(isset($_GET['page']))
	{
		$page=$_GET['page'];
	}
	else
	{
		$page=1;
	}

	$start=($page-1)*$per_page;

	$show="SELECT * FROM archieve limit $start,$per_page";




    $send=mysqli_query($con,$show);



	while($row=mysqli_fetch_array($send))
	{
		$problem_name=$row['pbname'];

		$number="SELECT verdict from submissions WHERE pbname='$row[pbname]' and sname='$username' and verdict='Accepted'";
	$snumber=mysqli_query($con,$number);
	$tsol=mysqli_num_rows($snumber);

	$acn="SELECT COUNT(verdict) AS verdict from submissions WHERE verdict='Accepted' AND pbname='$row[pbname]' GROUP BY pbname";
	$sacn=mysqli_query($con,$acn);
	$sol=mysqli_fetch_array($sacn);


	$tsub="SELECT COUNT(verdict) as sub from submissions WHERE pbname='$row[pbname]' GROUP BY pbname";
	$stsub=mysqli_query($con,$tsub);
	$ntsub=mysqli_fetch_array($stsub);

	if($tsol>0)
	{
		 $ver="Solved";
         echo "

   
	<tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btn-success btn-xs\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";

	}
	else
	{
         $ver="Unsolved";
         echo "

   
	<tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td><div class=\"btn btn-danger btn-xs\">$ver</div></td><td><progress id=\"myProgress\" value=\"$sol[verdict]\" max=\"$ntsub[sub]\"></progress> $sol[verdict]/$ntsub[sub]</td><td>$row[pbauthor]</td></tr>";
	}


	}
	echo "</tbody>
</table>
</div><br><br>";


	$psql="SELECT * FROM archieve";
	$sn=mysqli_query($con,$psql);
	$total_rows=mysqli_num_rows($sn);
	$total_page=ceil($total_rows/$per_page);
	$c="active";

	echo "<div style=\"text-align:center\"><ul class=\"pagination\"><li><a href=\"archive.php?page=1\">First Page</a></li>";

	for ($i=1; $i <$total_page ; $i++) {
	    
		if($page==$i)
		{
			$c="active";
        }
        else
        {
        	$c="";
        }
		echo "<li class=\"$c\"><a href=\"archive.php?page=$i\">$i</a></li>";
	}


	echo "<li><a href=\"archive.php?page=$total_page\">Last Page</a></li></ul></div>";

	
}





?>

</div>

	<div class="col-sm-2">
     <!--<a href="allsubmission.php"><div class="btn btn-primary">Submissions</div></a><br><br>-->
	</div>
	</div>
	</div><br><br><br><br>
<?php require 'footer.php'; ?>



</body>
</html>