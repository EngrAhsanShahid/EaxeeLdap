var checkDataExistForNewArchitecture = 0;
$(document).ready(function () {
    $('#exampleArchitecture').DataTable();
    $('#exampleDocument').DataTable();
    $('#exampleProcess').DataTable();
});    

$(function(){
	$("#tabs").tabs();
});
function restore(){
	getArchitectureBackup();
	getDocumentBackup();
	getProcessBackup();
}
function getArchitectureBackup(){
	$.ajax({
	    url: "getFolderNamesForRestore", // url: "/findTables?dbName="+db_name,
	  method: 'get',
	    //type: "GET",
	    data: {},
	    success: function (folderName) {
			console.log("folderName",folderName);
	    	let insertDataIntoList = "";
	    	var t = $('#exampleArchitecture').DataTable();
//	    	var iteration = 1;
	    	t
	        .clear()
	        .draw();			    	
	    	folderName.forEach((element) => {
				console.log("element", element);
				element.deletionType = "Architecture";
	    	    let splitString = element.backupDate.split("__");
	    	    let firstDate = splitString[0];
	    	    let secondTime = splitString[1];
	    	    
	    	    let formatDate = firstDate.replaceAll("_","/");
	    	    let formatTime = secondTime.replaceAll("_",":");
	    	    let FinalDateAndTime = formatDate+" "+formatTime;
// 						insertDataIntoList = "<tr><td>"+FinalDateAndTime+"</td><td>Active</td></tr>";
				t.row.add([element.backupName, FinalDateAndTime, element.architecture_name, element.backupBy, '<i title="'+restore12+'" class="fa fa-refresh fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="'+restore12+'" onclick="checkArchitectureStatus(this.id, '+element.architecture_id+')"></i>&nbsp;&nbsp;<i title="'+Delete+'" class="fa fa-trash fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="Delete" onclick="deleteBackup(this.id, \'mim_metamodel\', '+element.architecture_id+', \''+element.deletionType+'\')"></i>']).node().id = element.backupDate;
//				t.row.add([iteration,FinalDateAndTime, '<button type="button" class="btn btn-primary">Restore</button>']).node().id = element;
				t.draw(false);
				// Add classes to second and third columns
				var nodes = t.column(1).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}
				
				nodes = t.column(2).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}	
				
				nodes = t.column(3).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('actionBtn');
				}	
//				iteration++;
	    	});		 
//		    $('#exampleArchitecture tbody').on('click', 'tr', function () {
//		        var data = t.row(this).data();
//		        let getDateAndTime = data[1].split(" ");
//		        let getDate = getDateAndTime[0].replaceAll("/", "_");
//		        let getTime = getDateAndTime[1].replaceAll(":", "_");
//		        let joinDateAndTime = getDate+"__"+getTime;
////				var confirmRestore = confirm("Are you sure?All existing data will be lost ");
////				if(confirmRestore == true){
////				  	$.ajax({
////						type: "POST",
////						url: "restoreSpecificData",
////						data: {joinDateAndTime:joinDateAndTime},
////					    beforeSend: function() {
////					    	console.log("Inside BeforeSend")
////					    	$(document.body).css({'cursor' : 'progress'});
////					    	$(".btn-primary").prop('disabled', true);
////					    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">Restore Is In Process.</div>');
////					    	alert_message_function();
////					    	$(".loader").css("display", "block")						    	
////					    },							
////						success: function(data)
////						{	
////							console.log("Inside Success")
////							$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
////							$(document.body).css({'cursor' : 'pointer'});
////							$(".btn-primary").prop('disabled', false);
////					    	$(".alert_message").html('<div class="alert alert-success" role="alert">Restored Successfully!!</div>');
////					    	alert_message_function();								
////						},
////						complete: function (data){
////							$(document.body).css({'cursor' : 'default'});
////							$(".loader").css("display", "none")
////						},
////						error: function (data) {
////					    	$(".alert_message").html('<div class="alert alert-warning" role="alert">Error occured while restoring!!</div>');
////					    	alert_message_function();						
////						}
////				  	});						
////				}   
////				else{
////					
////				} 
//		        
//		        var change_name = name.replaceAll(" ","---");
//		        $( "#dialog-confirm" ).dialog({
//		          resizable: false,
//		          height: "auto",
//		          width: 400,
//		          modal: true,
//		          buttons: {
//		            "Restore": function() {
//					  	$.ajax({
//							type: "POST",
//							url: "restoreSpecificData",
//							data: {joinDateAndTime:joinDateAndTime, 'backupType': 'mim_metamodel'},
//						    beforeSend: function() {
//						    	$(document.body).css({'cursor' : 'progress'});
//						    	$(".btn-primary").prop('disabled', true);
//						    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
//						    	alert_message_function();
//						    	$(".loader").css("display", "block")						    	
//						    },							
//							success: function(data)
//							{	
//								$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
//								$(document.body).css({'cursor' : 'pointer'});
//								$(".btn-primary").prop('disabled', false);
//						    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
//						    	alert_message_function();								
//							},
//							complete: function (data){
//								$(document.body).css({'cursor' : 'default'});
//								$(".loader").css("display", "none")
//							},
//							error: function (data) {
//						    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
//						    	alert_message_function();						
//							}
//					  	});
//		                $( this ).dialog( "close" );
//		            },
//		            "Cancel": function() {
//		              $( this ).dialog( "close" );
//		            }
//		          }
//		        }); 
//		    });			    	
		},
		error: function(ts) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured+'</div>');
	    	alert_message_function();
		}
	});	    	
}

