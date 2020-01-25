<div class="row">
    <div class="col-md-12">
        <nav class="shadow navbar navbar-dark bg-dark navbar-expand-md mytop nbar ">

                <a class="navbar-brand " style="margin-left: 10px"href="home.php"> <img class="navbar-img" src="Images/Name.png"
                        width="100px" height="40px"> </a>

                <ul class=" navbar-nav" style="">
                    <li class="space "><a href="compiler.php"><i class="fa fa-code ispace "></i>Compiler</a></li>
                    <li class="space"><a href="archive.php"><i class="fa fa-archive ispace"></i>Problem Archive</a></li>
                    <li class="space"><a href="contest.php"><i class="fa fa-cogs ispace"></i>Contests</a></li>
                     <li class="space"><a href="<?php echo "allsubmission.php" ?>"><i class="far fa-paper-plane ispace"></i>Submissions</a></li>
                    <!--    <li class="space"><a href="#"><i class="fa fa-check-square ispace"></i>Debug</a></li> -->
                    <li class="space"><a href="profile.php?user=<?php echo ("$username"); ?>"><i
                                class="fa fa-user ispace"></i> <?php echo ("$username"); ?></a></li>
                    <li class="space"><a href="logout.php"><i class="fa fa-power-off ispace"></i>Logout</a></li>
                    <li class="" style="position:absolute ;right:0px; top:5px">

                    <form class="form-inline my-2 my-lg-0" style="top:0px" action="search.php" style="" name="f1" method="POST">
                        <div>
                      <input class="form-control mr-sm-2 rb" name="name" style="height: 15px ;margin-bottom: 0px " type="search" placeholder="@Search" required >
                      <br>
                     <select name="selection"style="color: black" required>



    <option selected value="1">User</option>

    <option value="2">ProblemName</option>
    <option value="3">ProblemID</option>

</select>

 <button type="submit" name="submit" class="btn"><i class="fas fa-search" style="color:white"></i></button>
</div>



                    </form>
                </li>


                </ul>
            </div>

        </nav>
    </div>
</div>
<div style="min-height: 100vh">
