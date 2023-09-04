function graphRelationshipsToggle() {
	// console.log('cc',graphEdges[graph_name.replaceAll(' ', '_')])
	graph1.toggleCells(!graph1.getModel().isVisible(graphEdges[graph_name.replaceAll(' ', '_') + "_" + openedDiagramFolderId][0]), graphEdges[graph_name.replaceAll(' ', '_') + "_" + openedDiagramFolderId], true);
	var encoder = new mxCodec();
	var node = encoder.encode(graph1.getModel());
	var new_xml_str = mxUtils.getXml(node);
	previousDiagramDrawn = new_xml_str;
	dictionaryXML[graph_name] = new_xml_str;//set key1
	$('#save_button').attr('disabled', false);
	$('.graph_button').attr('disabled', false);
}
function addAndShowOrHideNewEdges(e2) {
	let tempEdges = graphEdges[graph_name.replaceAll(' ', '_') + "_" + openedDiagramFolderId];
	tempEdges.push(e2)
	graphEdges[graph_name.replaceAll(' ', '_') + "_" + openedDiagramFolderId] = tempEdges;
	if ($('#graphRelationshipsToggle').prop("checked") == false) {
		graph1.toggleCells($('#graphRelationshipsToggle').prop("checked"), [e2], true);
	}
}
function updateGraph(objectName, x, y, imgSrc, architectureId) {
	if (architectureId != openedDiagramArchitectureId) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + can_not_drag_other_architecture_object + '</div>');
		alert_message_function();
		return;
	}
	const regex = /\/([^\/]+)\.svg/;
	var newObjectName = objectName;
	var newObjectElement = imgSrc.split('/');
	newObjectElement = newObjectElement[newObjectElement.length - 1];
	newObjectElement = newObjectElement.split('.svg');
	newObjectElement = newObjectElement[0].replaceAll('-', ' ');
	let currentlyDraggedObjectParentFolderName = newObjectElement
	// console.log("currentlyDraggedObjectParentFolderName:",currentlyDraggedObjectParentFolderName)
	newObjectElement = capitalizeFirstLetter(newObjectElement);
	newObjectElement = newObjectElement.replaceAll(' ', '_')
	// 		imageSource = imageSource.replaceAll('.svg','1.svg');
	var parent = graph1.getDefaultParent();
	objectName = objectName.split(' ').join('\n');
	var objectExists = false;
	var encoder = new mxCodec();
	var node = encoder.encode(graph1.getModel());
	var xml = mxUtils.getXml(node);
	xmlDoc = $.parseXML(xml),
		$xml = $(xmlDoc),
		$intRate = $xml.find("mxCell");
	$intRate.each(function (index, element) {
		console.log("ele:", element)
		if (element.attributes["value"] && !element.attributes["edge"]) {
			let styledNode = element.attributes["style"].nodeValue
			console.log("zz:", styledNode)

			const match = regex.exec(styledNode);

			console.log("match: ", match)

			const alreadyDraggedObjectParentFolderName = match[1].replaceAll('-', ' ');
			// console.log("alreadyDraggedObjectParentFolderName:",alreadyDraggedObjectParentFolderName); // "digital-project"
			var cellId = element.attributes["id"].value;
			var v2 = graph1.getModel().getCell(cellId);
			var loopCellValue = element.attributes["value"].value;
			loopCellValue = loopCellValue.replaceAll('\n', ' ');
			if ((objectName.replaceAll('\n', ' ') == loopCellValue) && (currentlyDraggedObjectParentFolderName == alreadyDraggedObjectParentFolderName)) {
				objectExists = true;
			}
		}
	});
	var style = 'shape=label;strokeColor=' + stColor + ';fillColor=' + color + ';rounded=1;shadow=0;strokeWidth=0;image=' + imgSrc + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;'
	//var style = 'shape=label;image='+imageSource+';imageHeight=14;imageWidth=22;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;';
	if (objectExists == false) {
		var allVerticesDrawn = graph1.getChildVertices(parent);
		var style_cell = graph1.getModel().getStyle(allVerticesDrawn[0]);
		let vertex_width = 140;
		let vertex_height = 60;
		if (style_cell == null) {
			style_cell = style;
		}
		if (style_cell.includes('shape=image')) {
			style = style.replaceAll('shape=label', 'shape=image');
			style = style.replaceAll('overflow=hidden', 'overflow=visible');
			style += ';verticalLabelPosition=bottom;verticalAlign=top';
			vertex_width = 50;
			vertex_height = 40;
		}
		var v1 = graph1.insertVertex(parent, null, objectName.split(" ").join("\n"), x, y, vertex_width, vertex_height, style);
		// 			var v1 = graph1.insertVertex(parent, null , objectName, x, y, 135, 55,style);
		$intRate.each(function (index, element) {
			if (element.attributes["value"] && !element.attributes["edge"]) {
				var cellId = element.attributes["id"].value;
				var v2 = graph1.getModel().getCell(cellId)
				var loopCellValue = element.attributes["value"].value;
				loopCellValue = loopCellValue.replaceAll('\n', ' ');
				var loopImageValue = element.attributes["style"].value;
				loopImageValue = loopImageValue.split('.svg')
				loopImageValue = loopImageValue[0].split('/');
				loopImageValue = loopImageValue[loopImageValue.length - 1].replaceAll('-', ' ');
				var loopElementName = capitalizeFirstLetter(loopImageValue);
				loopElementName = loopElementName.replaceAll(' ', '_');
				var success = true;
				if (objectName != loopCellValue) {
					showLoader();
					$.ajax({
						url: "joinIfRelationExists",
						type: "POST",
						data: {
							'newObjectElement': newObjectElement,
							'newObjectName': newObjectName,
							'existingObjectElement': loopElementName,
							'existingObjectName': loopCellValue
						},
						//dataType: "text/String"
						success: function (data) {
							$.each(data, function (i, val) {
								if (i == "newToExisting" && val.length > 0) {
									$.each(val, function (i, val1) {
										var relType = val1;
										var relStyle = getRelationshipStyle(relType);
										var e2 = graph1.insertEdge(parent, null, relType, v1, v2, relStyle);
										addAndShowOrHideNewEdges(e2);
									});
								}
								else if (i == "existingToNew" && val.length > 0) {
									$.each(val, function (i, val1) {
										var relType = val1;
										var relStyle = getRelationshipStyle(relType);
										var e2 = graph1.insertEdge(parent, null, relType, v2, v1, relStyle);
										addAndShowOrHideNewEdges(e2);
									});
								}


							});
							hideLoader();
						},
						error: function (resp) {
							console.log('error ' + resp);
							success = false;
						},
						async: false
					});
					if (!success) {
						return false;
					}
				}
			}
		});
		var parent = graph1.getDefaultParent();
		var node = encoder.encode(graph1.getModel());
		var new_xml_str = mxUtils.getXml(node);
		dictionaryXML[graph_name.replaceAll(' ', '_') + "_diagram_" + openedDiagramFolderId] = new_xml_str;//set key1
	} else {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + object_already_exists + '</div>');
		alert_message_function();
	}
	$('html').keyup(function (e) {
		if (e.keyCode == 46) {
			graph1.removeCells();
			var encoder = new mxCodec();
			var parent = graph1.getDefaultParent();
			var node = encoder.encode(graph1.getModel());
			var new_xml_str = mxUtils.getXml(node);
			var get_old_xml = dictionaryXML;
			dictionaryXML[graph_name + "_diagram_" + openedDiagramFolderId] = new_xml_str;//set key1
			var updated_value = dictionaryXML[graph_name];//get key1
			$("#save_button").prop('disabled', false);
			$(".graph_button").prop('disabled', false);
			graphSaveButton[graph_name] = false;
		}
	});

	// 		var undoManager = new mxUndoManager();
	// 		var listener = function(sender, evt)
	// 		{
	// 			undoManager.undoableEditHappened(evt.getProperty('edit'));
	// 		};
	graph1.getModel().addListener(mxEvent.UNDO, listener);
	graph1.getView().addListener(mxEvent.UNDO, listener);

	function KeyPress(e) {
		var evtobj = window.event ? event : e
		if (evtobj.keyCode == 90 && evtobj.ctrlKey)
			undoManager.undo();


		document.onkeydown = KeyPress;
	}
}

