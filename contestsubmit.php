<?php

session_start();
date_default_timezone_set("Asia/Dhaka");
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
?>



<?php

$c=0;

if(isset($_GET['id']))
{
   $problemid=$_GET['id'];
   $c=1;
}

$sql="SELECT * FROM element WHERE pbid='$problemid' ";

$sq=mysqli_query($con,$sql);

$r1=mysqli_fetch_array($sq);




//echo "<textarea  style=\"display:none;\" name=\"in\" 

?>

<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Submit</title>
       <?php include 'linkers.php';?>
        
    <script>
// Set the date we're counting down to

function call(d,val,st,xd){

//console.log(d);
//console.log(val);
//console.log(st);
var countDownDate = new Date(d).getTime();
var start =new Date(st).getTime();
var nowserver=xd;
 //document.write(nowserver + "<br>");
 nowserver=  new Date(nowserver).getTime();
 var nowclient = Math.floor(new Date().getTime());
 var diff= nowserver-nowclient;

//console.log(start);

var result;

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    now+=diff;
    
    // Find the distance between now an the count down date
    
    
   
   

    if(start>now)
    {

       var distance = start - now;

        // Time calculations for days, hours, minutes and seconds
      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);


      // Output the result in an element with id="demo"
      var result=days + "d " + hours + "h "
      + minutes + "m " + seconds + "s ";

      //console.log(result);

       //document.getElementById(val).innerHTML = "Countdown : " + days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
    }
    else if(countDownDate>=now)
    {

       
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

         
        // Output the result in an element with id="demo"
        var result=days + "d " + hours + "h "
        + minutes + "m " + seconds + "s ";

      //console.log(result);
        //document.getElementById(val).innerHTML = " Running.... : "+ days + "d " + hours + "h "
       //+ minutes + "m " + seconds + "s ";

       document.getElementById("show").style.display="block";




    }
    
    // If the count down is over, write some text 
    else if (now>countDownDate) {
        clearInterval(x);


        document.getElementById("fin").innerHTML = "Contest has Finished";


    }


    
}, 1000);

  return x;
}


</script>






</head>
<body>
<div class="main">
  <?php require 'nav2.php'; ?>


<div class="row log">
<div class="col-sm-12">
<center><h3 >Submit Code</h3></center>
</div>



</div>
<br>
<br>



<div class="row ">
  <div class="col-sm-2"></div>
<div class="col-sm-8">
<div class="form-group">
<form action="pcompile.php" name="f2" method="POST">
<label for="language">Choose Language</label>


<select class="form-control" name="language">
<option value="c">C</option>
<option value="cpp">C++</option>
<option value="cpp11">C++11</option>

<!--<option value="python2.7">Python2</option>
<option value="python3.2">Python2</option>-->

</select><br><br>

<?php

    if($c==1)
    {
       //echo "<input type=\"hidden\" name=\"pbn\" value=\"$problem\">";
      echo "<input type=\"hidden\" name=\"id\" value=\"$problemid\">";
    }
    else
    {
      echo"<label for=\"pp\">Enter Problem ID</label><br>";
      //echo "<input class=\"form-control\" type=\"text\" name=\"pbn\">";
      echo "<input class=\"form-control\" type=\"text\" name=\"id\">";
    }

 ?>

<label for="ta">Write Your Code</label>
<textarea class="form-control" name="src" rows="10" cols="50"></textarea><br><br>
<input type="hidden" name='pbn' value="<?php echo $r1['pbname']; ?>">
<!--<input type="submit" class="btn btn-success" value="Submit"><br><br><br>-->

<?php

$conid=$r1['id'];

   $q3="SELECT * FROM rapl_oj_contest WHERE id='$conid'";
    $sq3=mysqli_query($con,$q3);

  
       
       $i=0;


      
   
  while($row=mysqli_fetch_array($sq3))
    {
   
      $current=date("Y-m-d H:i:s ");

      $nv=$row['start_at'];


      // $i++;
      // $demo="demo"+"$i";
      
      
      $en=$row['end_at'];


   ?>
      
    <script type="text/javascript">
    var end=<?php print json_encode($en);?>; 
    var val=<?php print json_encode($i);?>; 
    var nv=<?php print json_encode($nv);?>; 
     var cur=<?php print json_encode(date("Y-m-d H:i:s "));?>;

    //console.log("Start" +nv);

    call(end,val,nv,cur);


   </script>
      
    <?php

     $diff=strtotime($nv)-strtotime($current);
     $current=strtotime($current);
     
    // echo "$current<br>";

     //echo "$diff";

     if($diff>0)
     {
         
         header("Location:countdown.php");

     }

     echo("<div id=\"show\" style=\"display:none;\"><input type=\"submit\" class=\"btn btn-success\" value=\"Submit\"></div><br><br><br>");

     echo("<div id=\"fin\"></div>");
     


    }




?>


</form><br><br>


</div>

<div class="col-sm-4">

</div>
</div>
</div>
</div><br><br><br>

<?php require 'footer.php'; ?>




</body>

</html>
