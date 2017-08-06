<?php

include "conn.php";

$lusername=$_POST["username"];
$lfullname=$_POST["fullname"];
$lpassword=md5($_POST["password"]);
$email=$_POST["email"];
$DOB=$_POST["DOB"];

$sql1=mysqli_query($con,"insert into user(userName, password, fullName, email,dateOfBirth) values ('$lusername','$lpassword','$lfullname','$email','$DOB')");
	
	if(!$sql1)
	{
		if(mysqli_errno($con)==1062)
		{	
			header("Location:noRegistered.php?msg=1");
		}
	}
	else
	{
		header("Location:login.php");
	}

?>