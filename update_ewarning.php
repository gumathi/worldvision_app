<?php
include "pages/includes/header.php";
$ewid = $_GET['editwarning'];
?>

<?php

$query = "SELECT * FROM earlywarning AS a INNER JOIN earlywarningcategory AS b on a.catid = b.catid INNER JOIN earlywarningindicator AS c on a.indicatorid= c.indicatorid INNER JOIN possibleanswer AS d on a.possibleanswer_id = d.possibleanswer_id
	WHERE earlywarningId = $ewid";
	$getearlywarning = mysqli_query($connection,$query);
	$counter = 0;

	if (!$getearlywarning) {
			die('query failed'.mysqli_error($connection));
	}

	while ($row = mysqli_fetch_assoc($getearlywarning)) {
			$earlywarningid = $row["earlywarningId"];
			$region = $row["region"];
			$country = $row["country"];
			$period = $row["period"];
			$last_updated = $row["last_updated"];
			$source = $row["source"];
			$confidencelevel = $row["confidencelevel"];
			$catid = $row["catid"];
			$catname = $row["catname"];
			$indicator_name = $row["indicator_name"];
			$indicatorid = $row["indicatorid"];
			$possibleanswerId = $row["possibleanswer_id"];
			$possibleanswer = $row["possibleanswer_name"];
			$narrative = mysqli_real_escape_string($connection,$row["narrative"]);
		}





?>

<?php


if (isset($_POST['submit'])) {
			// $update_earlywarningid = $row["earlywarningId"];
			$update_region = $_POST["region"];
			$update_country = $_POST["country"];
			$update_period = $_POST["add-date"];
			$update_last_updated = $_POST["last-update"];
			$update_source = $_POST["source"];
			$update_confidencelevel = $_POST["confidence"];
			$update_catid = $_POST["selectewc"];
			$update_indicatorid = $_POST["ewindicator"];
			$update_possibleanswerId = $_POST["pa"];
			$update_narrative = mysqli_real_escape_string($connection,$_POST["narrative"]);
			$timestamp = strtotime(substr($update_period,0,2).'/1/'.substr($update_period,3));
			$update_sqldate1 = date('Y-m-d H:i:s',$timestamp);
			$timestamp1 = strtotime(substr($update_last_updated,0,2).'/1/'.substr($update_last_updated,3));
			$update_sqldate2 = date('Y-m-d H:i:s',$timestamp);


			


			$updatequery = "UPDATE earlywarning SET 
			region='{$update_region}',
			country='{$update_country}',
			period='{$update_sqldate1}',
			last_updated='{$update_sqldate2}',
			source='{$update_source}',
			confidencelevel='{$update_confidencelevel}',
			narrative='{$update_narrative}',
			catid={$update_catid},
			indicatorid={$update_indicatorid},
			possibleanswer_id={$update_possibleanswerId}
			WHERE earlywarningId = $earlywarningid";

			// echo $updatequery;
			// die();



			$update_ewarning = mysqli_query($connection,$updatequery);
			if (!$update_ewarning) {
					die('query failed'.mysqli_error($connection));
			}else{
				header("Location:earlywarningview?update=1");
			}

			




}


?>




