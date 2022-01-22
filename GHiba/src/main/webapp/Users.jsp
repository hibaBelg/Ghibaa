<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
	
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>Gestion Machine by Hiba</title>
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
		<div class="container-fluid py-4">
			<div class="row">
				<div class="col-12">

					<div class="card my-4">
						<div
							class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
							<div
								class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
								<h6 class="text-white text-capitalize ps-3">Nouvel
									utilisateur</h6>
							</div>
						</div>
						<div class="card-body px-0 pb-2">
							<div class="table-responsive p-0">

								<table class="table align-items-center mb-0">
									<tbody>
										<tr>
											<td><label class="form-label">nom Complet :</label></td>
											<td>

												<div class="input-group input-group-outline">
													<input type="text" id="unom" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)"
														required>

												</div>
											</td>
											<td><label class="form-label">usename :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="text" id="uname" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)"
														required>

												</div>
											</td>
										</tr>
										<tr>
											<td><label class="form-label">email :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="email" id="umail" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)"
														required>

												</div>
											</td>
											<td><label class="form-label">telephone :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="text" id="utel" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)"
														required>
												</div>
											</td>
										</tr>
										<tr>
											<td><label class="form-label text-center" id="la">
													password :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="password" id="upass" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)"
														required>
												</div>
											</td>
											<td><label class="form-label text-center" id="la1">Confirm
													password :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="password" id="upass1" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)">
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="text-center">
									<button type="button" id="addU" onclick="addU()"
										class="btn bg-gradient-primary">Ajouter</button>
									<button type="button" id="mod" onclick="modifier()"
										class="btn bg-gradient-primary">Valider</button>
								</div>
<!-- 								<div class="text-center"> -->
<!-- 									<button type="button" id="on" onclick="changeOn()" -->
<!-- 										class="btn bg-gradient-primary">Activer</button> -->
<!-- 									<button type="button" id="off" onclick="changeOff()" -->
<!-- 										class="btn bg-gradient-primary">Désactiver</button> -->
<!-- 								</div> -->
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
								<h6 class="text-white text-capitalize ps-3">Liste des users</h6>
							</div>
						</div>
						<div class="card-body px-0 pb-2">
						<div class="text-center">
									<button type="button" id="on" onclick="changeOn()"
										class="btn bg-gradient-primary">Activer</button>
									<button type="button" id="off" onclick="changeOff()"
										class="btn bg-gradient-primary">Désactiver</button>
								</div>
							<div class="table-responsive p-0">

								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">ID</th>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">nom
												Complet</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">username
											</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">email
											</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">telephone</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
												Etat</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
										</tr>
									</thead>
									<tbody id="user">



									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="template/foot.jsp"%>

		</div>
		
		