function getDocumentBackup(){
	$.ajax({
	    url: "getDocumentBackupData", // url: "/findTables?dbName="+db_name,
	  method: 'get',
	    //type: "GET",
	    data: {},
	    success: function (folderName) {
	    	let insertDataIntoList = "";
	    	var t = $('#exampleDocument').DataTable();
//	    	var iteration = 1;
	    	t
	        .clear()
	        .draw();			    	
	    	folderName.forEach((element) => {
				console.log("element", element);
				element.deletionType = "Document";
	    	    let splitString = element.backupDate.split("__");
	    	    let firstDate = splitString[0];
	    	    let secondTime = splitString[1];
	    	    
	    	    let formatDate = firstDate.replaceAll("_","/");
	    	    let formatTime = secondTime.replaceAll("_",":");
	    	    let FinalDateAndTime = formatDate+" "+formatTime;
// 						insertDataIntoList = "<tr><td>"+FinalDateAndTime+"</td><td>Active</td></tr>";
				t.row.add([element.backupName, FinalDateAndTime, element.backupBy, '<i title="'+restore12+'" class="fa fa-refresh fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="'+restore12+'" onclick="documentBtnClick(this.id, '+element.architecture_id+')"></i>&nbsp;&nbsp;<i title="'+Delete+'" class="fa fa-trash fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="Delete" onclick="deleteBackup(this.id, \'attachments\',\''+element.architecture_id+'\', \''+element.deletionType+'\')"></i>']).node().id = element.backupDate;
//				t.row.add([iteration,FinalDateAndTime, '<button type="button" class="btn btn-primary">Restore</button>']).node().id = element;
				t.draw(false);
				// Add classes to second and third columns
				var nodes = t.column(1).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}
				
				nodes = t.column(2).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}

				nodes = t.column(3).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('actionBtn');
				}										
//				iteration++;
	    	});		 
		},
		error: function(ts) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured+'</div>');
	    	alert_message_function();
		}
	});	    	
}

