<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

	<%@include file="template/aside.jsp"%>

	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<%@include file="template/Header.jsp"%>
		<!-- End Navbar -->

		<div class="container-fluid py-4 ">

			<div class="row">
				<div class="col-12 mt-4">
					<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2"
						class="text-center">
						<div
							class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
							<h6 class="text-white text-capitalize ps-3">Gestion Users</h6>

						</div>
						<div class="col-5 mt-3 row ">

							<a class="btn bg-gradient-secondary text-dark px-3 mb-0 "
								data-toggle="modal" data-target="#AddModal"><i
								class="material-icons text-sm me-2"></i>Add</a>

						</div>

					</div>
					<div class="card-body pt-4 p-3">
						<ul class="list-group" id="muser">

						</ul>
					</div>
				</div>
			</div>

		</div>


		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">nom
										Complet:</label> <input type="text" class="form-control" id="unom">
								</div>
								<label for="recipient-name" class="col-form-label">Username:</label>
								<input type="text" class="form-control" id="uuname">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">email:</label>
								<input type="email" class="form-control" id="uemail" />
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">telephone:</label>
								<input type="text" class="form-control" id="utel" />
							</div>

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn bg-gradient-primary">
							Add</button>
					</div>
				</div>
			</div>
		</div>


		<div class="modal fade" id="AddModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Add User</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<div class="form-group">
									<label for="message-text" class="col-form-label">nom
										Complet:</label> <input type="text" class="form-control" id="Anom">
								</div>
								<label for="recipient-name" class="col-form-label">Username:</label>
								<input type="text" class="form-control" id="Aname">
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">email:</label>
								<input type="email" class="form-control" id="Aemail" />
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">telephone:</label>
								<input type="text" class="form-control" id="Atel" />
							</div>
							<div class="form-group">
								<label for="message-text" class="col-form-label">password
									:</label> <input type="password" class="form-control" id="Apassword" />
							</div>

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn bg-gradient-primary"
							onclick="ajouterU()">submit</button>
					</div>
				</div>
			</div>
		</div>


		<%@include file="template/foot.jsp"%>


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
		let id = -1;
