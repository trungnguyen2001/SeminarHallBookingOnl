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
		<div class="our-seminar">
			<h1>Our Seminar hall</h1>
		</div>
		<div class="card ">
			<div class="card-header card-title ">
				<h2>Room A</h2>
			</div>
			<div class="card-body ">
				<div class="img-card text-center">
					<img src="/assets/images/Website/slide2.jpg" class="img-fluid"
						alt="...">
				</div>

				<div class="card-des" style="padding: 20px 0 20px;">
					<h3>Description</h3>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
				<div class="amenities" style="padding: 20px 0 20px;">
					<h3>AMENITIES</h3>
					<ul>
						<li><i class="bi bi-shield-fill-check"></i> Good Security</li>
						<li><i class="bi bi-camera-reels-fill"></i> Filming</li>
						<li><i class="bi bi-wifi"></i> Wifi </li>
						<li><i class="bi bi-person-fill"></i> Number of person : 300</li>
					</ul>
				</div>


				<br /> <a href="/booking-room" class="btn btn-primary">Book Now</a>
			</div>

		</div>
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