<!DOCTYPE html>
<html>
<head>
	<title>Q and A login</title>
	<?php
	include "links.php";
	?>
</head>
<body>
	<?php
	include "navbar.php";
	include "header.php"
	?>
	    <div class="container">
	    <?php
	    $up=$_GET["up"];
	    if($up==1)
	    {
	    echo "invalid username and password";
	    }
	    ?>
		  <h2>Login</h2>
		  <form action="login_action.php" method="post" class="form-horizontal">
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="uname">Username:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="uname" name="username" placeholder="Username">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="pwd">Password:</label>
		      <div class="col-sm-4">          
		        <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
		      </div>
		    </div>
		    <div class="form-group">        
		      <div class="col-sm-offset-2 col-sm-4">
		        <button type="submit" class="btn btn-default">Login</button>
		      </div>
		    </div>
		  </form>
		</div>
	<?php
	include "footer.php"
	?>
</body>
</html>