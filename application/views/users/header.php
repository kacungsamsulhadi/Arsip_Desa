<?php
$cek    = $user->row();
$nama   = $cek->nama_lengkap;
$email  = $cek->email;

$level  = $cek->level;
if ($level == "s_admin") {
		$level = "Super Admin";
}

$menu 		= strtolower($this->uri->segment(1));
$sub_menu = strtolower($this->uri->segment(2));
$sub_menu3 = strtolower($this->uri->segment(3));
?>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.interface.club/limitless/layout_2/LTR/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Apr 2017 11:59:08 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<base href="<?php echo base_url();?>"/>

	<title><?php echo $judul_web; ?></title>
 <style type="text/css">

  th{
    background-color:#32B7D4;
   
  }
  th, td{
    padding: 5px;
  }
  
  tr:nth-child(odd){
    background-color:#BAE7E7;
  }
  tr:nth-child(even){
    background-color:#ecf9fe; 
  }
  tr:hover{
    background-color:#ffffff;
    cursor: pointer; 
  }
  </style>
	<!-- Global stylesheets -->
	<link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<?php
	if ($sub_menu == "" or $sub_menu == "profile" or $sub_menu == "lap_sk" or $sub_menu == "lap_sm") {?>
	<!-- Theme JS files -->

		<link rel="stylesheet" href="assets/calender/css/style.css">
		<link rel="stylesheet" href="assets/calender/css/pignose.calendar.css">

	<script type="text/javascript" src="assets/js/plugins/visualization/d3/d3.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/daterangepicker.js"></script>

	<script type="text/javascript" src="assets/js/core/app.js"></script>
	<!-- <script type="text/javascript" src="assets/js/pages/dashboard.js"></script> -->
	<script src="assets/calender/js/pignose.calendar.js"></script>
	<!-- /theme JS files -->
	<?php
	} ?>

		<?php
	if ($sub_menu == "pengguna" or $sub_menu == "bagian" or $sub_menu == "ns" or $sub_menu == "sm" or $sub_menu == "sk" or $sub_menu == "memo" or $sub_menu == "data_sm" or $sub_menu == "data_sk") {?>
	<!-- Theme JS files -->
			<?php if ($sub_menu == 'sm' and $sub_menu3 != ''){}elseif ($sub_menu == 'sk' and $sub_menu3 != ''){}else{ ?>
			<script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>

			<script type="text/javascript" src="assets/js/core/app.js"></script>
			<script type="text/javascript" src="assets/js/pages/datatables_basic.js"></script>
			<?php } ?>

	<!-- /theme JS files -->
	<?php
	} ?>


</head>
<body>



	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			<div class="sidebar sidebar-main">
				<div class="sidebar-content">


					<!-- Main navigation -->
					<div class="sidebar-category sidebar-category-visible">
						<div class="category-content no-padding">
							<ul class="navigation navigation-main navigation-accordion">

								<!-- Main -->
								<li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>

								<li class="<?php if ($sub_menu == "sm") { echo 'active';}?>"><a href="users/sm"> Arsip</a></li>

								<li class="<?php if ($sub_menu == "sm") { echo 'active';}?>"><a href="users/profile"> About</a></li>								
							</ul>
						</div>
					</div>
					<!-- /main navigation -->

				</div>
			</div>
			<!-- /main sidebar -->
