<!DOCTYPE html>
<html>
<head>
	<title>Register Page</title>
	<?php
	include "links.php";
	?>
</head>
<body>
<?php 
include "navbar.php";
include "header.php";
?>
  <script>
  $( function() {
    $( ".datepicker" ).datepicker({
    	dateFormat:"yy-mm-dd",
    	changeMonth: true,
    	yearRange: "-40:+0",
        changeYear: true,
        showMonthAfterYear: true
    });
  } );
  </script>

  <script>
    function validate() {
        var pass1 = document.getElementById("pass").value;
        var pass2 = document.getElementById("cpass").value;
        if (pass1 != pass2) {
            document.getElementById("errmsg").style.display="inline-block";
    	}
    	else{
         	document.getElementById("errmsg").style.display="none";   
}}
</script>

<div class="container">
		  <h2>Register</h2>
		  <form action="registerp.php" method="post" class="form-horizontal">
		    

		    <div class="form-group">
		      <div class="col-sm-6">
		        <input type="text" class="form-control" name="username" placeholder="Username">
		      </div>
		    </div>
		    

		    <div class="form-group">
		      <div class="col-sm-6">
		        <input type="text" class="form-control" name="fullname" placeholder="Full name">
		      </div>
		    </div>
		    

		    <div class="form-group">
		     <div class="col-sm-6">
		        <input type="email" class="form-control" name="email" placeholder="E-mail">
		     </div>
		    </div>
		    
		     <div class="form-group">
		      <div class="col-sm-6">          
		        <input type="password" class="form-control" id="pass" name="password" placeholder="Password">
		      </div>
		    </div>

		    <div class="form-group">
		      <div class="col-sm-6">          
		        <input type="password" class="form-control" id="cpass" name="cpassword" onblur="validate()" placeholder="Confirm Password">
		      </div>
		    </div>

		    <span class="col-sm-6 form-group" style="display:none;color:red;" id="errmsg">password doesnot match</span>	
		    
		    <div class="form-group">
		      <div class="col-sm-6">
		        <input type="text" class="form-control datepicker" name="DOB" placeholder="Date Of Birth">
		      </div>
		    </div>
		    

		    <div class="form-group">        
		      <div class="col-sm-offset-1 col-sm-6">
		        <input type="submit" id="submit" name="submit" 
                     required="required" value="REGISTER -->"  class="btn btn-default" >
		      </div>
		    </div>


		  </form>
		</div>
	<?php
	include "footer.php"
	?>
</body>
</html>
