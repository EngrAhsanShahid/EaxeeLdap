var catalogScriptNamesAndColumnsDict = {};
let addUnderScoreInElementName;
//////// Ag grid config start ////////
let sortable = true
let filter = true
let filterType = "agTextColumnFilter"
let floatingFilter = true
let width = 150
let autoHeight = true
//////// Ag grid config end ////////

function closeCatalogDiv(current_ID, catalogName, parentId, elementName, architectureId) {
	console.log("in close catalog div");

	let catalog_element = catalogName + "_catalog_" + parentId;
	let finalName = catalog_element;
	catalog_element = catalog_element.replaceAll(" ", "---");

	var catalogNameWithParentId = catalogName + "_catalog_" + parentId;

	if (modelUpdatationStatus[catalogNameWithParentId]?.update == true) {

		$("#dialog-confirm-close").dialog({
			resizable: false,
			height: "auto",
			width: 400,
			modal: true,
			buttons: {
				[save]: function () {

					saveCatalog(catalogName, elementName, "null", "null", openedCatalogFolderId, null, openedCatalogArchitectureId)

					var index_no_of_deleted_item = historyTabItems.indexOf(catalog_element);
					historyNumberCloseDiv(finalName);
					historyTabItems.splice(index_no_of_deleted_item, 1);


					$("#" + current_ID).remove();
					$("#" + current_ID + "11").remove();
					if (currentWindowID == catalog_element) {
						$("#element_title").hide();
						$(".catalog_save_button").hide();
						$(".matrix_save_button").css("display", "none");
						////////////////////////////////////////
						let loadingGrid = false
						emptyTheGridTable(loadingGrid)
						////////////////////////////////////////					
					}
					$(this).dialog("close");
				},
				[dont_save]: function () {

					var index_no_of_deleted_item = historyTabItems.indexOf(catalog_element);
					historyNumberCloseDiv(finalName);
					historyTabItems.splice(index_no_of_deleted_item, 1);


					$("#" + current_ID).remove();
					$("#" + current_ID + "11").remove();
					if (currentWindowID == catalog_element) {
						$("#element_title").hide();
						$(".catalog_save_button").hide();
						$(".matrix_save_button").css("display", "none");
						////////////////////////////////////////
						let loadingGrid = false
						emptyTheGridTable(loadingGrid)
						////////////////////////////////////////					
					}
					$(this).dialog("close");

				},
				[Cancel]: function () {
					$(this).dialog("close");
				}
			}
		});
	} else {
		var index_no_of_deleted_item = historyTabItems.indexOf(catalog_element);
		historyNumberCloseDiv(finalName);
		historyTabItems.splice(index_no_of_deleted_item, 1);


		$("#" + current_ID).remove();
		$("#" + current_ID + "11").remove();
		if (currentWindowID == catalog_element) {
			$("#element_title").hide();
			$(".catalog_save_button").hide();
			$(".matrix_save_button").css("display", "none");
			////////////////////////////////////////
			let loadingGrid = false
			emptyTheGridTable(loadingGrid)
			////////////////////////////////////////					
		}


		$.ajax({
			url: "getCatalogIdFromCatalogName",
			type: "POST",
			data: JSON.stringify({
				'catalogName': catalogName,
				'architectureId': architectureId,
			}),
			contentType: "application/json", // Set the content type to JSON
			success: function (catalogId) {

				const catalogElementId = catalogName.replaceAll(" ", "---") + "" + catalogId;
				removeClassFromElement('openedActive', catalogElementId);
			},
			error: function (err) {
				console.log('error ', err);
			},
			async: false
		});
	}
}