<!-- 		<div class="modal fade" id="userModal" tabindex="-1" role="dialog" -->
<!-- 			aria-labelledby="userModalLabel" aria-hidden="true"> -->
<!-- 			<div class="modal-dialog" role="document"> -->
<!-- 				<div class="modal-content"> -->
<!-- 					<div class="modal-header"> -->
<!-- 						<h5 class="modal-title" id="lgLabel">Vous voulez désactiver -->
<!-- 							ce compte?</h5> -->
<!-- 						<button type="button" class="close" data-dismiss="modal" -->
<!-- 							aria-label="Close"> -->
<!-- 							<span aria-hidden="true">&times;</span> -->
<!-- 						</button> -->
<!-- 					</div> -->
<!-- 					<div class="modal-body"> -->
<!-- 						<form> -->
<!-- 							<span aria-hidden="true">Select "Désactiver" pour -->
<!-- 								désactiver le compte</span> -->
<!-- 						</form> -->
<!-- 					</div> -->
<!-- 					<div class="modal-footer"> -->
<!-- 						<button type="button" class="btn btn-secondary" -->
<!-- 							data-dismiss="modal" onclick="changeOff()" id="off">Désactiver</button> -->
<!-- 						<button type="button" class="btn bg-gradient-primary"  id="on" data-dismiss="modal" -->
<!-- 							onclick="changeOn()">Activer</button> -->
							
							
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

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
	
  function addU(){
	    let nomComplet= $("#unom").val();
		let username= $("#uname").val();
		let email= $("#umail").val();
		let telephone= $("#utel").val();
		let password=$("#upass").val();
		let password1=$("#upass1").val();
		
// 	alert(nomComplet + "  " + username + "  " + email + "  " + telephone + "  " + password + "  " + password1);
	if(nomComplet!="" && username!="" && email!="" && telephone!="" && password!="" && password1!="")
		{
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
                    <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                  </td>
                  <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                </td>
                <td class="align-middle text-center text-sm">
                <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

              </td>
              <td class="align-middle text-center text-sm">
              <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

            </td>
                  <td class="align-middle text-center text-sm">
                    <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                      <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                      Switcher
                    </a>
                  </td>
                </tr>`;
 	  		}
 	  		$("#user").html(ligne);
         }		 
 		});
		}
	else{
		alert("Champs obligatoirs")
		}
	   $("#unom").val("")
	   $("#uname").val("")
	   $("#umail").val("")
	   $("#utel").val("")
	   $("#upass").val("")
	   $("#upass1").val("")
	 
  }
  
  $(document).ready(function() {
	  $.ajax({			
	  		   url:"UserController",
	  		   type:"POST",
	  		   data:{
	  			   op:"load"
	  		   },
	  		   success:function(data){
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
                        <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                      </td>
                      <td class="align-middle text-center text-sm">
                      <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                    </td>
                    <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

                </td>
                      <td class="align-middle text-center text-sm">
                      <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                    <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                    Switcher
                    </a>
                      </td>
                    </tr>`;
	  	  		}
	  	  		$("#user").html(ligne);
		  	  	
	  		   
	          } 
	  		   
	  		});
	});
  
	function recuperer(x){
  		id = parseInt((x.parentNode.parentNode.cells[0].innerText).substring(2));
  		
  		let nom = x.parentNode.parentNode.cells[1].innerText;
  		let name = x.parentNode.parentNode.cells[2].innerText; 
  		let email = x.parentNode.parentNode.cells[3].innerText; 
  		let telephone = x.parentNode.parentNode.cells[4].innerText; 
  		$("#unom").val(nom);
 	   $("#uname").val(name);
 	   $("#umail").val(email);
 	   $("#utel").val(telephone);
  		$("#mod").show();  
  		$("#la1").hide();
  		$("#la").hide();
  		$("#upass").hide();
  		$("#upass1").hide();
  		let etat= parseInt((x.parentNode.parentNode.cells[5].innerText));
 		if(etat==1){
 			$("#off").show(); 			
 			$("#on").hide();	 			
 		}else{
 			$("#on").show();
 			$("#off").hide(); 			
 		}
 		$("#addU").hide();		
			
  	}

	

	function modifier()
	{
		   alert("hi");
		    
		    let nomComplet= $("#unom").val();
			let username= $("#uname").val();
			let email= $("#umail").val();
			let telephone= $("#utel").val();
			let password=$("#upass").val();
			let password1=$("#upass1").val();
			
//	 	alert(nomComplet + "  " + username + "  " + email + "  " + telephone + "  " + password + "  " + password1);
		if(nomComplet!="" && username!="" && email!="" && telephone!="" && password!="" && password1!="")
			{
		  $.ajax({
	 		   url:"UserController",
	 		   type:"POST",
	 		   data:{
	 			       id:id,
	  			  	   nomComplet:nomComplet,
					   username:username,
					   email:email,
					   telephone:telephone,
					   password:password
	 			   
	 		   },
	 		   success:function(data){
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
                        <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                      </td>
                      <td class="align-middle text-center text-sm">
                      <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                    </td>
                    <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

                </td>
                      <td class="align-middle text-center text-sm">
                      <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                      <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                      Switcher
                    </a>
                      </td>
                    </tr>`;
	 	  		}
	 	  		$("#user").html(ligne);
	         }		 
	 		});
			}
		else{
			alert("Champs obligatoirs")
			}
		   $("#unom").val("")
		   $("#uname").val("")
		   $("#umail").val("")
		   $("#utel").val("")
		   $("#upass").val("")
		   $("#upass1").val("")
  		$("#addU").show();
  		$("#mod").hide();
  		$("#la1").show();
  		$("#la").show();
  		$("#upass").show();
  		$("#upass1").show();
	}
	
	
	function deleteU(x){
// 		alert("hi");
  		let ids = parseInt((x.parentNode.parentNode.cells[0].innerText).substring(2));
  		$.ajax({
	  		   url:"UserController",
	  		   type:"POST",
	  		   data:{
	  			   op:"delete",
	  			   id:ids
	  		   },
	  		   success:function(data){
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
                        <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                      </td>
                      <td class="align-middle text-center text-sm">
                      <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                    </td>
                    <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

                </td>
                      <td class="align-middle text-center text-sm">
                      <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                      <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                      Switcher
                    </a>
                      </td>
                    </tr>`;
	  	 	  		}
	  	 	  		$("#user").html(ligne);  	  	
         	}  		   
	  		   
	  		});
  		$("#add").show();
  		$("#mod").hide();
  	}
	
	function changeOn(x){
		$.ajax({
	  		   url:"UserController",
	  		   type:"POST",
	  		   data:{
	  			   op:"activer",
	  			   id:id
	  		   },
	  		success:function(data){
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
                        <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                      </td>
                      <td class="align-middle text-center text-sm">
                      <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                    </td>
                    <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

                </td>
                      <td class="align-middle text-center text-sm">
                      <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                    <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                    Switcher
                    </a>
                      </td>
                    </tr>`;
	 	  		}
	 	  		$("#user").html(ligne);
		  	  	
         	}
	  		});
	}	
	
	function changeOff(x){
		$.ajax({
   	  		   url:"UserController",
   	  		   type:"POST",
   	  		   data:{
   	  			   op:"desactiver",
   	  			   id:id
   	  		   },
   	  		success:function(data){
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
                        <p class="text-xs font-weight-bold mb-0">`+data[i].nomComplet+`</p>
                      </td>
                      <td class="align-middle text-center text-sm">
                        <p class="text-xs font-weight-bold mb-0">`+data[i].username+`</p>

                      </td>
                      <td class="align-middle text-center text-sm">
                      <p class="text-xs font-weight-bold mb-0">`+data[i].email+`</p>

                    </td>
                    <td class="align-middle text-center text-sm">
                    <p class="text-xs font-weight-bold mb-0">`+data[i].telephone+`</p>

                  </td>
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].etat+`</p>

                </td>
                      <td class="align-middle text-center text-sm">
                      <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      modifier
                    </a>
                      <a href="javascript:;" onclick="deleteU(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      supprimer
                    </a>
                    <a href="javascript:;" onclick="rec(this)" class="badge badge-sm bg-gradient-success" data-toggle="modal" data-target="#userModal" data-original-title="Edit user">
                      Switcher
                    </a>
                      </td>
                    </tr>`;
  	 	  		}
  	 	  		$("#user").html(ligne);
            	}
  	  		});
	}
	
	$("#add").show();
	$("#mod").hide();
	$("#on").hide();
	$("#off").hide();

	
	
  </script>


</body>

</html>