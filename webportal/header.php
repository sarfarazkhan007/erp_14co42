<div class="col-md-12 header">
			<h3>community to ask,share and learn</h3>
			<p>just join the community to ask question related to any topic and get your answer within a second</p>
			<?php
				if($_SESSION){
					echo '<a class="who" href="askQuestion.php">Ask question</a>';
				}
				else{
					echo '<a class="who" href="#">who are we?</a>';	
				}
			?>
</div>