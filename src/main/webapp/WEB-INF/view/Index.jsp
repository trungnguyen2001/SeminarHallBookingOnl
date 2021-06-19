<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						class="nav-item active"><a href="/HomePage" class="nav-link "><span
							class="pcoded-micon"><i class="feather icon-home"></i></span><span
							class="pcoded-mtext">Dashboard</span></a></li>
					<li
						data-username="dashboard Default Ecommerce CRM Analytics Crypto Project"
						class="nav-item active"><a href="/Login" class="nav-link "><span
							class="pcoded-micon"><i class="feather icon-home"></i></span><span
							class="pcoded-mtext">Booking Management</span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->

	<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light">
		<div class="m-header">
			<a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
			<a href="/HomePage" class="b-brand">
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
				<li class="nav-item dropdown"><a class="dropdown-toggle"
					href="javascript:" data-toggle="dropdown">Dropdown</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="javascript:">Action</a></li>
						<li><a class="dropdown-item" href="javascript:">Another
								action</a></li>
						<li><a class="dropdown-item" href="javascript:">Something
								else here</a></li>
					</ul></li>
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
					<div class="dropdown">
						<a class="dropdown-toggle" href="javascript:"
							data-toggle="dropdown"><i class="icon feather icon-bell"></i></a>
						<div class="dropdown-menu dropdown-menu-right notification">
							<div class="noti-head">
								<h6 class="d-inline-block m-b-0">Notifications</h6>
								<div class="float-right">
									<a href="javascript:" class="m-r-10">mark as read</a> <a
										href="javascript:">clear all</a>
								</div>
							</div>
							<ul class="noti-body">
								<li class="n-title">
									<p class="m-b-0">NEW</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-1.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p>
												<strong>John Doe</strong><span class="n-time text-muted"><i
													class="icon feather icon-clock m-r-10"></i>30 min</span>
											</p>
											<p>New ticket Added</p>
										</div>
									</div>
								</li>
								<li class="n-title">
									<p class="m-b-0">EARLIER</p>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-2.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p>
												<strong>Joseph William</strong><span
													class="n-time text-muted"><i
													class="icon feather icon-clock m-r-10"></i>30 min</span>
											</p>
											<p>Prchace New Theme and make payment</p>
										</div>
									</div>
								</li>
								<li class="notification">
									<div class="media">
										<img class="img-radius" src="assets/images/user/avatar-3.jpg"
											alt="Generic placeholder image">
										<div class="media-body">
											<p>
												<strong>Sara Soudein</strong><span class="n-time text-muted"><i
													class="icon feather icon-clock m-r-10"></i>30 min</span>
											</p>
											<p>currently login</p>
										</div>
									</div>
								</li>
							</ul>
							<div class="noti-footer">
								<a href="javascript:">show all</a>
							</div>
						</div>
					</div>
				</li>
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
								<li><a href="message.html" class="dropdown-item"><i
										class="feather icon-mail"></i> My Messages</a></li>
								<li><a href="auth-signin.html" class="dropdown-item"><i
										class="feather icon-lock"></i> Lock Screen</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<!-- [ Header ] end -->

	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">
		<div class="pcoded-wrapper">
			<div class="pcoded-content">
				<div class="pcoded-inner-content">
					<!-- [ breadcrumb ] start -->

					<!-- [ breadcrumb ] end -->
					<div class="main-body">
						<div class="page-wrapper">
							<!-- [ Main Content ] start -->
							<div class="row">
								<!--[ daily sales section ] start-->
								<div class="col-md-6 col-xl-4">
									<div class="card daily-sales">
										<div class="card-block">
											<h6 class="mb-4">Users</h6>
											<div class="row d-flex align-items-center">
												<div class="col-9">
													<h3 class="f-w-300 d-flex align-items-center m-b-0">
														<i class="feather icon-arrow-up text-c-green f-30 m-r-10"></i>
														99

													</h3>
												</div>

												<div class="col-3 text-right">
													<p class="m-b-0">67%</p>
												</div>
											</div>
											<div class="progress m-t-30" style="height: 7px;">
												<div class="progress-bar progress-c-theme"
													role="progressbar" style="width: 50%;" aria-valuenow="50"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
								<!--[ daily sales section ] start-->
								<div class="col-md-6 col-xl-4">
									<div class="card daily-sales">
										<div class="card-block">
											<h6 class="mb-4">Users</h6>
											<div class="row d-flex align-items-center">
												<div class="col-9">
													<h3 class="f-w-300 d-flex align-items-center m-b-0">
														<i class="feather icon-arrow-up text-c-green f-30 m-r-10"></i>
														99

													</h3>
												</div>

												<div class="col-3 text-right">
													<p class="m-b-0">67%</p>
												</div>
											</div>
											<div class="progress m-t-30" style="height: 7px;">
												<div class="progress-bar progress-c-theme"
													role="progressbar" style="width: 50%;" aria-valuenow="50"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
								<!--[ daily sales section ] start-->
								<div class="col-md-6 col-xl-4">
									<div class="card daily-sales">
										<div class="card-block">
											<h6 class="mb-4">Users</h6>
											<div class="row d-flex align-items-center">
												<div class="col-9">
													<h3 class="f-w-300 d-flex align-items-center m-b-0">
														<i class="feather icon-arrow-up text-c-green f-30 m-r-10"></i>
														99

													</h3>
												</div>

												<div class="col-3 text-right">
													<p class="m-b-0">67%</p>
												</div>
											</div>
											<div class="progress m-t-30" style="height: 7px;">
												<div class="progress-bar progress-c-theme"
													role="progressbar" style="width: 50%;" aria-valuenow="50"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
								<!--[ Recent Users ] start-->
								<div class="col-xl-8 col-md-8">
									<div class="card Recent-Users">
										<div class="card-header">
											<h5>Recent Users</h5>
										</div>
										<div class="card-block px-0 py-3">
											<div class="table-responsive">
												<table class="table table-hover">
													<tbody>
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-1.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">Isabella Christensen</h6>
																<p class="m-0">Lorem Ipsum is simply…</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-green f-10 m-r-15"></i>11
																	MAY 12:56
																</h6>
															</td>
															<td><a href="#!"
																class="label theme-bg2 text-white f-12">Reject</a><a
																href="#!" class="label theme-bg text-white f-12">Approve</a></td>
														</tr>
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-2.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">Mathilde Andersen</h6>
																<p class="m-0">Lorem Ipsum is simply text of…</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-red f-10 m-r-15"></i>11
																	MAY 10:35
																</h6>
															</td>
															<td><a href="#!"
																class="label theme-bg2 text-white f-12">Reject</a><a
																href="#!" class="label theme-bg text-white f-12">Approve</a></td>
														</tr>
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-3.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">Karla Sorensen</h6>
																<p class="m-0">Lorem Ipsum is simply…</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-green f-10 m-r-15"></i>9
																	MAY 17:38
																</h6>
															</td>
															<td><a href="#!"
																class="label theme-bg2 text-white f-12">Reject</a><a
																href="#!" class="label theme-bg text-white f-12">Approve</a></td>
														</tr>
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-1.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">Ida Jorgensen</h6>
																<p class="m-0">Lorem Ipsum is simply text of…</p>
															</td>
															<td>
																<h6 class="text-muted f-w-300">
																	<i class="fas fa-circle text-c-red f-10 m-r-15"></i>19
																	MAY 12:56
																</h6>
															</td>
															<td><a href="#!"
																class="label theme-bg2 text-white f-12">Reject</a><a
																href="#!" class="label theme-bg text-white f-12">Approve</a></td>
														</tr>
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-2.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">Albert Andersen</h6>
																<p class="m-0">Lorem Ipsum is simply dummy…</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-green f-10 m-r-15"></i>21
																	July 12:56
																</h6>
															</td>
															<td><a href="#!"
																class="label theme-bg2 text-white f-12">Reject</a><a
																href="#!" class="label theme-bg text-white f-12">Approve</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!--[ Recent Users ] end-->
							</div>



							<!-- [ Main Content ] end -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [ Main Content ] end -->


	<!-- Required Js -->
	<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/pcoded.min.js"></script>

</body>
</html>
