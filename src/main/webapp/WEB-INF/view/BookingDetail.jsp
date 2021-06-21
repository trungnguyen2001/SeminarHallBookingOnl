<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../common/header.jspf"%>

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
									<li class="breadcrumb-item"><a href="/HomePage"><i
											class="feather icon-home"></i></a></li>
									<li class="breadcrumb-item"><a href="/BookingManagement">Bookings
											Management</a></li>
									<li class="breadcrumb-item"><a href="#">Booking Detail</a></li>
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
										<form>
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label for="fullname">Full Name</label> <input type="text"
															class="form-control" disabled
															value="${booking.full_name}">
													</div>
													<div class="form-group">
														<label for="email">Email</label> <input type="email"
															class="form-control" disabled value="${booking.email }">
													</div>
													<div class="form-group">
														<label for="text">From Date</label> <input type="text"
															class="form-control" disabled
															value="${booking.FromDateDisplay()}">
													</div>
													<div class="form-group">
														<label for="text">Session</label> <input type="text"
															class="form-control" disabled value="${booking.session}">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="phone">Phone</label> <input type="text"
															class="form-control" disabled value="${booking.phone}"
															disabled>
													</div>
													<div class="form-group">
														<label for="approval">Approval Date</label> <input
															type="text" class="form-control" disabled
															value="${booking.ApprovalDateDisplay() }">
													</div>
													<div class="form-group">
														<label for="text">To Date</label> <input type="text"
															class="form-control" disabled
															value="${booking.ToDateDisplay()}">
													</div>
													<div class="form-group">
														<label for="text">Seminar Hall</label> <input type="text"
															class="form-control" disabled
															value="${serminal_hall.name}">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group">
													<label for="slideshow">Slide Show</label>
												</div>
												<div id="carouselExampleIndicators" class="carousel slide"
													data-ride="carousel">
													<ol class="carousel-indicators">
														<c:forEach begin="0" end="${fn:length(images)}"
															varStatus="loop">
															<c:if test="${loop.last}">
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="${loop.index}" class="active"></li>
															</c:if>
															<c:if test="${!loop.last}">
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="${loop.index}"></li>
															</c:if>
														</c:forEach>
													</ol>
													<div class="carousel-inner">
														<c:forEach var="item" items="${images}" varStatus="loop">
															<c:if test="${loop.last}">
																<div class="carousel-item active">
																	<img class="d-block w-100" src="${item.path}">
																</div>
															</c:if>
															<c:if test="${!loop.last}">
																<div class="carousel-item ">
																	<img class="d-block w-100" src="${item.path}">
																</div>
															</c:if>
														</c:forEach>
													</div>
													<a class="carousel-control-prev"
														href="#carouselExampleIndicators" role="button"
														data-slide="prev"> <span
														class="carousel-control-prev-icon" aria-hidden="true"></span>
														<span class="sr-only">Previous</span>
													</a> <a class="carousel-control-next"
														href="#carouselExampleIndicators" role="button"
														data-slide="next"> <span
														class="carousel-control-next-icon" aria-hidden="true"></span>
														<span class="sr-only">Next</span>
													</a>
												</div>
											</div>
											<br>
											<div class="row">
												<div class="col-3"></div>
												<div class="col-3">
													<c:if test="${booking.status eq false}">
														<a href="/BookingDetail?id=${booking.id}"
															class="btn btn-info btn-lg">Detail</a>
													</c:if>
													<c:if test="${booking.status eq true}">
														<a href="/BookingDetail?id=${booking.id}"
															class="btn btn-info btn-lg">Detail</a>
													</c:if>
													<c:if test="${empty booking.status}">
														<a href="/BookingApprove?id=${booking.id}"
															class="btn btn-success btn-lg">Approve</a>
													</c:if>
												</div>
												<div class="col-3">
													<c:if test="${booking.status eq false}">
														<a href="/BookingDelete?id=${booking.id}"
															class="btn btn-danger btn-lg">Delete</a>
													</c:if>
													<c:if test="${booking.status eq true}">
														<a href="/BookingReject?id=${booking.id}"
															class="btn btn-secondary btn-lg">Reject</a>
													</c:if>
													<c:if test="${empty booking.status}">

														<a href="/BookingReject?id=${booking.id}"
															class="btn btn-secondary btn-lg">Reject</a>
													</c:if>
												</div>
												<div class="col-3"></div>
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
<%@ include file="../common/footer.jspf"%>