function save_graph(graphId, callback) {
	$("#save_button").prop('disabled', true);
	/* 	$.ajax({
			  url: "getDateForFormSubmit", // url: "/findTables?dbName="+db_name,
			  type: "GET",
			  data: {
						'tableName' :tableName,
						'row_name' :row_name[0],
			  },
			  //dataType: "text/String"
			success: function(data) {
				updated_time = data.slice(0, 19);
				if(last_time_updated.slice(0, 19) === updated_time){
					let getcurrentDate = new Date();
					let gethour = getcurrentDate.getHours();
					let getMinute = getcurrentDate.getMinutes();
					//console.log("getMinute", getMinute)
					if(getMinute < 10){
						getMinute = "0"+getMinute;
					}
					let getSecond = getcurrentDate.getSeconds();
					//console.log("getSecond", getSecond)
					getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
					//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
					last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
				}
				else{
					$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
					alert_message_function();
				}
			},
			  error: function(data){ 
					$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
					alert_message_function(); 
			  }
		}); */

	graphId = graphId ? graphId : openedGraphID

	let graphNameForSaveButton = $("#element_title").html();
	if (graphNameForSaveButton) {
		$.ajax({
			url: "getGraphLastDate",
			data: {
				'graphID': graphId
			},
			success: function (result) {
				console.log("result")
				console.log(result)
				last_time_updated = result.slice(0, 19);

				if (last_time_updated === dictionaryGraphDates[graphId]) {

					let getcurrentDate = new Date();
					let gethour = getcurrentDate.getHours();
					let getMinute = getcurrentDate.getMinutes();
					if (getMinute < 10) {
						getMinute = "0" + getMinute;
					}
					let getSecond = getcurrentDate.getSeconds();
					getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
					last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');

					dictionaryGraphDates[graphId] = last_time_updated;
					var encoder = new mxCodec();
					// var parent = graph1.getDefaultParent();
					var node = encoder.encode(graph1.getModel());
					var xml_str = mxUtils.getXml(node);
					// var forSplit = xml_str.split('mxCell id="')
					// var last_element = forSplit.length-1


					var openedDiagramObjectNames = []
					var openedDiagramElementNames = []
					var idsToNameDict = {};
					// Parse the XML string
					var xmlDoc = mxUtils.parseXml(xml_str);

					var vertices = xmlDoc.getElementsByTagName("mxCell");
					for (var i = 0; i < vertices.length; i++) {
						var vertex = vertices[i];
						if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
							var value = vertex.getAttribute("value");
							var currentObjectName = value.replaceAll('\n', ' ');
							var cellElementName = vertex.getAttribute("style");
							if (!cellElementName.startsWith('edgeStyle') && cellElementName.match(/\.svg|\.png/)) {
								cellElementName = cellElementName.split('.svg')[0];
								cellElementName = cellElementName.split('/');
								cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', ' ');
								cellElementName = capitalizeFirstLetter(cellElementName);
								openedDiagramElementNames.push(cellElementName.replaceAll(' ', '_'))
								openedDiagramObjectNames.push(currentObjectName)
							}
						}
					}


					$.ajax({
						url: 'getIdsOfOpenedDiagramObjects', // Replace with your API URL
						type: "POST",
						data: {
							objectNames: JSON.stringify(openedDiagramObjectNames),
							elementNames: JSON.stringify(openedDiagramElementNames),
							'architectureID': openedDiagramArchitectureId

						}, // Send the current value as a parameter
						success: function (objectId) {
							var xmlDoc1 = mxUtils.parseXml(xml_str);

							var vertices = xmlDoc1.getElementsByTagName("mxCell");
							for (var i = 0; i < vertices.length; i++) {
								var vertex = vertices[i];
								if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
									var vertexValue = vertex.getAttribute("value");
									var ObjectName = "'" + vertexValue.replaceAll('\n', ' ') + "'";
									var ElementName = vertex.getAttribute("style");
									if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {
										let objVal = ObjectName.replace(/'/g, '');
										let objID = objectId[ObjectName.replace(/'/g, '')];
										idsToNameDict[objID] = objVal
										vertex.setAttribute("value", objectId[ObjectName.replace(/'/g, '')]);
										openedDiagramObjectNames.push(currentObjectName)
									}
								}
							}

							var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
							dictionaryXML[graph_name + "_diagram_" + openedDiagramFolderId] = modifiedXmlStr;//set key1


							$.ajax({
								url: "save_graph",
								data: { 'graph_json': modifiedXmlStr, 'graphname': 'ssf', 'graphID': graphId, 'last_time_updated': last_time_updated, 'idsToNameDict': JSON.stringify(idsToNameDict) },
								type: "POST",
								success: function (result) {
									$(".alert_message").html('<div class="alert alert-success" role="alert">' + graph_has_been_saved + '</div>');
									alert_message_function();
									/* $("#save_button").prop('disabled', true); */
									$(".graph_button").prop('disabled', false);
									graphSaveButton[graph_name] = true;


									saveAndRemoveModelStatus(graph_name, openedDiagramFolderId, "diagram")

									refreshTree();


									// this callback will call when you try to close the Diagram
									if (callback) {
										callback();
									}
								}
							});



						},
						error: function () {
							console.log('Error occurred while updating cell ' + cellId);
						}
					});





				} else {
					//alert("Another User Updated This File Please Refresh the tree!!")
					$(".alert_message").html('<div class="alert alert-danger" role="alert">' + another_user_updated_this_file_please_refresh_the_tree + '</div>');
					alert_message_function();
					saveAsGraphAfterAnotherUserEdited();
				}



				setTimeout(() => {

					// ------- highlight selected graph --------	
					let diagramLiId = graph_name.replaceAll(" ", "---") + "" + graphId;
					removeClassFromElement('openedActive');
					addClassToElement(diagramLiId, 'openedActive');
					// ------- highlight selected graph --------			

				}, 500);


			},
			error: function (data) {
				$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
				alert_message_function();
			}
		});
		// 		refreshTree(); getGraphNames();
	}
	else {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + file_not_selected + '</div>');
		alert_message_function();
	}
}

function saveAsGraphAfterAnotherUserEdited() {

	$(function () {
		var dialog, form,
			dialog = $("#dialog-form-diagram-save-as").dialog({
				autoOpen: false,
				height: 400,
				width: 350,
				modal: true,
				buttons: {
					"Save As": function saveAsDiagramIfAnotherUserUpdateTheForm() {
						$.ajax({
							url: "getGraphCompanyNameModelName",
							data: {
								'graphID': openedGraphID
							},
							success: function (res) {

								var companyName = res[0];
								var diagramName = res[1];
								var id = res[2];
								var folderId = res[3];

								var encoder = new mxCodec();
								var parent = graph1.getDefaultParent();
								var node = encoder.encode(graph1.getModel());

								var xml_str = mxUtils.getXml(node);

								createNewModelFile(companyName, folderId, id, xml_str, "SaveAsFromDialog")
								dialog.dialog("close");
							},
							error: function (data) {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
								alert_message_function();
							}
						});
						$(".alert_message").html(`<div class="alert alert-success" role="alert">'+saved_message+'</div>`);
						alert_message_function();

					},
					"Cancel": function () {
						//	                    $(".alert_message").html(`<div class="alert alert-success" role="alert">dummy cancell</div>`);
						//	                    alert_message_function();
						dialog.dialog("close");
					}
				},
				close: function () {
					form[0].reset();
				}
			});
		form = dialog.find("form").on("submit", function (event) {
			event.preventDefault();
			saveAsDiagramIfAnotherUserUpdateTheForm();
		});
		dialog.dialog("open");
	});
}

function save_graph_for_rename_component() {
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());

	var xml_str = mxUtils.getXml(node);

	dictionaryXML[graph_name + "_diagram_" + openedDiagramFolderId] = xml_str;//set key1
	var forSplit = xml_str.split('mxCell id="')
	var last_element = forSplit.length - 1
	$.ajax({
		url: "save_graph",
		data: { 'graph_json': xml_str, 'graphname': 'ssf', 'graphID': openedGraphID },
		type: "POST",
		success: function (result) {
			//alert(result);
			$("#save_button").prop('disabled', true);
			$(".graph_button").prop('disabled', true);
			graphSaveButton[graph_name] = true;
		}
	});

}

function getDBlist(graphName_1, id, isGraphUpdate, folderName, architecture_id, architectureName, folderID) {
	initalizeModelStatus(graphName_1, folderID, "diagram");

	setDeactiveElementInHistoryTab();



	console.log("id:", id);
	console.log("graphName_1:", graphName_1);
	openedDiagramId = id;
	console.log("openFromTree: diagramId:", id);

	graphName_1 = graphName_1.replaceAll(" ", "---");
	var makeID = graphName_1 + "" + id;



	/*add div into history Div*/
	var parent_name = document.getElementById(makeID);

	if (typeof parent_name !== 'undefined') {
		var parent = parent_name?.parentNode?.parentNode?.parentNode?.previousElementSibling?.innerHTML;
		var parentTitle = parent;
	}

	var thisGraphClassList = document.getElementById(graphName_1.replaceAll(" ", "---") + id)?.classList
	if (thisGraphClassList?.contains('deletedObject')) {
		console.log("class deletedObject not found")
		return
	}

	isDiagramFiltered = false;
	hideDiagramFilterItemsInTheStickyHeader()
	resetCompleteDiagramFilterModalElements()
	if (allExistElementInHistoryTab.includes(graphName_1.replaceAll(" ", "---") + "_diagram_" + folderID) == false) {
		allExistElementInHistoryTab.push(graphName_1.replaceAll(" ", "---") + "_diagram_" + folderID)
	}
	loader_image_body()
	showLoader();
	$("#paleteDiv").show();
	$("#save_graph_as_button").show();
	$("#save-as-button-nav").hide();
	$("#chart").css("display", "none");
	if (isGraphUpdate == false) {
		graph1.setEnabled(false);
		document.getElementById("palete").style.pointerEvents = "none";
		$("#save_button").remove();
		$("#save_graph_as_button").remove();
		$("#fit-screen").remove();
		$("#zoom-out").remove();
		$("#zoom-in").remove();
	}
	var nonExistingElements = [];
	$.ajax({
		url: "checkFileStatus",
		data: { 'graphID': id },
		success: function (result) {
			if (result == 1) {
				var current_ID = divId + divIdCount++;
				allDivIds.push(current_ID);
				historyTab(architecture_id)
				$("#save_button").prop('disabled', true);
				$(".graph_button").prop('disabled', false);
				graphSaveButton[graph_name] = true;
				graph_name = graphName_1;
				openedDiagramFolderId = folderID;
				openedDiagramArchitectureId = architecture_id;
				var graphExists = false;
				openedGraphID = id;
				$("#save_button").show();
				$("#save_graph_as_button").show();
				$(".graph_button").show();
				$(".nav_button").hide();
				if (createNew == true) {
					addNewGraphInHistory();
					createNew = false;
				}
				$.ajax({
					url: "getGraphLastDate",
					data: { 'graphID': id },
					success: function (result) {
						last_time_updated = result.slice(0, 19);
						dictionaryGraphDates[id] = last_time_updated;

					}
				});

				$.ajax({
					url: "getGraphXML_And_idsToNameDict",
					data: { dbname: "graphs", graphID: id },
					success: function (result) {
						var xml = result['xml'];
						var idsToNameDict;
						if (result['dictionary'] != '') {
							idsToNameDict = JSON.parse(result['dictionary']);
						}

						previousDiagramDrawn = xml;


						//---------------- getting diagram objectNames and elemntName start--------------------//
						var openedDiagramObjectids = []
						var openedDiagramElementNames = []
						// Parse the XML string
						var xmlDoc = mxUtils.parseXml(xml);

						var vertices = xmlDoc.getElementsByTagName("mxCell");
						for (var i = 0; i < vertices.length; i++) {
							var vertex = vertices[i];
							if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
								var value = vertex.getAttribute("value");
								var currentObjectId = value.replaceAll('\n', ' ');
								var cellElementName = vertex.getAttribute("style");
								if (!cellElementName.startsWith('edgeStyle') && cellElementName.match(/\.svg|\.png/)) {
									cellElementName = cellElementName.split('.svg')[0];
									cellElementName = cellElementName.split('/');
									cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', '_');
									cellElementName = capitalizeFirstLetter(cellElementName);
									openedDiagramElementNames.push(cellElementName)
									openedDiagramObjectids.push(currentObjectId)
								}
							}
						}

						//---------------- getting diagram objectNames and elemntName end--------------------//


						//---------------- getting objectNames by objectids of digram--------------------//
						$.ajax({
							url: 'getNamesOfOpenedDiagramObjects', // Replace with your API URL
							type: "POST",
							data: {
								objectIds: JSON.stringify(openedDiagramObjectids),
								elementNames: JSON.stringify(openedDiagramElementNames),
							}, // Send the current value as a parameter
							success: function (objectNamesAndIds) {

								var xmlDoc1 = mxUtils.parseXml(xml);

								var vertices1 = xmlDoc1.getElementsByTagName("mxCell");
								for (var i = 0; i < vertices1.length; i++) {
									var vertex1 = vertices1[i];
									if (vertex1.getAttribute("edge") != "1" && vertex1.getAttribute("value")) {
										var vertexValue1 = vertex1.getAttribute("value");
										var ObjectId = vertexValue1.replaceAll('\n', ' ');
										var ElementName = vertex1.getAttribute("style");
										if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/) && !(objectNamesAndIds[ObjectId].replaceAll(' ', '\n') == ObjectId)) {
											vertex1.setAttribute("value", objectNamesAndIds[ObjectId].replaceAll(' ', '\n'));
										} else if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {
											vertex1.setAttribute("value", idsToNameDict[ObjectId]);
										}
									}
								}

								var modifiedXmlStr = mxUtils.getXml(xmlDoc1);

								xmlDoc = $.parseXML(modifiedXmlStr),
									$xml = $(xmlDoc),
									$intRate = $xml.find("mxCell");
								$intRate.each(function (index, element) {
									if (element.attributes["value"]) {
										var cellElementName = element.attributes["style"].value;
										if (!cellElementName.startsWith('edgeStyle') && cellElementName.match(/\.svg|\.png/)) {
											cellElementName = cellElementName.split('.svg')[0];
											cellElementName = cellElementName.split('/');
											cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', ' ');
											cellElementName = capitalizeFirstLetter(cellElementName);

											var loopCellValue = element.attributes["value"].value;
											loopCellValue = loopCellValue.replaceAll('\n', ' ');

											$.ajax({
												url: "validateObjectName", // url: "/findTables?dbName="+db_name,
												//type: "GET",
												data: {
													'tableName': cellElementName,
													'object_name': loopCellValue,
													'oldName': '',
													'repositoryID': architecture_id
												},
												//dataType: "text/String"
												success: function (data) {
													if (data == '' && loopCellValue != 'Container') {
														nonExistingElements.push(loopCellValue);
													}
												},
												async: false
											});
										}


									}
									if (index == $intRate.length - 1) {
										if (nonExistingElements.length != 0) {
											nonExistingElementsFunc(nonExistingElements);
										}
									}
								});
								console.log("allDivIDs:");
								console.log(allDivIds);
								$.each(allDivIds, function (i, val) {
									$("#" + val + "_diagram_" + folderID + "11").css("background", "");
								});
								$.each(dictionaryXML, function (key, value) {
									if (key == graphName_1.replaceAll(" ", "---") + "_diagram_" + folderID) {
										graphXML = value;
										graphExists = true;
									}
									else if (key == graphName_1.replaceAll(" ", "---") + "_diagram_" + folderID) {
										graphXML = value;
										graphExists = true;
									}
									else {
										$("#" + key.replaceAll(' ', '---') + "_diagram_11").css("background", "");
									}
								});
								if (graphExists != true) {
									//								$("#repositoryID"+architecture_id).append('<div id="'+graphName_1.replaceAll(' ','_')+"_"+folderID+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+"_"+folderID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\', \''+architecture_id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+graphName_1+'</a></div></div>');

									//								$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+graphName_1+'</a></div></div>');
									//$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+graphName_1+'</a>');
									$("#history_tab").css("display", "flex")
									// dictionaryXML[graphName_1.replaceAll(' ','_')] = xml;
									dictionaryXML[graphName_1.replaceAll(' ', '---') + "_diagram_" + folderID] = xml

									if (typeof parentTitle !== 'undefined') {
										$("#element_title").show().text(graphName_1.replaceAll("---", " ") + " [" + parentTitle + "]");
										$('#element_title').prop('title', graphName_1.replaceAll("---", " ") + " [" + parentTitle + "]");
										$("#repositoryID" + architecture_id).append('<div id="' + graphName_1.replaceAll(' ', '_') + "_diagram_" + folderID + '11" class="column gh' + id + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeModelDiv(\'' + graphName_1 + '\', \'' + folderID + '\', \'' + id + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\'' + graphName_1 + '\',\'' + id + '\', \'' + architecture_id + '\', \'' + parentTitle + '\', \'' + folderID + '\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>' + graphName_1.replaceAll("---", " ") + '</a></div></div>');
									}
									else if (typeof parentTitle == 'undefined') {
										$("#element_title").show().text(graphName_1.replaceAll("---", " ") + " [" + architectureName + "]");
										$('#element_title').prop('title', graphName_1.replaceAll("---", " ") + " [" + architectureName + "]");
										$("#repositoryID" + architecture_id).append('<div id="' + graphName_1.replaceAll(' ', '_') + "_diagram_" + folderID + '11" class="column gh' + id + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeModelDiv(\'' + graphName_1 + '\', \'' + folderID + '\', \'' + id + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\'' + graphName_1 + '\',\'' + id + '\', \'' + architecture_id + '\', \'' + architectureName + '\', \'' + folderID + '\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>' + graphName_1.replaceAll("---", " ") + '</a></div></div>');
									}
								}
								else {
									if (typeof parentTitle !== 'undefined') {
										// console.log("if..")
										$("#element_title").show().text(graphName_1.replaceAll("---", " ") + " [" + parentTitle + "]");
										$('#element_title').prop('title', graphName_1.replaceAll("---", " ") + " [" + parentTitle + "]");
									}
									else if (typeof parentTitle == 'undefined') {
										// console.log("else..")
										$("#element_title").show().text(graphName_1.replaceAll("---", " ") + " [" + architectureName + "]");
										$('#element_title').prop('title', graphName_1.replaceAll("---", " ") + " [" + architectureName + "]");
									}
									//								$("#element_title").show().text(graphName_1+" ["+architectureName+"]");
								}

								//let edgesHiddenOrVisible =  !result.includes("visible=\"0\"");
								let edgesHiddenOrVisible = !modifiedXmlStr.includes("visible=\"0\"");
								//result = result.replaceAll("visible=\"0\"","");
								modifiedXmlStr = modifiedXmlStr.replaceAll("visible=\"0\"", "");
								$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);

								// numItems = $('.column').length;
								// $(".history_page_no").html(numItems)

								currentWindowID = graphName_1.replaceAll(' ', '---') + "_diagram_" + folderID + "11";
								setActiveElementInHistoryTab(currentWindowID);

								var diagram = mxUtils.parseXml(modifiedXmlStr);
								var codec = new mxCodec(diagram);
								codec.decode(diagram.documentElement, graph1.getModel());

								graph1.setEnabled(true);
								document.getElementById("palete").style.pointerEvents = "all";

								//// hiding or showing relationship arrows
								let parent = graph1.getDefaultParent();
								let edges = graph1.getChildEdges(parent);
								graphEdges[graphName_1.replaceAll(' ', '_') + "_diagram_" + folderID] = edges;
								graph1.toggleCells(edgesHiddenOrVisible, edges, true);


								// ------- highlight selected graph --------	
								removeClassFromElement('openedActive');
								addClassToElement(makeID, 'openedActive');
								// ------- highlight selected graph --------


							}
						});

					},
					complete: function (result) {
						hideLoader();
						$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
						$("body").css("pointer-events", "initial");
					},
					error: function (data) {
						// 				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
						$(".alert_message").html('<div class="alert alert-danger" role="alert">' + an_error_occured + '</div>');
						alert_message_function();
					}
				});
				modelsView();
			}
			else {
				$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
				alert_message_function();
			}
			//last_time_updated = result.slice(0, 19);
			//dictionaryGraphDates[id] = last_time_updated;
		}
	});
}
function drawGraphFromHistory(graphName, id, architectureId, architectureName, folderID) {
	openedDiagramArchitectureId = architectureId;
	openedDiagramId = id;

	const historyItemId = graphName.replaceAll(" ", "---")+"_diagram_"+folderID+"11";

	hideDiagramFilterItemsInTheStickyHeader();
	resetCompleteDiagramFilterModalElements();

	setDeactiveElementInHistoryTab();

	$('#chart').hide();

	// ------- highlight selected graph --------
	let diagramId = graphName.replaceAll(' ', '---') + "" + id;
	removeClassFromElement('openedActive');
	addClassToElement(diagramId, 'openedActive');
	// ------- highlight selected graph --------		

	$(".graph_button").prop('disabled', false);
	$("#save_button").prop('disabled', false);

	graph_name = graphName;
	openedDiagramFolderId = folderID;
	openedGraphID = id;
	$("#save_button").show();
	$("#save_graph_as_button").show();
	$(".graph_button").show();
	$("#synchronizeIcon").show();
	$(".nav_button").hide();
	$("#history_page_no").html(numItems)
	$("#historyList").css("display", "none");
	$.each(allDivIds, function (i, val) {
		$("#" + val + "_diagram_11").css("background", "");
	});
	if (createNew == true) {
		addNewGraphInHistory();
		createNew = false;
	}
	var graphXML = "";
	$.each(dictionaryXML, function (key, value) {
		if (key == graphName.replaceAll(" ", "---") + "_diagram_" + folderID) {
			graphXML = value;
			previousDiagramDrawn = graphXML;
			currentWindowID = key.replaceAll(' ', '---') + "_diagram_11";
		}
	});

	setActiveElementInHistoryTab(historyItemId);



	var openedDiagramObjectids = []
	var openedDiagramElementNames = []
	// Parse the XML string
	var xmlDoc = mxUtils.parseXml(graphXML);

	var vertices = xmlDoc.getElementsByTagName("mxCell");
	for (var i = 0; i < vertices.length; i++) {
		var vertex = vertices[i];
		if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
			var value = vertex.getAttribute("value");
			var currentObjectId = value.replaceAll('\n', ' ');
			var cellElementName = vertex.getAttribute("style");
			if (!cellElementName.startsWith('edgeStyle') && cellElementName.match(/\.svg|\.png/)) {
				cellElementName = cellElementName.split('.svg')[0];
				cellElementName = cellElementName.split('/');
				cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', '_');
				cellElementName = capitalizeFirstLetter(cellElementName);
				openedDiagramElementNames.push(cellElementName)
				openedDiagramObjectids.push(currentObjectId)
			}
		}
	}


	$.ajax({
		url: 'getNamesOfOpenedDiagramObjects', // Replace with your API URL
		type: "POST",
		data: {
			objectIds: JSON.stringify(openedDiagramObjectids),
			elementNames: JSON.stringify(openedDiagramElementNames),
		}, // Send the current value as a parameter
		success: function (objectNamesAndIds) {

			var xmlDoc1 = mxUtils.parseXml(graphXML);

			var vertices1 = xmlDoc1.getElementsByTagName("mxCell");
			for (var i = 0; i < vertices1.length; i++) {
				var vertex1 = vertices1[i];
				if (vertex1.getAttribute("edge") != "1" && vertex1.getAttribute("value")) {
					var vertexValue1 = vertex1.getAttribute("value");
					var ObjectId = vertexValue1.replaceAll('\n', ' ');
					var ElementName = vertex1.getAttribute("style");
					if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {

						vertex1.setAttribute("value", objectNamesAndIds[ObjectId].replaceAll(' ', '\n'));
					}
				}
			}

			var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
			graphXML = modifiedXmlStr


			let edgesHiddenOrVisible = !graphXML.includes("visible=\"0\"");
			graphXML = graphXML.replaceAll("visible=\"0\"", "");
			$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);


			var diagram = mxUtils.parseXml(graphXML);
			var codec = new mxCodec(diagram);
			codec.decode(diagram.documentElement, graph1.getModel());
			//// hiding or showing relationship arrows
			let parent = graph1.getDefaultParent();
			let edges = graph1.getChildEdges(parent);
			graphEdges[graph_name.replaceAll(' ', '_') + "_" + openedDiagramFolderId] = edges;
			graph1.toggleCells(edgesHiddenOrVisible, edges, true);
			modelsView();
			$("#element_title").show().text(graphName.replaceAll("---", " ") + " [" + architectureName + "]");
			$('#element_title').prop('title', graphName.replaceAll("---", " ") + " [" + architectureName + "]");

			$("#filterDiagram").prop('disabled', false);



			////// show elements/attriubtes name in the header start //////////////////
			let filteredDiagramInJSON = openFilteredDiagramFromHistoryDictionary[id];

			if (filteredDiagramInJSON != undefined) {

				let filteredObjs = Object.keys(filteredDiagramInJSON)

				var diagramFilterStickyHeader = document.getElementById("diagramFilterStickyHeader");
				var stickyHeaderChild = ""

				document.getElementById("diagramFilterStickyHeaderParentDiv").style.display = "flex"
				diagramFilterStickyHeader.innerHTML = "";

				filteredObjs.map((item, index) => {
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

			} else {
				graph1.setEnabled(true);
				document.getElementById("palete").style.pointerEvents = "all";
			}

			////// show elements/attriubtes name in the header end //////////////////
			$("#palete").css("display", "block");
			$("#paleteDiv").css("display", "block");


		}
	});
}