function getProcessBackup(){
	$.ajax({
	    url: "getProcessBackupData", // url: "/findTables?dbName="+db_name,
	  method: 'get',
	    //type: "GET",
	    data: {},
	    success: function (folderName) {
	    	let insertDataIntoList = "";
	    	var t = $('#exampleProcess').DataTable();
	    	console.log("t",t)
//	    	var iteration = 1;
	    	t
	        .clear()
	        .draw();			    	
	    	folderName.forEach((element) => {
				element.deletionType = "Process";
	    	    let splitString = element.backupDate.split("__");
	    	    let firstDate = splitString[0];
	    	    let secondTime = splitString[1];
	    	    
	    	    let formatDate = firstDate.replaceAll("_","/");
	    	    let formatTime = secondTime.replaceAll("_",":");
	    	    let FinalDateAndTime = formatDate+" "+formatTime;
// 						insertDataIntoList = "<tr><td>"+FinalDateAndTime+"</td><td>Active</td></tr>";
				t.row.add([element.backupName, FinalDateAndTime, element.backupBy, '<i title="'+restore12+'" class="fa fa-refresh fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="'+restore12+'" onclick="processBtnClick(this.id)"></i>&nbsp;&nbsp;<i title="'+Delete+'" class="fa fa-trash fa-2x" id="'+element.backupDate+'" type="button" style="width: 20%;" value="Delete" onclick="deleteBackup(this.id, \'graphs\',\''+element.architecture_id+'\', \''+element.deletionType+'\')"></i>']).node().id = element.backupDate;
				t.draw(false);
				// Add classes to second and third columns
				var nodes = t.column(1).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}
				
				nodes = t.column(2).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('sorting_1');
				}		
				
				nodes = t.column(3).nodes();
				for (var i = 0; i < nodes.length; i++) {
					nodes[i].classList.add('actionBtn');
				}								
//				iteration++;
	    	});		 
		},
		error: function(ts) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured+'</div>');
	    	alert_message_function();
		}
	});	    	
}

