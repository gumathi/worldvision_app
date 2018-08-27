<?php
ob_start();
include "db.php";
?>

<?php 
  //$currentPage = $_SERVER["REQUEST_URI"];
  $currentPage = basename($_SERVER["SCRIPT_FILENAME"], '.php');
  // echo $currentPage;
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Kenya | World Vision International</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />   
    <!-- DATA TABLES -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/fixedheader/3.1.5/css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css" rel="stylesheet" type="text/css" />
    
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/skins/main.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" /> -->
    <!-- <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->

    <script src="https://cdn.tinymce.com/4/tinymce.min.js"></script>
                    <script>tinymce.init({ selector:'textarea',
                              height: 200,
                              menubar: false,
                              required:true,
                              fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt',
                              plugins: [
                                'advlist autolink lists link image charmap print preview anchor textcolor',
                                'searchreplace visualblocks code fullscreen',
                                'insertdatetime media table contextmenu paste code help wordcount'
                              ],
                              toolbar: 'insert | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | fontsizeselect | removeformat | help',
                              content_css: [
                                '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                                '//www.tinymce.com/css/codepen.min.css'] });

                              
                    </script>
  </head>
  <body class="skin-blue">
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="index" class="logo"><b>World</b>Vision</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
             
              <!-- Notifications: style can be found in dropdown.less -->
              
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">Muganda Imo</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      Muganda Imo
                      <!-- <small>Member since Nov. 2012</small> -->
                    </p>
                  </li>
                  <!-- Menu Body -->
                  
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <!-- <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>Muganda Imo</p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div> -->
          <!-- search form -->
          <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form> -->
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <!-- <li class="header">MAIN NAVIGATION</li> -->
            <li class="treeviewview <?php if($currentPage == 'index') { echo 'active'; } ?>">
              <a href="index.php">
                <i class="fa fa-dashboard"></i> <span>Home</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'viewbeneficiary') { echo 'active'; } ?>">
               <a href="viewbeneficiary">
                <i class="fa fa-files-o"></i> <span>Beneficiaries</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'earlywarningview') { echo 'active'; } ?>">
               <a href="earlywarningview">
                <i class="fa fa-exclamation-circle"></i> <span>Early Warning</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'viewfragilityindex') { echo 'active'; } ?>">
               <a href="viewfragilityindex">
                <i class="fa fa-arrows-alt"></i> <span>Fragility Index</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'viewfunding') { echo 'active'; } ?>">
               <a href="viewfunding">
                <i class="fa fa-ambulance"></i> <span>Funding</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'viewpeople') { echo 'active'; } ?>">
               <a href="viewpeople">
                <i class="fa fa-users"></i> <span>People in Need</span> </i>
              </a>
            </li>
              <li class="treeviewview <?php if($currentPage == 'viewsituation') { echo 'active'; } ?>">
               <a href="viewsituation">
                <i class="fa fa-globe"></i> <span>Situation Report</span> </i>
              </a>
            </li>
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        

        <!-- Main content -->
        <section class="content">