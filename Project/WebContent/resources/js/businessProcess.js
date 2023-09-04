var getXMLData;
var allText;
var current_ID;
var bpmnModeler;
var initialDivContent;
var bpmnModelerDict = {};
var activeBusinessProcessName = "";
var businessProcessTable;
var businessProcessTableCreated = false;
function on_context_menu_business_Process(company_name,folderID,id, folderName,parentID,ulID){
	var userRoles = getUserRoles();
	  event.preventDefault();
	  var contextElement = document.getElementById("context-menu");
	  var content_= "";
	  if(folderName=='0'){
			if(userRoles['graphCreate']==true)
				content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createBusinessProcessFolder(\''+company_name+'\', \''+folderID+'\', \''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+new_folder+'</div></a>';
//	  			content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameDiagram(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i><spring:message code="rename"/></div></a>';	
	  }else{
			if(userRoles['graphCreate']==true)
				content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewBusinessProcessFile(\''+company_name+'\', \''+folderID+'\', \''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+new_business_process+'</div></a>';
	  			content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteBusinessProcessFolder(\''+folderID+'\',\''+id+'\', \''+folderName+'\',\''+ulID+'\',\'folder\', \''+company_name+'\', \''+parentID+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i>'+remove+'</div></a>';
	  }
	  	contextElement.innerHTML = content_;
	  	contextElement.style.top = event.pageY + "px";
		if(globalLanguage == "En"){
	  		contextElement.style.left = event.pageX + "px";
		}else{
		   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
		}
	  contextElement.classList.add("active");
	  window.addEventListener("click",function(){
	  document.getElementById("context-menu").classList.remove("active");
	});
}	
function createBusinessProcessFolder(company_name, folderID, id){	
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form" ).dialog({
	      autoOpen: false,
	      height: 400,
	      // width: 350,
	      width: '50%',
	      modal: true,
	      buttons: {
	        [Create]: function addUser(){ 	
	        	var folderName = $("#folder_name").val().replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_');
	        	if(folderName){
			 		$.ajax({
					      url: "createNewBusinessProcessFolderName", // url: "/findAttributes?dbName="+db_name,
					      data:{'id':id,'folderName': folderName, 'company_name': company_name},
					      success:function(data) {
							if(data == 1){
							      $(".alert_message").html('<div class="alert alert-success" role="alert">'+folder_created_successfully+'</div>');
			      				  alert_message_function();											  
								  refreshTree();
			 			    	  getBusinessProcessNames();											
			 			    }
			 			    else{
							      $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folder_already_exist+'</div>');
			      				  alert_message_function();							
							}
					      }
					}); 
			 		dialog.dialog( "close" );
	        	}
	        	else{
	        		dialog.dialog( "open" );
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
	    //$( "#create-user" ).button().on( "click", function() {
	      dialog.dialog( "open" );
	    //});
	  } ); 	
}
function createNewBusinessProcessFile(company_name, folderID,id){
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form-businessProcess" ).dialog({
	      autoOpen: false,
	      height: 400,
	      // width: 350,
	      width: '50%',
	      modal: true,
	      buttons: {
	        [Create]: function addUser(){
	        	$("#paleteDiv").show();
	        	$('#chart').hide();
	        	var businessProcessName = $("#businessProcessName").val();
				businessProcessName = businessProcessName.replace(/[^\w\u0600-\u06FF\s]/gi,'_');
	        	if(businessProcessName){
			 		$.ajax({
					      url: "createNewBusinessProcessFile", // url: "/findAttributes?dbName="+db_name,
					      data:{'id':id, 'company_name': company_name,'businessProcessName':businessProcessName,'graph_json':'<?xml version="1.0" encoding="UTF-8"?> <definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" targetNamespace="" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL http://www.omg.org/spec/BPMN/2.0/20100501/BPMN20.xsd"> <process id="Process_1gkg8q5" /> <bpmndi:BPMNDiagram id="sid-74620812-92c4-44e5-949c-aa47393d3830"> <bpmndi:BPMNPlane id="sid-cdcae759-2af7-4a6d-bd02-53f3352a731d" bpmnElement="Process_1gkg8q5" /> <bpmndi:BPMNLabelStyle id="sid-e0502d32-f8d1-41cf-9c4a-cbb49fecf581"> <omgdc:Font name="Arial" size="11" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" /> </bpmndi:BPMNLabelStyle> <bpmndi:BPMNLabelStyle id="sid-84cb49fd-2f7c-44fb-8950-83c3fa153d3b"> <omgdc:Font name="Arial" size="12" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" /> </bpmndi:BPMNLabelStyle> </bpmndi:BPMNDiagram> </definitions>'},
					      success:function(response) {
							if(response.getID == 1){
								$(".alert_message").html(`<div class="alert alert-success" role="alert">${create_business_process_message}</div>`);
								alert_message_function();
								refreshTree();
								getBusinessProcesslist(businessProcessName, response.graphID);											
							}
							else{
						    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${businessProcessAlreadyExists}</div>`);
						    	alert_message_function();								
							}
					      }	  	
					}); 
			 		dialog.dialog( "close" );
	        	}
	        	else{
	        		dialog.dialog( "open" );
			    	$(".alert_message").html(`<div class="alert alert-warning" role="alert">${enter_business_process_name} </div>`);
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
	    //$( "#create-user" ).button().on( "click", function() {
	      dialog.dialog( "open" );
	    //});
	  } );  
}
function deleteBusinessProcessFolder(folderID, id, folderName, ulID, type, company_name, parentID){
	// $("#"+folderName+"123").remove();
	// $("#recycle_bin_list_for_business_process").append('<li id="'+folderID+'2" class="model_list '+folderName+'" style="padding-left:38px" oncontextmenu="on_context_menu_restore_business_process(\''+id+'\', \''+folderID+'\', \''+folderName+'\',\''+ulID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\');"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;'+folderName.replaceAll('---', ' ')+'</li>')
	
	//console.log(folderID, id, folderName, ulID,    type  , company_name, parentID)
					//sd3    3       sd     EAXee1   folder     EAXee        1
					
	// oncontextmenu="on_context_menu_restore_business_process('3', 'sd3', 'sd','EAXee1','folder','EAXee','1');"
	// on_context_menu_restore_business_process(id, 'folderID', 'folderName','ulID','type','company_name','parentID');
	
	$.ajax({
	      url: "deleteBusinessProcessFolder", // url: "/findAttributes?dbName="+db_name,
	      data:{'id':id},//,'folderName':folderName, 'folderID':folderID
	      success:function(data) {
	    	  // $("."+folderName).click();
	    	  
	    	  	var thisFolder = document.getElementById(folderName+"123")
				var thisFolderSpan = thisFolder.querySelector(':first-child');
				thisFolder.classList.add('deletedObject');
				
				thisFolderSpan.setAttribute('oncontextmenu', "on_context_menu_restore_business_process('"+id+"', '"+folderID+"', '"+folderName+"','"+ulID+"','"+type+"','"+company_name+"','"+parentID+"')");

				if(thisFolder.children.length > 1){
					var thisFolderChilds = thisFolder.children[1].children
					for(var i=0; i<thisFolderChilds.length; i++){
						var thisModel = thisFolderChilds[i]
						
						thisModel.classList.add('deletedObject')
						thisModel.classList.add('deletedObjectParent')
						// thisModel.oncontextmenu = null;
						
					}
				}

				
		}	    	
	}); 
}
//on_context_menu_remove_businessProcess
function on_context_menu_remove_business_process(graphID,liID, folderName,businessProcessName, parentFolder){
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  var content_ = '';
//		  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="downloadbusinessProcessUploadedFile(\''+businessProcessName.replaceAll("---"," ")+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>'+download+'</div></a>';
		  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeBusinessProcess(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+businessProcessName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i>'+remove+'</div></a>';
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
			if(globalLanguage == "En"){
	 	  contextElement.style.left = event.pageX + "px";
			}else{
			   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
			}
		  contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
}	
function removeBusinessProcess(graphID,liID, folderName,businessProcessName1, parentFolder){
	console.log("graphID", graphID)
	console.log("liID", liID)
	console.log("folderName", folderName)
	console.log("businessProcessName1", businessProcessName1)
	console.log("parentFolder", parentFolder)
	
		// on_context_menu_restore_business_process('1', 'sds','sd3', 'sds1', 'sd');
	
		var thisObject = document.getElementById(liID)
		thisObject.classList.add('deletedObject');
		thisObject.setAttribute('oncontextmenu', 'on_context_menu_restore_business_process("' + graphID + '", "' + businessProcessName1 + '", "' + folderName + '", "'+liID+'", "'+parentFolder+'")');
	
	
	
	$.ajax({
	      url: "delBusinessProcessRowData", // url: "/findAttributes?dbName="+db_name,
	      data:{'graphID':graphID},
	      success:function(data) {
	    	  for(var i = 0; i < data.length ; i++){
	    				data[i].modelName.replaceAll(' ', '---');
	    			  if(data[i].modelName.replaceAll(' ', '---') == businessProcessName1){
//							 $("."+businessProcessName1+"BusinessProcess").remove();
	    			  	   // --- $("#recycle_bin_list_for_business_process").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_business_process(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><i class="fa fa-cube" aria-hidden="true"></i>&nbsp;'+data[i].modelName+'</li>') 
	    			  }
	    			  else if(data[i].modelName == businessProcessName1){
//							 $("."+businessProcessName1+"BusinessProcess").remove();
	    			  		// --- $("#recycle_bin_list_for_business_process").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_business_process(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><i class="fa fa-cube" aria-hidden="true"></i>&nbsp;'+data[i].modelName+'</li>')
	    			  }
	    	  }
			  console.log("businessProcessName1",businessProcessName1)
	    	  delete dictionaryXML[businessProcessName1.replaceAll(" ","---")+"_"+graphID]
//	    	  $(".gh"+graphID+"").remove();
	    	  $("."+businessProcessName1+"_"+graphID).remove();
	    	    if(allExistElementInHistoryTab.includes(businessProcessName1.replaceAll(" ","---")+"_"+graphID) == true){
	    	    	console.log("Inside allExistElementInHistoryTab.includes()");
	    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== businessProcessName1.replaceAll(" ","---")+"_"+graphID);
					historyNumberCloseDivForBusinessProcess("BusinessProcess")
//					historyNumberCloseDiv("BusinessProcess")
//	    	  		numItemCounter();
	    	    }	
console.log("currentWindowID",currentWindowID)
console.log("businessProcessName1.graphID",businessProcessName1.replaceAll(" ","---")+"_"+graphID)
	    	    	    	  
	    		if(currentWindowID==businessProcessName1.replaceAll(" ","---")+"_"+graphID){
					console.log("Inside currentWindowID==businessProcessName1.replaceAll(---,_)+11")
	    			var diagram = mxUtils.parseXml(newGraphXML);
	    		    var codec = new mxCodec(diagram);
	    		    codec.decode(diagram.documentElement, graph1.getModel());
	    		    $("#element_title").hide() 
	    		    $("#palete").css("display", "none");
	    			$("#fit-screen").css("display", "none");
	    			$("#zoom-in").css("display", "none");
	    			$("#zoom-out").css("display", "none");
	    			$("#save_button").css("display", "none");
	    			$("#save_graph_as_button").css("display", "none");
	    			$("#businessProcessId").css("display","none")
	    		}
	    	  // ---- $("#"+liID+"").remove();
	      }	  	
	});   
}
// 	Restore businessProcess
	function on_context_menu_restore_business_process(graphID, name, folderName, liID,type,company_name,parentID){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" onclick = "restore_business_process('+graphID+',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i>'+Restore+'</div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteBusinessProcessPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i>'+Delete+'</div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
				if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
				}else{
				   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
				}
			  contextElement.classList.add("active");
			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}
// restore businessProcess
function restore_business_process(graphID, name, folderName, liID,type,company_name,parentID){
	
	console.log(graphID, name,   folderName, liID     ,type,     company_name,    parentID)
					// 1    'sds'     'sd3'      'sds1'   'sd'       'undefined'    'undefined'
	// on_context_menu_remove_business_process('1','sds1', 'sd3','sds','sd')
	
	
	
	
	if(type == 'folder'){
		var tree = '';
  		$.ajax({
		      url: "restoreBusinessProcessFolder",
		      data:{'folderName':folderName,'graphID':graphID},
		      success:function(data) {
		    	  //--- tree+='<li id="'+folderName+'123">';
				  //--- tree+='<span onclick = "toggleList(this)" id=\''+folderName+'\' class="caret \''+folderName+'\' caret-down" oncontextmenu="on_context_menu_business_Process(\''+company_name+'\',\''+name+'\', \''+graphID+'\',\''+folderName+'\',\''+parentID+'\',\''+company_name+parentID+'\',\'folder\');">'+folderName.replaceAll('---', ' ')+'</span>';
		    	  //--- tree+=data;
		    	  //--- tree+='</li>';
		    	  //--- $("#"+name+"2").remove();
		    	  //--- $("#"+name.replaceAll(" ", "---")+"2").remove();
		    	  //--- $("#"+liID+"_businessProcess").append(tree);
		    	  
		    	  
					var thisFolder = document.getElementById(folderName+"123")
					var thisFolderSpan = thisFolder.querySelector(':first-child');
					thisFolder.classList.remove('deletedObject');
					// thisFolderSpan.setAttribute('oncontextmenu', 'on_context_menu_remove_business_process("'+graphID+'", "'+liID+'", "'+folderName+'", "'+name+'", "'+type+'")');
					
					if (thisFolder.children.length > 1) {
						var thisFolderChilds = thisFolder.children[1].children
						for (var i = 0; i < thisFolderChilds.length; i++) {
							var thisModel = thisFolderChilds[i];
					
							if ((thisModel.classList.contains('deletedObject')) && (thisModel.classList.contains('deletedObjectSelf'))) {
							} else {
					
								if (thisModel.classList.contains('deletedObject')) {
									thisModel.classList.remove('deletedObject')
					
								} else if (thisModel.classList.contains('deletedObjectSelf')) {
									thisModel.classList.remove('deletedObjectSelf')
								}
								
								if (thisModel.classList.contains('deletedObjectParent')) {
									thisModel.classList.remove('deletedObjectParent')
									// const parameters = thisModel.getAttribute('oncontextmenu').match(/"(.*?)"/g).map(parameter => parameter.replace(/"/g, ''));
									// thisModel.setAttribute('oncontextmenu', 'on_context_menu_remove_attachment("'+parameters[0]+'", "'+parameters[3]+'", "'+parameters[2]+'", "'+parameters[1]+'", "'+parameters[4]+'")');
								}
					
							}
						}
					}
					// thisFolderSpan.setAttribute('oncontextmenu', 'on_context_menu_remove_business_process("'+company_name+'", "'+name+'", "'+graphID+'", "'+folderName+'", "'+parentID+'", "'+company_name+parentID+'", "folder")');
		    	  
					// on_context_menu_remove_business_process(graphID, liID, folderName, name, type)
		    	  
		      }
		});	
	}
	else{
		let parentFolderName = folderName.substring(0, folderName.length - (graphID.length));
		folderName = folderName.replaceAll(' ','---')
		if($("#" + folderName).length == 0) {
		  $(".alert_message").html('<div class="alert alert-danger" role="alert">It\'s Parent Folder '+parentFolderName+' is deleted!</div>');
		  alert_message_function();
		}
		else{
	  		$.ajax({
			      url: "restoreBusinessProcessData",
			      data:{'graphID':graphID},
			      success:function() {
			    	  // $("#"+liID+"2").remove();
			    	  // $("#"+liID.replaceAll(" ", "---")+"2").remove();
			    	  // $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" onclick="getBusinessProcesslist(\''+name+'\',\''+graphID+'\')" oncontextmenu="on_context_menu_remove_business_process(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\',\''+type+'\');">&nbsp;&nbsp;<i class="fa fa-cube" aria-hidden="true"></i>&nbsp;'+name+'</li>');
			    	  
  			    	var thisAttachment = document.getElementById(liID)
					thisAttachment.classList.remove("deletedObject")
					thisAttachment.setAttribute('oncontextmenu', 'on_context_menu_remove_business_process("'+graphID+'", "'+liID+'", "'+folderName+'", "'+name+'", "'+type+'")');
			    	  
			    	  
			      }	  	
			});
		}
	}
}
function deleteBusinessProcessPermanently(graphID, name, folderName, liID, type){	
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      // width: 400,
      width: '50%',
      modal: true,
      buttons: {
        "Delete": function() {
			if(type == 'folder'){
				var tree = '';
		  		$.ajax({
				      url: "deleteBusinessProcessFolderPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
				    	  //alert(""+folderName+" has been deleted!")
							if(data == "done"){
						    	  $(".alert_message").html('<div class="alert alert-success" role="alert">'+folderName.replaceAll("---"," ")+' has been deleted!</div>');
						    	  alert_message_function();
						    	  $("#"+name+"2").remove();	
							}
							else{
								$(".alert_message").html('<div class="alert alert-danger" role="alert">'+object_delete_restriction+'</div>');
						    	alert_message_function();
							}
				      }
				});	
			}
			else{
		  		$.ajax({
				      url: "deleteBusinessProcessPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
							if(data == "done"){
						    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' '+is_deleted+'</div>');
						    	  alert_message_function();
						    	  $("#"+liID+"2").remove();
						    	  $("#"+name+"2").remove();
							}
							else{
								$(".alert_message").html('<div class="alert alert-danger" role="alert">'+object_delete_restriction+'</div>');
						    	alert_message_function();
							}
				      }	  	
				});
			}
		  	$( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
}
async function getBusinessProcesslist(graphName_1, id, isGraphUpdate, folderName){
	let parent_id = id;
	console.log("graphName_1, id, isGraphUpdate, folderName")
	console.log(graphName_1, id, isGraphUpdate, folderName)
	
	var thisGraphClassList = document.getElementById(graphName_1.replaceAll(" ","---") + id)?.classList
	
	if(thisGraphClassList?.contains('deletedObject')){
		console.log("class deletedObject not found")
		return
	}

	
	var formData = [];
	isDiagramFiltered = false;
	hideDiagramFilterItemsInTheStickyHeader()
	if(allExistElementInHistoryTab.includes(graphName_1.replaceAll(" ","---")+"_"+parent_id) == false){
		allExistElementInHistoryTab.push(graphName_1.replaceAll(" ","---")+"_"+parent_id)
	}
	loader_image_body()
	$(".loader").show();
	var nonExistingElements = [];
	$.ajax({
		url: "checkAllFileStatus",
		data:{'graphID':id, 'tableName':"business_process_files"},
		success: function(result){
			if(result == 1){
				$("#saveBusinessProcessButton").prop('disabled', false);
				$(".businessProcessButton").prop('disabled', false);
				graphSaveButton[graph_name] = true;
				graph_name=graphName_1
				var graphExists = false;
				openedGraphID = id;
				$("#saveBusinessProcessButton").show();
				$(".businessProcessButton").show();
				$(".nav_button").hide();
				if(createNew == true){
					addNewBusinessProcessInHistory();
					createNew = false;
				}
				$.ajax({
					url: "getAllGraphLastDate",
					data:{'graphID':id, 'tableName':'business_process_files'},
					success: function(result){
						last_time_updated = result.slice(0, 19);
						dictionaryGraphDates[id] = last_time_updated;
					}
				});
				$.ajax({
					url: "getAllGraph",
					data:{dbname:"graphs", 'graphID':id, graphName:graphName_1, tableName: "business_process_files"},
					success: function(result){
				 		var xml = result;
				 		previousDiagramDrawn = xml;
						 diagramUrl = ''+xml+'';
							$.each(allDivIds, function(i, val){
								$( "#"+val+"11" ).css("background", "");
							});
							$( "#"+graphName_1.replaceAll(' ','---')+"_"+parent_id ).css("background", "#e9e9e9");
//							currentWindowID = graphName_1.replaceAll(' ','_')+"11";
							currentWindowID = graphName_1.replaceAll(' ','---')+"_"+parent_id;
console.log("get businessprocess currentWindowID",currentWindowID);
							current_ID = "BusinessProcessId"+divIdCount++;
							initialDivContent = current_ID;
				            formData = '<div id="'+current_ID+'" class="businessProcessDivId"></div>';
				            allDivIds.push(current_ID);
				            $("#businessProcessId").append(formData);
				            
				            activeBusinessProcessName = graphName_1;
						    bpmnModeler = new BpmnJS({
						      container: '#'+current_ID,
						      keyboard: {
						        bindTo: window,
//						        zoomScroll: false
						      },					      
						    });				            
				            
				          	var clsName = graphName_1.replaceAll(' ','---').replaceAll(/[&\/\\#+(â€“)`$"\""~%'\'';,.:*?<>{}]/g, '_')+"_"+parent_id;
console.log("clsName",clsName)
				            if(historyTabItems.includes(clsName) == false){
								$("#businessProcessList").show()
								
								const historyList = document.getElementById('historyList');
								const elementsToHide = historyList.querySelectorAll(':scope > :not(#businessProcessList):not(.history_tool)');
								
								elementsToHide.forEach(element => {
								  element.style.display = 'none';
								});
								
								$("#businessProcessList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeProcessDiv(\''+current_ID+'\', '+null+',\''+graphName_1.replaceAll(" ","---")+"_"+parent_id+'\', \'process\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showBusinessProcessDiv(\''+current_ID+'\', \''+graphName_1+"_"+parent_id+'\',\''+id+'\')"><i class="fa fa-cube fa-2x" aria-hidden="true" draggable="false"></i><br/>'+graphName_1+'</a></div></div>');
								const businessProcessList = document.getElementById('businessProcessList');
								const childDivCount = businessProcessList.children.length;

//					            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeProcessDiv(\''+current_ID+'\', \''+graphName_1+'_BusinessProcess\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showBusinessProcessDiv(\''+current_ID+'\', \''+graphName_1+'\',\''+id+'\')"><i class="fa fa-cube fa-2x" aria-hidden="true" draggable="false"></i><br/>'+graphName_1+'</a></div></div>');
					            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
					            $("#history_tab").css("display", "flex")
					            historyTabItems.push(clsName);
								$("#"+current_ID).css("display", "block");
								$( "#"+current_ID+"11" ).css("background", "#e9e9e9");					            
//						        numItems = $('.column').length;
								numItems = childDivCount;
								console.log("if numItems", numItems)
									$(".history_page_no").html(childDivCount)					            
					            }else{
					            	$( "."+clsName ).remove();
								console.log("else numItems", numItems)
								$("#businessProcessList").show()		
								const historyList = document.getElementById('historyList');
								const elementsToHide = historyList.querySelectorAll(':scope > :not(#businessProcessList):not(.history_tool)');
								
								elementsToHide.forEach(element => {
								  element.style.display = 'none';
								});
		            	
								$("#businessProcessList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeProcessDiv(\''+current_ID+'\', '+null+',\''+graphName_1.replaceAll(" ","---")+"_"+parent_id+'\', \'process\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showBusinessProcessDiv(\''+current_ID+'\', \''+graphName_1+'\',\''+id+'\')"><i class="fa fa-cube fa-2x" aria-hidden="true" draggable="false"></i><br/>'+graphName_1+'</a></div></div>');				            	
//					            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeProcessDiv(\''+current_ID+'\', \''+graphName_1+'_BusinessProcess\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showBusinessProcessDiv(\''+current_ID+'\', \''+graphName_1+'\',\''+id+'\')"><i class="fa fa-cube fa-2x" aria-hidden="true" draggable="false"></i><br/>'+graphName_1+'</a></div></div>');
					            $("#history_tab").css("display", "flex");
				            }
							$(".loader").hide();
//										
						    async function openDiagram(bpmnXML) {
						      // import diagram
						      try {
						        await bpmnModeler.importXML(bpmnXML);
						        // access modeler components
						        var canvas = bpmnModeler.get('canvas');
						        var overlays = bpmnModeler.get('overlays');
						        // zoom to fit full viewport
//						        canvas.zoom('fit-viewport');
						        // attach an overlay to a node
//						        overlays.add('SCAN_OK', 'note', {
//						          position: {
//						            bottom: 0,
//						            right: 0
//						          },
//						          html: '<div class="diagram-note">Mixed up the labels?</div>'
//						        });
						        // add marker
//						        canvas.addMarker('SCAN_OK', 'needs-discussion');
								// remove the background color
						      } catch (err) {
						        console.error('could not import BPMN 2.0 diagram', err);
						      }
						    }
						    // load external diagram file via AJAX and open it
						    $.get(diagramUrl, openDiagram, 'text');
						    showBusinessProcessDiv(current_ID, graphName_1.replaceAll(" ", "---"), id);
						    bpmnModelerDict[graphName_1.replaceAll(" ", "---")] = bpmnModeler;
						},
						complete: function(result){
							$("#businessProcessDropDownItemsDiv").html('<div class="btn-group">	<button style="font-size: 20px;" title="Export BusinessProcess" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>	<div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown">		<a class="dropdown-item hover-color" href="javascript:downloadSVG();">Export as SVG</a>		<a class="dropdown-item hover-color" href="javascript:downloadPNG();">Export as PNG</a>		<a class="dropdown-item hover-color" href="javascript:downloadBusinessProcessXML();">Export as XML</a>	</div></div>');
							$(".loader").hide()
							$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
							$("body").css("pointer-events", "initial");
						},
				        error: function(data){
// 				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+an_error_occured+'</div>');
					    	alert_message_function(); 
				        }
					});	
					businessProcessView();
					$("#element_title").show().text(graphName_1.replaceAll("---"," "));
					$('#element_title').prop('title', graphName_1.replaceAll("---"," "));
			}
			else{
				$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
		    	alert_message_function();
			}
			//last_time_updated = result.slice(0, 19);
			//dictionaryGraphDates[id] = last_time_updated;
		}
	});
}

function addNewBusinessProcessInHistory(){
	var xml_graph = allText;
	var graphName_1 = 'New graph1';
	$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','---')+'11" class="column"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','---')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawBusinessProcessFromHistory(\''+graphName_1.replaceAll(" ", "---")+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
	currentWindowID = graphName_1+'_BusinessProcess';
    $("#history_tab").css("display", "flex")
	dictionaryXML[graphName_1] = xml_graph;
	$.each(allDivIds, function(i, val){
		$( "#"+val+"11" ).css("background", "");
	});
	$.each( dictionaryXML, function( key, value ) {
  		if(key==graphName_1){
  			graphXML = value;
			$( "#"+key.replaceAll(' ','---')+"_BusinessProcess" ).css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ','---')+"_BusinessProcess";
  		}
  		else{
			$( "#"+key.replaceAll(' ','---')+"_BusinessProcess" ).css("background", "");
  		}
	});
}	
function drawBusinessProcessFromHistory(graphName,id){
	hideDiagramFilterItemsInTheStickyHeader()
	resetCompleteDiagramFilterModalElements()
	$('#chart').hide();
	var button_prop = graphSaveButton[graphName];
	$("#save_button").prop('disabled', button_prop);
	$(".graph_button").prop('disabled', button_prop);
	graph_name = graphName;
	openedGraphID = id;
	$("#save_button").show();
	$("#save_graph_as_button").show();
	$(".graph_button").show();
	$(".nav_button").hide();
	$("#history_page_no").html(numItems)
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#historyList").css("display", "none");
	$.each(allDivIds, function(i, val){
		$( "#"+val+"11" ).css("background", "");
	});
	if(createNew == true){
		addNewBusinessProcessInHistory();
		createNew = false;
	}
	var graphXML = "";
	$.each( dictionaryXML, function( key, value ) {
  		if(key==graphName.replaceAll(" ","---")){
  			graphXML = value;
  			previousDiagramDrawn = graphXML;
			$( "#"+key.replaceAll(' ','---')+"_BusinessProcess" ).css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ','---')+"_BusinessProcess";
  		}
  		else{
			$( "#"+key.replaceAll(' ','---')+"_BusinessProcess" ).css("background", "");
  		}
	});
	let edgesHiddenOrVisible =  !graphXML.includes("visible=\"0\"");
	graphXML = graphXML.replaceAll("visible=\"0\"","");
	$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);
	businessProcessView();
	$("#element_title").show().text(graphName.replaceAll("---"," "));
	$('#element_title').prop('title', graphName.replaceAll("---"," "));
	$("#filterDiagram").prop('disabled', false);
	let filteredDiagramInJSON = openFilteredDiagramFromHistoryDictionary[id];
	if( filteredDiagramInJSON != undefined){
		let filteredObjs = Object.keys(filteredDiagramInJSON)
		var diagramFilterStickyHeader = document.getElementById("diagramFilterStickyHeader");
		var stickyHeaderChild = ""
		document.getElementById("diagramFilterStickyHeaderParentDiv").style.display = "flex"
		diagramFilterStickyHeader.innerHTML = "";
		filteredObjs.map((item, index)=>{
			stickyHeaderChild += `
			<div class="diagramFilterCircleParentDiv">
				<span class="circle" style=background-color:${filteredDiagramInJSON[item].color}></span>
				<span class="circleText">${item}</span>
			</div>`
		})
		diagramFilterStickyHeader.innerHTML = stickyHeaderChild
		$("#save_button").css("display", "none");
		$("#save_graph_as_button").css("display", "none");
		$("#filterDiagram").css("display", "none");
		$("#change-shape").css("display", "none");
		$("#showHideRelationships").css("display", "none");
		graph1.setEnabled(false);
		document.getElementById("palete").style.pointerEvents = "none";
		$("#fit-screen").prop('disabled', false);
		$("#zoom-out").prop('disabled', false);
		$("#zoom-in").prop('disabled', false);
	}else{
		graph1.setEnabled(true);
		document.getElementById("palete").style.pointerEvents = "all";
	}
}
function showBusinessProcessDiv(showDivID, BusinessProcessName, id){
	console.log("showDivID, BusinessProcessName, id")
	console.log(showDivID, BusinessProcessName, id)
	
	businessProcessView();
	openedGraphID = id;
	activeBusinessProcessName = BusinessProcessName;	
	$(".catalog_save_button").hide();
	$("#chart").hide()
	$("#element_title").show().text(BusinessProcessName.replaceAll("---"," "));
	$('#element_title').prop('title', BusinessProcessName.replaceAll("---"," "));
	//$("#"+save_btn_id+"").prop("disabled", true)
	//$(".submit-data").prop('disabled', true);
	$.each( dictionaryXML, function( key, value ) {
			$( "#"+key.replaceAll(' ','---')+"_"+id ).css("background", "");
	});
	$(".matrix_save_button").empty();
	$("#save_button").hide();
	$(".graph_button").hide();
	$(".nav_button").hide();
	$.each(allDivIds, function(i, val){
		if(val!=showDivID){
			$("#"+val).css("display", "none");
			$( "#"+val+"11" ).css("background", "");
			$("matrixDownload"+val).css("display", "none");
		}else{
			$("#"+showDivID).css("display", "block");
			$( "#"+showDivID+"11" ).css("background", "#e9e9e9");
			$("#matrixDownload"+val).css("display", "none");
			const businessProcessList = document.getElementById('businessProcessList');
			const childDivCount = businessProcessList.children.length;
			currentWindowID = BusinessProcessName+"_"+id
			numItems = childDivCount;			
//			numItems = $('.column').length;
			$(".history_page_no").html(numItems);
		}
		$("#palete").css("display", "none");
		$("#graphId").css("display", "none");
		$("#form_id").css("display", "none");
		$("#businessProcessId").css("display", "block");
		$( "#historyList" ).css("display", "none");
	});	
}
function exportBusinessProcessSVGImage(BusinessProcessName, type){
}
async function downloadSVG() {
  try {
    bpmnModelerDict[activeBusinessProcessName].saveSVG({ format: true }, function (error, svg) {
      if (error) {
        return;
      }
      var svgBlob = new Blob([svg], {
        type: 'image/svg+xml'
      });
      var fileName = Math.random(36).toString().substring(7) + '.svg';
      var downloadLink = document.createElement('a');
      downloadLink.download = fileName;
      downloadLink.innerHTML = 'Get BPMN SVG';
      downloadLink.href = window.URL.createObjectURL(svgBlob);
      downloadLink.onclick = function (event) {
        document.body.removeChild(event.target);
      };
      downloadLink.style.visibility = 'hidden';
      document.body.appendChild(downloadLink);
      downloadLink.click();                                        
    });           
  } catch (err) {
    console.error('could not save BPMN 2.0 diagram', err);
  }
}
async function downloadPNG() {
  try {
    var t = this;
    // use the modeler saveSVG method
    bpmnModelerDict[activeBusinessProcessName].saveSVG(function (err, svg) {
        if (err) {
            return;
        }
        try {
            // can use the domUrl function from the browser
            var domUrl = window.URL || window.webkitURL || window;
            if (!domUrl) {
                throw new Error("(browser doesnt support this)")
            }
            // figure out the height and width from svg text
            var match = svg.match(/height=\"(\d+)/m);
            var height = match && match[1] ? parseInt(match[1], 10) : 200;
            var match = svg.match(/width=\"(\d+)/m);
            var width = match && match[1] ? parseInt(match[1], 10) : 200;
            var margin = t.margin || 0; // set margin
            var fill = t.fill || '#ffffff'; // set fill color
            // it needs a namespace
            if (!svg.match(/xmlns=\"/mi)) {
                svg = svg.replace('<svg ', '<svg xmlns="http://www.w3.org/2000/svg" ');
            }
            // create a canvas element to pass through
            var canvas = document.createElement("canvas");
            canvas.width = width + margin * 2;
            canvas.height = height + margin * 2;
            var ctx = canvas.getContext("2d");
            // make a blob from the svg
            var svg = new Blob([svg], {
                type: "image/svg+xml;charset=utf-8"
            });
            // create a dom object for that image
            var url = domUrl.createObjectURL(svg);
            // create a new image to hold it the converted type
            var img = new Image;
            // when the image is loaded we can get it as base64 url
            img.onload = function () {
                // draw it to the canvas
                ctx.drawImage(this, margin, margin);
                // if it needs some styling, we need a new canvas
                if (fill) {
                    var styled = document.createElement("canvas");
                    styled.width = canvas.width;
                    styled.height = canvas.height;
                    var styledCtx = styled.getContext("2d");
                    styledCtx.save();
                    styledCtx.fillStyle = fill;
                    styledCtx.fillRect(0, 0, canvas.width, canvas.height);
                    styledCtx.strokeRect(0, 0, canvas.width, canvas.height);
                    styledCtx.restore();
                    styledCtx.drawImage(canvas, 0, 0);
                    canvas = styled;
                }
                // we don't need the original any more
                domUrl.revokeObjectURL(url);
                // now we can resolve the promise, passing the base64 url
                //resolve(canvas.toDataURL());
                var fileName = Math.random(36).toString().substring(7) + '.png';
                var downloadLink = document.createElement('a');
                downloadLink.download = fileName;
                downloadLink.innerHTML = 'Get BPMN PNG';
                downloadLink.href = canvas.toDataURL();
                downloadLink.onclick = function (event) {
                    document.body.removeChild(event.target);
                };
                downloadLink.style.visibility = 'hidden';
                document.body.appendChild(downloadLink);
                downloadLink.click();
            };
            // load the image
            img.src = url;
        } catch (err) {
            reject('failed to convert svg to png ' + err);
        }
    });        
  } catch (err) {
  }
} 
async function downloadBusinessProcessXML() {
    try {
  	  var diagramUrl = '';
  	  var result111 = await bpmnModelerDict[activeBusinessProcessName].saveXML({ format: true });
  	  getXMLData = result111;
      var result = await bpmnModelerDict[activeBusinessProcessName].saveXML({ format: true }, function (error, svg) {
        if (error) {
          return;
        }
        var svgBlob = new Blob([svg], {
          type: 'image/svg+xml'
        });
        var fileName = Math.random(36).toString().substring(7) + '.xml';
        var downloadLink = document.createElement('a');
        downloadLink.download = fileName;
        downloadLink.innerHTML = 'Get BPMN SVG';
        downloadLink.href = window.URL.createObjectURL(svgBlob);
        downloadLink.onclick = function (event) {
          document.body.removeChild(event.target);
        };
        downloadLink.style.visibility = 'hidden';
        document.body.appendChild(downloadLink);
        downloadLink.click();
      });         
      // alert('Diagram exported. Check the developer tools!');
    } catch (err) {
      console.error('could not save BPMN 2.0 diagram', err);
    }
  }  
/**
* Save diagram contents and print them to the console.
*/
async function saveBusinessProcessXML() {
  try {
	var diagramUrl = '';
	  var result111 = await bpmnModelerDict[activeBusinessProcessName].saveXML({ format: true });
	  getXMLData = result111;
	  
    var result = await bpmnModelerDict[activeBusinessProcessName].saveXML({ format: true }, function (error, svg) {
      if (error) {
        return;
      }
      var svgBlob = new Blob([svg], {
        type: 'image/svg+xml'
      });
      saveBusinessProcessButton()
//      setTimeout(saveBusinessProcessButton(), 1000);
    });         
    // alert('Diagram exported. Check the developer tools!');
  } catch (err) {
    console.error('could not save BPMN 2.0 diagram', err);
  }
}  
async function saveBusinessProcessButton() {
	
//	$("#saveBusinessProcessButton").prop('disabled', true);
	let graphNameForSaveButton = $("#element_title").html();
	if(graphNameForSaveButton){
	$.ajax({
		url: "getAllGraphLastDate",
		data:{'graphID':openedGraphID, 'tableName':'business_process_files'},
		success: function(result){
			last_time_updated = result.slice(0, 19);
			if(last_time_updated === dictionaryGraphDates[openedGraphID]){
				let getcurrentDate = new Date();
				let gethour = getcurrentDate.getHours();
				let getMinute = getcurrentDate.getMinutes();
				if(getMinute < 10){
					getMinute = "0"+getMinute;
				}
				let getSecond = getcurrentDate.getSeconds();
				getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
				last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
				dictionaryGraphDates[openedGraphID] = last_time_updated;
				var xml_str = getXMLData.xml;
				$.ajax({
					url: "saveBusinessProcess",
					data:{'graph_json':xml_str,'graphname':graphNameForSaveButton,'graphID':openedGraphID,'last_time_updated':last_time_updated},
					type: "POST",
					success: function(result){
					$(".alert_message").html('<div class="alert alert-success" role="alert">'+business_process_has_been_saved+'</div>');
					alert_message_function();
					$(".graph_button").prop('disabled', false);
					graphSaveButton[graph_name] = true;
					refreshTree();
					}
				});
			}else{
				$(".alert_message").html('<div class="alert alert-danger" role="alert">'+another_user_updated_this_file_please_refresh_the_tree+'</div>');
		    	alert_message_function();
			    	saveAsGraphAfterAnotherUserEdited();
			}
		},
        error: function(data){ 
        	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
	    	alert_message_function(); 
        }
	});
// 		refreshTree(); getGraphNames();
	}
	else{
    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+file_not_selected+'</div>');
    	alert_message_function();
	}
}

function showBusinessProcessTree(divId,saveBtnId,tableName){
	
	$(".loader").show();
	$.ajax({
		url: "getbusinessProcessNamesForObject", // url: "/findTables?dbName="+db_name,
		type: "GET",
		async:false,
		//data:{
		//	'tableName' :tableName
		//},
	      //dataType: "text/String"
	    	beforeSend: function() {
	    		loader_image_body();
 	    	     	//$("#loader_image_body").animate({left:15, opacity:"show"}, 5000);
			},		      
			success: function(data) {
					$(".loader").hide();
					$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
					$("body").css("pointer-events", "initial");
					//var treeData2  = data[0]['tree'];
					var treeData2  = data;
					$("#businessProcessTitle").html(''+businessProcess+'');
					business_process_modal(divId,saveBtnId,treeData2);
			}
	});
}

function business_process_modal(divId,saveBtnId,treeData2){
	console.log("Inside business_process_modal...")
	console.log(`divId:${divId}, saveBtnId:${saveBtnId}, treeData2:${treeData2}`);
	if(businessProcessTableCreated == false){
		businessProcessTable = $('#businessProcessExample').DataTable({paging: false});
		businessProcessTableCreated = true;
	}
	businessProcessTable
	    .clear()
	    .draw();
	let object_names_form_business_process = document.getElementById(divId+"tbody").getElementsByClassName("business_process_name_form");
	let loopLength2 = object_names_form_business_process.length;
	console.log("loopLength2",loopLength2);
	var iteration2;
		for(var i=0;i<loopLength2;i++){
			iteration2 = i+1;
			let value = object_names_form_business_process[i].innerHTML;
			console.log("value", value)
			if(value == ''){
				continue;
			}
			$('#businessProcessExample').DataTable().row.add([
			  '<td>'+iteration2+'</td>','<td class="'+divId+'">'+value.replace("---"," ")+'</td>','<td><a style="cursor:pointer" onclick="removeBusinessProcessRow(\''+value.replace(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replace(" ", "_")+'\')">&#10006;</a></td>'
			])
			.node().id = value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_");
			businessProcessTable.draw();
			insert_business_process_class(value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_"));
			console.log('podf')
		}
	var modal2 = document.getElementById("businessProcessModal");
	$( ".modal-content" ).draggable();
	// Get the <span> element that closes the modal
	var span = document.getElementById("closeBusinessProcessModal");
	var add_button = document.getElementById("addBusinessProcessButtonRel");
	$('#addBusinessProcessButtonRel').empty();
	var selectTag = '';
	selectTag += '<select id="choices-multiple-remove-button'+idd+'" multiple>';
	selectTag += '</select>';
	$('#choices-multiple-remove-button').append(selectTag)
	$(".dataTables_empty").html(no_data_found_modal);
	$(".dataTables_info").html(showing_0_out_0_entries);
	$('#addBusinessProcessButtonRel').append('<button onclick="add_business_process(\''+divId+'\', \''+saveBtnId+'\');" class="form-control">'+save_changes+'</button>')
	
	$('#get_business_process_tree').empty();
	var preAppendData = treeData2;
	$('#get_business_process_tree').append(preAppendData);
	console.log('here...',preAppendData)
	let getTree1caret = document.getElementById("get_business_process_tree").getElementsByClassName("caret");
	for (i = 0; i < getTree1caret.length; i++) {
		getTree1caret[i].addEventListener("click", function() {
			this.parentElement.querySelector(".nested").classList.toggle("active");
			this.classList.toggle("caret-down");
		});
	}	
	modal2.style.display = "block";
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal2.style.display = "none";
	}
	
	add_button.onclick = function() {
		modal2.style.display = "none";
	}
}

function add_business_process_into_modal_table(tag_id,object_name){
	var array2 = [];
	var values2 = $('td.object_name_business_process').map(function(index, td) {
	    var ret = { };
	    ret[ index ] = $(td).text().replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_");
	    return ret;
	}).get();
	var loop_length = values2.length;
	for (var i = 0; i < loop_length; i++) {
		array2.push(values2[i][i])
	}
	
	console.log("values2",values2)
	console.log("array2",array2)	
	var findObject = (array2.indexOf(object_name.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_")) > -1)
	console.log("findObject",findObject);
	
	if(!findObject){
		let iteration2 = i+1;
		let businessProcessTable = $('#businessProcessExample').DataTable();
		$('#businessProcessExample').DataTable().row.add([
		  '<td>'+iteration2+'</td>','<td class="'+tag_id+'">'+object_name.replaceAll("---"," ")+'</td>','<td><a style="cursor:pointer" onclick="removeBusinessProcessRow(\''+tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_")+'\')">&#10006;</a></td>'
		])
		.node().id = tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_");
		businessProcessTable.draw();
		insert_business_process_class(tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_"));
		console.log('\n\n\n\n\ncccc\n\n\n\n\n\n')
		$("."+tag_id.replaceAll(" ", "_")).addClass("modal_li_toggle");
	}
}

function removeBusinessProcessRow(trId){
	var businessProcessTable = $('#businessProcessExample').DataTable();
	var rows = businessProcessTable
	    .rows("#"+trId)
	    .remove()
	    .draw()
	    $(".tree_modal_alert_message").html('<div class="alert alert-secondary" role="alert">'+removed_successfully+'</div>');
	    tree_modal_alert_message();
}



function insert_business_process_class(tag_id){
	console.log("tag_id",tag_id);
//	var get_value = $("#"+tag_id);
//	var first_td = $("#"+tag_id).find("td:eq(1)").addClass("elementIcon");
//	var second_td = $("#"+tag_id).find("td:eq(2)").addClass("object_name");
	
	$("#"+tag_id+" td:nth-child(1)").addClass("elementIcon");
	$("#"+tag_id+" td:nth-child(2)").addClass("object_name_business_process");
}

function add_business_process(idd, save_btn_id){
	let originalString = save_btn_id;
	let stringToRemove = "BusinessProcess";
	let newString = originalString.replace(stringToRemove, "");
	save_btn_id = newString;
	
	let object_names = document.getElementById("businessProcessExample").getElementsByClassName("object_name_business_process");
	var tag_input = "";
	$('.table_data_business_process').empty();
	let inputField2 = document.getElementById(idd+"tbody");
	$(inputField2).empty();
	var loopLength2 = object_names.length;
	if(loopLength2>0){
		var iteration2;
		for(var i=0;i<loopLength2;i++){
			iteration2 = i+1;
			tag_input = object_names[i].innerHTML;
			$(inputField2).append('<tr><td>'+iteration2+'</td><td class=\"business_process_name_form\">'+tag_input+'</td><td><i class="fa fa-download" aria-hidden="true" onclick="downloadbusinessProcessUploadedFile(\''+tag_input+'\')"></i></td><td class="delBusinessProcessRow"><i class="fa fa-trash" aria-hidden="true" onclick="delBusinessProcessRow(\''+save_btn_id+'\');"></i></td></tr>');
			$("#"+save_btn_id+"").attr("disabled", false);
		}
	}else
	{	
		for(var j=0;j<4;j++){
			$(inputField2).append('<tr><td></td><td class=\"business_process_name_form\"></td><td></td><td></td></tr>');
		}
		$("#"+save_btn_id+"").attr("disabled", false);
	}
}

//function removeBusinessProcessRow(trId){
//	var table = $('#businessProcessExample').DataTable();
//	 
//	var rows = table
//	    .rows("#"+trId)
//	    .remove()
//	    .draw()
//
//	    $(".tree_modal_alert_message").html('<div class="alert alert-secondary" role="alert">'+removed_successfully+'</div>');
//	    tree_modal_alert_message();
//	// });
//}

function delBusinessProcessRow(save_btn_id){
	$('table').on('click','tr .delBusinessProcessRow',function(e){
		e.preventDefault();
		$(this).parents('tr').remove();
	});		
	$("#"+save_btn_id+"").attr("disabled", false);
}