function checkArchitectureStatus(backupDate, architecture_id){
	console.log("Inside checkArchitectureStatus")
	console.log("backupDate, architecture_id")
	console.log(backupDate, architecture_id);
  	$.ajax({
		type: "POST",
		url: "checkStatusOfArchitecture",
		data: {'architecture_id': architecture_id},
	    beforeSend: function() {					    	
	    },							
		success: function(data){
			console.log("data", data);
			if(data == '0'){
				console.log("InActive")
				restoreOldOrNew(backupDate, architecture_id)
			}	
			else{
				console.log("Active")
				architectureBtnClick(backupDate, architecture_id)
			}							
		},
		complete: function (data){
			$(document.body).css({'cursor' : 'default'});
			$(".loader").css("display", "none")
		},
		error: function (data) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
	    	alert_message_function();						
		}
  	});	
}
function restoreOldOrNew(backupDate, architecture_id){
	let joinDateAndTime = backupDate;
	var change_name = name.replaceAll(" ","---");
	$( "#dialog-restore-old-new" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  modal: true,
	  open: function() {
	    $(this).html("<p>"+restore_architecture_old_or_new+"</p>");
	  }, 	  
	  buttons: {
	    [oldName]: function() {
			console.log("Restore with same name");
			changeStatusOfArchitectureToActive(backupDate, architecture_id);
	        $( this ).dialog( "close" );
	    },
	    [newName]: function() {
			console.log("Restore with new name");
			createNewBackupFromOldData(backupDate, architecture_id);	
	      	$( this ).dialog( "close" );
	    }
	  }
	}); 	
}
function createNewBackupFromOldData(backupDate, architecture_id){
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form-old-backupName" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: 350,
	      modal: true,
	      buttons: {
	        [restoreName]: function addUser(){
				newRestoreName = $("#newbackupName").val();
		        	if(newRestoreName){
		        		$.ajax({
							url: "validateArchitectureName", // url: "/findTables?dbName="+db_name,
							//type: "GET",
							data: {'restoreName':newRestoreName},
							//dataType: "text/String"
							success: function(data) {
								if(data != ""){
									console.log("Name Found")
							    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+name_already_exist+'</div>');
							    	alert_message_function();									
								}
								else{
									console.log("Name Not Found")
									changeStatusOfArchitectureToActive(backupDate, architecture_id);
									checkDataExistForNewArchitecture = 1;
								}
							},
							complete: function(data){
								console.log("Function completed....")
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
function changeStatusOfArchitectureToActive(backupDate, architecture_id){
  	$.ajax({
		type: "POST",
		url: "changeStatusToActive",
		data: {'architecture_id': architecture_id},
	    beforeSend: function() {					    	
	    },							
		success: function(data){
			console.log("data",data);
			if(data == '1'){
				restoreSameArchitectureData(backupDate, architecture_id)				
			}
			else{
		    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
		    	alert_message_function();				
			}						
		},
		complete: function (data){
			$(document.body).css({'cursor' : 'default'});
			$(".loader").css("display", "none")
		},
		error: function (data) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
	    	alert_message_function();						
		}
  	});	
}
function restoreSameArchitectureData(backupDate, architecture_id){
	let joinDateAndTime = backupDate;
	$.ajax({
		type: "POST",
		url: "restoreSpecificData",
		data: {joinDateAndTime:joinDateAndTime, 'backupType': 'mim_metamodel', 'architecture_id': architecture_id},
	    beforeSend: function() {
	    	$(document.body).css({'cursor' : 'progress'});
	    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
	    	alert_message_function();
	    	$(".loader").css("display", "block")						    	
	    },							
		success: function(data)
		{	
			$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
			$(document.body).css({'cursor' : 'pointer'});
	    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
	    	alert_message_function();
	    	newRestoreName = $("#newbackupName").val();	
	    	console.log("newRestoreName===",newRestoreName)
	    	console.log("checkDataExistForNewArchitecture",checkDataExistForNewArchitecture)
	    	if(checkDataExistForNewArchitecture == 1){
	        	$.ajax({
			       url: "evolveRepositoryInDB",
			       async: true, 
			       type: 'POST',
			       data: {'evolveArchitectureName':newRestoreName, 'repositoryID':architecture_id},
			       dataType: 'json', // added data type
			       success: function(data) {
					   var dialog = $("#dialog-form-old-backupName").dialog({});
					   dialog.dialog( "close" );
					   checkDataExistForNewArchitecture = 0;
					   inActiveBackupArchitecture(architecture_id);
			       }
				});				
			}
		},
		complete: function (data){
			$(document.body).css({'cursor' : 'default'});
			$(".loader").css("display", "none")
		},
		error: function (data) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
	    	alert_message_function();						
		}
	});	
}
function inActiveBackupArchitecture(architecture_id){
	$.ajax({
		url:'deleteArchitecture',
		type:'POST',
		data: {'architecture_id': architecture_id},
		success: function(response){
		},
		complete: function(){
		},
		error: function(){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+architecture_delete_error_msg+'</div>');
		}		
	})		
}
function architectureBtnClick(backupDate, architecture_id){
	let joinDateAndTime = backupDate;
	var change_name = name.replaceAll(" ","---");
	$( "#dialog-restore" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  modal: true,
	  open: function() {
	    $(this).html("<p>"+restore_architecture_msg+"</p>");
	  }, 	  
	  buttons: {
	    "Restore": function() {
		  	$.ajax({
				type: "POST",
				url: "restoreSpecificData",
				data: {joinDateAndTime:joinDateAndTime, 'backupType': 'mim_metamodel', 'architecture_id': architecture_id},
			    beforeSend: function() {
			    	$(document.body).css({'cursor' : 'progress'});
//			    	$(".btn-primary").prop('disabled', true);
			    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "block")						    	
			    },							
				success: function(data)
				{	
					$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
					$(document.body).css({'cursor' : 'pointer'});
//					$(".btn-primary").prop('disabled', false);
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
			    	alert_message_function();								
				},
				complete: function (data){
					$(document.body).css({'cursor' : 'default'});
					$(".loader").css("display", "none")
				},
				error: function (data) {
			    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
			    	alert_message_function();						
				}
		  	});
	        $( this ).dialog( "close" );
	    },
	    "Cancel": function() {
	      $( this ).dialog( "close" );
	    }
	  }
	}); 	
}

function documentBtnClick(backupDate){
	let joinDateAndTime = backupDate;
	var change_name = name.replaceAll(" ","---");
	$( "#dialog-restore" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  open: function() {
	    $(this).html("<p>"+restore_document_msg+"</p>");
	  }, 	  
	  modal: true,
	  buttons: {
	    "Restore": function() {
		  	$.ajax({
				type: "POST",
				url: "restoreSpecificData",
				data: {joinDateAndTime:joinDateAndTime, 'backupType': 'attachments'},
			    beforeSend: function() {
			    	$(document.body).css({'cursor' : 'progress'});
//			    	$(".btn-primary").prop('disabled', true);
			    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "block")						    	
			    },							
				success: function(data)
				{	
					$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
					$(document.body).css({'cursor' : 'pointer'});
//					$(".btn-primary").prop('disabled', false);
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
			    	alert_message_function();								
				},
				complete: function (data){
					$(document.body).css({'cursor' : 'default'});
					$(".loader").css("display", "none")
				},
				error: function (data) {
			    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
			    	alert_message_function();						
				}
		  	});
	        $( this ).dialog( "close" );
	    },
	    "Cancel": function() {
	      $( this ).dialog( "close" );
	    }
	  }
	}); 	
}

