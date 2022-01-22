<%@ page import="java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="service.MachineService"%>
<%@page import="service.SalleService"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>Gmachine BY hiba</title>

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>

<body class="g-sidenav-show  bg-gray-200">
	<%
	String use = (String) session.getAttribute("user");
	if (use == null) {
	%>
	<jsp:forward page="Login.jsp" />
	<%
	} else {
	//out.println(" <h1>You have successfully created the Session of User : " +uid+"</h1>");
	}
	%>

	<%@include file="template/aside.jsp"%>

	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<%@include file="template/Header.jsp"%>
		<br>
		<hr style="color: #800033;">


		<%
		Gson gsonObj = new Gson();
		Map<Object, Object> map = null;
		List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
		String dataPoints = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://uqn5zqzmxasp4odv:pkoeejia7b8vjv93@i0rgccmrx3at3wv3.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/qufrpew79thl5tzy", "uqn5zqzmxasp4odv","pkoeejia7b8vjv93");
			Statement statement = connection.createStatement();
			String xVal, yVal;

			ResultSet resultSet = statement.executeQuery(
			"select count(*) as 'Nbr machine', s.code as 'salle' from salle s,machine m where s.id=m.idsalle group by s.code;");

			while (resultSet.next()) {
				xVal = resultSet.getString("salle");
				yVal = resultSet.getString("Nbr machine");
				map = new HashMap<Object, Object>();
				map.put("label", xVal);
				map.put("y", Double.parseDouble(yVal));
				list.add(map);
				dataPoints = gsonObj.toJson(list);
			}
			connection.close();
		} catch (SQLException e) {
			out.println(
			"<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
			dataPoints = null;
		}
		%>
		<div class="row center">
			<%
			MachineService ms = new MachineService();
			int hi = ms.CountMachine();
			SalleService ss = new SalleService();
			int sa = ss.CountSalle();
			%>

			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-header p-3 pt-2">
						<div
							class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
							<i class="material-icons opacity-10"></i>
						</div>
						<div class="text-end pt-1">
							<p class="text-sm mb-0 text-capitalize">Nombre Machine</p>
							<h4 class="mb-0"><%=hi%></h4>
						</div>
					</div>
					<hr class="dark horizontal my-0">
					<div class="card-footer p-3">
						<p class="mb-0">
							<span class="text-success text-sm font-weight-bolder">+50%
							</span>than lask week
						</p>
					</div>
				</div>
			</div>

			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card">
					<div class="card-header p-3 pt-2">
						<div
							class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
							<i class="material-icons opacity-10">person</i>
						</div>
						<div class="text-end pt-1">
							<p class="text-sm mb-0 text-capitalize">Today's Benefits</p>
							<h4 class="mb-0">2,3000</h4>
						</div>
					</div>
					<hr class="dark horizontal my-0">
					<div class="card-footer p-3">
						<p class="mb-0">
							<span class="text-success text-sm font-weight-bolder">+10%
							</span>than lask month
						</p>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6">
				<div class="card">
					<div class="card-header p-3 pt-2">
						<div
							class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
							<i class="material-icons opacity-10">weekend</i>
						</div>
						<div class="text-end pt-1">
							<p class="text-sm mb-0 text-capitalize">Nombre de salles</p>
							<h4 class="mb-0"><%=sa%></h4>
						</div>
					</div>
					<hr class="dark horizontal my-0">
					<div class="card-footer p-3">
						<p class="mb-0">
							<span class="text-success text-sm font-weight-bolder">
								Different </span> Types
						</p>
					</div>
				</div>
			</div>
		</div>
		<br>
		<hr style="color: red; style: solid;">
		<div id="chartContainer" style="height: 370px; width: 100%;"></div>

		<script type="text/javascript">
			window.onload = function() {
		<%if (dataPoints != null) {%>
			var chart = new CanvasJS.Chart("chartContainer", {
					animationEnabled : true,
					exportEnabled : true,
					title : {
						text : "nbr machine "
					},
					data : [ {
						type : "column", //change type to bar, line, area, pie, etc
						dataPoints :
		<%out.print(dataPoints);%>
			} ]
				});
				chart.render();
		<%}%>
			}
		</script>
		<%@include file="template/foot.jsp"%>
		<%@include file="template/LG.jsp"%>


	</main>

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
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>

</html>
