<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Website</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<!-- <link rel="stylesheet" href="webjars/bootstrap/5.0.1/css/bootstrap.css"
	media="all" /> -->
<!-- CSS only -->
<link rel="stylesheet" href="/assets/css/myStyle.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
	<section id="header">
		<div id="carouselExampleInterval" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="header">
					<a href="/Index" class="logo"> SemHall</a>
					<ul>
						<li><a href="/Index">Home</a></li>
						<li><a href="/booking-room">Book Now</a></li>
					</ul>
				</div>
				<div class="carousel-item active" data-bs-interval="3000">
					<div class="bg"></div>
					<img src="/assets/images/Website/slide1.jpg" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1>The Online Seminar Hall and Auditorium Booking</h1>
						<p>Some representative placeholder content for the first
							slide.</p>
						<a href="/booking-room" class="btn btn-outline-primary">Book Now <i
							class="bi bi-arrow-right"></i>
						</a>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<div class="bg"></div>
					<img src="/assets/images/Website/slide2.jpg" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1>The Online Seminar Hall and Auditorium Booking</h1>
						<p>Some representative placeholder content for the first
							slide.</p>
						<a href="/booking-room" class="btn btn-outline-primary">Book Now <i
							class="bi bi-arrow-right"></i>
						</a>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
					<div class="bg"></div>
					<img src="/assets/images/Website/slide3.jpg" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1>The Online Seminar Hall and Auditorium Booking</h1>
						<p>Some representative placeholder content for the first
							slide.</p>
						<a href="/booking-room" class="btn btn-outline-primary">Book Now <i
							class="bi bi-arrow-right"></i>
						</a>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

	</section>

	<!-- Container start -->
	<div class="container" style="padding: 50px 0 50px;">
		<div class="reservation-detail">
			<h3>RESERVATION DETAILS</h3>
			<em style="color: red;">* : cannot be left blank</em>

			<p>
				<strong>Start Date:</strong> <span style="color: red;"> * </span>
			</p>
			<input type="date" class="form-control " /> <br />
			<p>
				<strong>End Date:</strong> <span style="color: red;"> * </span>
			</p>
			<input type="date" class="form-control " /> <br />
		</div>
		<div class="personal-detail">
			<h3>PERSONAL DETAILS</h3>
			<div class="row g-2">
				<div class="col-md">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="floatingInputGrid"
							placeholder="First name"> <label for="floatingInputGrid">First
							name <span style="color: red">*</span>
						</label>
					</div>
				</div>
				<div class="col-md">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="floatingInputGrid"
							placeholder="Last name"> <label for="floatingInputGrid">Last
							name <span style="color: red">*</span>
						</label>
					</div>
				</div>
			</div>
			<div class="row g-2">
				<div class="col-md">
					<div class="input-group mb-3 form-floating col-md">
						<input type="email" class="form-control" id="floatingInputGrid"
							placeholder="name@example.com"> <label
							for="floatingInputGrid">Email <span style="color: red">*</span></label>
						<button class="btn btn-outline-secondary" type="button"
							id="button-addon2">Send Code</button>
					</div>

				</div>
				<div class="col-md">
					<div class="form-floating mb-3">
						<input type="tel" class="form-control" id="floatingInputGrid"
							placeholder="name@example.com"> <label
							for="floatingInputGrid">Phone number <span
							style="color: red">*</span></label>
					</div>
				</div>
			</div>
			<div class="row g-2">
				<div class="col-md">
					<div class="form-floating mb-3">
						<select class="form-select" id="floatingSelectGrid"
							aria-label="Floating label select example">
							<option selected>Open this select menu</option>
							<option value="1">Room A</option>
							<option value="2">Room B</option>
							<option value="3">Room C</option>
						</select> <label for="floatingSelectGrid">Avaiable Room</label>
					</div>
				</div>
				<div class="col-sm">
					<div class="form-floating mb-3">
						<input type="tel" class="form-control" id="floatingInputGrid"
							placeholder="name@example.com"> <label
							for="floatingInputGrid">Code Received on Email <span
							style="color: red">*</span></label>
					</div>
				</div>
			</div>
		</div>
		<button class="btn btn-primary">Submit</button>
	</div>

	<section id="footer">
		<div class="container">
			<ul>
				<li><a href="#"><i class="bi bi-facebook"></i></a> Facebook</li>
				<li><a href="#"><i class="bi bi-linkedin"></i></a> Linked-in</li>
				<li><a href="#"><i class="bi bi-twitter"></i></a> Twitter</li>
				<li><a href="#"><i class="bi bi-instagram"></i></a> Instagram</li>
			</ul>
			<p>
				<em>Copyright © 2021 SemHall . All rights reserved.</em>
			</p>

		</div>
	</section>

</body>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</html>