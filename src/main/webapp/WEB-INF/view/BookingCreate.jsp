<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.web.bind.annotation.RequestParam"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Datta Able</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description"
	content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
<meta name="keywords"
	content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template" />
<meta name="author" content="CodedThemes" />

<!-- Favicon icon -->
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<!-- fontawesome icon -->
<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
<!-- animation css -->
<link rel="stylesheet"
	href="assets/plugins/animation/css/animate.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ navigation menu ] start -->
	<nav class="pcoded-navbar">
		<div class="navbar-wrapper">
			<div class="navbar-brand header-logo">
				<a href="/HomePage" class="b-brand">
					<div class="b-bg">
						<i class="feather icon-trending-up"></i>
					</div> <span class="b-title"> Seminar Hall</span>
				</a> <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
			</div>
			<div class="navbar-content scroll-div">
				<ul class="nav pcoded-inner-navbar">
					<li
						data-username="dashboard Default Ecommerce CRM Analytics Crypto Project"
						class="nav-item active"><a href="/UserHome?id=${acc.id}" class="nav-link "><span
							class="pcoded-micon"><i class="feather icon-home"></i></span><span
							class="pcoded-mtext">Dashboard</span></a></li>
					<li
						data-username="dashboard Default Ecommerce CRM Analytics Crypto Project"
						class="nav-item active"><a href="/BookingCreate" class="nav-link "><span
							class="pcoded-micon"><i class="feather icon-home"></i></span><span
							class="pcoded-mtext">Booking</span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light">
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
			<a href="/UserHome?id=${acc.id}" class="b-brand">
				<div class="b-bg">
					<i class="feather icon-trending-up"></i>
				</div> <span class="b-title">Datta Able</span>
			</a>
		</div>
		<a class="mobile-menu" id="mobile-header" href="javascript:"> <i
			class="feather icon-more-horizontal"></i>
		</a>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li><a href="javascript:" class="full-screen"
					onclick="javascript:toggleFullScreen()"><i
						class="feather icon-maximize"></i></a></li>
				<li class="nav-item">
					<div class="main-search">
						<div class="input-group">
							<input type="text" id="m-search" class="form-control"
								placeholder="Search . . ."> <a href="javascript:"
								class="input-group-append search-close"> <i
								class="feather icon-x input-group-text"></i>
							</a> <span class="input-group-append search-btn btn btn-primary">
								<i class="feather icon-search input-group-text"></i>
							</span>
						</div>
					</div>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li>
					<div class="dropdown drp-user">
						<a href="javascript:" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon feather icon-settings"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right profile-notification">
							<div class="pro-head">
								<img src="assets/images/user/avatar-1.jpg" class="img-radius"
									alt="User-Profile-Image"> <span>John Doe</span> <a
									href="/Login" class="dud-logout" title="Logout"> <i
									class="feather icon-log-out"></i>
								</a>
							</div>
							<ul class="pro-body">
								<li><a href="javascript:" class="dropdown-item"><i
										class="feather icon-settings"></i> Settings</a></li>
								<li><a href="javascript:" class="dropdown-item"><i
										class="feather icon-user"></i> Profile</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<!-- [ Header ] end -->
	
	
	<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<div class="pcoded-content">
			<div class="pcoded-inner-content">
				<!-- [ breadcrumb ] start -->
				<div class="page-header">
					<div class="page-block">
						<div class="row align-items-center">
							<div class="col-md-12">
								<div class="page-header-title">
									<h5 class="m-b-10">Booking Detail</h5>
								</div>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="/UserHome?id=${acc.id}"><i
											class="feather icon-home"></i></a></li>								
									<li class="breadcrumb-item"><a href="#">Booking</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- [ breadcrumb ] end -->
				<div class="main-body">
					<div class="page-wrapper">
						<!-- [ Main Content ] start -->
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-header">
										<h5>Booking Detail</h5>
									</div>
									<div class="card-body">
										<form action="upload" method="post" enctype="multipart/form-data">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
															<label for="serminal">Serminal Hall</label> 
															<select class="form-control" name="id_serminal_hall">
																	<c:forEach var="item" items="${hall}" varStatus="loop">
																	<option value="${item.id}">${item.name}</option>
																	</c:forEach>
															</select>
														</div>
													<div class="form-group">
														<label for="from_date">Start Date</label> <input type="date"
															class="form-control" placeholder="Enter Start Date" name="from_date">
													</div>
													<div class="form-group">
														<label for="upload">Choose files</label>
														<input type="file" id="upload" name="file" />
													</div>												
												</div>
												<div class="col-md-6">
													<div class="form-group">
															<label for="session">Session</label> 
															<select class="form-control" name="session">
																<option>FullDay</option>
																<option>First HalfDay</option>
																<option>Second HalfDay</option>
															</select>
														</div>
													<div class="form-group">
														<label for="to_date">End Date</label> <input type="date"
															class="form-control" placeholder="Enter End Date" name="to_date">
													</div>													
												</div>
											</div>
											
											<div class="row">
												<div class="col-5"></div>
												<div class="col-6">
												<button type="submit" class="btn btn-primary btn-lg">Book</button>
												</div>
												<div class="col-3"></div>
											</div>										
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- [ Main Content ] end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	

	<!-- Required Js -->
	<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- <script src="assets/js/pcoded.min.js"></script> -->

</body>
</html>