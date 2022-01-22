<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>Gestion Machines by hiba</title>
<!--     Fonts and icons     -->
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

<body class="g-sidenav-show  bg-gray-200">

	<%@include file="template/aside.jsp"%>

	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<%@include file="template/Header.jsp"%>
		<!-- End Navbar -->
		<div class="container-fluid py-4">

			<div class="row">
				<div class="col-12">
					<div class="card my-4">
						<div
							class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
							<div
								class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
								<h6 class="text-white text-capitalize ps-3">Recherche entre
									deux dates</h6>
							</div>
						</div>

						<div class="card-body px-0 pb-2">
							<div class="table-responsive p-0">

								<table class="table align-items-center mb-0">
									<tbody>
										<tr>
											<td><label class="form-label">Date Achat 1 :</label></td>

											<td>
												<div class="input-group input-group-outline">
													<input required type="date" class="form-control"
														name="mdate" id="mdate">
												</div>
											</td>
											<td><label class="form-label">Date Achat 2 :</label></td>

											<td>
												<div class="input-group input-group-outline">
													<input required type="date" class="form-control"
														name="mdate2" id="mdate2">
												</div>
											</td>

										</tr>

									</tbody>

								</table>


								<div>

									<div class="text-center">
										<button type="button" id="find" onclick="find()"
											class="btn bg-gradient-primary">Rechercher</button>


									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-12">

					<div class="card my-4">
						<div
							class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
							<div
								class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
								<h6 class="text-white text-capitalize ps-3">Liste des
									machines</h6>
							</div>
						</div>
						<div class="card-body px-0 pb-2">
							<div class="table-responsive p-0">

								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Reference
											</th>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">marque
											</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date
												Achat</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Prix</th>

										</tr>
									</thead>
									<tbody id="machine">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="template/foot.jsp"%>

		</div>
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

	<script>
	 $(document).ready(function() {
		  alert(" load  ");		
		  });
	 
	 function find(){
		 let dateAchat1 = $("#mdate").val();
		 let dateAchat2 = $("#mdate2").val();
			if(dateAchat1 !="" && dateAchat2 !=""){
				$.ajax({
			   		   url:"MachineController",
			   		   type:"POST",
			   		   data:{
			   			    op:"fi",
			   				dateAchat1:dateAchat1,
			   				dateAchat2:dateAchat2
			   		   },
			   		   success:function(data){
			   			 console.log(data);
			   			let ligne = "";
			   	  		for(let i = 0; i < data.length; i++){
			   	  		ligne+=`<tr>
			                   <td>
			                   <div class="d-flex px-2 py-1">
			                     <div>
			                       <i class="fas fa-door-open"></i>
			                     </div>
			                     <div class="d-flex flex-column justify-content-center">
			                    <h6 class="mb-0 text-sm"># `+data[i].id+` </h6>
			                     </div>
			                   </div>
			                 </td>
			                 <td>
			                   <p class="text-xs font-weight-bold mb-0">`+data[i].reference+`</p>
			                 </td>
			                 <td class="align-middle text-center text-sm">
			                   <p class="text-xs font-weight-bold mb-0">`+data[i].marque+`</p>

			                 </td>
			                 <td class="align-middle text-center text-sm">
			                 <p class="text-xs font-weight-bold mb-0">`+data[i].dateAchat+`</p>

			               </td>
			               <td class="align-middle text-center text-sm">
			               <p class="text-xs font-weight-bold mb-0">`+data[i].prix+`</p>

			             </td>
			                 
			               </tr>`;
			   	  		}
			   	  		$("#machine").html(ligne);
			           } 
			   		 
			   		});
			}
		 
	 }
		
	</script>



</body>

</html>