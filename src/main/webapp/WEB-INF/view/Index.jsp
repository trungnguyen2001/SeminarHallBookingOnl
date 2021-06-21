<%@ include file="../common/header.jspf" %>
	<!-- [ Main Content ] start -->
	<div class="pcoded-main-container">
		<div class="pcoded-wrapper">
			<div class="pcoded-content">
				<div class="pcoded-inner-content">

					<div class="main-body">
						<div class="page-wrapper">
							<!-- [ Main Content ] start -->
							<div class="row">
								<!--[ Recent Bookings Approval ] start-->
								<div class="col-md">
									<div class="card Recent-Users">
										<div class="card-header">
											<h5>Approved Bookings</h5>
										</div>
										<div class="card-block px-0 py-3">
											<div class="table-responsive">
												<table class="table table-hover">
													<tbody>
														<c:forEach var="item" items="${bookings}">
															<tr class="unread">
																<td>
																<img class="rounded-circle" style="width: 40px;"
																	src="assets/images/user/avatar-1.jpg"
																	alt="activity-user">
																</td>
																<td>
																	<h6 class="mb-1">${item.full_name}</h6>
																	<p class="m-0">${item.phone}</p>
																</td>
																<td>
																	<h6 class="text-muted">
																		<i class="fas fa-circle text-c-green f-10 m-r-15"></i>
																		${item.FromDateDisplay()} to ${item.ToDateDisplay()}
																	</h6>
																</td>
																<td><a href="#!"
																	class="label theme-bg2 text-white">Detail</a><a
																	href="#!" class="label theme-bg text-white">Reject</a></td>
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
<%@ include file="../common/footer.jspf" %>


