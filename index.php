<?php
include "pages/includes/header.php";
?>


        <section class="content-header">
          <h1>
            
            Dashboard
            <!-- <small>Control panel</small> -->
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>
        <hr>

        
          <!-- Small boxes (Stat box) -->

          




                 <section class="content">
          <!-- Info boxes -->
          <div class="row">
            <div class="col-md-6 col-sm-8 col-xs-12">
              <a href="addbeneficiary">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-list-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Situation Report Data Entry</span>
                  <span class="info-box-number"><small>Beneficiaries Form</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </a>
            </div><!-- /.col -->
            <div class="col-md-6 col-sm-8 col-xs-12">
              <a href="earlywarningview">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-globe"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Worldview Early Warning Data Input</span>
                  <span class="info-box-number"><small>Early Warning Tool Form</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </a>
            </div><!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-6 col-sm-8 col-xs-12">
              <a href="viewfragilityindex">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-edit"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Worldview Fragility Index</span>
                  <span class="info-box-number"><small>Fragility Index Form</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </a>
            </div><!-- /.col -->
            <div class="col-md-6 col-sm-8 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-contact"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">My Data</span>
                  <span class="info-box-number"><small>Contains your recent activites</small></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section>







<?php
include "pages/includes/footer.php";
?>