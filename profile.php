<?php

session_start();
require_once "config.php";

$_SESSION['url'] = $_SERVER['REQUEST_URI'];

if (!isset($_SESSION["un"])) {
	header("Location:login.php");
}

if (isset($_SESSION['un'])) {
	$username = $_SESSION['un'];

}

if (isset($_GET['user'])) {
	$data = $_GET['user'];
	$us = $_GET['user'];

}

$admin = 0;

$mysql = "SELECT  status from user WHERE name='$username'";
$snd = mysqli_query($con, $mysql);
$arrow = mysqli_fetch_array($snd);

$st = $arrow['status'];

if ($st == "Teacher" || $st == "Problem Setter" || $st == "Developer") {
	$admin = 1;
}

?>


<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Profile</title>
    <?php include 'linkers.php';?>
    <style type="text/css">

    </style>
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Verdict', 'Total'],
          ['CE',     ce],
          ['WA',      wa],
          ['RE',  re],
          ['AC', ac],
          ['TLE',    tle],
          ['No Submission',ns]
          //    ['Verdict', 'Total'],
          // ['CE',     10],
          // ['WA',      20],
          // ['RE',  30],
          // ['AC', 10],
          // ['TLE',    50]
        ]);

        var options = {
          title: 'Verdicts'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

</head>

<body style="overflow-x: hidden;">
    <div class="main" >
        <?php require 'nav2.php';?>


        <div class="upore">

            <?php

?>

        </div>
        <div class="autto col-sm-1">
            <h3><?php echo "$us"; ?></h3>
        </div>
        <div class="container">
        <div class="autto col-sm-2 upore">

          <?php
$sql = "SELECT * FROM `user` WHERE name = '$us'";
$var = mysqli_query($con, $sql);
$row = mysqli_fetch_array($var);

$image_name = $row['photo'];

if ($image_name == "") {

	echo "<img  style=\"border:solid 2px black;\" src=\"profile2.jpg\"width=\"200\" height=\"200\">";
} else {
	echo "<img style=\"border:solid 2px black;\" src='users/" . $row['photo'] . "'width=\"200\" height=\"200\">";

}

?>

           <?php
if ($data == $_SESSION['un']) {
	echo "
          <div>


                   <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal\" data-whatever=\"@mdo\">Change Photo</button>


            <div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">
              <div class=\"modal-dialog\" role=\"document\">
                <div class=\"modal-content\">
                  <div class=\"modal-header\">
                    <h5 class=\"modal-title\" id=\"exampleModalLabel\">Select photo less than 2 MB</h5>
                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
                      <span aria-hidden=\"true\">&times;</span>
                    </button>
                  </div>
                  <div class=\"modal-body\">
                    <form method=\"POST\" action=\"photoupload.php\" enctype=\"multipart/form-data\">
                      <div class=\"form-group\">

                       <!--   <form method=\"POST\" action=\"photoupload.php\" enctype=\"multipart/form-data\"> -->
                           <input type=\"file\"id=\"file\" name=\"myimage\">
                           <input type=\"hidden\" name=\"us\" class=\"form-control\" value=\"$data\";>

                        <input type=\"submit\" name=\"submit_image\" value=\"Upload\">
                          <!--  </form> -->
                      </div>

                    </form>
                  </div>

                </div>
              </div>
            </div>
             <script>
              var uploadField = document.getElementById(\"file\");

              uploadField.onchange = function() {
                  if(this.files[0].size > 2000000){
                     alert(\"File is too big!\");
                     this.value = \"\";
                  };
              };
            </script>


          </div> "
	;
}
?>
        </div>


<!-- //here


 -->
 <?php
$ac = "SELECT verdict FROM submissions where verdict='Accepted' and sname='$us'";
$wa = "SELECT verdict FROM submissions where verdict='Wrong Answer' and sname='$us'";
$tle = "SELECT verdict FROM submissions where verdict='Time Limit Exceed' and sname='$us'";
$re = "SELECT verdict FROM submissions where verdict='Runtime Error' and sname='$us'";
$ce = "SELECT verdict FROM submissions where verdict='Compilation Error' and sname='$us'";

$ac = mysqli_query($con, $ac);
$wa = mysqli_query($con, $wa);
$tle = mysqli_query($con, $tle);
$re = mysqli_query($con, $re);
$ce = mysqli_query($con, $ce);

$ac = mysqli_num_rows($ac);
$wa = mysqli_num_rows($wa);
$tle = mysqli_num_rows($tle);
$re = mysqli_num_rows($re);
$ce = mysqli_num_rows($ce);
$ns = 0;
if ($ac + $wa + $tle + $re + $ce == 0) {
	$ns = 1;
}

//echo $ac
?>
<script type="text/javascript">
  var ac= <?php print json_encode($ac);?>;
   var wa= <?php print json_encode($wa);?>;
    var tle= <?php print json_encode($tle);?>;
     var re= <?php print json_encode($re);?>;
      var ce= <?php print json_encode($ce);?>;
       var ns= <?php print json_encode($ns);?>;

</script>



 <div id="piechart"class="autto upore" style="width: 400px; height: 300px;"></div> </div>


        <?php

$sql = "SELECT * FROM user WHERE name='$us'";
$send = mysqli_query($con, $sql);
$row = mysqli_fetch_array($send);

?>

        <div class="upore container">

            <div class="upore col-sm-8 autto ">

                <div class="">
                    <div class="pc">Information</div>


                    <table class="table-dark table table-striped table-hover">
                        <tr class="success">
                            <td>Name : <?php echo ("$row[name]") ?></td>
                        </tr>
                        <tr class="info">
                            <td>Email : <?php echo ("$row[email]") ?></td>
                        </tr>
                        <tr class="danger">
                            <td>Occupation : <?php echo ("$row[status]") ?></td>
                        </tr>
                        <?php

if ($data == $_SESSION['un']) {
	echo "<tr class=\"warning\"><td><a href=\"edit.php?name=$username\">Edit Profile</a></td></tr>";
}

?>
                        <tr class="info">
                            <td><?php echo ("<a href=\"allsubmission.php?name=$us\">Submissions</a>") ?></td>
                        </tr>

                    </table>
                </div>


                <br><br>



        <?php

if ($data == $_SESSION['un'] && $admin == 1) {

	echo "  <div class=\"\">
        <div class=\"pc\">Dashboard</div>


           <table class=\"table-dark table table-striped table-hover\" >



             <tr><td><a href=\"notice.php\">Notice</a></td></tr>
            <tr><td><a href=\"createadmin.php\">Create Admin</a></td></tr>


            </table>
  </div>";

}
?>

                </div>


            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>

    <?php require 'footer.php';?>
</body>

</html>