function processBtnClick(backupDate){
	let joinDateAndTime = backupDate;
	var change_name = name.replaceAll(" ","---");
	$( "#dialog-restore" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  open: function() {
	    $(this).html("<p>"+restore_process_msg+"</p>");
	  }, 	  
	  modal: true,
	  buttons: {
	    "Restore": function() {
		  	$.ajax({
				type: "POST",
				url: "restoreSpecificData",
				data: {joinDateAndTime:joinDateAndTime, 'backupType': 'graphs'},
			    beforeSend: function() {
			    	$(document.body).css({'cursor' : 'progress'});
//			    	$(".btn-primary").prop('disabled', true);
			    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "block")						    	
			    },							
				success: function(data)
				{	
					$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
					$(document.body).css({'cursor' : 'pointer'});
					$(".btn-primary").prop('disabled', false);
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
			    	alert_message_function();								
				},
				complete: function (data){
					$(document.body).css({'cursor' : 'default'});
					$(".loader").css("display", "none")
				},
				error: function (data) {
			    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
			    	alert_message_function();						
				}
		  	});
	        $( this ).dialog( "close" );
	    },
	    "Cancel": function() {
	      $( this ).dialog( "close" );
	    }
	  }
	}); 	
}

function deleteBackup(e, backupType, architecture_id, deletionType){
	console.log("deletionType",deletionType)
	let joinDateAndTime = e;
	var change_name = name.replaceAll(" ","---");
	$( "#dialog-delete" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  modal: true,
	  open: function() {
	    if (deletionType == "Architecture") {
	      $(this).html("<p>"+delete_architecture_msg+"</p>");
	    } 
	    else if (deletionType == "Document") {
	      $(this).html("<p>"+delete_document_msg+"</p>");
	    }
	    else if (deletionType == "Process") {
	      $(this).html("<p>"+delete_process_msg+"</p>");
	    }	    
	  }, 	  
	  buttons: {
	    "Delete": function() {
		  	$.ajax({
				type: "POST",
				url: "deleteSpecificData",
				data: {joinDateAndTime:joinDateAndTime, 'backupType': backupType, 'architecture_id': architecture_id, 'deletionType': deletionType},
			    beforeSend: function() {
			    	$(document.body).css({'cursor' : 'progress'});
//			    	$(".btn-primary").prop('disabled', true);
			    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+delete_is_in_process+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "block")						    	
			    },							
				success: function(data)
				{	
					$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
					$("#"+joinDateAndTime).remove();
					$(document.body).css({'cursor' : 'pointer'});
//					$(".btn-primary").prop('disabled', false);
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+deleted_successfully+'</div>');
			    	alert_message_function();								
				},
				complete: function (data){
					$(document.body).css({'cursor' : 'default'});
					$(".loader").css("display", "none")
				},
				error: function (data) {
			    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_deletion+'</div>');
			    	alert_message_function();						
				}
		  	});
	        $( this ).dialog( "close" );
	    },
	    "Cancel": function() {
	      $( this ).dialog( "close" );
	    }
	  }
	}); 	
}