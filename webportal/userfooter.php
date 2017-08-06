<div class="footer" id="footer" style="width:100%">
		<div class="container">
			<div class="row">
			<div class="col-md-4 " style="text-align:left;">
				<h4>Our Details</h4>
				<p>phone:+4444555566</p>
				<p>fax:+565656565666</p>
				<p>Address:Andheri west,near railway station, near taj mahal, opp kurla ststion.</p>
			</div>

			<form class="col-md-8 form-vertical">
				<div class="form-group">
					<h4 style="text-align:left;">Feedback</h4>
					<input class="form-control" placeholder="Name" type="text"  style="margin-top:2px;" name="name" value="<?php echo $_SESSION["username"] ?>">
					<input class="form-control" placeholder="Email" type="text" style="margin-top:2px;" name="email">
					<textarea class="form-control" placeholder="Message" name="message" style="margin-top:2px;"></textarea>
					<button class="who " type="submit" name="submit"> submit </button>

				</div>
			</form>
</div>