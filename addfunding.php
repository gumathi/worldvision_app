<?php
include "pages/includes/header.php";
?>

<?php
$region3 = array('Eastern Africa');
?>

<?php
if (isset($_POST['submit'])) {
	$region=$_POST['region'];
	$country=$_POST['country'];
	$period=$_POST['add-date'];
	$category=$_POST['category'];
	$funding_required=$_POST['funding_required'];
	$funding_received=$_POST['funding_received'];
	$funding_gap=$_POST['funding_gap'];
	$timestamp = strtotime(substr($period,0,2).'/1/'.substr($period,3));
	$sqldate = date('Y-m-d H:i:s',$timestamp);

	$query = "INSERT INTO funding(
			  region,
			  country,
			  period,
			  category,
			  funding_required,
			  funding_received,
			  funding_gap)
			  VALUES(
			  	'{$region}',
				'{$country}',
				'{$sqldate}',
				'{$category}',
				{$funding_required},
				{$funding_received},
				{$funding_gap})";
	$funding_result = mysqli_query($connection,$query);
	if(!$funding_result){
		die("query failed".mysqli_error($connection));
	}else{
		header("Location:viewfunding?success=1");
	}
}
?>

<div class="row">
            <!-- left column -->
        <div class="col-md-10 col-md-offset-1">

			<div class="box box-warning">
                <div class="box-body">
					<section class="content-header">
				          <h1>
				            Add Funding Form<br>
				          </h1>
				          <ol class="breadcrumb">
				            <li><a href="index"><i class="fa fa-dashboard"></i> Home</a></li>
				            <li><a href="active">Add funding</a></li>
				          </ol>
			        </section>
			         <hr>

			        <section class="content-button">
			        	<div class="pull-left">
								<a href="viewfunding" type="button" class="btn btn-warning btn-block btn-flat"><i class="fa fa-eye"></i> View all Fundings</a>
							</div>
			        </section>
			        <br>
			        <hr>


					<form class="form-horizontal form" method="post" role="form">
                  		<div class="box-body">

                  							<div class="form-group">
												    <label for="Region">Region</label>
												    <select class="form-control select2 select2-hidden-accessible" name="region" id="region">
												    	<option value="volvo" disabled selected>Choose region</option>
												    	<?php

														foreach($region3 as $key => $value) {

														?>

														<option value="<?= $value ?>" title="<?= htmlspecialchars($value) ?>"><?= htmlspecialchars($value) ?></option>
														<?php

														}

													?>
												</select>
											</div>

											<div class="form-group">
												    <label for="Country">Country</label>
												    <select class="form-control select2 select2-hidden-accessible required" name="country" id="country">
														<option value="" disabled selected>Select Country</option>
														<option value="Kenya">Kenya</option>
														<option value="Uganda">Uganda</option>
														<option value="Tanzania">Tanzania</option>
														<option value="Rwanda">Rwanda</option>
														<option value="Burundi">Burundi</option>
													</select>
											</div>

											<div class="form-group">
								                <label>Period</label>
											            <div class="input-group date">
											                <input type="text" class="form-control required" id="add-date" name="add-date"  placeholder="Enter funding period">
											                <div class="input-group-addon">
											                    <span class="glyphicon glyphicon-th"></span>
											                </div>
											            </div>
									        </div>

											<div class="form-group">
												    <label for="Country">Category</label>
												    <select class="form-control select3 select3-hidden-accessible required" name="category" id="category">
														<option value="" disabled selected>Select Category</option>
														<option value="Food security and livelihoods">Food security & livelihoods</option>
														<option value="Wash">Wash</option>
														<option value="Nutrition">Nutrition</option>
														<option value="Health">Health</option>
														<option value="Education">Education</option>
														<option value="Protection">Protection</option>
														<option value="Shelter and non-food items">Shelter and non food items</option>
													</select>
											</div>


											<div class="form-group">
												    <label for="Country">Funding Required</label>
												    <input type="number" class="form-control required" id="funding_required" name="funding_required" placeholder="Funding Required">
											</div>


											<div class="form-group">
												    <label for="Country">Funding Received</label>
												    <input type="number" class="form-control required" id="funding_received" name="funding_received" placeholder="Funding Received">
											</div>

											<div class="form-group">
												    <label for="Country">Funding Gap</label>
												    <input type="number" class="form-control required" id="funding_gap" name="funding_gap" placeholder="Funding Gap">
											</div>
											<div class="form-group">
												<div class="pull-right">
													<button type="submit" class="btn btn-warning btn-block btn-flat" name="submit">Submit Funding</button>
												</div>
											</div>


                  		</div>
                  	</form>

				</div>
			</div>
		</div>
</div>




<?php
include "pages/includes/footer.php";
?>