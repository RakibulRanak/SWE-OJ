<div class="row">
    <div class="col-md-12">
        <nav class="shadow navbar navbar-dark bg-dark navbar-expand-md mytop nbar ">
           
                <a class="navbar-brand space" href="home.php"> <img class="navbar-img" src="Images/Name.png"
                        width="100px" height="40px"> </a>
            
                <ul class="nav navbar-nav">
                    <li class="space "><a href="compiler.php"><i class="fa fa-code ispace"></i>Compiler</a></li>
                    <li class="space"><a href="archive.php"><i class="fa fa-archive ispace"></i>Problem Archive</a></li>
                    <li class="space"><a href="contest.php"><i class="fa fa-cogs ispace"></i>Contests</a></li>
                     <li class="space"><a href="<?php echo "allsubmission.php"?>"><i class="fa fa-cogs ispace"></i>Submissions</a></li>
                    <!--    <li class="space"><a href="#"><i class="fa fa-check-square ispace"></i>Debug</a></li> -->
                    <li class="space"><a href="profile.php?user=<?php echo("$username"); ?>"><i
                                class="fa fa-user ispace"></i><?php echo("$username"); ?></a></li>
                    <li class="lgout"><a href="logout.php"><i class="fa fa-power-off ispace"></i>Logout</a></li>

                </ul>
            </div>

        </nav>
    </div>
</div>