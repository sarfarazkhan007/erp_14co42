<?php
session_start();
 ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php
	include "links.php";
	?>
</head>
<body>
		<?php
		include "usernav.php";
		include "header.php";
		include "conn.php";
	function ispresent($word){
		
		$field=array("java","c","c++","CSS","HTML","php","python");
		$co=count($field);
		foreach($field as $i){
			if($i==$word){
				
			return 1;
			}}
				
			return 0;
		}

		


	$search=$_GET["search"];
	$andquery="select que_ID,question,field,askedBy,(likes-dislikes) as point,use_ID,userName,fie_id,nameOfField from question join user join field where askedBy=use_ID and field=fie_ID and";
	$orquery="select que_ID,question,field,askedBy,(likes-dislikes) as point,use_ID,userName,fie_id,nameOfField from question join user join field where askedBy=use_ID and field=fie_ID";
	$word="";
	$no=4;

	$search=trim($search);
	$words=explode(" ",$search);
	$co=count($words);

	for($i=0;$i<=$co;$i++){
		if(strlen($words[$i])>=$no or ispresent($words[$i])){
			$andquery=$andquery." question like '%$words[$i]%'";
			if(ispresent($words[$i]))
			$orquery=$orquery." question like '%$words[$i]%'";
			if($i<$co-1){
				$andquery=$andquery." and ";
				$orquery=$orquery." or ";
			}
		}
	}

	if($andres=mysqli_query($con,$andquery))
	if($orres=mysqli_query($con,$orquery))
	?>
	<div class="container">
		<div class="row">
			<div class="col-md-8 topQ" style="">
			<?php
			if(mysqli_num_rows($orres)==0 and mysqli_num_rows($andres)==0 ){
				?>

				<div class="well" style="margin-top:10px;border:1px solid red;">
					<h3>No result</h3>
				</div>

			<?php
		}
		else{
			?>
				<h4>Result</h4>
	<?php

	while($androw=mysqli_fetch_assoc($andres)){
		?>
	<!--sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss -->		
					<div class="well">
						<div class="col-sm-1 pull-right lk">
							<a><span class="glyphicon glyphicon-thumbs-up"></span></a>
							<a><span class="glyphicon glyphicon-thumbs-down"></span></a>
						</div>
						<a href="fullans.php?id=    <?php echo $androw["que_ID"];?>   "> <p><?php echo $androw['question'];?></p></a>
						<span class="badge">points:<?php echo $androw['point'];?></span>
						<span class="badge">By:<?php echo $androw['userName'];?></span>
						<span class="badge"><?php echo $androw['nameOfField'];?></span>
						</div>

	<!--sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss -->
			<?php
		}
	while($orrow=mysqli_fetch_assoc($orres)){
		while($androw=mysqli_fetch_assoc($andres)){
			if($orrow["que_ID"]!=$androw["que_ID"]){
				?>
	<!--sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss -->		
					<div class="well">
						<div class="col-sm-1 pull-right lk">
							<a><span class="glyphicon glyphicon-thumbs-up"></span></a>
							<a><span class="glyphicon glyphicon-thumbs-down"></span></a>
						</div>
						<a href="fullans.php?id=    <?php echo $orrow["que_ID"];?>   "> <p><?php echo $orrow['question'];?></p></a>
						<span class="badge">points:<?php echo $orrow['point'];?></span>
						<span class="badge">By:<?php echo $orrow['userName'];?></span>
						<span class="badge"><?php echo $orrow['nameOfField'];?></span>
						</div>

	<!--sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss -->
			<?php		
							}		
			}
				
		}
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
				<?php
				$recQuesQuery="select que_ID,question,field,askedBy,use_ID,userName,fie_id from question join user join field where askedBy=use_ID and field=fie_ID  order by que_ID desc";
				$recQRes=mysqli_query($con,$recQuesQuery);
				?>

				<div class="col-md-4 recentQ" style="margin-top:5px ;margin-bottom:5px;background-color: #FFF8DC;border: 1px solid #E0DCBF;">
					<h4>Recent questions</h4>
					
					<?php
					$ques=0;
					while($recQRow=mysqli_fetch_assoc($recQRes) and $ques<5)
					{
					$ques+=1;
					?>					

					<a href="fullques.php?id=<?php echo $recQRow['que_ID'];?>"><p class="well" ><?php echo $recQRow['question'];?>
					<span class="badge">By:<?php echo $recQRow['userName'];?></span></p></a>

					<?php
					}
					?>
				</div>
		</div>
	</div>
<?php
include "footer.php";
?>
</body>
</html>