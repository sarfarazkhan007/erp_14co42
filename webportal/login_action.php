<?php
session_start();
include "conn.php";

if(!empty($_POST["username"]) && !empty($_POST["password"])){
	$user=$_POST["username"];
	$pass=md5($_POST["password"]);
	$query="SELECT `use_ID`,`userName`, `password` FROM `user` WHERE username='$user' and password='$pass'";
	$sql=mysqli_query($con,$query);
	$count=mysqli_num_rows($sql);
	if($count==1){
		$row=mysqli_fetch_assoc($sql);
		$_SESSION['id']=$row['use_ID'];
		$_SESSION['username']=$row['userName'];
		echo"loged in ";//secure home page*************start session in new pag and check if $_SESSION is set or not
		header("Location:userhomepage.php");
		
	}
	else{
		echo "invalid username or password";
		header("Location:login.php?up=1");
		//login page**********
	}
}
?>