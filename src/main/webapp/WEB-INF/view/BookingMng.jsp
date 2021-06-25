<%@ include file="../common/header.jspf"%>
<!-- [ Main Content ] start -->
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
									<h5 class="m-b-10">Bookings Management</h5>
								</div>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="/HomePage"><i
											class="feather icon-home"></i></a></li>
									<li class="breadcrumb-item"><a href="/BookingManagement">Bookings
											Management</a></li>
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
							<!--[ Recent Bookings Approval ] start-->
							<div class="col-md">
								<div class="card Recent-Users">
									<div class="card-header">
										<h5>Bookings Management</h5>
									</div>
									<div class="card-block px-0 py-3">
										<div class="table-responsive">
											<table class="table table-hover">
												<tbody>
													<c:forEach var="item" items="${bookings}">
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-1.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">${item.full_name}</h6>
																<p class="m-0">${item.phone}</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-green f-10 m-r-15"></i>
																	${item.from_date} to ${item.to_date}
																</h6>
															</td>
															<td><c:if test="${item.status eq false}">
																	<a href="/BookingDetail?id=${item.id}"
																		class="label theme-bg2 text-white">Detail</a>
																	<a href="/BookingDelete?id=${item.id}"
																		class="label theme-bg text-white">Delete</a>
																</c:if> <c:if test="${item.status eq true}">
																	<a href="/BookingDetail?id=${item.id}"
																		class="label theme-bg2 text-white">Detail</a>
																	 <a href="/BookingReject?id=${item.id}"
																					class="label theme-bg text-white">Reject</a>
																					
																</c:if> <c:if test="${empty item.status}">
																	<a href="/BookingApprove?id=${item.id}"
																		class="label theme-bg2 text-white">Approve</a>
																	<a href="/BookingReject?id=${item.id}"
																		class="label theme-bg text-white">Reject</a>
																	<a href="/BookingDetail?id=${item.id}"
																		class="label theme-bg3 text-white">Detail</a>
																</c:if></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<!--[ Recent Bookings ] end-->
						</div>

						<!-- [ Main Content ] end -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ Main Content ] end -->
<%@ include file="../common/footer.jspf"%>

