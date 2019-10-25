<?php

session_start();

require_once("config.php");

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
        <title>Home</title>

        <?php require 'linkers.php'; ?>




 <script>
// Set the date we're counting down to

function call(d,val,st){

//console.log(d);
//console.log(val);
//console.log(st);
var countDownDate = new Date(d).getTime();
var start =new Date(st).getTime();

//console.log(start);

var result;

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
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

       document.getElementById(val).innerHTML = "Countdown : " + days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
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
        document.getElementById(val).innerHTML = " Running.... : "+ days + "d " + hours + "h "
       + minutes + "m " + seconds + "s ";

       document.getElementById("show").style.display="block";




    }
    
    // If the count down is over, write some text 
    else if (now>countDownDate) {
        clearInterval(x);

        document.getElementById(val).innerHTML = "Status : Finished";
    }


    
}, 1000);

  return x;
}


</script>

        


</head>
<body onload="set()">



<div class="main">

<?php require 'nav2.php'; ?>

<div class="row log">
<div class="col-sm-2">
</div>

<div class="col-sm-7">
<div class=""><h3 style="text-align: center;">Contest Countdown</h3></div>
</div>

<div class="col-sm-3">
  
</div>

</div>




<div class="row cspace">
<div class="col-sm-3">

</div>


<div class="col-sm-7">
    

<?php

require_once("config.php");
date_default_timezone_set("Asia/Dhaka");

$nam = $_GET['name'];

$q3="SELECT * FROM rapl_oj_contest where cname='$nam' ORDER BY date_on DESC LIMIT 0,1";
    $sq3=mysqli_query($con,$q3);

        $q4="SELECT TIME_FORMAT(end_at,'%H') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";
       $q5="SELECT TIME_FORMAT(end_at,'%i') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";
        $q6="SELECT TIME_FORMAT(end_at,'%s') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";

      $sq4=mysqli_query($con,$q4);
      $sq5=mysqli_query($con,$q5);
      $sq6=mysqli_query($con,$q6);
      
      $i=0;


      
   
  while($row=mysqli_fetch_array($sq3))
    {
      $d=date("Y-m-d");
      $t=date("H:i:s");
      $m=$row['start_at'];
      $nv=$row['start_at'];


      $i++;
      $demo="demo"+"$i";
      $nr=mysqli_fetch_array($sq4);
      $nm=mysqli_fetch_array($sq5);
      $ns=mysqli_fetch_array($sq6);
      
      $shr=$nr['end_at'];
      $shm=$nm['end_at'];
      $shs=$ns['end_at'];
      $cur=date('H');
      $curm=date('i');
      $curs=date('s');

      $h=$shr-$cur;
      $mt=$shm-$curm;
      $scnd=$shs-$curs;

      if($scnd<0)
      {
         $scnd=$scnd+60;
         $mt=$mt-1;
      }

      if($mt<0)
      {
        $mt=$mt+60;
        $h=$h-1;
      }

      if($h<0)
      {
        $h=$h+24;
      }
      
      $en=$row['end_at'];

      $seconds = strtotime($t) - strtotime($m);
      $ss= strtotime($en) - strtotime($t);
      $min=intval($seconds/60);
      $sec=intval($seconds%60);
      $hr=intval($min/60);
      $m=intval($min%60);

   ?>
      
    <script type="text/javascript">
    var end=<?php print json_encode($en);?>; 
    var val=<?php print json_encode($i);?>; 
    var nv=<?php print json_encode($nv);?>; 

    //console.log("Start" +nv);

    call(end,val,nv);


   </script>
      
    <?php
     echo("<br><br><h1 id=$demo></h1> <br><br>");
     echo ("<div id=\"show\" style=\"display:none; margin-left:120px; margin-right:100px;\"><a class=\"btn btn-success\" href=\"contestproblem.php?name=$row[cname]\">Enter Now</a></div>");
     
    
  }

?>


  
</div>
<div class="col-sm-2">
</div>
</div>
</div>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>




<?php

require_once("footer.php");

?>
</body>
</html>


