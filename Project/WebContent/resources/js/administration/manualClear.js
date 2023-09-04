let architectureDropdown2;
let objectButton;
let modelButton;
let dashboardButton;
let deleteArchitecture;
let selectedValue2;
let selectedText2;
function architectureSelected2(){
  architectureDropdown2 = document.getElementById("clearArchitectureDropdown");
  objectButton = document.getElementById("objectButton");
  modelButton = document.getElementById("modelButton");
  dashboardButton = document.getElementById("dashboardButton");
  deleteArchitecture = document.getElementById("deleteArchitecture");
  
  selectedValue2 = architectureDropdown2.value.trim();
  selectedText2 = architectureDropdown2.options[architectureDropdown2.selectedIndex].text;

  if(selectedValue2 != ""){
	  // Do something with the selected value, for example:
	  objectButton.disabled = false;
	  modelButton.disabled = false;
	  dashboardButton.disabled = false;
	  deleteArchitecture.disabled = false;
  }
  else{
	  objectButton.disabled = true;
	  modelButton.disabled = true;
	  dashboardButton.disabled = true;
	  deleteArchitecture.disabled = true;
  }
}

function objectClear(){
	$( function() {
	    $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height: "auto",
	      width: '50%',
	      modal: true,
		  open: function() {
		    $(this).html("<p>"+delete_all_the_object+"</p>");
		  },  	      
	      buttons: {
	        [Delete]: function() {
				$.ajax({
					url:'truncateObjectClear',
					type:'POST',
					data: {'architecture_id': selectedValue2},
				    beforeSend: function() {
				    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+object_truncate_is_in_process+'</div>');
				    	alert_message_function();	
				    	$(".loader").css("display", "block")
				    },		
					success: function(response){
			//			alert(response)
					},
					complete: function(){
				    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+object_clear_sucessfully+'</div>');
				    	alert_message_function();
				    	$(".loader").css("display", "none");	
					}
				})			
	          $( this ).dialog( "close" );
	        },
	        [Cancel]: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
  } );
}

function modelClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: '50%',
      modal: true,
	  open: function() {
	    $(this).html("<p>"+delete_all_the_model+"</p>");
	  },       
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateModelClear',
				type:'POST',
				data: {'architecture_id': selectedValue2},
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+model_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+model_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );		
}

function attachmentClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: '50%',
      modal: true,
	  open: function() {
	    $(this).html("<p>"+delete_all_the_document+"</p>");
	  },      
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateAttachmentClear',
				type:'GET',
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+attachment_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+attachment_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );	
}

function processesClear(){
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: '50%',
      modal: true,
	  open: function() {
	    $(this).html("<p>"+delete_all_the_process+"</p>");
	  },
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateProcessesClear',
				type:'GET',
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+processes_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+processes_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
}

function dashboardClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: '50%',
      modal: true,
	  open: function() {
	    $(this).html("<p>"+delete_all_the_dashboard+"</p>");
	  },       
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateDashboardClear',
				type:'POST',
				data: {'architecture_id': selectedValue2},
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+dashboard_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+dashboard_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );		
}

function deleteArchitectureFunction(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: '50%',
      modal: true,
	  open: function() {
	    $(this).html("<p>"+delete_architecture_dialog_msg+"</p>");
	  },       
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'deleteArchitecture',
				type:'POST',
				data: {'architecture_id': selectedValue2},
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+architecture_delete_progress_msg+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
					console.log("response",response)
					if(response == "Error executing query"){
				    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+first_delete_the_backup_of_this_architecture+'</div>');
				    	alert_message_function();
				    	$(".loader").css("display", "none");						
					}
					else{
				    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+architecture_delete_done_msg+'</div>');
				    	alert_message_function();
				    	$(".loader").css("display", "none");							
					}
				},
				complete: function(){

				},
				error: function(){
					$(".alert_message").html('<div class="alert alert-danger" role="alert">'+architecture_delete_error_msg+'</div>');
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );
}

$( document ).ready(function() {
	$.ajax({
	       url: "getAllRepositories",
	       async: false, 
	       type: 'POST',
	       data: {},
	       dataType: 'json', // added data type
	       success: function(data) {
			   architectureData = data;
			   for(var i = 0 ; i <= data.length-1; i++){
				   $("#clearArchitectureDropdown").append(`<option value="${data[i]["id"]}">${data[i]["architecture_name"]}</option>`);
			   }
	       }
	})
	
//	enable disable delete architecture button
	var checkbox = document.getElementById('deleteArchitecture');
	var deleteButton = document.getElementById('deleteButton');
	
	checkbox.addEventListener('change', function() {
		if (this.checked) {
			deleteButton.style.display = 'block';
		} else {
			deleteButton.style.display = 'none';
		}
	});	
});
