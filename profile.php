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

if(isset($_GET['user']))
{
  $data=$_GET['user'];
  $us=$_GET['user'];


}

$admin=0;

$mysql="SELECT  status from user WHERE name='$username'";
$snd=mysqli_query($con,$mysql);
$arrow=mysqli_fetch_array($snd);

$st=$arrow['status'];

if($st=="Teacher" || $st=="Problem Setter" || $st=="Developer")
{
   $admin=1;
}


?>


<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Profile</title>
    <?php include 'linkers.php';?>

</head>

<body>
    <div class="main">
        <?php require 'nav2.php'; ?>


        <div class="row log">

            <?php

// if(isset($_GET['user']))
// {

//    $username=$data;
   
// }


?>

        </div>
        <div class="">
            <h3 style="text-align:center;"><?php  echo"$us's  Profile"; ?></h3>
        </div>
        <div style="padding-left: 42%">

          <?php
            $sql = "SELECT * FROM `user` WHERE name = '$us'";
            $var=mysqli_query($con,$sql);
            $row=mysqli_fetch_array($var);

            
              $image_name=$row['photo'];
          
              if($image_name==""){
        
                echo "<img src=\"profile2.jpg\"width=\"200\" height=\"200\">";
              }
              else
              {
                        echo "<img src='users/".$row['photo']."'width=\"200\" height=\"200\">";                  

              }
          
          ?>

           <?php
            if($data==$_SESSION['un'])
               echo"
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
                           <input type=\"file\" name=\"myimage\">
                           <input type=\"hidden\" name=\"us\" class=\"form-control\" value=\"$data\";>
        
                        <input type=\"submit\" name=\"submit_image\" value=\"Upload\">
                          <!--  </form> -->
                      </div>
                      
                    </form>
                  </div>
                
                </div>
              </div>
            </div> 
            

          </div> "
          ?>
        </div>

        <?php

$sql="SELECT * FROM user WHERE name='$us'";
$send=mysqli_query($con,$sql);
$row=mysqli_fetch_array($send);

?>

        <div class="row cspace">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-5 pbs">

                <div class="ym">
                    <div class="pc">Information</div>


                    <table class="table table-striped table-hover">
                        <tr class="success">
                            <td>Name : <?php echo("$row[name]") ?></td>
                        </tr>
                        <tr class="info">
                            <td>Email : <?php echo("$row[email]") ?></td>
                        </tr>
                        <tr class="danger">
                            <td>Occupation : <?php echo("$row[status]") ?></td>
                        </tr>
                        <?php

                       if($data==$_SESSION['un'])
                       {
                          echo "<tr class=\"warning\"><td><a href=\"edit.php?name=$username\">Edit Profile</a></td></tr>";
                       }

                        ?>
                        <tr class="info">
                            <td><?php echo("<a href=\"allsubmission.php?name=$us\">Submissions</a>") ?></td>
                        </tr>

                    </table>
                </div>
               

                <br><br>

                

        <?php

     if($data==$_SESSION['un']  && $admin==1)
     {

    echo "  <div class=\"ym\">
        <div class=\"pc\">Dashboard</div>
  
   
           <table class=\"table table-striped table-hover\" >
            
           
             <tr><td><a href=\"setcontest.php\">Create Contest</a></td></tr>
             <tr><td><a href=\"setcontestproblem.php\">Create Contest Problem</a></td></tr> 
             <tr><td><a href=\"setproblem.php\">Create Archive Problem</a></td></tr> 
             
             <tr><td><a href=\"notice.php\">Notice</a></td></tr>
             <tr><td><a href=\"announcement.php\">Announcement</a></td></tr>
            <tr><td><a href=\"createadmin.php\">Create Admin</a></td></tr>
            
            
            </table>
  </div>";
          
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