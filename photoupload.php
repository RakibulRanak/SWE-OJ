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
$us="";

if(isset($_POST['us']))
{
 
  $us=$_POST['us'];
  //echo $us;

}
if($us!=$username)
{
  echo "
        
        
        <script>
          
         window.alert(\"Permission Denied!!\");
         window.location.href=\"profile.php?user=$us\";
         

        </script> ";

}


  $msg = "";

$size=getimagesize($_FILES['myimage']['tmp_name']);
//var_dump($size);
$filesize=filesize($_FILES['myimage']['tmp_name']);
//var_dump($filesize);
  $image = $_FILES['myimage']['name'];
  
  if($filesize<=2000000 && $size)
  {
      $target = "users/".basename($image);
      $sql1 = "SELECT * FROM `user` WHERE name = '$username'";
      $var=mysqli_query($con,$sql1);
      $row=mysqli_fetch_array($var);
      if(!empty($row))
      {
          $sql="UPDATE user SET photo = '$image' WHERE name = '$username'";
      }
      else
      {
          $sql = "INSERT INTO user (photo) VALUES ('$image')";

      }


       mysqli_query($con, $sql);
        

      if (move_uploaded_file($_FILES['myimage']['tmp_name'], $target)) 
      {
        	$msg = "Image uploaded successfully";
      }
      else
      {
          $msg = "Failed to upload image";
      }
      header("Location:profile.php?user=$username");

  }
  else if(!$size)
  {     
        echo "
        
        
        <script>
          
         window.alert(\"Not an Image File!!!!\");
         window.location.href=\"profile.php?user=$username\";

        </script> ";

        
  }
  else
  {     
        echo "
        
        
        <script>
          
         window.alert(\"File Size greater than 2MB!!\");
         window.location.href=\"profile.php?user=$us\";

        </script> ";

        
  }
  echo $msg;
  //header("Location:profile.php?user=$username");
  //
?>