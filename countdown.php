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

function call(d,val,st ,xd){

// console.log(d);
// console.log(val);
// console.log(st);
var countDownDate = new Date(d).getTime();
var start =new Date(st).getTime();
 var nowserver=xd;
 //document.write(nowserver + "<br>");
 nowserver=  new Date(nowserver).getTime();
 var nowclient = Math.floor(new Date().getTime());
 var diff= nowserver-nowclient;


//var now = new Date().getTime();
//var now= new Date(now1).getTime();
//console.log(start);
//document.write(now + "<br>");
// document.write(nowclient + "<br>");

// document.write(nowserver+"<br>");

// document.write(diff);
var result;
//diff=1000*diff;

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

       document.getElementById("demo").innerHTML = "Countdown : " + days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
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
        document.getElementById("demo").innerHTML = " Running.... : "+ days + "d " + hours + "h "
       + minutes + "m " + seconds + "s ";

       document.getElementById("show").style.display="block";




    }
    
    // If the count down is over, write some text 
    else if (now>countDownDate) {
        clearInterval(x);

        document.getElementById("demo").innerHTML = "Status : Finished";
    }


    
}, 1000);

  return x;
}


</script>

        


</head>
<body onload="set()">



<div class="main">

<?php require 'nav2.php'; ?>

<div class=" log">

<div class=""><h3 style="text-align: center;">Contest Countdown</h3></div>



  
</div>

</div>




<div class="row cspace">


</div>



    

<?php

require_once("config.php");
date_default_timezone_set("Asia/Dhaka");

      $nam = $_GET['name'];
      // echo $nam;
      // echo "<br>";

      $q3="SELECT * FROM rapl_oj_contest where cname='$nam' ORDER BY date_on DESC LIMIT 0,1";
      $sq3=mysqli_query($con,$q3);


      
      $i=0;


      
   
  while($row=mysqli_fetch_array($sq3))
    {
      
      $nv=$row['start_at'];
      $en=$row['end_at'];
        //$current=date("Y-m-d H:i:s ");

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
     // echo("<br><br><h1 id=$demo></h1> <br><br>");
     echo("<br><br><center><h1 id=\"demo\"></h1> </center><br><br>");
     echo ("<div id=\"show\" style=\"display:none; margin-left:46vw; margin-right:100px;\"><a class=\"btn btn-success\" href=\"contestproblem.php?name=$row[cname]\">Enter Now</a></div>");
     
    
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