// catalog work start's here
function downloadCatalog(catalog_name, catalog_element, current_ID) {
	let selectedScriptName = $(".catalog_save_button select").val();
	let scriptIndexes = [];
	let scriptColumnsArray = [];
	$.ajax({
		url: "getCatalogScriptColumns",
		data: { 'scriptName': selectedScriptName },
		success: function (scriptColumns) {
			scriptColumnsArray = scriptColumns.split(';')
			scriptColumnsArray = scriptColumnsArray.map(el => el.trim());
		},
		async: false
	});
	//	var catalog_table_var = document.getElementById(current_ID);
	//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
	//	var theadList = [];
	//	$.each(theadVar, function(i, item) {
	//		if(scriptColumnsArray.includes(item.innerHTML) && selectedScriptName!='All'){
	//			theadList.push(item.innerHTML)
	//			scriptIndexes.push(i);		
	//		}else if(selectedScriptName == 'All' || selectedScriptName == null){
	//		theadList.push(item.innerHTML)
	//		}
	//	});
	//	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
	//	var tbodyList = [{}];
	//	let tdList = [];
	//	$.each(tbodyVar, function(i, item) {
	//		let loop_td = item.getElementsByTagName("td");
	//		let current_td_list = [];
	//		$.each(loop_td, function(i, item) {
	//			if(scriptIndexes.includes(i)  && selectedScriptName!='All'){
	//				current_td_list.push(item.innerHTML);
	//			}else if(selectedScriptName == 'All' || selectedScriptName == null){
	//			current_td_list.push(item.innerHTML);
	//			}
	//		});
	//		let tdDict = {};
	//		tdDict["td"] = current_td_list;
	//		//             tdDict.push({
	//		//                 key:   "td",
	//		//                 value: current_td_list
	//		//             });
	//		tbodyList.push(tdDict);
	//	});



	let rowData = [];
	let theadList = [];
	let theadListSorted = [];
	var tbodyList = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	theadList = Object.keys(rowData[0]);

	///////////////  sorting header based on scripts starts /////////////////////////
	theadList.map((thItem, thItemIndex) => {

		if (scriptColumnsArray.includes(thItem.trim()) && selectedScriptName != 'All') {
			theadListSorted.push(thItem.trim())
			scriptIndexes.push(thItemIndex);
		} else if (selectedScriptName == 'All' || selectedScriptName == null) {
			theadListSorted.push(thItem.trim())
			scriptIndexes.push(thItemIndex);
		}
	});

	///////////////  sorting header based on scripts starts /////////////////////////



	rowData.map((item, index) => {

		let current_td_list = [];

		theadListSorted.map((thItem) => {
			if (item[thItem] == undefined) {
				current_td_list.push('');
			} else {
				var thItemValue = item[thItem];
				if (thItemValue.includes('</span>')) {

					var cleanedString = thItemValue.replace(/\n/g, '');

					// Extract the inner HTML using regular expressions
					thItemValue = cleanedString.match(/<span[^>]*>(.*?)<\/span>/g)
						.map(function (span) {
							return span.replace(/<\/?span[^>]*>/g, '');
						})
						.join('<br>');
				}

				current_td_list.push(thItemValue);
			}
		});

		let tdDict = {}
		tdDict["td"] = current_td_list;
		tbodyList.push(tdDict);
	});


	let check = tbodyList[0];
	if (Object.keys(check).length === 0) {
		tbodyList = tbodyList.splice(1, tbodyList.length)
	}
	if (tbodyList.length < 1) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_is_empty + '</div>');
		alert_message_function();
	} else {
		var catalogJson = {
			"catalogName": catalog_name,
			"elementName": catalog_element,
			"theads": [{
				"th": theadListSorted
			}],
			"tbodies": [{
				"tr": tbodyList
			}]
		}

		$.ajax({
			url: "downloadCatalogAsExcel", // url: "/findTables?dbName="+db_name,
			contentType: 'application/json; charset=utf-8',
			type: "POST",
			data: JSON.stringify(catalogJson),
			//dataType: "text/String"
			success: function (data) {
				window.open('downloadCatalogExcelFile?EXCEL_FILE=' + data);
			}
		});
	}
}
function downloadCatalogAsPDF(catalog_name, catalog_element, current_ID) {
	let selectedScriptName = $(".catalog_save_button select").val();
	let scriptIndexes = [];
	let scriptColumnsArray = [];
	$.ajax({
		url: "getCatalogScriptColumns",
		data: { 'scriptName': selectedScriptName },
		success: function (scriptColumns) {
			scriptColumnsArray = scriptColumns.split(';')
			scriptColumnsArray = scriptColumnsArray.map(el => el.trim());
		},
		async: false
	});

	let rowData = [];
	let theadList = [];
	let theadListSorted = [];
	var tbodyList = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	theadList = Object.keys(rowData[0]);


	///////////////  sorting header based on scripts starts /////////////////////////
	theadList.map((thItem, thItemIndex) => {
		if (scriptColumnsArray.includes(thItem) && selectedScriptName != 'All') {
			theadListSorted.push(thItem)
			scriptIndexes.push(thItemIndex);
		} else if (selectedScriptName == 'All' || selectedScriptName == null) {
			theadListSorted.push(thItem)
			scriptIndexes.push(thItemIndex);
		}
	});

	///////////////  sorting header based on scripts starts /////////////////////////



	rowData.map((item, index) => {
		let current_td_list = [];
		theadListSorted.map((thItem) => {
			if (item[thItem] == undefined) {
				current_td_list.push('');
			} else {
				var thItemValue = item[thItem];
				if (thItemValue.includes('</span>')) {

					var cleanedString = thItemValue.replace(/\n/g, '');

					// Extract the inner HTML using regular expressions
					thItemValue = cleanedString.match(/<span[^>]*>(.*?)<\/span>/g)
						.map(function (span) {
							return span.replace(/<\/?span[^>]*>/g, '');
						})
						.join('<br>');
				}

				current_td_list.push(thItemValue);
			}
		});
		let tdDict = {}
		tdDict["td"] = current_td_list;
		tbodyList.push(tdDict);
	});

	let check = tbodyList[0];
	if (Object.keys(check).length === 0) {
		tbodyList = tbodyList.splice(1, tbodyList.length)
	}
	if (tbodyList.length < 1) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_is_empty + '</div>');
		alert_message_function();
	} else {
		var catalogJson = {
			"catalogName": catalog_name,
			"elementName": catalog_element,
			"theads": [{
				"th": theadListSorted
			}],
			"tbodies": [{
				"tr": tbodyList
			}]
		}

		$.ajax({
			url: "downloadCatalogAsPDF", // url: "/findTables?dbName="+db_name,
			contentType: 'application/json; charset=utf-8',
			type: "POST",
			data: JSON.stringify(catalogJson),
			//dataType: "text/String"
			success: function (data, textStatus, xhr) {
				window.open('downloadCatalogAsPDF1');
			}
		});
	}
}
function saveCatalog(catalog_name, catalog_element, companyName, folderID, parentID, current_ID, architectureId) {
	$("#catalog_save_button_" + catalog_name.replaceAll(' ', '_')).prop("disabled", true);


	console.log("in catalog");

	console.log("catalog_name, catalog_element, companyName, folderID, parentID, current_ID, architectureId");
	console.log(catalog_name, catalog_element, companyName, folderID, parentID, current_ID, architectureId);

	console.log(catalogAgGridDictionary);
	console.log(catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID)

	catalogSaveButton["catalog_save_button_" + catalog_name.replaceAll(' ', '_')] = true;

	// this function will set the catalog status that is used when closing the catalog
	initalizeModelStatus(catalog_name, parentID, "catalog");

	var newHeadList = catalogAgGridDictionary[catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID]?.header.map((item) => item.field)

	const newTbodyList = []
	catalogAgGridDictionary[catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID]?.body.map((item) => {
		const tdDict = {};
		tdDict["td"] = Object.values(item)
		newTbodyList.push(tdDict)
	});


	let catalogExist = newTbodyList[0];
	if (catalogExist && Object.keys(catalogExist).length === 0) {
		newTbodyList = newTbodyList.splice(1, newTbodyList.length)
	}
	if (newTbodyList.length < 1) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_is_empty + '</div>');
		alert_message_function();
	} else {
		var catalogJson = {
			"catalogName": catalog_name,
			"elementName": catalog_element,
			"parentID": parentID,
			"architectureId": architectureId,
			"theads": [{
				"th": newHeadList // theadList
			}],
			"tbodies": [{
				"tr": newTbodyList // tbodyList
			}]
		}


		$.ajax({
			url: "saveCatalogToXML", // url: "/findTables?dbName="+db_name,
			contentType: 'application/json; charset=utf-8',
			type: "POST",
			data: JSON.stringify(catalogJson),
			//dataType: "text/String"
			success: function (data) {

				if (data == "Already Exists!") {
					$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_exist_message + '</div>');
					alert_message_function();
				} else {
					$(".alert_message").html('<div class="alert alert-success" role="alert">' + catalog_saved + '</div>');
					alert_message_function();
					refreshTree();
				}
			}
		});
	}
}

