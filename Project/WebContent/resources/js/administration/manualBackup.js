let architectureDropdown;
let ManualButton;
let selectedValue;
let selectedText;
var createBackupName;

function architectureSelected(){
  architectureDropdown = document.getElementById("backupArchitectureDropdown");
  ManualButton = document.getElementById("Manual");
  selectedValue = architectureDropdown.value.trim();
  selectedText = architectureDropdown.options[architectureDropdown.selectedIndex].text;
  console.log("selectedText",selectedText);
  
  if(selectedValue != ""){
	  // Do something with the selected value, for example:
	  ManualButton.disabled = false;
  }
  else{
	  ManualButton.disabled = true;
  }
}
function manualBackupArchitecture(){
	console.log("selectedValue=>",selectedValue)
	$.ajax({
		url: "getBackupOfDatabases",
		type: 'POST',
		data: {'backupName': createBackupName,'architecture_id': selectedValue, 'architecture_name': selectedText},
		dataType: 'json',
	    beforeSend: function() {
	    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+backup_is_in_process+'</div>');
	    	alert_message_function();	
	    	$(".loader").css("display", "block")
//	    	$("#Manual").css({display:})
	    	$("#Manual").prop('disabled', true);
	    },		
		success: function(folder) {
			if(folder == "1"){
		    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+backup_created_sucessfully+'</div>');
		    	alert_message_function();				
			}
			else{
		    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+error_occured_while_backup+'</div>');
		    	alert_message_function();
	
			}
		},
		complete: function(data){
			$(".loader").css("display", "none");
			$("#Manual").prop('disabled', false);
		}
	});
}
function manualBackupDocuments(backupType){
	$.ajax({
		url: "getBackupOfDocuments",
		type: 'POST',
		data: {'backupName': createBackupName},
		dataType: 'json',
	    beforeSend: function() {
	    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+backup_is_in_process+'</div>');
	    	alert_message_function();	
	    	$(".loader").css("display", "block")
//	    	$("#Manual").css({display:})
//	    	$("#Manual").prop('disabled', true);
	    },		
		success: function(folder) {
			if(folder == "1"){
		    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+backup_created_sucessfully+'</div>');
		    	alert_message_function();				
			}
			else{
		    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+error_occured_while_backup+'</div>');
		    	alert_message_function();
	
			}
		},
		complete: function(data){
			$(".loader").css("display", "none");
//			$("#Manual").prop('disabled', false);
		}
	});	
}
function createDocumentBackup(createBackupDocumentName){

}
function manualBackupProcess(){
	$.ajax({
		url: "getBackupOfProcesses",
		type: 'POST',
		data: {'backupName': createBackupName},
		dataType: 'json',
	    beforeSend: function() {
	    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+backup_is_in_process+'</div>');
	    	alert_message_function();	
	    	$(".loader").css("display", "block")
	    },		
		success: function(folder) {
			if(folder == "1"){
		    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+backup_created_sucessfully+'</div>');
		    	alert_message_function();				
			}
			else{
		    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+error_occured_while_backup+'</div>');
		    	alert_message_function();
	
			}
		},
		complete: function(data){
			$(".loader").css("display", "none");
		}
	});
}
function createBackup(backupType){
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form-backupName" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: '50%',
	      modal: true,
	      buttons: {
	        [Backup]: function addUser(){
				createBackupName = $(".backupName").val();
		        	if(createBackupName){
		        		$.ajax({
			      		      url: "validateBackupName", // url: "/findTables?dbName="+db_name,
			      		      //type: "GET",
			      		      data: {'backupName':createBackupName},
			      		      //dataType: "text/String"
			      		    
			      			success: function(data) {
			      				if(data==''){
									if(createBackupName !== ''){
										if(backupType == 'manualBackupDocument'){
											manualBackupDocuments(createBackupName);	
											dialog.dialog( "close" );						
										}
										else if(backupType == 'manualBackupProcess'){
											manualBackupProcess(createBackupName);	
											dialog.dialog( "close" );						
										}
										else if(backupType == 'manualBackupArchitecture'){
											manualBackupArchitecture(createBackupName);	
											dialog.dialog( "close" );						
										}
									}									  
				 			 		dialog.dialog( "close" );
			      				}
			      				else{
								      $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name_already_exist+'</div>');
				      				  alert_message_function();
			      				}
			      			}
		        		});
		        	}
				else{
			    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+enter_backup_name+'</div>');
			    	alert_message_function();						
				}
	        },
	        [Cancel]: function() {
	          dialog.dialog( "close" );
	        }
	      },
	      close: function() {
	        form[ 0 ].reset();
	      }
	    });
	    form = dialog.find( "form" ).on( "submit", function( event ) {
	      event.preventDefault();
	      addUser();
	    });
	    dialog.dialog( "open" );
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
			   console.log("data", data)
			   for(var i = 0 ; i <= data.length-1; i++){
				   $("#backupArchitectureDropdown").append(`<option value="${data[i]["id"]}">${data[i]["architecture_name"]}</option>`);
			   }
	       }
	})
});