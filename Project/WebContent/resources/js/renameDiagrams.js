var firstName = [];
function renameDiagram(graphID, liID, folderNameID, diagramName, parentFolderName, architectureId, architectureName, folderId) {

	// in rename diagram/




	firstName.push(diagramName);
	var addData = diagramName.replace(/\s/g, '---');
	let checkGraphOrObject = diagramName.includes("---");
	if (checkGraphOrObject == true) {
		//if(checkType == 'Folder'){
		addData = parentFolderName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
		//else{
		addData = diagramName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
	}
	else {
		$("#change_text").val(diagramName);
	}
	$(function () {
		var dialog, form,
			dialog = $("#renameText").dialog({
				autoOpen: false,
				height: 400,
				width: 350,
				modal: true,
				buttons: {
					[Change]: function updateText() {
						let changeTextValue = $("#change_text").val();
						changeTextValue = changeTextValue.replace(/[^\w\u0600-\u06FF\s]/gi, '_')
						$.ajax({
							url: "validateModelName", // url: "/findTables?dbName="+db_name,
							//type: "GET",
							data: { 'modelName': changeTextValue },
							async: false,
							//dataType: "text/String"
							success: function (data) {
								if (data == '') {
									$.ajax({
										url: "renameDiagram",
										type: 'POST',
										data: {
											'lastdiagramName': diagramName,
											'newdiagramName': changeTextValue,
										},
										dataType: 'json', // added data type
										success: function (data) {
											let diagramLiId = changeTextValue.replaceAll(" ", "---") + "" + graphID;
											refreshTree(diagramLiId);
											getGraphNames();
											getDBlist(changeTextValue, graphID, null, null, architectureId, architectureName, folderId);

											$("#" + diagramName + "_diagram_" + folderId + "11").remove();
											historyNumberCloseDiv(diagramName + "_diagram_" + folderId);

											dialog.dialog("close");

										}
									});
								}
								else {
									$(".alert_message").html('<div class="alert alert-danger" role="alert">' + filteredModalExistingGraphMsg + '</div>');
									alert_message_function();
								}
							}
						});

					},
					//"<spring:message code='Cancel'/>": function() {
					[Cancel]: function () {
						dialog.dialog("close");
					}
				},
				close: function () {
					form[0].reset();
				}
			});
		form = dialog.find("form").on("submit", function (event) {
			event.preventDefault();
			updateText();
		});
		dialog.dialog("open");
	});
}

function renameFilteredDiagram(graphID, liID, folderNameID, diagramName, parentFolderName, parentId, architectureId, architectureName) {

	firstName.push(diagramName);
	var addData = diagramName.replace(/\s/g, '---');
	let checkGraphOrObject = diagramName.includes("---");
	if (checkGraphOrObject == true) {
		//if(checkType == 'Folder'){
		addData = parentFolderName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
		//else{
		addData = diagramName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
	}
	else {
		$("#change_text").val(diagramName);
	}
	$(function () {
		var dialog, form,
			dialog = $("#renameText").dialog({
				autoOpen: false,
				height: 400,
				width: 350,
				modal: true,
				buttons: {
					[Change]: function updateText() {
						let changeTextValue = $("#change_text").val();
						changeTextValue = changeTextValue.replace(/[^\w\u0600-\u06FF\s]/gi, '_')
						$.ajax({
							url: "renameFilteredDiagram",
							type: 'POST',
							data: {
								'lastdiagramName': diagramName,
								'newdiagramName': changeTextValue,
							},
							dataType: 'json', // added data type
							success: function (data) {

								let { id, modelName, filteredDetails } = data[0]


								const filterDiagramElementId = changeTextValue+""+graphID

								refreshTree(filterDiagramElementId);
								getGraphNames();


								drawFilteredDiagram(id, parentFolderName, modelName, filteredDetails, architectureId, architectureName, parentId);
								id = "#" + diagramName + "_" + parentId + "11"
								$(id).remove();
								historyNumberCloseDiv(diagramName + "_" + parentId)

								dialog.dialog("close");

							}
						});
					},
					[Cancel]: function () {
						dialog.dialog("close");
					}
				},
				close: function () {
					form[0].reset();
				}
			});
		form = dialog.find("form").on("submit", function (event) {
			event.preventDefault();
			updateText();
		});
		dialog.dialog("open");
	});
}