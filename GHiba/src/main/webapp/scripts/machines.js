$(document).ready(function () {
	var id;
    $.ajax({
        url : "../MachineController",
        data:{op:"load"},
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
            remplir(data[0]);
            remplirTable(data[1]);
            
            console.log(data[0])
            console.log(data[1])
            }
       
    });
  
    $("#add").click(function () {
        var reference = $("#reference").val();
        var dateAchat = $("#date").val();
        var prix = $("#prix").val();
        var marque= $('#marque').val();
        var salle =$("#salle ").val();
        if(id==null) {
        	$.ajax({
        		
        		 url: "MachineController",
                 data: {reference: reference, dateAchat: dateAchat, prix: prix,marque:marque,salle:salle},
                 type: 'POST',
                 success: function (data, textStatus, jqXHR) {
                	 if(data[0]) alert("Cette Reference existe deja")
                	 else {
                      remplirTable(data[1]);
                     $("#reference").val('');
                     $("#date").val('');
                     $("#prix").val('');
                     $("#marque").val('');
                    } 
                 },
                 error: function (jqXHR, textStatus, errorThrown) {
                	 
                    
                     
                 }
             });
        }
           
       else {
    	   $.ajax({
               url: "MachineController",
               data: {id: id, reference: reference, dateAchat: dateAchat, prix: prix,marque:marque,salle:salle},
               type: 'POST',
               success: function (data, textStatus, jqXHR) {
            	   
                   remplirTable(data);
                   $("#reference").val('');
                   $("#date").val('');
                   $("#prix").val('');
                   $("#marque").val('');
                   $("#add").text("Ajouter");
               },
               error: function (jqXHR, textStatus, errorThrown) {
                   console.log(textStatus);
               }
           });
       }
     
    });
        
    $("#content ").on("click", ".delete",function () {
    	var idS=$(this).closest("tr").find(' td:eq(0)').text();
       $.ajax({
            url: "MachineController",
            data: {op: "delete", id:idS},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                remplirTable(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
               
            }
        });

    });
    
    $("#content ").on("click", ".update",function () {
    	 id=$(this).closest("tr").find(' td:eq(0)').text();
    	var ref=$(this).closest("tr").find(' td:eq(1)').text();
    	var date=$(this).closest("tr").find(' td:eq(2)').text();
    	var prix=$(this).closest("tr").find(' td:eq(3)').text();
    	var marque=$(this).closest("tr").find(' td:eq(4)').text();
    	$("#reference").val(ref);
        $("#date").val(formatDate(date));
        $("#prix").val(prix);
        $("#marque").val(marque);
        $("#add").text("Modifier");
    });
   
    function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2) 
            month = '0' + month;
        if (day.length < 2) 
            day = '0' + day;

        return [year, month, day].join('-');
    }
     
   
 
     function remplir(data) {
    	 
    	 var ligne = "";
    	 for (var i = 0; i < data.length; i++) {
           ligne += "<option value= '"+data[i].id +"'>" + data[i].code +"</option>";
       }
    $("#salle").html(ligne);
    }
    
    
function remplirTable(data) {
    	 var ligne = "";
    	 for (var i = 0; i < data.length; i++) {
           ligne += "<tr>"
        		   +"<td class='id py-3'>" + data[i].id +"</td>"
        		   +"<td class='py-3'>" + data[i].reference +"</td>"
        		   +"<td class='py-3'>" + data[i].dateAchat +"</td>"
        		   +"<td class='py-3'>" + data[i].prix +"</td>"
        		   +"<td class='py-3'>" + data[i].marque +"</td>"
        		   +"<td class='py-3'>" + data[i].salle.code +"</td>"
        		   + '<td class="py-3">'
                   +'<div class="position-relative">'
                   +'<button  class="update link-dark d-inline-block border-0 bg-transparent" >'
                   +'<i class="gd-pencil icon-text"></i>'
                   +'</button>'
                   +'<button  class="delete link-dark d-inline-block border-0 bg-transparent">'
                   +'<i class="gd-trash icon-text"></i>'
                   +'</button>'
                   +'</div> </td>'
    	           +"</tr>";
       }
    $("#content").html(ligne);
    }

$("div #search").click( function () {
	
    var value = $("#searchtxt").val().toLowerCase();
    
    $("table tr").filter(function () {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
});


});