<div class="row">
            <!-- left column -->
            <div class="col-md-10 col-md-offset-1">

			<div class="box box-warning">
                <div class="box-header">
                </div>
                <div class="box-body">


					<section class="content-header">
				          <h1>
				            Edit Early Warning Form<?php echo "  Number ".$earlywarningid ?><br>
				          </h1>
				          <ol class="breadcrumb">
				            <li><a href="index"><i class="fa fa-dashboard"></i> Home</a></li>
				            <li class="active">Add Early Warning</li>
				          </ol>
			        </section>
			         <hr>

			        <section class="content-button">
			        	<div class="pull-left">
								<a href="earlywarningview" type="button" class="btn btn-warning btn-block btn-flat"><i class="fa fa-eye"></i> View Early Warning List</a>
							</div>
			        </section>
			        <br>
			        <hr>

                	<div class="progress">
						<div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
					</div>


                  	<form class="form-horizontal form" method="post" role="form">
                  		<div class="box-body">
							  <div class="step">
											<div class="form-group">
												    <label for="Region">Region</label>
												    <select class="form-control select2 select2-hidden-accessible" name="region" id="region">
												    	<option selected><?php echo $region?></option>
												    	<?php

														foreach($region as $key => $value) {

														?>

														<option value="<?= $value ?>" title="<?= htmlspecialchars($value) ?>"><?= htmlspecialchars($value) ?></option>
														<?php

														}

													?>
												</select>
											</div>

											<div class="form-group">
												    <label for="Country">Country</label>
												    <select class="form-control select2 select2-hidden-accessible" name="country" id="country">
														<option selected><?php echo $country?></option>
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
											                <input type="text" class="form-control required" id="add-date" name="add-date"  placeholder="Enter beneficiary period" value="<?php echo $period?>">
											                <div class="input-group-addon">
											                    <span class="glyphicon glyphicon-th"></span>
											                </div>
											            </div>
									        </div>

												<div class="form-group">
				                                    <label for="category">Categories</label>
				                                        <select class="form-control form-control-line required" id="selectewc" name="selectewc" onChange="category_earlywarning()">
				                                           <option  value="<?php echo $catid; ?>" selected><?php echo $catname?></option>
				                                             <?php
				                                              $query = "SELECT * FROM earlywarningcategory";
				                                              $ew_result = mysqli_query($connection,$query);
				                                              while($row=mysqli_fetch_assoc($ew_result)){
				                                                $catname=$row['catname'];
				                                                $catid=$row['catid'];?>
				                                                <option value="<?php echo $catid; ?>"><?php echo $catname ?></option>
				                                             <?php } ?>
				                                        </select>
				                                </div>


				                                <div class="form-group">
				                                    <label for="indicator">Indicator</label>
				                                        <select class="form-control form-control-line required" id="ewindicator" name="ewindicator" onChange="indicator_possibleanswer()">
				                                            <option selected value="<?php echo $indicatorid; ?>"><?php echo $indicator_name?></option>
				                                        </select>
				                               </div>


											<div class="form-group">
													<label for="possible_answer">Possible answer</label>
													<select class="form-control form-control-line required" name="pa" id="pa">
														<option value="<?php echo $indicatorid; ?>" selected><?php echo $possibleanswer?></option>
													</select>
											</div>
								</div>



								<div class="step">
												
												<div class="form-group">
													<label for="Source">Source</label>
													<input type="url" class="form-control required" name="source" id="source" placeholder="Information Source" value="<?php echo $source; ?>">
												</div>
												<div class="form-group">
													<label for="confidence">Confidence level</label>
													<select class="form-control select2 select2-hidden-accessible" name="confidence" id="confidence" value="<?php echo $indicatorid; ?>">
													<option selected><?php echo $confidencelevel; ?></option>
													<option value="Low">Low</option>
													<option value="High">High</option>
													<option value="Consistent with general information">Consistent with general information</option>
												</select>
												</div>
												<div class="form-group">
									                <label>Last Updated</label>
												            <div class="input-group date">
												                <input type="text" class="form-control required" id="last-update" name="last-update"  placeholder="Enter Last Update" value="<?php echo $last_updated?>">
												                <div class="input-group-addon">
												                    <span class="glyphicon glyphicon-th"></span>
												                </div>
												            </div>
										        </div>
												<div class="form-group">
													<label for="Narrative">Narrative</label>
						                            <textarea rows="3" name="narrative" id="narrative" class="form-control form-control-line required"><?php echo $narrative; ?></textarea>
												</div>
											</div>


									<div class="step display">
										<div class="col-md-8 col-md-offset-2">
										 <table id="example1" class="table table-bordered table-hover table-striped dataTable">
						                    <tbody>
						                      <tr>
						                      	<td>Region</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="region"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Country</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="country"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Period</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="add-date"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Categories</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="selectewc"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Indicator</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="ewindicator"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Possible answer</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="pa"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Information Source</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="source"></label></td>
						                      </tr>
						                      <tr>
						                      	<td>Confidence Level</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="confidence"></label></td>
						                      </tr>
						                      <!-- <tr>
						                      	<td>Narrative</td>
						                        <td><label class="col-md-10 control-label lbl" data-id="narrative"></label></td>
						                      </tr> -->
						                    </tbody>
						                    <tfoot>
						                    </tfoot>
						                  </table>
						                  </div>
									</div>
								</div>


								<div class="row">
									<div class="col-sm-12">
										<div class="pull-right">
											<button type="button" class="action btn-info btn-flat text-capitalize back btn">Back</button>
											<button type="button" class="action btn-warning btn-flat text-capitalize next btn">Next</button>
											<button type="submit" class="action btn-success btn-flat text-capitalize submit btn" name="submit">Submit</button>
										</div>
									</div>
								</div>

					</div>
				</form>





                 
                </div><!-- /.box-body -->
              </div><!-- /.box -->
          </div>



<?php
include "pages/includes/footer.php";
?>

