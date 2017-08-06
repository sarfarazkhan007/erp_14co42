
<?php
include "conn.php";
$topQuesQuery="select que_ID,question,field,askedBy,(likes-dislikes) as point,use_ID,userName,fie_id,nameOfField from question join user join field where askedBy=use_ID and field=fie_ID order by point desc";
$recQuesQuery="select que_ID,question,field,askedBy,use_ID,userName,fie_id from question join user join field where askedBy=use_ID and field=fie_ID  order by que_ID desc";
$topQRes=mysqli_query($con,$topQuesQuery);
$recQRes=mysqli_query($con,$recQuesQuery);
$ques=0;
?>

<div class="container">
		<div class="row">
			<div class="col-md-8 topQ" style="">
				<h4>Top questions</h4>
				
				<?php
				while($TopQRow=mysqli_fetch_assoc($topQRes) and $ques<10)
				{
					$ques+=1;
				?>

				<div class="well">
					<div class="col-sm-1 pull-right lk">
						<a><span class="glyphicon glyphicon-thumbs-up"></span></a>
						<a><span class="glyphicon glyphicon-thumbs-down"></span></a>
					</div>
					<a href="fullques.php?id=<?php echo $TopQRow['id'];?>"><p><?php echo $TopQRow['question'];?></p></a>
					<span class="badge">points:<?php echo $TopQRow['point'];?></span>
					<span class="badge">By:<?php echo $TopQRow['userName'];?></span>
					<span class="badge"><?php echo $TopQRow['nameOfField'];?></span>
					</div>

				<?php
				}
				?>

				</div>
				<div class="col-md-4" style="margin-top:5px;background-color: #FFF8DC;border: 1px solid #E0DCBF;">
					<h4>Search questions</h4>
					<form action="search.php" method="get">
						<div class="form-group">
							<input type="text" name="search">
							<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
						</div>
					</form>
				</div>


				<div class="col-md-4 recentQ" style="margin-top:5px ;margin-bottom:5px;background-color: #FFF8DC;border: 1px solid #E0DCBF;">
					<h4>Recent questions</h4>
					
					<?php
					$ques=0;
					while($recQRow=mysqli_fetch_assoc($recQRes) and $ques<5)
					{
					$ques+=1;
					?>					

					<a href="fullques.php?id=<?php echo $recQRow['id'];?>"><p class="well" ><?php echo $recQRow['question'];?>
					<span class="badge">By:<?php echo $recQRow['userName'];?></span></p></a>

					<?php
					}
					?>
				</div>
			</div>
	</div>