function createNewGraph() {
	$("#save_button").show();
	$(".graph_button").show();
	$(".nav_button").hide();
	modelsView();
	if (createNew == true) {
		addNewGraphInHistory();
		createNew = false;
	}
	var diagram = mxUtils.parseXml(newGraphXML);
	var codec = new mxCodec(diagram);
	codec.decode(diagram.documentElement, graph1.getModel());
	createNew = true;
}

function getRelationshipStyle(relVal) {
	var orthogonalEdge = "edgeStyle=orthogonalEdgeStyle";
	var style = "";
	if (relVal == 'Composition' || relVal == 'Composed of' || relVal == 'Part of') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Aggregation' || relVal == 'Aggregates' || relVal == 'Aggregated by') {
		//   		edgeStyle=orthogonalEdgeStyle  use this as style for orthogonal edge style
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Assignment' || relVal == 'Assigned to' || relVal == 'Assigned from') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startFill=1;startArrow=oval;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Realization' || relVal == 'Realizes' || relVal == 'Realized by') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Serving' || relVal == 'Serves' || relVal == 'Served by') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Access' || relVal == 'Accesses' || relVal == 'Accessed by') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Influence' || relVal == 'Influences' || relVal == 'Influenced by') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Association' || relVal == 'Associated to' || relVal == 'Associated from') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Triggering' || relVal == 'Triggers' || relVal == 'Triggered by') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Flow' || relVal == 'Flows to' || relVal == 'Flows from') {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else {
		style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	return style;
}

function returnRelVal(fwd_OR_bwd, relVal, sourceObjectName, targetObjectName, relIndex) {
	var sourceValue = targetGlobal.value.replaceAll('\n', ' ');
	var targetValue = sourceGlobal.value.replaceAll('\n', ' ');
	var relationPossible;
	$.ajax({
		url: "checkRelationshipsLimit", // url: "/findTables?dbName="+db_name,
		//type: "GET",
		data: {
			'fwd_OR_bwd': fwd_OR_bwd,
			'relVal': relVal,
			'sourceElement': sourceObjectName,
			'targetElement': targetObjectName,
			'sourceValue': sourceValue,
			'targetValue': targetValue
		},
		success: function (data) {
			console.log(data)
			relationPossible = data;
		},
		async: false
	});
	if (relationPossible == false) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + relation_limit_exceeded + '</div>');
		alert_message_function();
	} else {
		/////
		var parent = graph1.getDefaultParent();
		var style = '';
		var sourceValue = "";
		var targetValue = "";
		var orthogonalEdge = "edgeStyle=orthogonalEdgeStyle";
		var forwardOrBackward = '';
		// 	var orthogonalEdge =""; 
		style = getRelationshipStyle(relVal);

		var edgeSource = '';
		var edgeTarget = '';

		//////////////////
		if (fwd_OR_bwd == 'forward') {
			sourceValue = sourceGlobal.value.replaceAll('\n', ' ');
			targetValue = targetGlobal.value.replaceAll('\n', ' ');
			forwardOrBackward = 'forward';
			edgeSource = sourceGlobal;
			edgeTarget = targetGlobal;
		} else {
			var temp = '';
			temp = sourceObjectName;
			sourceObjectName = targetObjectName;
			targetObjectName = temp;
			sourceValue = targetGlobal.value.replaceAll('\n', ' ');
			targetValue = sourceGlobal.value.replaceAll('\n', ' ');
			forwardOrBackward = 'backward';
			edgeSource = targetGlobal;
			edgeTarget = sourceGlobal;
		}
		let relationNotAlreadyCreated = false;
		let alreadyCreatedNotExistInGraph = true;
		$.ajax({
			url: "insertRelationFromGraph",
			data: {
				'sourceValue': sourceValue,
				'targetValue': targetValue,
				'sourceElementName': sourceObjectName,
				'targetElementName': targetObjectName,
				'relVal': relVal,
				'forwardOrBackward': forwardOrBackward,
				'relIndex': relIndex,
				'architectureId': openedDiagramArchitectureId
			},
			type: "POST",
			success: function (result) {
				if (result == 0) {
					//alert("Relation was already created");
					$(".alert_message").html('<div class="alert alert-secondary" role="alert">Relation was already created</div>');

					$.each(edgeSource.edges, function (ii, val) {
						let temp_target = val.target.value.replaceAll('\n', ' ');
						if (temp_target == edgeTarget.value.replaceAll('\n', ' ')) {
							alreadyCreatedNotExistInGraph = false;
						}
					});

					alert_message_function();
				} else {
					relationNotAlreadyCreated = true;
				}
			},
			async: false
		});
		var e2;
		if (alreadyCreatedNotExistInGraph && !relationNotAlreadyCreated) {
			e2 = graph1.insertEdge(parent, null, relVal, edgeSource, edgeTarget, style);
		}
		var parent = graph1.getDefaultParent();
		if (relationNotAlreadyCreated) {
			e2 = graph1.insertEdge(parent, null, relVal, edgeSource, edgeTarget, style);

			var encoder = new mxCodec();
			var node = encoder.encode(graph1.getModel());
			var new_xml_str = mxUtils.getXml(node);
			// var get_old_xml = dictionaryXML;
			// console.log(new_xml_str)

			//////////////////////////////////////////////////////////////
			//	        var openedDiagramObjectNames = []
			//	        var openedDiagramElementNames = []
			//	        var xmlDoc = mxUtils.parseXml(new_xml_str);

			//	        var vertices = xmlDoc.getElementsByTagName("mxCell");
			//	        for (var i = 0; i < vertices.length; i++) {
			//	            var vertex = vertices[i];
			//	            if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
			//	                var value = vertex.getAttribute("value");
			//	                var currentObjectName = value.replaceAll('\n', ' ');
			//	                var cellElementName = vertex.getAttribute("style");
			//	                if (!cellElementName.startsWith('edgeStyle')) {
			//	                    cellElementName = cellElementName.split('.svg')[0];
			//	                    cellElementName = cellElementName.split('/');
			//	                    cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', ' ');
			//	                    cellElementName = capitalizeFirstLetter(cellElementName);
			//	                    openedDiagramElementNames.push(cellElementName.replaceAll(' ', '_'))
			//	                	openedDiagramObjectNames.push(currentObjectName)
			//	                }
			//	            }
			//	        }
			//	        $.ajax({
			//	            url: 'getIdsOfOpenedDiagramObjects', // Replace with your API URL
			//	            type: "POST",
			//	            data: {
			//	                objectNames: JSON.stringify(openedDiagramObjectNames),
			//	                elementNames: JSON.stringify(openedDiagramElementNames),
			//					'architectureID':openedDiagramArchitectureId
			//	            }, // Send the current value as a parameter
			//	            success: function (objectId) {
			//	                var xmlDoc1 = mxUtils.parseXml(new_xml_str);
			//	
			//	                var vertices = xmlDoc1.getElementsByTagName("mxCell");
			//	                for (var i = 0; i < vertices.length; i++) {
			//	                    var vertex = vertices[i];
			//	                    if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
			//	                        var vertexValue = vertex.getAttribute("value");
			//	                        var ObjectName = "'" + vertexValue.replaceAll('\n', ' ') + "'";
			//	                        openedDiagramObjectNames.push(currentObjectName)
			//	                        var ElementName = vertex.getAttribute("style");
			//	                        if (!ElementName.startsWith('edgeStyle')) {
			//	
			//	                            vertex.setAttribute("value", objectId[ObjectName.replace(/'/g, '')]);
			//	                        }
			//	                    }
			//	                }

			//	                var modifiedXmlStr = mxUtils.getXml(xmlDoc1);


			dictionaryXML[graph_name.replaceAll(" ", "---") + "_diagram_" + openedDiagramFolderId] = new_xml_str;//set key1
			// var updated_value = dictionaryXML[graph_name];//get key1
			$('#save_button').attr('disabled', false);
			$('.graph_button').attr('disabled', false);
			graphSaveButton[graph_name] = false;



			updateModelStatus(graph_name, openedDiagramFolderId, "diagram")

			//	            }
			//	        })
			/////////////////////////////////////////////////////////////

		}
		addAndShowOrHideNewEdges(e2);
		//		let tempEdges = graphEdges[graph_name.replaceAll(' ','_')];
		//		tempEdges.push(e2)
		//		graphEdges[graph_name.replaceAll(' ','_')] = tempEdges;
	}
	/////
}
function changeVertexShape() {
	graph1.getView().updateStyle = true;
	var previous = graph1.model.getStyle;
	var parent = graph1.getDefaultParent();
	var allVerticesDrawn = graph1.getChildVertices(parent);

	$.each(allVerticesDrawn, function (key, value) {

		let cell = value;

		var style_cell = graph1.getModel().getStyle(cell);
		if (style_cell.includes('shape=label')) {
			style_cell = style_cell.replaceAll('shape=label', 'shape=image');
			style_cell = style_cell.replaceAll('overflow=hidden', 'overflow=visible');
			style_cell += ';verticalLabelPosition=bottom;verticalAlign=top';
			var geo = graph1.getCellGeometry(cell);

			if (geo != null) {
				geo = geo.clone();
				geo.width = 50;
				geo.height = 40;

				graph1.getModel().setGeometry(cell, geo);
			}

		}
		else {
			style_cell = style_cell.replaceAll('shape=image', 'shape=label');
			style_cell = style_cell.replaceAll('overflow=visible', 'overflow=hidden');
			style_cell = style_cell.replaceAll('verticalLabelPosition=bottom', '');
			style_cell = style_cell.replaceAll('verticalAlign=top', '');
			var geo = graph1.getCellGeometry(cell);

			if (geo != null) {
				geo = geo.clone();
				geo.width = 140;
				geo.height = 60;

				graph1.getModel().setGeometry(cell, geo);
			}
		}
		graph1.setCellStyle(style_cell, [cell]);
	});
	$("#save_button").prop('disabled', false);
}

