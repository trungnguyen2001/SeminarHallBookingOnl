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
														<tr class="unread">
															<td><img class="rounded-circle" style="width: 40px;"
																src="assets/images/user/avatar-1.jpg"
																alt="activity-user"></td>
															<td>
																<h6 class="mb-1">${infor_bk.full_name}</h6>
																<p class="m-0">${infor_bk.phone}</p>
															</td>
															<td>
																<h6 class="text-muted">
																	<i class="fas fa-circle text-c-green f-10 m-r-15"></i>
																	${infor_bk.from_date} to ${infor_bk.to_date}
																</h6>
															</td>
															<td>													
																<!-- Button to Open the Modal -->
															  <a type="button" class="label theme-bg text-white" data-toggle="modal" data-target="#myModal">
															    Upload Image
															  </a>
															
															  <!-- The Modal -->
															  <div class="modal" id="myModal">
															    <div class="modal-dialog">
															      <div class="modal-content">
															      
															        <!-- Modal Header -->
															        <div class="modal-header">
															          <h4 class="modal-title">Upload Image</h4>
															          <button type="button" class="close" data-dismiss="modal">&times;</button>
															        </div>
															        
															        <!-- Modal body -->
															        
																        <div class="modal-body">
																        	<form action="/upload_image" method="post" enctype="multipart/form-data">
																	          	<div class="form-group">
																				  <input class="form-control form-control-lg" id="upload" type="file" name="file">
																				</div>
																				<div class="form-group">
																					<button type="submit" class="btn btn-primary">Save</button>
																				</div>
																			</form>
																			<div class="form-group">
																				<table class="table">
																				  <thead>
																				    <tr>
																				      <th scope="col" style="width:15%;">#</th>
																				      <th scope="col" style="width:35%;">Path</th>
																				      <th scope="col" style="width:55%;">Image</th>
																				    </tr>
																				  </thead>
																				  <tbody>
																				  <c:forEach var="item" items="${images}">
																					    <tr>
																					      <td style="width:15%;">${item.id}</td>
																					      <td style="width:35%;">${item.path}</td>
																					      <td style="width:50%;"><img src="/main/webapp/upload/${item.path}"></td>
																					    </tr>
																					</c:forEach>
																				  </tbody>
																				</table>
																			</div>
																        </div>
															        
															        
															      </div>
															    </div>
															  </div>
														</tr>
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
