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
									<h5 class="m-b-10">Booking Reject</h5>
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
										<h5>Booking Reject</h5>
									</div>
									<div class="card-body">
										<form action="/reasonreject" method="post">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group" style="display:none;" >
														<label for="fullname">id</label> <input type="text"
															class="form-control" 
															value="${getid.id}" name="id">
													</div>
													<div class="form-group">
													<label>Choose Reason...</label>
													<select class="form-select" aria-label="Default select example" name="name_reason">
													  <option value="Reason 1">Reason 1</option>
													  <option value="Reason 2">Reason 2</option>
													  <option value="Reason 3">Reason 3</option>
													</select>
													</div>
													
													<div class="form-group">
														<button type="submit" class="btn btn-info">Apccept</button>
													</div>
												</div>
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