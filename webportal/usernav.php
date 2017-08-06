
<?php
session_start();
if(empty($_SESSION['username'])){
	header("Location:login.php");}
?>
<nav class="navbar navbar-inverse navbar-static-top" style="margin:0px;">
	 	<div class="container-fluid" >

	 		<div class="navbar-header" ><!-- navbar-header contain only small screen element-->
	 			<a  class="navbar-brand" href="userhomepage.php">Q and A forum</a>
	 			
	 			<div type="buttton" class="navbar-toggle" data-toggle="collapse" data-target="#collnav">
	 				<span class="icon-bar"></span>
	 				<span class="icon-bar"></span>
	 				<span class="icon-bar"></span>
	 			</div>
	 		</div>



	 		<div class="collapse navbar-collapse" id="collnav"><!-- collapse contain only click of button-->
	 			<ul class="nav navbar-nav" style="">
	 			<li><a href="userhomepage.php">Home</a></li>
	 			<li><a href="#">Questions</a></li>
	 			<li><a href="#footer">Contact us</a></li>
	 			<li><a href="#">About us</a></li>
	 			</ul>

	 			<ul class="nav navbar-nav navbar-right">
	 			<li><a href=""><span class="glyphicon glyphicon-user"></span><?php echo " ".$_SESSION["username"];?></a></li>
	 			<li><a href="logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	 			</ul>
	 		</div>
	 	</div>
</nav>