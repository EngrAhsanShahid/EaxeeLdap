function renameCatalogMatrix(graphID, liID, folderNameID, oldCatalogName, parentFolderName, catalog_or_matrix, folderId, architectureId, architectureName, elementName, folderName) {
	console.log("in renameCatalogMatrix")
	console.log(graphID, liID, folderNameID, oldCatalogName, parentFolderName, catalog_or_matrix, folderId, architectureId, architectureName, elementName)

	var addData = oldCatalogName.replace(/\s/g, '---');
	let checkGraphOrObject = oldCatalogName.includes("---");
	if (checkGraphOrObject == true) {
		//if(checkType == 'Folder'){
		addData = parentFolderName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
		//else{
		addData = oldCatalogName.replace(/---/g, ' ');
		$("#change_text").val(addData);
		//}
	}
	else {
		$("#change_text").val(oldCatalogName);
	}
	if (catalog_or_matrix == 'catalog') //For Catalog
	{
		$(function () {
			var dialog, form,
				dialog = $("#renameText").dialog({
					autoOpen: false,
					height: 400,
					width: 350,
					modal: true,
					buttons: {
						[Change]: function updateText() {
							let newCatalogName = $("#change_text").val();
							newCatalogName = newCatalogName.replace(/[^\w\u0600-\u06FF\s]/gi, '_')
							$.ajax({
								url: "renameCatalog",
								type: 'POST',
								data: {
									'lastcatalogName': oldCatalogName,
									'newcatalogName': newCatalogName,
								},
								dataType: 'json', // added data type
								success: function (data) {

									$("." + oldCatalogName + "_catalog_" + folderId).remove();
									historyNumberCloseDiv(oldCatalogName + "_catalog_" + folderId);


									let catalogLiId = newCatalogName.replaceAll(" ", "---")+""+graphID;
									refreshTree(catalogLiId);
									getGraphNames();

									drawCatalogFromXML(newCatalogName, graphID, elementName, folderName, architectureId, architectureName, folderId);


									//							$("#"+liID).remove();
									////							let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
									//							let get_string = `<li id='${liID}' class="model_list '${parentFolderName}'" onclick="drawCatalogFromXML('${newCatalogName}','${graphID}',true,'${parentFolderName}')" oncontextmenu="on_context_menu_remove_graph('${graphID}','${liID}', '${folderNameID}','${newCatalogName}','${parentFolderName}', '${catalog_or_matrix}')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;${newCatalogName}</li>`;							
									//							$("#"+folderNameID).append(get_string);				
									dialog.dialog("close");
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
	else { //For Matrix
		$(function () {
			var dialog, form,
				dialog = $("#renameText").dialog({
					autoOpen: false,
					height: 400,
					width: 350,
					modal: true,
					buttons: {
						[Change]: function updateText() {
							let newMatrixName = $("#change_text").val();

							console.log("oldCatalogName:", oldCatalogName);
							console.log("newMatrixName:", newMatrixName);
							$.ajax({
								url: "renameMatrix",
								type: 'POST',
								data: {
									'lastmatrixName': oldCatalogName,
									'newmatrixName': newMatrixName,
								},
								dataType: 'json', // added data type
								success: function (data) {
									$("." + oldCatalogName).remove();
									$("." + oldCatalogName + "_" + folderId).remove();
									historyNumberCloseDiv(oldCatalogName + "_" + folderId)
									//						   drawMatrixFromXML(newMatrixName, data[0], data[1], data[2], graphID, parentFolderName);
									drawMatrixFromXML(graphID, newMatrixName, data[0], data[1], data[2], folderId, folderName, architectureId, architectureName);
									
									let matrixLiId = newMatrixName.replaceAll(" ", "---")+""+graphID;
									refreshTree();
									getGraphNames();
									//							$("#"+liID).remove();
									////							let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
									//							let get_string = `<li id='${liID}' class="model_list '${parentFolderName}'" onclick="drawCatalogFromXML('${newMatrixName}','${graphID}',true,'${parentFolderName}')" oncontextmenu="on_context_menu_remove_graph('${graphID}','${liID}', '${folderNameID}','${newMatrixName}','${parentFolderName}', '${catalog_or_matrix}')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;${newMatrixName}</li>`;							
									//							$("#"+folderNameID).append(get_string);				
									dialog.dialog("close");
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
}