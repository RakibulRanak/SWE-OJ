<div class="row">
    <div class="col-md-12">
        <nav class="shadow navbar navbar-dark bg-dark navbar-expand-md mytop nbar ">
           
                <a class="navbar-brand " style="margin-left: 10px"href="home.php"> <img class="navbar-img" src="Images/Name.png"
                        width="100px" height="40px"> </a>
            
                <ul class="nav navbar-nav">
                    <li class="space "><a href="compiler.php"><i class="fa fa-code ispace"></i>Compiler</a></li>
                    <li class="space"><a href="archive.php"><i class="fa fa-archive ispace"></i>Problem Archive</a></li>
                    <li class="space"><a href="contest.php"><i class="fa fa-cogs ispace"></i>Contests</a></li>
                     <li class="space"><a href="<?php echo "allsubmission.php"?>"><i class="far fa-paper-plane ispace"></i>Submissions</a></li>
                    <!--    <li class="space"><a href="#"><i class="fa fa-check-square ispace"></i>Debug</a></li> -->
                    <li class="space"><a href="profile.php?user=<?php echo("$username"); ?>"><i
                                class="fa fa-user ispace"></i><?php echo("$username"); ?></a></li>
                    <li class="space"><a href="logout.php"><i class="fa fa-power-off ispace"></i>Logout</a></li>
                    <li class="" style="margin-left: 16vw">
                    <form class="form-inline my-2 my-lg-0" action="usersearch.php" style="margin-left:15px name="f1" method="POST">
                      <input class="form-control mr-sm-2" name="name" style="height: 15px ;margin-bottom: 5px " type="search" placeholder="@username">
                  
                    <button type="submit" name="submit" class="btn"><i class="fas fa-search" style="color:white"></i></button>
                    </form>
                </li>
                    

                </ul>
            </div>

        </nav>
    </div>
</div>
<div style="min-height: 100vh">