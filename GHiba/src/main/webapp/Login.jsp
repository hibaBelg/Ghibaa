<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />

<!-- <script type="text/javascript"> -->
<!-- // 	function preventBack() { -->
<!-- // 		window.history.forward(); -->
<!-- // 	} -->
<!-- // 	setTimeout("preventBack()", 0); -->
<!-- // 	window.onunload = function() { -->
<!-- // 		null -->
<!-- // 	}; -->
<!-- </script> -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>GMACHINE BY HIBA</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.0"
	rel="stylesheet" />
</head>

<body class="bg-gradient-dark">
	<%
	String use = (String) session.getAttribute("user");
	String uuse=(String) session.getAttribute("Error");
	if (use != null) {
	%>
	<jsp:forward page="index.jsp" />
	<%
	}
	%>

	<main class="main-content  mt-0">

		<div class="container my-auto pt-6">
			<div class="row">
				<div class="col-lg-4 col-md-8 col-12 mx-auto">
					<div class="card z-index-0 fadeIn3 fadeInBottom">
						<div
							class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
							<div
								class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
								<h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Sign
									in</h4>
								<div class="row mt-3">
									<div class="col-2 text-center ms-auto">
										<a class="btn btn-link px-3" href="https://www.facebook.com/">
											<i class="fa fa-facebook text-white text-lg"></i>
										</a>
									</div>
									<div class="col-2 text-center px-1">
										<a class="btn btn-link px-3" href="https://github.com/"> <i
											class="fa fa-github text-white text-lg"></i>
										</a>
									</div>
									<div class="col-2 text-center me-auto">
										<a class="btn btn-link px-3"
											href="https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser">
											<i class="fa fa-google text-white text-lg"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
							<form role="form" class="text-start" action="auth.jsp" method="post">
								<div class="input-group input-group-outline my-3">
									<label class="form-label">Email</label> <input  type="email"
										name="email" class="form-control" required>
								</div>
								<div class="input-group input-group-outline mb-3">
									<label class="form-label">Password</label> <input name="password" 
										type="password" class="form-control"  required>
										
								</div>
								<p ><% out.println(uuse); %></p>
								<div
									class="form-check form-switch d-flex align-items-center mb-3">
									<input class="form-check-input" type="checkbox" id="rememberMe" >
									<label class="form-check-label mb-0 ms-2" for="rememberMe">Remember
										me</label>

								</div>
								<div class="_6ltj text-center text-sm">
									<a href="#">Mot de passe oublié&nbsp;?</a>
								</div>
								
								<div class="text-center">
									<button type="submit"
										class="btn bg-gradient-primary w-100 my-4 mb-2"
										>Sign in</button>
								</div>

<!-- 								<p class="mt-4 text-sm text-center"> -->
<!-- 									Don't have an account? <a href="#" -->
<!-- 										class="text-primary text-gradient font-weight-bold">Sign -->
<!-- 										up</a> -->
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


	</main>


	<!--   Core JS Files   -->
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>





	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/material-dashboard.min.js?v=3.0.0"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	<script>
		$(document).ready(function() {
			alert("load login");
			$.ajax({
				url : "UserController",
				type : "POST",
				data : {
					op : "load"
				},
				success : function(data) {
					

				}
			});

		});

		
	</script>
	
</body>

</html>