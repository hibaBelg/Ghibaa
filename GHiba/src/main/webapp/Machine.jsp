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
		<div class="container-fluid py-4">

			<div class="row">
				<div class="col-12">
					<div class="card my-4">
						<div
							class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
							<div
								class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
								<h6 class="text-white text-capitalize ps-3">Nouvelle
									Machine</h6>
							</div>
						</div>

						<div class="card-body px-0 pb-2">
							<div class="table-responsive p-0">

								<table class="table align-items-center mb-0">
									<tbody>

										<tr>
											<td><label class="form-label">Reference :</label></td>

											<td>
												<div class="input-group input-group-outline">
													<input type="text" id="mreference" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)">
												</div>
											</td>
											<td><label class="form-label">Marque :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<!-- 													<input type="text" id="mmarque" class="form-control" -->
													<!-- 														onfocus="focused(this)" onfocusout="defocused(this)"> -->
													<input type="text" class="form-control form-control-user"
														id="mmarque" placeholder="marque">
												</div>
											</td>
										</tr>
										<tr>
											<td><label class="form-label">Date Achat :</label></td>

											<td>
												<div class="input-group input-group-outline">
													<input required type="date" class="form-control"
														name="mdate" id="mdate">
												</div>
											</td>
											<td><label class="form-label">Prix :</label></td>
											<td>
												<div class="input-group input-group-outline">
													<input type="text" id="mprix" class="form-control"
														onfocus="focused(this)" onfocusout="defocused(this)">
												</div>
											</td>

										</tr>

									</tbody>

								</table>
								<div class="form-group text-center my-auto">
									<div>
										<label for="salle">Choisissez une salle :</label> <select
											class="btn-outline-danger dropdown" name="msalle" id="msalle"></select>

									</div>
								</div>


								<div>

									<div class="text-center">
										<button type="button" id="add" onclick="add()"
											class="btn bg-gradient-primary">Ajouter</button>
										<button type="button" id="mod" onclick="modifier()"
											class="btn bg-gradient-primary">Valider</button>

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
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">salle</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
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
	
  let id = -1;
  function add(){
	let reference = $("#mreference").val();
	let marque = $("#mmarque").val();
	let dateAchat = $("#mdate").val();
	let prix = $("#mprix").val();
	let salle = $("#msalle").val();
	
	alert(reference + "  " + marque + " " + dateAchat + " " + " " + prix + " " + salle );
	  $.ajax({
 		   url:"MachineController",
 		   type:"POST",
 		   data:{
 			   reference : reference,
 			   marque : marque,
 			  dateAchat : dateAchat,
 			   prix : prix ,
 			   salle : salle
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
         
             <td class="align-middle text-center text-sm">
             <p class="text-xs font-weight-bold mb-0">`+data[i].salle.code+`</p>

           </td>
                 <td class="align-middle text-center text-sm">
                   <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                     Edit
                   </a>
                 </td>

                 <td class="align-middle text-center text-sm">
                   <a href="javascript:;" onclick="deleteMachine(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                     Delete
                   </a>
                 </td>
               </tr>`;
 	  		}
 	  		$("#machine").html(ligne);
         } 
 		   
 		});
	  
	    $("#mdate").val("");
		$("#mreference").val("");
		$("#mmarque").val("");
		$("#mprix").val(""); 

  }
  
  
  $(document).ready(function() {
	  alert(" load machine ");	  
		$.ajax({
	  		   url:"MachineController",
	  		   type:"POST",
	  		   data:{
	  			   op:"load"
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
                  
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].salle.code+`</p>

                </td>
                  
                  
                  <td class="align-middle text-center text-sm">
                        <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                          Edit
                        </a>
                      </td>

                      <td class="align-middle text-center text-sm">
                        <a href="javascript:;" onclick="deleteMachine(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                          Delete
                        </a>
                      </td>
                    </tr>`;
	  	  		}
	  	  		$("#machine").html(ligne); 
	          }  
	  });
		 $.ajax({
	 			url:"SalleController",
	 	  		   type:"POST",
	 	  		   data:{
	 	  			   op:"load"
	 	  		   },
	 	  		   success:function(data){
	 	  			let ligne = "";
	 	  	  		for(let i = 0; i < data.length; i++){
// 	 	  	  			ligne+=`<li><a href="#">`+data[i].code+`</a></li>`;
	 	  	  		ligne+=`<option value=` +data[i].id +` selected ><a href="#">`+data[i].code+`</a></option>`;
	 	  	  		}
	 	  	  		$("#msalle").html(ligne);
	 	          } 
	 		});
	  		});

	function recuperer(x){
  		id = parseInt((x.parentNode.parentNode.cells[0].innerText).substring(2));
  		let reference = x.parentNode.parentNode.cells[1].innerText;
  		let marque = x.parentNode.parentNode.cells[2].innerText; 
  		let sdate = x.parentNode.parentNode.cells[3].innerText;
 	    let now = new Date(sdate);
 	    let today = now.getFullYear() + '-' + (now.getMonth() + 1) + '-' + now.getDate();
 	    let prix = x.parentNode.parentNode.cells[4].innerText; 
 	    
        if(now.getDate() < 10)
 	   {
 		    today = now.getFullYear() + '-' + (now.getMonth() + 1) + '-' +'0'+now.getDate();
 	   } 
        if(now.getMonth() < 10)
 	   {
 		    today = now.getFullYear() + '-' +'0'+ (now.getMonth() + 1) + '-' +now.getDate();
 	   } 
 	   if(now.getMonth() < 10 && now.getDate() < 10)
 	   {
 		    today = now.getFullYear() + '-' +'0'+ (now.getMonth() + 1) + '-' +'0'+now.getDate();
 	   }  
 		    

        $("#mdate").val(today);
  		$("#mreference").val(reference);
  		$("#mmarque").val(marque);
  		$("#mprix").val(prix);   		
  		$("#mod").show();
  		$("#add").hide();
  		

  	}
	
	function modifier()
	{
		let reference = $("#mreference").val();
		let marque = $("#mmarque").val();
		let dateAchat = $("#mdate").val();
		let prix = $("#mprix").val();
 		let salle = $("#msalle").val();
		alert(reference +  marque + dateAchat + prix );

  		if(reference!="" && marque!="" && dateAchat!="" && prix!=""  && salle!="")
  		{
  			$.ajax({
  	  		   url:"MachineController",
  	  		   type:"POST",
  	  		   data:{ 
  	  		   id:id,
  	  		   reference: reference,
  			   marque:marque,
  			   dateAchat:dateAchat,
  			   prix:prix ,
  			   salle:salle
  			   
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
              
              <td class="align-middle text-center text-sm">
              <p class="text-xs font-weight-bold mb-0">`+data[i].salle.code+`</p>

            </td>
              
              
              <td class="align-middle text-center text-sm">
                    <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      Edit
                    </a>
                  </td>

                  <td class="align-middle text-center text-sm">
                    <a href="javascript:;" onclick="deleteMachine(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                      Delete
                    </a>
                  </td>
                </tr>`;
  	 	  		}
  	 	  		$("#machine").html(ligne);
  		  	  	
            	}
  	  		   
  	  		   
  	  		});
  		}
  		
  		$("#add").show();
  		$("#mod").hide();
	}
	
	
	function deleteMachine(x){
  		let ids = parseInt((x.parentNode.parentNode.cells[0].innerText).substring(2));

  		$.ajax({
	  		   url:"MachineController",
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
                  
                  <td class="align-middle text-center text-sm">
                  <p class="text-xs font-weight-bold mb-0">`+data[i].salle.code+`</p>

                </td>
                  
                  
                  <td class="align-middle text-center text-sm">
                        <a href="javascript:;" onclick="recuperer(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                          Edit
                        </a>
                      </td>

                      <td class="align-middle text-center text-sm">
                        <a href="javascript:;" onclick="deleteMachine(this)" class="badge badge-sm bg-gradient-success" data-toggle="tooltip" data-original-title="Edit user">
                          Delete
                        </a>
                      </td>
                    </tr>`;
	  	 	  		}
	  	 	  		$("#machine").html(ligne);
		  	  	
	                
         	}
	  		   
	  		   
	  		});
  		$("#add").show();
  		$("#mod").hide();
  	}
	
	$("#add").show();
	$("#mod").hide();

	
	
  </script>


</body>

</html>