// oncontextmenu_graph

function on_context_menu_graph(company_name, folderID, id, folderName, parentID, ulID, architectureId) {
	console.log("company_name,folderID, id, folderName, parentID, ulID, architectureId")
	console.log(company_name, folderID, id, folderName, parentID, ulID, architectureId)
	var userRoles = getUserRoles();
	//var element_content = element;
	//var type_content = type;
	//alert("You clicked on_context_menu")		  			
	event.preventDefault();
	var contextElement = document.getElementById("context-menu");
	//<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
	//var content_= '<a style="text-decoration:none; cursor:cell;" onclick="createNewGraph()"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Folder</div></a>';
	var content_ = "";
	// content_ += '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+folderName+'\',\''+folderID+'\',\'Folder\', \''+company_name+'\', \''+id+'\', \''+parentID+'\', \''+ulID+'\', \''+company_name+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
	if (folderName == '0') {
		if (userRoles['graphCreate'] == true || userRoles['catalogCreate'] == true || userRoles['matrixCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFolder(\'' + company_name + '\', \'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\')"><div class="item"><i class="fa fa-folder" aria-hidden="true"></i>' + new_folder + '</div></a>';
		if (userRoles['graphCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',' + null + ',' + null + ',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_model + '</div></a>';
		if (userRoles['catalogCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\'); "><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_catalog + '</div></a>';
		if (userRoles['matrixCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + New_Matrix + '</div></a>';
		content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewNavigationFile(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',' + null + ',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_navigation + '</div></a>';
		content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\', \'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_roadmap + '</div></a>';

		// content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Model</div></a>';
	} else {
		if (userRoles['graphCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',' + null + ',' + null + ',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_model + '</div></a>';
		if (userRoles['catalogCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\'); "><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_catalog + '</div></a>';
		if (userRoles['matrixCreate'] == true)
			content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + New_Matrix + '</div></a>';
		content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewNavigationFile(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',' + null + ',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_navigation + '</div></a>';
		if (userRoles['graphDelete'] == true && userRoles['catalogDelete'] == true && userRoles['matrixDelete'] == true)
			content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\'' + company_name + '\',\'' + folderID + '\',\'' + id + '\',\'' + architectureId + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>' + new_roadmap + '</div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteModelFolder(\'' + folderID + '\',\'' + id + '\', \'' + folderName + '\',\'' + ulID + '\',\'folder\', \'' + company_name + '\', \'' + parentID + '\',\'' + architectureId + '\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i>' + remove + '</div></a>';

	}
	contextElement.innerHTML = content_;
	contextElement.style.top = event.pageY + "px";
	// 	 	  contextElement.style.left = event.pageX + "px";

	if (globalLanguage == "En") {
		contextElement.style.left = event.pageX + "px";
	} else {
		contextElement.style.left = "calc(" + event.pageX + "px - 120px)";
	}

	contextElement.classList.add("active");
	window.addEventListener("click", function () {
		document.getElementById("context-menu").classList.remove("active");
	});
}

function synchronizeDiagram() {
	// console.log("hi synchronize")

	// console.log("openedGraphID:", openedGraphID)
	// console.log("openedDiagramArchitectureId:", openedDiagramArchitectureId)
	// console.log("openedDiagramFolderId:", openedDiagramFolderId)

	let objectNamesArray = [];
	let elementNamesArray = [];


	var parent = graph1.getDefaultParent();
	var allVerticesDrawn = graph1.getChildVertices(parent);

	allVerticesDrawn.map((item, index) => {
		if (item.style.toLowerCase().includes(".svg")) {
			let newObjectElement = item.style.split("/");
			newObjectElement = newObjectElement[newObjectElement.length - 1];
			newObjectElement = newObjectElement.split('.svg');
			newObjectElement = newObjectElement[0].replaceAll('-', ' ');
			newObjectElement = capitalizeFirstLetter(newObjectElement);

			let tempElementName = newObjectElement.replace(" ", "_");
			let tempObjectName = item.value.replace("\n", " ");

			elementNamesArray.push(tempElementName);
			objectNamesArray.push(tempObjectName);
		}

	})

	// console.log(elementNamesArray)
	// console.log(objectNamesArray)


	$.ajax({
		url: "checkDiagramObjectFromDB",
		data: {
			'elementNames': JSON.stringify(elementNamesArray),
			'objectNames': JSON.stringify(objectNamesArray),
			'architectureId': openedDiagramArchitectureId
		},
		type: "POST",
		success: function (res) {


			allVerticesDrawn.map((item) => {

				if (item.style.toLowerCase().includes(".svg")) {

					let newObjectElement = item.style.split("/");
					newObjectElement = newObjectElement[newObjectElement.length - 1];
					newObjectElement = newObjectElement.split('.svg');
					newObjectElement = newObjectElement[0].replaceAll('-', ' ');
					newObjectElement = capitalizeFirstLetter(newObjectElement);

					let tempElementName = newObjectElement.replace(" ", "_");
					let tempObjectName = item.value.replace("\n", " ");

					if (res[tempObjectName]['exist'] == "false" && res[tempObjectName]['elementName'] == tempElementName) {
						graph1.removeCells([item]);
						// console.log("Removing the cell");
					} else {
						// console.log("this object ["+tempObjectName+"] present in the database");
					}
				}

			})
			// var node = encoder.encode(graph1.getModel());
			// var new_xml_str = mxUtils.getXml(node);
			// dictionaryXML[graph_name.replaceAll(' ', '_')+"_"+openedDiagramFolderId] = new_xml_str;//set key1

		}
	});
}

function closeModelDiv(graphName, parentId, graphId) {

	console.log("in closeModelDiv");
	console.log("graphName:", graphName);
	console.log("parentId:", parentId);

	var graphName_1 = graphName.replaceAll(' ', '---') + "_diagram_" + parentId;
	var objectNameWithParentId = graphName + "_diagram_" + parentId
	//if(graphSaveButton[graphName_1] ==false){
	if (modelUpdatationStatus[objectNameWithParentId]?.update == true) {
		$("#dialog-confirm-close").dialog({
			resizable: false,
			height: "auto",
			// width: 400,
			width: '50%',
			modal: true,
			buttons: {
				[save]: function () {

					save_graph(graphId, function () {
						historyNumberCloseDiv(graphName_1);
						hideDiagramFilterItemsInTheStickyHeader();
						resetCompleteDiagramFilterModalElements();

						delete dictionaryXML[graphName_1];
						$("#" + graphName_1 + "11").remove();
						// setTimeout(function() { displaydiv(); }, 0.5);
						if (currentWindowID == graphName_1 + "11") {
							var diagram = mxUtils.parseXml(newGraphXML);
							var codec = new mxCodec(diagram);
							codec.decode(diagram.documentElement, graph1.getModel());
							$("#element_title").hide()
							$(".graph_button").css("display", "none");

							$("#graphId").hide();
							$("#palete").css("display", "none");
						}
						$("#dialog-confirm-close").dialog("close");
					});


				},
				[dont_save]: function () {

					historyNumberCloseDiv(graphName_1)
					hideDiagramFilterItemsInTheStickyHeader();
					resetCompleteDiagramFilterModalElements();

					delete dictionaryXML[graphName_1];
					$("#" + graphName_1 + "11").remove();
					// setTimeout(function() { displaydiv(); }, 0.5);
					if (currentWindowID == graphName_1 + "11") {
						console.log("SAME")
						var diagram = mxUtils.parseXml(newGraphXML);
						var codec = new mxCodec(diagram);
						codec.decode(diagram.documentElement, graph1.getModel());
						$("#element_title").hide()
						$(".graph_button").css("display", "none");
						$("#graphId").hide();
						$("#palete").css("display", "none");
					}
					$(this).dialog("close");

				},
				[Cancel]: function () {
					$(this).dialog("close");
				}
			}
		});
	} else {
		historyNumberCloseDiv(graphName_1)
		hideDiagramFilterItemsInTheStickyHeader();
		resetCompleteDiagramFilterModalElements();


		delete dictionaryXML[graphName_1];
		$("#" + graphName_1 + "11").remove();
		// setTimeout(function() { displaydiv(); }, 0.5);
		if (currentWindowID == graphName_1 + "11") {
			console.log("SAME")
			var diagram = mxUtils.parseXml(newGraphXML);
			var codec = new mxCodec(diagram);
			codec.decode(diagram.documentElement, graph1.getModel());
			$("#element_title").hide()
			// $(".graph_button").css("display", "none");
			$("#graphId").hide();
			$("#palete").css("display", "none");
		}
		$(".graph_button").css("display", "none");

		const currentModelId = graphName + "" + graphId
		removeClassFromElement('openedActive', currentModelId);

	}
}


function updateModelStatus(modelName, parentFolderId, elementType) {
	var objectNameWithParentId = modelName + "_" + elementType + "_" + parentFolderId;
	modelUpdatationStatus[objectNameWithParentId] = { "update": true };
	console.log("modelUpdatationStatus:", modelUpdatationStatus);
}

function saveAndRemoveModelStatus(modelName, parentFolderId, elementType) {
	var objectNameWithParentId = modelName + "_" + elementType + "_" + parentFolderId;
	modelUpdatationStatus[objectNameWithParentId] = { "update": false };

	console.log("modelUpdatationStatus:", modelUpdatationStatus);
	delete modelUpdatationStatus[objectNameWithParentId];
	console.log("modelUpdatationStatusRemoved:", modelUpdatationStatus);

}

function initalizeModelStatus(modelName, parentFolderId, elementType) {
	var objectNameWithParentId = modelName + "_" + elementType + "_" + parentFolderId;
	modelUpdatationStatus[objectNameWithParentId] = { "update": false };
	console.log("modelUpdatationStatus:", modelUpdatationStatus);
}

function removeClassFromElement(className, id) {

	if (id) {
		const currentElement = document.getElementById(id);
		currentElement?.classList.remove(className);
	} else {
		const elementsToRemoveClass = document.querySelectorAll('.' + className + '');

		elementsToRemoveClass.forEach((element) => {
			element?.classList.remove(className);
		});
	}
}

function addClassToElement(id, className) {
	let getThisObjectById = document.getElementById(id);
	getThisObjectById?.classList.add(className);
}

