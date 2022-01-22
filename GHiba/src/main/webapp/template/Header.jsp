<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="template/ess.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<div class="navbar-nav">
	<nav class="navbar-expand-sm nb" id="nv">
		<ul>
			<li class="nav-item">
				<ul class="navbar-nav w-100">
					<li class="nav-item w-100">
						<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
							<input type="text" class="form-control" id="s"
								placeholder="Search">
						</form>
					</li>
					<li class="nav-item w-100" id="bt" style="margin-left: 400px;">
						<div id="navbar-profile" id="ps">
							<img class="img-xs rounded-circle" id="img-xs"
								src="template/image/faceG.jpg" alt="">
							<p class="mb-0 d-none d-sm-block " id="navbar-profile-name"
								style="color: white;"><% 
								String ui=(String) session.getAttribute("user");
								out.print(ui);
								%></p>
							<i class="mdi mdi-menu-down d-none d-sm-block"></i>
						</div>
					</li>
					<li class="nav-item w-100">

						<div id="h">
							<!-- 							<a href="logt.jsp" data-toggle="modal" data-target="#logoutModal" -->
							<!-- 								id="ta" style="color: #EC407A; font-style: bold;"> <B>logout</B> -->
							<!-- 							</a> -->
							<a class="close pr-3" id="ta" data-toggle="modal" data-target="#lgModal" style="color: #EC407A;">logout
							</a>
						</div>
					</li>
				</ul>
			</li>
		</ul>

	</nav>

</div>

