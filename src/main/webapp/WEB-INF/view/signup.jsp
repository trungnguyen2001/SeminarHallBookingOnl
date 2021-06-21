<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Datta Able - Log in </title>
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template"/>
    <meta name="author" content="CodedThemes"/>

    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
    <div class="auth-wrapper">
        <div class="auth-content">
            <div class="auth-bg">
                <span class="r"></span>
                <span class="r s"></span>
                <span class="r s"></span>
                <span class="r"></span>
            </div>
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-4">
                        <i class="feather icon-user-plus auth-icon"></i>
                    </div>
                    <h3 class="mb-4">Sign up</h3>
                    <form action="/create" method="post">
	                    <div class="input-group mb-3">
	                        <input type="text" class="form-control" placeholder="Full Name" name="Name">
	                    </div>
	                    <div class="input-group mb-3">
	                        <input type="email" class="form-control" placeholder="Email" name="Email">
	                    </div>
	                    <div class="input-group mb-3">
	                        <input type="text" class="form-control" placeholder="Phone" name = "Phone" >
	                    </div>
	                    <div class="input-group mb-3">
	                        <input type="text" class="form-control" placeholder="Username" name="Username">
	                    </div>
	                    <div class="input-group mb-4">
	                        <input type="password" class="form-control" placeholder="Password" name ="Password">
	                    </div>
	                    <div class="input-group mb-4">
	                        <input type="password" class="form-control" placeholder="Re-Password" name ="">
	                    </div>
	                    <div class="input-group mb-4">
	                        <select class="form-control" name="Role" id="">
	                        	<option value="0">Choose Role</option>
	                        	<option value="Admin">Admin</option>
	                        	<option value="Member">Member</option>
	                        </select>
	                    </div>
	                    <button class="btn btn-primary shadow-2 mb-4">Sign up</button>
                    </form>
                    <p class="mb-0 text-muted">Allready have an account? <a href="/Login"> Log in</a></p>
                </div>
            </div>
        </div>
    </div>


    <!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

</body>
</html>
	