// 		let nomComplet;
// 		let username;
// 		let email;
// 		let telephone;

		$(document).ready(function() {
			alert(" load user ");
			$.ajax({
				url : "UserController",
				type : "POST",
				data : {
					op : "load"
				},
				success : function(data) {
					inject(data)

				}
			});

		});
		
		function dell(x){
// 			alert($(x.target).parent().children().first().html());
			let ids=parseInt($(x.target).parent().children().first().html());
			alert(ids);
			$.ajax({
		  		   url:"UserController",
		  		   type:"POST",
		  		   data:{
		  			   op:"delete",
		  			   id:ids,
		  		   },
		  		   success:function(data){
		  				let lignes=""
		  					data.forEach((rec)=>{
		  						lignes+=`
		  						<li 
		  							class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg box">
		  							<div class="d-flex flex-column level1" >
		  							
		  								<h6 class="mb-3 text-sm nom">`+rec.nomComplet+`</h6>	
		  								<span class="mb-2 text-xs" > user name : <span
		  									class="text-dark font-weight-bold ms-sm-2 username">`+rec.username+`
		  										</span></span> 
		  								<span class="mb-2 text-xs">Email : <span 
		  								class="text-dark ms-sm-2 font-weight-bold email">`+rec.email+`</span></span>
		  								<span class="text-xs"> telephone: <span
		  									class="text-dark ms-sm-2 font-weight-bold telephone">`+rec.telephone+`</span></span>
		  									
		  							</div>
		  							
		  							<div class="ms-auto text-end level2">
		  							
		  							    <span hidden class="myId">`+rec.ids+`</span>
		  						
		  								<a class="btn btn-link text-danger text-gradient px-3 mb-0" onclick="dell(event)"
		  									><i class="material-icons text-sm me-2"></i>Delete</a>
		  								<a class="btn btn-link text-dark px-3 mb-0"  onclick="getInfos(this)" data-toggle="modal" data-target="#exampleModal" ><i
		  									class="material-icons text-sm me-2" >edit</i>Edit</a>
		  									
		  							</div>
		  							</div>
		  						</li>`
		  					})
		  					$("#muser").html(lignes);	
	         	}
		  		   
		  		});	
}
		
		function getInfos(x){
// 		      alert("hi");  	
			  let id = x.parentNode.parentNode.querySelectorAll(".level2")[0].querySelectorAll(".myId")[0].innerText;
			  let  nomComplet = x.parentNode.parentNode.querySelectorAll(".level1")[0].querySelectorAll(".nom")[0].innerText;
			  let  username =  x.parentNode.parentNode.querySelectorAll(".level1")[0].querySelectorAll(".username")[0].innerText;
			  let email =  x.parentNode.parentNode.querySelectorAll(".level1")[0].querySelectorAll(".email")[0].innerText;
			  let telephone =  x.parentNode.parentNode.querySelectorAll(".level1")[0].querySelectorAll(".telephone")[0].innerText;	
			 
 			$("#unom").val(nomComplet);
  			$("#uuname").val(username);
  			$("#uemail").val(email);
  			$("#utel").val(telephone);    
			}
		
		function edit(x){
			alert("ajout");
		}
		
		
		function inject(data){
			let lignes=""
			data.forEach((rec)=>{
				lignes+=`
				<li 
					class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg box">
					<div class="d-flex flex-column level1" >
					
						<h6 class="mb-3 text-sm nom">`+rec.nomComplet+`</h6>	
						<span class="mb-2 text-xs" > user name : <span
							class="text-dark font-weight-bold ms-sm-2 username">`+rec.username+`
								</span></span> 
						<span class="mb-2 text-xs">Email : <span 
						class="text-dark ms-sm-2 font-weight-bold email">`+rec.email+`</span></span>
						<span class="text-xs"> telephone: <span
							class="text-dark ms-sm-2 font-weight-bold telephone">`+rec.telephone+`</span></span>
							
					</div>
					
					<div class="ms-auto text-end level2">
					
					    <span hidden class="myId">`+rec.id+`</span>
				
						<a class="btn btn-link text-danger text-gradient px-3 mb-0" onclick="dell(event)"
							><i class="material-icons text-sm me-2"></i>Delete</a>
						<a class="btn btn-link text-dark px-3 mb-0"  onclick="getInfos(this)" data-toggle="modal" data-target="#exampleModal" ><i
							class="material-icons text-sm me-2" >edit</i>Edit</a>
							
					</div>
					</div>
				</li>`
			})
			$("#muser").html(lignes);		
		}

		function ajouterU(){
			let nomComplet= $("#Anom").val();
			let username= $("#Aname").val();
			let email= $("#Aemail").val();
			let telephone= $("#Atel").val();
			let password=$("#Apassword").val();
			
			if(nomComplet!="" && username!="" && email!="" && telephone!="" && password!=""){
			  			$.ajax({
		  		  		url:"UserController",
		  				   type:"POST",
		  				   data:{
		  					   nomComplet:nomComplet,
		  					   username:username,
		  					   email:email,
		  					   telephone:telephone,
		  					   password:password
		  				   },
		  				   success:function(data){
		  					 console.log(data);		  		   	  		
		  		   			let lignes=""
		  					data.forEach((rec)=>{
		  						lignes+=`
		  						<li 
		  							class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg box">
		  							<div class="d-flex flex-column level1" >
		  							
		  								<h6 class="mb-3 text-sm nom">`+rec.nomComplet+`</h6>	
		  								<span class="mb-2 text-xs" > user name : <span
		  									class="text-dark font-weight-bold ms-sm-2 username">`+rec.username+`
		  										</span></span> 
		  								<span class="mb-2 text-xs">Email : <span 
		  								class="text-dark ms-sm-2 font-weight-bold email">`+rec.email+`</span></span>
		  								<span class="text-xs"> telephone: <span
		  									class="text-dark ms-sm-2 font-weight-bold telephone">`+rec.telephone+`</span></span>
		  									
		  							</div>
		  							
		  							<div class="ms-auto text-end level2">
		  							
		  							    <span hidden class="myId">`+rec.id+`</span>
		  						
		  								<a class="btn btn-link text-danger text-gradient px-3 mb-0" onclick="dell(event)"
		  									><i class="material-icons text-sm me-2"></i>Delete</a>
		  								<a class="btn btn-link text-dark px-3 mb-0"  onclick="getInfos(this)" data-toggle="modal" data-target="#exampleModal" ><i
		  									class="material-icons text-sm me-2" >edit</i>Edit</a>
		  									
		  							</div>
		  							</div>
		  						</li>`
		  					})
		  					$("#muser").html(lignes);		
		  		           } 
		  		   		 
		  		   		});
}
		}
		
	
	</script>


</body>

</html>