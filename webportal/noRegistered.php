<!DOCTYPE html>
<html>
<head>
	<title>hompage</title>
	<?php
	include "links.php";
	?>
</head>
<body>

<?php
require "navbar.php";
require "header.php";?>
<div class="row">
	<div class="container">
		<div class=" col-sm-12 jumbotron">
		<?php
		if($_GET["msg"]==1)
			echo"<p>username or emailid already exists please <a href='register.php'>click here to register</a></p>";
		?>
		</div>
	</div>
</div>
<?php
require "footer.php";
?>


</body>
</html>