function titleForCatalog(catalogName) {
	$(element_title).empty();
	$("#element_title").show().text(catalogName);
	$('#element_title').prop('title', catalogName);
}


let getDivIdFromClsName = {};
function drawCatalogFromXML(catalogName, id, elementName, folderName, architectureId, architectureName, folderID) {

	openedCatalogName = catalogName;
	openedCatalogElementName = elementName;
	openedCatalogFolderId = folderID;
	openedCatalogArchitectureId = architectureId;

	addUnderScoreInElementName = elementName.replace(/\s+/g, '_');


	const historyItemId = catalogName.replaceAll(" ", "---") + "_catalog_" + folderID + "11";

	var thisCatalogClassList = document.getElementById(catalogName + id)?.classList;

	if (thisCatalogClassList?.contains('deletedObject')) {
		return
	}
	showLoader();
	if (allExistElementInHistoryTab.includes(catalogName.replaceAll(" ", "---") + "_catalog_" + folderID) == false) {
		allExistElementInHistoryTab.push(catalogName.replaceAll(" ", "---") + "_catalog_" + folderID)
	}
	/* catalog In history start's here */
	$("#chart").hide();
	$("#chart").css("display", "block");
	catalogView();
	var clsName = catalogName.replaceAll(" ", "---") + "_catalog";

	/* catalog In history End's here */
	$.ajax({
		url: "getCatalogTableFromXML",
		data: { 'catalog_id': id },
		success: function (data) {

			$("#catalog").show();

			try {
				let scriptNamesArray = data["scriptNames"][0][0].split(';')
				catalogScriptNamesAndColumnsDict[catalogName] = scriptNamesArray;
			}
			catch (err) {
				// console.log("catalog scripts are not found!")
			}

			currentWindowID = catalogName.replaceAll(" ", "---") + "_catalog_" + folderID + "11";
			if (historyTabItems.includes(currentWindowID) == false) {
				var current_ID = divId + divIdCount++;
				allDivIds.push(current_ID);
				getDivIdFromClsName[clsName] = current_ID;

				var getTitleValue = elementTitle(catalogName, id, architectureName);

				// $("#repositoryID" + architectureId).append('<div id="' + current_ID + '11" class="column ' + clsName + "_" + folderID + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalogName + '\', \'' + folderID + '\', \'' + elementName + '\', \'' + architectureId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',\'' + folderID + '\',' + null + ',\'' + current_ID + '\',\'history\',\'' + architectureId + '\', \'' + getTitleValue + '\', \'' + id + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
				$("#repositoryID" + architectureId).append('<div id="' + currentWindowID + '" class="column ' + clsName + "_" + folderID + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + historyItemId + '\', \'' + catalogName + '\', \'' + folderID + '\', \'' + elementName + '\', \'' + architectureId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',\'' + folderID + '\',' + null + ',\'' + current_ID + '\',\'history\',\'' + architectureId + '\', \'' + getTitleValue + '\', \'' + id + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
				$("#history_tab").css("display", "flex");
				historyTabItems.push(currentWindowID);
				historyTab(architectureId)



			} else {
				$("." + clsName).remove();
				$("#history_tab").css("display", "flex");
			}

			// Example currentClassName to check
			let currentClassName = clsName;
			// Iterate over the keys in the object
			for (let key in getDivIdFromClsName) {
				// Check if the key includes the desired currentClassName
				if (key.includes(currentClassName)) {
					// Retrieve the corresponding value
					let value = getDivIdFromClsName[key];
					current_ID = value;
					// Perform any desired operations with the value
				}
			}
			showCatalog(catalogName, elementName, null, folderID, null, current_ID, 'xml', architectureId, architectureName, id);
		}
	});
}

function openObjectFormWhenClickOnObjectNameFromCatalog() { }

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.init = function (params) {
	this.params = params;
	this.eGui = document.createElement('span');
	this.eGui.innerHTML = this.params.value;
	this.eGui.style.cursor = "pointer"

	this.btnClickedHandler = this.btnClickedHandler.bind(this);
	this.eGui.addEventListener('click', this.btnClickedHandler);
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.getGui = function () {
	return this.eGui;
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.destroy = function () {
	this.eGui.removeEventListener('click', this.btnClickedHandler);
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.btnClickedHandler = function (event) {
	this.params.clicked(this.params.value);
}



var dataTable_catalog_created = false;

function catalogname(companyName, folderID, parentID, architectureId) {
	console.log("Inside catalogName")
	console.log(companyName, folderID, parentID, architectureId)


	setDeactiveElementInHistoryTab();

	$('#catalogElements').html("<option value='select' selected disabled>" + select_dropdown + "</option>");
	showLoader();

	$.ajax({
		url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
		data: {},
		success: function (data) {
			$.each(data, function (i, item) {
				$('#catalogElements').append($('<option>', {
					value: item,
					text: customDictionary[item.replaceAll(" ", "_")]
				}));
			});
		}, complete: function (data) {
			hideLoader();
		}
	});

	$(function () {
		var dialog, form,
			dialog = $("#catalogName").dialog({
				autoOpen: false,
				height: 400,
				width: '50%',
				modal: true,
				buttons: {
					[Create]: function addCatalog() {
						showLoader();
						catalogView();
						$(element_title).empty();
						$('#chart').hide();

						$('#catalogfilter').show();
						var catalog_name = $("#catalog_name").val();
						// catalog_name = catalog_name.replaceAll(/[&\/\\#+(â€“)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
						// catalog_name = catalog_name.replace(/[^\w]/gi, '_');
						catalog_name = catalog_name.replace(/[^\w\u0600-\u06FF\s]/gi, '_');

						var catalog_element = $("#catalogElements").val();

						/* catalog In history start's here */
						var current_ID = divId + divIdCount++;

						allDivIds.push(current_ID);
						var clsName = catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID;
						let checkSpaceInCatalogName = clsName.replaceAll(" ", "---") + "_catalog";
						/* catalog In history End's here */


						const historyItemId = catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID + "11"

						$.ajax({
							url: "validateCatalogName", // url: "/findTables?dbName="+db_name,
							data: { 'cataloName': catalog_name, 'parentID': parentID },
							success: function (data) {
								if (data == '') {
									if (catalog_name && catalog_element) {
										$.ajax({
											url: "getCatalogTable", //getCatalogTableFromXML
											data: { 'tableName': catalog_element, 'catalog_name': catalog_name, 'architectureId': architectureId },
											success: function (data) {

												console.log("dddataat:::", data)

												if (allExistElementInHistoryTab.includes(catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID) == false) {
													allExistElementInHistoryTab.push(catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID)
												}
												historyTab(architectureId)

												openedCatalogName = catalog_name;
												openedCatalogElementName = catalog_element;
												openedCatalogFolderId = parentID;
												openedCatalogArchitectureId = architectureId;

												currentWindowID = catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID;
												updateModelStatus(catalog_name, parentID, "catalog");


												$('#chart').hide();
												$('#catalogfilter').show();
												$("#catalog").show();

												///////////////////////////////////////////////////////////////////////
												let rowData = data['rowData']
												let header = data['header'][0]
												let ObjectIds = data['ObjectIds'][0]
												let objectNamesAndIdsDict = {};
												let arrayOfObject = []
												rowData.map((item, index) => {
													let currentRow = item;
													let tempHashMap = {}
													objectNamesAndIdsDict[item[0]] = ObjectIds[index];
													currentRow.map((item1, index1) => {
														let headerItem = header[index1]
														let bodyItem = item1;
														tempHashMap[headerItem] = bodyItem;
													})
													arrayOfObject.push(tempHashMap)
												})

												let columnDefs = []

												header.map((headerItem, i) => {
													if (headerItem === Name) {
														columnDefs.push({
															sortable: sortable,
															filter: filter,
															filter: filterType,
															floatingFilter: floatingFilter,
															width: width,
															autoHeight: autoHeight,
															field: headerItem,
															cellRenderer: 'openObjectFormWhenClickOnObjectNameFromCatalog',
															cellRendererParams: {
																clicked: function (field) {
																	updateFormModal(field, catalog_element, "null", "catalog", objectNamesAndIdsDict[field], architectureId);
																}
															},
															cellStyle: function (params) {
																return { color: '#014FB1' };
															}
														})
													} else {
														columnDefs.push({
															sortable: sortable,
															filter: filter,
															filter: filterType,
															floatingFilter: floatingFilter,
															width: width,
															autoHeight: autoHeight,
															field: headerItem,
															cellRenderer: function (param) {
																return param.value
															}
														})
													}
												})

												// let the grid know which columns and what data to use
												catalogAgGridDictionary[catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID] = { header: columnDefs, body: arrayOfObject }
												gridOptions.api.setColumnDefs(columnDefs);
												gridOptions.api.setRowData(arrayOfObject);
												gridOptions.getRowStyle = function (params) {
													if (params.node.rowIndex % 2 === 0) {
														return { background: '#F5F5F5' }
													} else {
														return { background: '#D7F0F2' }
													}
												}
												$("#catalogGridParent").css("display", "block");
												hideLoader();
												// hideLoader();
												///////////////////////////////////////////////////////////////////////

												$("#element_title").show().text(catalog_name + " [" + companyName + "]");
												$('#element_title').prop('title', catalog_name + " [" + companyName + "]");

												$(".catalog_save_button").empty();
												$(".catalog_save_button").append('<select class="form-control" id="catalogScriptActionSelect" style="width: max-content;display: inline;vertical-align: middle;margin-right: 5px;" aria-label="Default select example"><option selected value="All" disabled>' + select_script + '</option><option value="All">' + select_all + '</option></select>');
												$(".catalog_save_button").append('<div class="btn-group"><button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#e3fdff;">Action</button><div style="background-color:#e3fdff;" class="dropdown-menu"><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalog_name + '\',\'create\',\'' + current_ID + '\');">Create</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalog_name + '\',\'edit\',\'' + current_ID + '\');">' + edit + '</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalog_name + '\',\'delete\',\'' + current_ID + '\');">' + Delete + '</a></div>');
												// $(".catalog_save_button").append("<button id='catalog_save_button_" + catalog_name.replaceAll(' ', '_') + "' style='font-size: 20px;' title="+save+" class='btn' onclick='saveCatalog(\"" + catalog_name + "\",\"" + catalog_element + "\",\"" + companyName + "\",\"" + folderID + "\",\"" + parentID + "\",\"" + current_ID + "\",\""+architectureId+"\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
												$(".catalog_save_button").append(`
												    <button id="catalog_save_button_${catalog_name.replaceAll(' ', '_')}" style="font-size: 20px;" title="${save}" class="btn" 
												            onclick="saveCatalog('${catalog_name}', '${catalog_element}', '${companyName}', '${folderID}', '${parentID}', '${current_ID}', '${architectureId}');">
												        <span class="fa fa-floppy-o save-btn" aria-hidden="true"></span>
												    </button>
												`);

												// if(globalLanguage == "Ar"){
												// $(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a></div>');

												// }else{

												$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">' + export_as_excel + '</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">' + export_as_PDF + '</a></div>');

												// }

												catalogSaveButton["catalog_save_button_" + catalog_name.replaceAll(' ', '_')] = false;
												var dataTable_catalog;
												if (dataTable_catalog_created == false) {
													dataTable_catalog = $('#catalog_table').DataTable({ paging: false });
													dataTable_catalog_created = true;
												}
												//HISTORY WORK FOR CATALOG CREATE
												if (historyTabItems.includes(catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID) == false) {
													//$("#repositoryID"+architectureId).append('<div id="' + current_ID + '11" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalog_name+"_"+parentID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + parentID + '\',\'' + parentID + '\',\'' + current_ID + '\',\'history\',\''+architectureId+'\', \''+companyName+'\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
													$("#repositoryID" + architectureId).append('<div id="' + historyItemId + '" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + historyItemId + '\', \'' + catalog_name + '\', \'' + parentID + '\', \'' + catalog_element + '\', \'' + architectureId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + parentID + '\', null, \'' + current_ID + '\',\'history\',\'' + architectureId + '\', \'' + companyName + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');

													$("#history_tab").css("display", "flex")
													historyTabItems.push(catalog_name.replaceAll(" ", "---") + "_catalog_" + parentID);
													getDivIdFromClsName[clsName] = current_ID;
												} else {
													$("." + clsName).remove();
													$("#repositoryID" + architectureId).append('<div id="' + historyItemId + '" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + historyItemId + '\', \'' + catalog_name + '\', \'' + parentID + '\', \'' + catalog_element + '\', \'' + architectureId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + parentID + '\', null, \'' + current_ID + '\',\'history\',\'' + architectureId + '\', \'' + companyName + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
													$("#history_tab").css("display", "flex");
												}




												// Example currentClassName to check
												let currentClassName = clsName;
												// Iterate over the keys in the object
												for (let key in getDivIdFromClsName) {
													// Check if the key includes the desired currentClassName
													if (key.includes(currentClassName)) {
														// Retrieve the corresponding value
														let value = getDivIdFromClsName[key];
														current_ID = value;
														// Perform any desired operations with the value
													}
												}

												setActiveElementInHistoryTab(historyItemId);
												hideLoader();
											}

										});
										dialog.dialog("close");
									}
									else {
										hideLoader();
										dialog.dialog("open");
										$(".alert_message").html('<div class="alert alert-warning" role="alert"> ' + select_element_enter_name + ' </div>');
										alert_message_function();
									}
								}
								else {
									$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_exist_message + '</div>');
									alert_message_function();
									hideLoader();
								}
								setActiveElementInHistoryTab(historyItemId);
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
			addCatalog();
		});
		dialog.dialog("open");
	});
}

function emptyTheGridTable(loading) {
	if (loading) {
		gridOptions.api.setColumnDefs([]);
		gridOptions.api.setRowData([]);
		gridOptions.api.showLoadingOverlay();
	} else {
		gridOptions.api.setColumnDefs([]);
		gridOptions.api.setRowData([]);
		$("#catalogGridParent").css("display", "none");
	}
}


function showCatalog(catalogName, catalog_element, companyName, folderID, parentID, showDivID, route, architectureId, architectureName, catalogId) {
	// console.log("catalogName, catalog_element, companyName, folderID, parentID, showDivID,route,architectureId, architectureName, catalogId");
	// console.log(catalogName, catalog_element, companyName, folderID, parentID, showDivID, route, architectureId, architectureName, catalogId)

	setDeactiveElementInHistoryTab();

	openedCatalogName = catalogName;
	openedCatalogFolderId = folderID;
	openedCatalogArchitectureId = architectureId;

	showLoader();
	emptyTheGridTable(true)

	// initalizeModelStatus(catalogName, folderID);

	let scriptColumns = catalogScriptNamesAndColumnsDict[catalogName];
	$("#historyList").css("display", "none");
	$("#element_title").show().text(catalogName + " [" + architectureName + "]");
	$('#element_title').prop('title', catalogName + " [" + architectureName + "]");
	//	elementTitle(name, id, architectureName)
	//     	$("#downloadCatalogButton").remove();
	$(".catalog_save_button").empty();
	$(".catalog_save_button").append('<select class="form-control" id="catalogScriptActionSelect" style="width: max-content;display: inline;vertical-align: middle;margin-right: 5px;" aria-label="Default select example"><option selected value="All" disabled>' + select_script + '</option><option value="All">' + select_all + '</option></select>');
	$.each(scriptColumns, function (i, val) {
		if (val != '') {
			$(".catalog_save_button select").append('<option value' + val + '>' + val + '</option');
		}
	});
	$(".catalog_save_button").append('<div class="btn-group"><button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#e3fdff;">' + action + '</button><div id="catalogDropDownItemsDiv" style="background-color:#e3fdff;" class="dropdown-menu"><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalogName + '\',\'create\',\'' + showDivID + '\');"><div style="display:flex; align-items:center; gap:2px"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_object"/><span>' + create_script + '</span></div></a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalogName + '\',\'edit\',\'' + showDivID + '\');"><div style="display:flex; align-items:center; gap:2px"><i class="fa fa-pencil" aria-hidden="true"></i><spring:message code="new_object"/><span>' + edit_script + '</span></div></a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\'' + catalogName + '\',\'delete\',\'' + showDivID + '\');"><div style="display:flex; align-items:center; gap:2px"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="new_object"/><span>' + delete_script + '</span></div></a></div>');
	$(".catalog_save_button").append("<button id='catalog_save_button_" + catalogName.replaceAll(' ', '_') + "' style='font-size: 20px;' title=" + save + " class='btn' onclick='saveCatalog(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + companyName + "\",\"" + folderID + "\",\"" + parentID + "\",\"" + showDivID + "\",\"" + architectureId + "\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
	//	$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Download' class='btn' onclick='downloadCatalog(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + showDivID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
	//	$(".catalog_save_button").append("<button id=\"downloadCatalogAsPDF\" style='font-size: 20px;' title='Download As PDF' class='btn' onclick='downloadCatalogAsPDF(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + showDivID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")


	//	if(globalLanguage == "Ar"){
	//		$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">'+export_as_excel+'</a></div>');
	//	}else{

	$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">' + export_as_excel + '</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">' + export_as_PDF + '</a></div>');
	//	}


	$("#catalog_save_button_" + catalogName.replaceAll(' ', '_')).prop("disabled", catalogSaveButton["catalog_save_button_" + catalogName.replaceAll(' ', '_')]);
	//     	$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+null+"\",\""+showDivID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")


	
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "block");
	$("#historyList").css("display", "none");

	if (catalogAgGridDictionary[catalogName.replaceAll(" ", "---") + "_catalog_" + folderID] != undefined && route == 'history') {
		setTimeout(function () {
			gridOptions.api.setColumnDefs(catalogAgGridDictionary[catalogName.replaceAll(" ", "---") + "_catalog_" + folderID]['header']);
			gridOptions.api.setRowData(catalogAgGridDictionary[catalogName.replaceAll(" ", "---") + "_catalog_" + folderID]['body']);
			gridOptions.getRowStyle = function (params) {
				if (params.node.rowIndex % 2 === 0) {
					return { background: '#F5F5F5' }
				} else {
					return { background: '#D7F0F2' }
				}
			}
			$("#catalogGridParent").css("display", "block");
			hideLoader();
		}, 10);


	} else {
		$.ajax({
			url: "getCatalogTable",
			data: { 'tableName': catalog_element, 'catalog_name': catalogName, 'architectureId': architectureId },
			success: function (data) {

				let rowData = data['rowData'];
				let header = data['header'][0];
				let ObjectIds = data['ObjectIds'][0];

				let objectNamesAndIdsDict = {};
				let arrayOfObject = [];
				rowData.map((item, index) => {
					let currentRow = item;
					let tempHashMap = {}

					currentRow.map((item1, index1) => {
						let headerItem = header[index1]
						let bodyItem = item1;
						objectNamesAndIdsDict[item[0]] = ObjectIds[index];
						if (headerItem == "Name") {

							tempHashMap[headerItem] = "" + bodyItem + "";
						} else {
							tempHashMap[headerItem] = bodyItem;
						}
					})

					arrayOfObject.push(tempHashMap)
				})

				let columnDefs = []

				header.map((headerItem) => {
					if (headerItem === Name) {
						columnDefs.push({
							sortable: sortable,
							filter: filter,
							// filter: CustomFilterForNameField,
							// filter: filterType,
							floatingFilter: floatingFilter,
							// filterFramwork: CustomFilterComponent,
							width: width,
							autoHeight: autoHeight,
							field: headerItem,
							cellRenderer: 'openObjectFormWhenClickOnObjectNameFromCatalog',
							cellRendererParams: {
								clicked: function (field) {
									updateFormModal(field, catalog_element, "null", "catalog", objectNamesAndIdsDict[field], architectureId);
								}
							},
							cellStyle: function (params) {
								return { color: '#014FB1' };
							}
						})
					} else {
						columnDefs.push({
							sortable: sortable,
							filter: filter,
							filter: filterType,
							floatingFilter: floatingFilter,
							width: width,
							autoHeight: autoHeight,
							field: headerItem,
							cellRenderer: function (param) {
								return param.value
							}
						})
					}
				})

				// let the grid know which columns and what data to use

				gridOptions.getRowStyle = function (params) {
					if (params.node.rowIndex % 2 === 0) {
						return { background: '#F5F5F5' }
					} else {
						return { background: '#D7F0F2' }
					}
				}
				gridOptions.api.setColumnDefs(columnDefs);
				gridOptions.api.setRowData(arrayOfObject);

				catalogAgGridDictionary[catalogName.replaceAll(" ", "---") + "_catalog_" + folderID] = { header: columnDefs, body: arrayOfObject }
				$("#catalogGridParent").css("display", "block");
				hideLoader();
			}
		});
	}

	const historyItemId = catalogName.replaceAll(" ", "---") + "_catalog_" + folderID + "11";
	setActiveElementInHistoryTab(historyItemId);

	// ------- highlight selected graph --------
	setTimeout(() => {
		let catalogLiId = catalogName.replaceAll(' ', '---') + "" + catalogId;
		removeClassFromElement('openedActive');
		addClassToElement(catalogLiId, 'openedActive');
	}, 500);
	// ------- highlight selected graph --------	


	catalogView();



}

function create_edit_delete_scripts(catalog_name, action, catalog_id) {
	let selectedScriptName = $(".catalog_save_button select").val();
	let openModal = false;
	if ((selectedScriptName == 'All' || selectedScriptName == null) && (action == 'delete' || action == 'edit')) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + select_a_saved_script + '</div>');
		alert_message_function();
	} else if (action == 'create' || action == 'edit') {
		openCatalogScriptModal(catalog_name, action, catalog_id)
	} else if (action == 'delete') {
		$.ajax({
			url: "deleteCatalogScripts",
			data: { 'scriptName': selectedScriptName },
			success: function (data) {
				if (data == 1) {
					$(".alert_message").html('<div class="alert alert-success" role="alert">' + script_has_been_deleted + '</div>');
					alert_message_function();
					let scriptColumns = catalogScriptNamesAndColumnsDict[catalog_name];
					scriptColumns = scriptColumns.filter(e => e !== selectedScriptName);
					catalogScriptNamesAndColumnsDict[catalog_name] = scriptColumns;
					$('#catalogScriptActionSelect option:selected').remove();
				}
			},
			async: false
		});
	}
}
var availableScriptColumns = [];

function openCatalogScriptModal(catalog_name, action, catalog_id) {
	let actionButton = capitalizeFirstLetter(action);
	if (actionButton == 'Edit') {
		actionButton = save;
	}
	var catalog_table_var = document.getElementById(catalog_id);
	//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
	//	$.each(theadVar, function(i, item) {
	//		availableScriptColumns.push(item.innerHTML)
	//	});


	////////////////////////////////////////////////////////////////////
	let rowData = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	availableScriptColumns = Object.keys(rowData[0]);

	////////////////////////////////////////////////////////////////////


	let selectedScriptName = $(".catalog_save_button select").val();

	//// will be changed after saving and fetching - start

	let scriptColumnsArray = [];
	let leftColumnRemainingColumns = availableScriptColumns;
	$('#addedColumnsForCatalogScripts').empty();
	$('#availableColumnsForCatalogScripts').empty();
	if (action == 'edit') {
		$('#catalogScriptName').prop("disabled", true);
		$('#catalogScriptName').val(selectedScriptName);
		$.ajax({
			url: "getCatalogScriptColumns",
			data: { 'scriptName': selectedScriptName },
			success: function (scriptColumns) {
				scriptColumnsArray = scriptColumns.split(';')
				leftColumnRemainingColumns = leftColumnRemainingColumns.filter(function (el) {
					return !scriptColumnsArray.includes(el);
				});
				$.each(scriptColumnsArray, function (i, item) {
					$('#addedColumnsForCatalogScripts').append('<span>' + item + '</span>');
				});
				addToggleClass('addedColumnsForCatalogScripts', 'selectedCatalogAddedScriptColumn');
				doubleClickToggle('addedColumnsForCatalogScripts');
			},
			async: false
		});
	} else {
		$('#catalogScriptName').prop("disabled", false);
		$('#catalogScriptName').val('');
	}


	//	let alreadyAddedColumns = [];
	//	
	//	$.each($("#addedColumnsForCatalogScripts span"), function(i, item) {
	//		let temp1 = item.innerHTML;
	//		alreadyAddedColumns.push(temp1)
	//	});
	//	let leftColumnRemainingColumns = availableScriptColumns;
	//	leftColumnRemainingColumns = leftColumnRemainingColumns.filter( function( el ) {
	//	  return !alreadyAddedColumns.includes( el );
	//	} );


	//// will be changed after saving and fetching - end

	$('#availableColumnsForCatalogScripts').empty();
	$.each(leftColumnRemainingColumns, function (i, item) {
		$('#availableColumnsForCatalogScripts').append('<span>' + item + '</span>');
	});

	//	$('#availableColumnsForCatalogScripts span').click(function() {
	//		$(this).toggleClass('selectedCatalogAvailableScriptColumn');
	//	});
	addToggleClass('availableColumnsForCatalogScripts', 'selectedCatalogAvailableScriptColumn');
	doubleClickToggle('availableColumnsForCatalogScripts');


	$('#catalogScriptRight').click(function () {
		let valuesToRightShiftArray = [];
		let valuesToShiftRight = $(".selectedCatalogAvailableScriptColumn");
		$.each(valuesToShiftRight, function (i, item) {
			valuesToRightShiftArray.push(item.innerHTML)
			$(item).remove();
		});
		fillDataInRightCatalogScriptColumn(valuesToRightShiftArray);
	});

	$('#catalogScriptLeft').click(function () {
		let valuesToLeftShiftArray = [];
		let valuesToLeft = $(".selectedCatalogAddedScriptColumn");
		$.each(valuesToLeft, function (i, item) {
			valuesToLeftShiftArray.push(item.innerHTML)
			$(item).remove();
		});
		fillDataInLeftCatalogScriptColumn(valuesToLeftShiftArray);
	});



	/*
	$('#catalogScriptRight').click(function() {
//		var valuesToShiftRight = document.getElementsByClassName("selectedCatalogAvailableScriptColumn");
		var valuesToShiftRight = $(".selectedCatalogAvailableScriptColumn");
		$.each(valuesToShiftRight, function(i, item) {
			$('#addedColumnsForCatalogScripts').append('<span>' + item.innerHTML + '</span>');
			$(item).remove();
		});
		$('#addedColumnsForCatalogScripts span').click(function() {
			$(this).toggleClass('selectedCatalogAddedScriptColumn');
		});
	});
	*/

	$(function () {
		var dialog, form,
			dialog = $("#catalogScriptsModal").dialog({
				autoOpen: false,
				height: 400,
				width: 500,
				modal: true,
				buttons: {
					[actionButton]: function addCatalogScript() {
						let alreadyAddedColumns = $("#addedColumnsForCatalogScripts span")
						let alreadyAddedColumnsArray = [];
						let scriptName = $('#catalogScriptName').val();
						if (scriptName != '' && alreadyAddedColumns.length > 0) {
							$.each(alreadyAddedColumns, function (i, item) {
								let temp1 = item.innerHTML;
								alreadyAddedColumnsArray.push(temp1)
							});
							let nameCheckForCreate = false;
							if (action == 'create') {
								$.ajax({
									url: "validateCatalogScriptName",
									data: { 'catalog_script_name': scriptName },
									success: function (data) {
										if (data == '') {
											nameCheckForCreate = true;
										} else {
											$(".alert_message").html('<div class="alert alert-danger" role="alert">' + script_name_already_exists + '</div>');
											alert_message_function();
										}
									},
									async: false
								});
							} else if (action == 'edit') {
								nameCheckForCreate = true;
							}
							if (nameCheckForCreate == true) {
								$.ajax({
									url: "createOrEditCatalogScripts",
									data: { 'action': action, 'catalog_name': catalog_name, 'scriptName': scriptName, 'scriptColumns': alreadyAddedColumnsArray },
									success: function (data) {
										if (action == 'create') {
											addScriptInDropdown(scriptName, catalog_name);
											$(".alert_message").html('<div class="alert alert-success" role="alert">' + script_created + '</div>');
											alert_message_function();
										} else {
											$(".alert_message").html('<div class="alert alert-success" role="alert">' + script_edited + '</div>');
											alert_message_function();
										}

									}
								});
								dialog.dialog("close");
							}
						} else {
							$(".alert_message").html('<div class="alert alert-danger" role="alert"> ' + enter_script_name_select_scripts + '</div>');
							alert_message_function();
						}

					},
					[Cancel]: function () {
						dialog.dialog("close");
					}
				}
			});

		form = dialog.find("form").on("submit", function (event) {
			event.preventDefault();
			addMatrix();
		});

		//$( "#create-user" ).button().on( "click", function() {
		dialog.dialog("open");
		// 		  } );  
	});
}

function fillDataInRightCatalogScriptColumn(valuesToShiftRight) {
	let alreadyAddedColumns = $("#addedColumnsForCatalogScripts span")
	$.each(alreadyAddedColumns, function (i, item) {
		let temp1 = item.innerHTML;
		valuesToShiftRight.push(temp1)
	});
	$('#addedColumnsForCatalogScripts').empty();

	valuesToShiftRight.sort(function (a, b) {
		return availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b);
	});
	valuesToShiftRight.sort((a, b) => availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b));

	$.each(valuesToShiftRight, function (i, item) {
		$('#addedColumnsForCatalogScripts').append('<span>' + item + '</span>');
	});

	//		$('#addedColumnsForCatalogScripts span').click(function() {
	//			$(this).toggleClass('selectedCatalogAddedScriptColumn');
	//		});
	addToggleClass('addedColumnsForCatalogScripts', 'selectedCatalogAddedScriptColumn');
	doubleClickToggle('addedColumnsForCatalogScripts');
}

function fillDataInLeftCatalogScriptColumn(valuesToShiftLeft) {
	let alreadyAvailableColumns = $("#availableColumnsForCatalogScripts span")
	$.each(alreadyAvailableColumns, function (i, item) {
		let temp1 = item.innerHTML;
		valuesToShiftLeft.push(temp1)
	});
	$('#availableColumnsForCatalogScripts').empty();

	valuesToShiftLeft.sort(function (a, b) {
		return availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b);
	});
	valuesToShiftLeft.sort((a, b) => availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b));

	$.each(valuesToShiftLeft, function (i, item) {
		$('#availableColumnsForCatalogScripts').append('<span>' + item + '</span>');
	});

	//		$('#addedColumnsForCatalogScripts span').click(function() {
	//			$(this).toggleClass('selectedCatalogAddedScriptColumn');
	//		});
	addToggleClass('availableColumnsForCatalogScripts', 'selectedCatalogAvailableScriptColumn');
	doubleClickToggle('availableColumnsForCatalogScripts');
}

function addScriptInDropdown(scriptName, catalog_name) {
	let scriptColumns = [];
	if (catalogScriptNamesAndColumnsDict[catalog_name] != null) {
		scriptColumns = catalogScriptNamesAndColumnsDict[catalog_name];
	}
	scriptColumns.push(scriptName)
	catalogScriptNamesAndColumnsDict[catalog_name] = scriptColumns;
	$(".catalog_save_button select").append('<option value' + scriptName + '>' + scriptName + '</option');
}

function doubleClickToggle(columnId) {
	$('#' + columnId + ' span').dblclick(function () {
		//		$("#availableColumnsForCatalogScripts span").dblclick(function() {
		let val = [this.innerHTML]
		$(this).remove();
		if (columnId == 'availableColumnsForCatalogScripts') {
			fillDataInRightCatalogScriptColumn(val);
		} else {
			fillDataInLeftCatalogScriptColumn(val);
		}
	});
}
function addToggleClass(columnId, toggleClass) {
	$('#' + columnId + ' span').click(function () {
		$(this).toggleClass(toggleClass);
	});
}




//function CustomFilterForNameField(){
//	openAgGridNameFilterModal()
//}
//
//
//function openAgGridNameFilterModal(){
//	var modal = document.getElementById("AgGridNameFilterModal");
//	modal.style.display = "block";
//	// $("#AgGridNameFilterModal").draggable();
//
//	var span = document.getElementById("closeAgGridNameFilterModal");
//	span.onclick = function() {
//	    modal.style.display = "none";
//	}
//
//	showLoader();
//
//    $('#AgGridNameElementDropdown').empty().append('<option disabled selected> '+select_element+' </option>')
//	$.ajax({
//		url: "getElementsFromXML",
//		data: {},
//		success: function(data) {
//			$.each(data, function(i, item) {
//
//	   			 $("#AgGridNameElementDropdown").append($('<option>',{
//	 				 value: item,
//	 				 text : customDictionary[item.replaceAll(" ", "_")]
//	 			 }));
//			});
//
//			hideLoader();
//		}
//	});
//
//	$('#AgGridNameFilterObjectDropdown').empty().append('<option disabled> '+select_an_object+' </option>')
//
//
//
//}
//
//function getObjectNamesForSelectedElementInAgGridNameFilter(){
//	showLoader();
//
//	var elementName = $('#AgGridNameElementDropdown').val();
//	$.ajax({
//	    url: "getObjectNamesforDiagramDropdown",
//	    data: { elementName },
//	    success: function (objectNames) {
//
//			$('#AgGridNameFilterObjectDropdown').empty().append('<option disabled> '+select_an_object+' </option>')
//	        for (var i = 0; i < objectNames.length; i++) {
//	            $('#AgGridNameFilterObjectDropdown').append('<option value="' + objectNames[i] + '">' + objectNames[i] + '</option>');
//	        }
//	        $('#AgGridNameFilterObjectDropdown').multiselect('rebuild');
//	        enableAndDisableObjectAndAttributeDropdown();
//
//			// $("#diagramFilterObjectTable").find("tr:gt(0)").remove();
//			// $("#diagramFilterAttributeTable").find("tr:gt(0)").remove();
//
//			hideLoader();
//	    }
//	});
//}


// for custom filter set ''filter: CustomFilterForNameField'' in function showCatalog()




	// catalog work End's here