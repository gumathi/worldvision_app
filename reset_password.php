<?php
include "pages/includes/header.php";
?>
<div class="row">
            <div class="col-md-10 col-md-offset-1">
	 			<div class="box box-warning">
	                <div class="box-header">
	                  <h3 class="box-title">Reset Password</h3>
	                </div><!-- /.box-header -->
	                <!-- form start -->
	                <form role="form" id="resetform">
	                  <div class="box-body">
	                    <div class="form-group">
	                      <label for="exampleInputEmail1">Email address</label>
	                      <input type="email" class="form-control required" id="email" placeholder="Enter email">
	                    </div>
	                    <div class="form-group">
	                      <label for="exampleInputPassword1">Password</label>
	                      <input type="password" class="form-control required" id="password" name="password" placeholder="Password">
	                    </div>

	                    <div class="form-group">
	                      <label for="exampleInputPassword1">Reset Password</label>
	                      <input type="password" class="form-control required" id="cpassword" name="cpassword" placeholder="Password">
	                    </div>
	                    <!-- /.box-body -->

	                  <div class="form-group">
	                    <button type="submit" class="btn btn-warning">Submit</button>
	                  </div>
	                </form>
	              </div><!-- /.box -->
       </div>
 </div>




<?php
include "pages/includes/footer.php";
?>