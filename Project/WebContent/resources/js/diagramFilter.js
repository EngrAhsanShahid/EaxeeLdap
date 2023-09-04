var previousDiagramDrawn = "";
var savediagramWithOutFilter = false;
var restrictToDeleteObjectTableRow = false;
var fillElementDropDownFlag = false

let filterItemsForStickyHeaderBar = {}
var isDiagramFiltered = false

function openDiagramFilterModal(){
	var modal = document.getElementById("diagramFilterModal");
	modal.style.display = "block";
	// $("#diagramFilterModal").draggable();
	
	var span = document.getElementById("closeDiagramFilterModal");
	span.onclick = function() {
	    modal.style.display = "none";
	}
	if(!fillElementDropDownFlag){
		getElementsForElementsDropDown()
	}
	//	fillElementDropDownFlag = true
	enableAndDisableObjectAndAttributeDropdown()
	
}

function closeDiagramFilterModal(){
	var modal = document.getElementById("diagramFilterModal");
	modal.style.display = "none";
}

function getElementsForElementsDropDown() {

    $(".loader").css("display", "block");

    $('#filterDiagramElementDropdown').empty().append('<option disabled selected> '+select_element+' </option>')
	$.ajax({
		url: "getElementsFromXML",
		data: {},
		success: function(data) {
			$.each(data, function(i, item) {
				// var getDivID = "#filterDiagramElementDropdown";
				// fill_elements_in_dropdown(getDivID, item);

	   			 $("#filterDiagramElementDropdown").append($('<option>',{ 
	 				 value: item,
	 				 text : customDictionary[item.replaceAll(" ", "_")]
	 			 }));
			});
			
			$(".loader").css("display", "none");
			fillElementDropDownFlag = true
		}
	});
}

function getObjectNamesForSelectedElement() {
	
	$(".loader").css("display", "block");
	
    var elementName = $('#filterDiagramElementDropdown').val();
    $.ajax({
        url: "getObjectNamesforDiagramDropdown",
        data: { elementName },
        success: function (objectNames) {

			$('#graphObjectDropdown').empty().append('<option disabled> '+select_an_object+' </option>')
            for (var i = 0; i < objectNames.length; i++) {
                $('#graphObjectDropdown').append('<option value="' + objectNames[i] + '">' + objectNames[i] + '</option>');
            }
            $('#graphObjectDropdown').multiselect('rebuild');
            enableAndDisableObjectAndAttributeDropdown();
            
			$("#diagramFilterObjectTable").find("tr:gt(0)").remove();
			$("#diagramFilterAttributeTable").find("tr:gt(0)").remove();
			
			$(".loader").css("display", "none");
        }
    });
}

function getAttributesForSelectedElement(objectName){
	$(".loader").css("display", "block");

	var elementName = $('#filterDiagramElementDropdown').val();
    $.ajax({
        url: "getAttributesforDiagramFilterDropdown",
        data: { elementName },
        success: function (Attributes) {
	
			$('#graphElementAttributeDropdown').empty().append('<option disabled selected> '+select_attributes+' </option>')
			$("#graphElementAttributeDropdown").prop('disabled', false);
			
			$.each(Attributes, function(i, item) {
				// var getDivid = "#graphElementAttributeDropdown";
				// fill_elements_in_dropdown(getDivid, item);
				
	   			 $("#graphElementAttributeDropdown").append($('<option>',{ 
	 				 value: item,
	 				 text : customDictionary[item.replaceAll(" ", "_")]
	 			 }));
				
				

			});

			enableAndDisableObjectAndAttributeDropdown();
			$(".loader").css("display", "none");
        }
    });
	
}

function enableAndDisableObjectAndAttributeDropdown(){
	var isChecked = document.getElementById("enableDisableObjectAttribute").checked;
	
	if(isChecked){
		$("#graphObjectDropdown").multiselect("disable");
		$("#graphElementAttributeDropdown").prop('disabled', false);
	}else{
		$("#graphObjectDropdown").multiselect("enable");
		$("#graphElementAttributeDropdown").prop('disabled', true);
	}
}


function toggleDiagramFilterDropDownSelect(){
	
	var isChecked = document.getElementById("enableDisableObjectAttribute").checked;
	
	$('#graphElementAttributeDropdown').empty().append('<option disabled selected> '+select_attributes+' </option>')
	$('#graphObjectDropdown').empty().append('<option disabled> '+select_an_object+' </option>')
	$('#graphObjectDropdown').multiselect('rebuild');
	
	if(isChecked){
		
		$(".loader").css("display", "block");
		
		$("#graphObjectDropdown").multiselect("disable");
		$("#graphElementAttributeDropdown").prop('disabled', false);
		$("#diagramFilterObjectTable").addClass("disabled");

		$("#diagramFilterAttributeTable").removeClass("disabled");
		//		$("#graphElementAttributeDropdown").multiselect("enable");
		restrictToDeleteObjectTableRow = true;
		
		var parent = graph1.getDefaultParent();
		var allVerticesDrawn = graph1.getChildVertices(parent);
		
		$('#filterDiagramElementDropdown').empty().append('<option disabled selected> '+select_element+' </option>')

		let openDiagramElementNames = [];
		
		allVerticesDrawn.map((item)=>{
			if(item.style.toLowerCase().includes(".svg")){
				let newObjectElement = item.style.split("/")
				// console.log(item)
				newObjectElement = newObjectElement[newObjectElement.length - 1];
				newObjectElement = newObjectElement.split('.svg');
				newObjectElement = newObjectElement[0].replaceAll('-', ' ');
				newObjectElement = capitalizeFirstLetter(newObjectElement);
				// console.log("elementName:", newObjectElement )
				openDiagramElementNames.push(newObjectElement)
			}
		})
		
		openDiagramElementNames = [... new Set(openDiagramElementNames)]
		
		openDiagramElementNames.map((elementName)=>{
			// var getDivID = "#filterDiagramElementDropdown";
			// fill_elements_in_dropdown(getDivID, elementName)
			
   			 $("#filterDiagramElementDropdown").append($('<option>',{ 
 				 value: elementName,
 				 text : customDictionary[elementName.replaceAll(" ", "_")]
 			 }));
					
			//	$('#filterDiagramElementDropdown').append('<option value="' + elementName + '">' + elementName + '</option>'); // to empty attribute dropdown
		})
		$("#diagramFilterObjectTable").find("tr:gt(0)").remove(); // to empty attribute table
		
		
		$(".loader").css("display", "none");
		
	}else{
		
		$("#graphObjectDropdown").multiselect("enable");
		$("#graphElementAttributeDropdown").prop('disabled', true);
		$("#diagramFilterAttributeTable").addClass("disabled");
		$("#diagramFilterObjectTable").removeClass("disabled");
		
		$("#diagramFilterAttributeTable").find("tr:gt(0)").remove();
		restrictToDeleteObjectTableRow = false;
		
		
		fillElementDropDownFlag = false
		getElementsForElementsDropDown();
	}
	
	
	
	//	document.getElementById("graphObjectDropdownParentDiv").style.pointerEvents = isChecked ? "none" : "auto";
	//	document.getElementById("graphElementAttributeDropdownParentDiv").style.pointerEvents = !isChecked ? "none" : "auto";
	
}


const generateRandomColor = () => {
	const randomColor = Math.floor(Math.random()*16777215).toString(16);
	var randomColorGenerate = "#" + randomColor;
	return  randomColorGenerate;
}

function objectDropDownOnchange(isChecked, objectName) {
	
	
	var newGeneratedColor = generateRandomColor()
	var rowsLength = document.getElementById("diagramFilterObjectTable").rows.length-1;
		// console.log("tablelength:",rowsLength)


	if(isChecked){
		if(rowsLength < 5 ){
			var table = document.getElementById("diagramFilterObjectTable");
			var row = table.insertRow();
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			cell1.innerHTML = objectName;
			cell1.className = 'diagramFilterTableColumn0';
			//			cell2.innerHTML = `<div class="diagramFileterObjectTableRowDiv"><input  type=color value=${newGeneratedColor} class="diagramFileterObjectTableRowInput"> <span class="diagramFileterObjectTableRowCloseSpan" onclick="DeleteCurrentRow(this)">X</span></div>`
			cell2.innerHTML = `<div class="diagramFileterObjectTableRowDiv"><input type=color value=${newGeneratedColor} class="diagramFileterObjectTableRowInput diagramFilterObjectTableRowInput"> <span class="diagramFileterObjectTableRowCloseSpan diagramFilterObjectTableRowInput" onclick="DeleteCurrentRow(this, '${objectName}')">X</span></div>`
			cell2.className = 'diagramFilterTableColumn1';
			
	    }
    }else{

		for(var i=1; i<=rowsLength; i++){
			
			var objectFoundInTable = document.getElementById("diagramFilterObjectTable").rows[i].cells[0].innerText
			var closeButtonSpan = document.getElementById("diagramFilterObjectTable").rows[i].cells[1].firstChild.children[1]
			
			if(objectFoundInTable == objectName){
				DeleteCurrentRow(closeButtonSpan)
			}
		}
	}
}

//function attributeDropDownOnchange(isChecked, attributeName){
//	
//	var newGeneratedColor = generateRandomColor()
//	var rowsLength = document.getElementById("diagramFilterAttributeTable").rows.length-1;
//
//
//	if(isChecked){
////		if(rowsLength < 5 ){
//			var table = document.getElementById("diagramFilterAttributeTable");
//			var row = table.insertRow();
//			var cell1 = row.insertCell(0);
//			var cell2 = row.insertCell(1);
//			cell1.innerHTML = attributeName;
//			//			cell2.innerHTML = `<div class="diagramFileterObjectTableRowDiv"><input  type=color value=${newGeneratedColor} class="diagramFileterObjectTableRowInput"> <span class="diagramFileterObjectTableRowCloseSpan" onclick="DeleteCurrentRow(this)">X</span></div>`
//			cell2.innerHTML = `<div class="diagramFileterAttributeTableRowDiv"><input  type=color value=${newGeneratedColor} class="diagramFileterAttributeTableRowInput"> <span style="display:none" class="diagramFileterAttributeTableRowCloseSpan" onclick="DeleteCurrentRow(this)">X</span></div>`
////	    }
//    }else{
//
//		for(var i=1; i<=rowsLength; i++){
//			
//			var objectFoundInTable = document.getElementById("diagramFilterAttributeTable").rows[i].cells[0].innerText
//			var closeButtonSpan = document.getElementById("diagramFilterAttributeTable").rows[i].cells[1].firstChild.children[1]
//			
//			if(objectFoundInTable == attributeName){
//				DeleteCurrentRow(closeButtonSpan)
//			}
//		}
//	}
//	
//}

function diagramFilterGetAttributeAllowableValues(attributeName){
	var elementName = $('#filterDiagramElementDropdown').val();
    $.ajax({
        url: "diagramFilterGetAttributeAllowableValues",
        data: { elementName, attributeName },
        success: function (allowableValue) {
			
			var table = document.getElementById("diagramFilterAttributeTable");
			$("#diagramFilterAttributeTable").find("tr:gt(0)").remove();
			allowableValue['allowableValues'].map((item, index)=>{
			var newGeneratedColor = generateRandomColor()
				var row = table.insertRow();
				var cell1 = row.insertCell(0);
				var cell2 = row.insertCell(1);
				cell1.innerHTML = item;
				cell1.className = 'diagramFilterTableColumn0';
				//			cell2.innerHTML = `<div class="diagramFileterObjectTableRowDiv"><input  type=color value=${newGeneratedColor} class="diagramFileterObjectTableRowInput"> <span class="diagramFileterObjectTableRowCloseSpan" onclick="DeleteCurrentRow(this)">X</span></div>`
				cell2.innerHTML = `<div class="diagramFileterAttributeTableRowDiv"><input  type=color value=${newGeneratedColor} class="diagramFileterAttributeTableRowInput"></div>`
				cell2.className = 'diagramFilterTableColumn1';				
			})
            
        }
    });
}

function DeleteCurrentRow(el, objectName){
	
	if(!restrictToDeleteObjectTableRow){
	
		 // while there are parents, keep going until reach TR 
		while (el.parentNode && el.tagName.toLowerCase() != 'tr') {
		    el = el.parentNode;
		}
		
		// If el has a parentNode it must be a TR, so delete it
		// Don't delte if only 3 rows left in table
		if (el.parentNode && el.parentNode.rows.length > 0) {
		    el.parentNode.removeChild(el);
		}
		
		if(objectName){
			$('#graphObjectDropdown').multiselect('deselect', objectName);
		}
    
    }
}

function getSelectedObject(selectedObjects) {

	for(var i=0; i<selectedObjects.length; i++){
		var item =  selectedObjects[i];
		console.log(item)
	}
}


function saveDiagramBeforeFiltered(){
	if(!savediagramWithOutFilter){
		// var parent = graph1.getDefaultParent();
		var encoder = new mxCodec();
		var node = encoder.encode(graph1.getModel());
		var xml_str = mxUtils.getXml(node);
		
		previousDiagramDrawn = xml_str;
		savediagramWithOutFilter = true;
	}
}

function resetFilteredDiagram(){
	if(savediagramWithOutFilter){
	    let edgesHiddenOrVisible =  !previousDiagramDrawn.includes("visible=\"0\"");
		let tempDiagram = previousDiagramDrawn.replaceAll("visible=\"0\"","");
		$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);
		
		
		var diagram = mxUtils.parseXml(tempDiagram);
	    var codec = new mxCodec(diagram);
	    codec.decode(diagram.documentElement, graph1.getModel());
	    
	    ////
		
		let parent = graph1.getDefaultParent();
		let edges = graph1.getChildEdges(parent);
		graphEdges[graph_name.replaceAll(' ','_')] = edges;
		graph1.toggleCells(edgesHiddenOrVisible, edges, true);
	}
}

function diagramFilterApplyButtonOnClick(){
	filterItemsForStickyHeaderBar = {}
	var dropDownSelectedElementName = $('#filterDiagramElementDropdown').val();
	var EnableAttributeCheckBox = document.getElementById("enableDisableObjectAttribute").checked;
	var HideUnassignedObjects = document.getElementById("diagramFilterHideRelationship").checked;
	
	
	if(dropDownSelectedElementName){
		dropDownSelectedElementName = dropDownSelectedElementName.replace(" ","_")
	}
	
	
	isDiagramFiltered = true;
	saveDiagramBeforeFiltered()
	resetFilteredDiagram();
	
	
	
	if(EnableAttributeCheckBox){ // show by attributes

		let userSelectedAttributeType = document.getElementById("graphElementAttributeDropdown").value;
		let attributeTableData = getDiagramFilterTableData("diagramFilterAttributeTable", "attributeName");

		if(attributeTableData.length == 0){
			let message = "Attribute is not selected!"
			showAlertMessage(message)
			return
		}

		let userSelectedAttributes = [];
		let userSelectedAttributesColor = [];
		let attributesForHideVertices = []
		
		

		attributeTableData.map((item)=>{
			userSelectedAttributes.push(item.attributeName)
			userSelectedAttributesColor.push(item.color)
			
			filterItemsForStickyHeaderBar[item.attributeName] = { color: item.color }
		})

		let OpenedDiagramDetails = getCurrentOpenedDiagramDetail();

		showDiagramFilterItemsInTheStickyHeader(attributeTableData, "attributeName");
		graph1.setEnabled(false);
    	document.getElementById("palete").style.pointerEvents = "none";
    	


		$.ajax({
			url: "checkOpenedDiagramRelationshipsWithOtherSelectedAttributes", 	// url: "/findTables?dbName="+db_name,
			type: "POST",
			data: {
				userSelectedElementName: dropDownSelectedElementName,
				userSelectedAttributeType: userSelectedAttributeType,
				userSelectedAttributes: userSelectedAttributes,
				userSelectedAttributesColor: userSelectedAttributesColor,
				openedDiagramElementName: OpenedDiagramDetails.openedDiagramElementName,
				openedDiagramObjectName: OpenedDiagramDetails.openedDiagramObjectName,
			},
			success: function(data) {
				
				// console.log("data")
				// console.log(data)
				
				let filterAttributeKeys = Object.keys(data)
				
				filterAttributeKeys.map((objName)=>{
					attributesForHideVertices.push(objName.replace(/(\r\n|\n|\r)/gm, " "))
				})
				
				
				var parent = graph1.getDefaultParent();
				var allVerticesDrawn = graph1.getChildVertices(parent);

		  		allVerticesDrawn.map((item, index)=>{
					let diagramObjectName = item.value.replace(/(\r\n|\n|\r)/gm, " ")
		
					filterAttributeKeys.map((filteredAtt)=>{
	
						if(filteredAtt == diagramObjectName){
							let attributeRelationColor = data[filteredAtt]
							
							if(attributeRelationColor){
								let x = 0.5;
									let tempStyle = 'shape=ellipse;strokeColor='+attributeRelationColor+';fillColor='+attributeRelationColor+';rounded=50;shadow=0;strokeWidth=0;'
						  			graph1.insertVertex(allVerticesDrawn[index], null, '', x, 1, 15, 15, tempStyle);
							}
						}
					})
				})
				
				showOrHideUnrelationalDiagrams(HideUnassignedObjects, allVerticesDrawn, attributesForHideVertices)
			}
		});
		

	}else{  //show by objects
		
		let objectTableData = getDiagramFilterTableData("diagramFilterObjectTable", "objectName");

		if(objectTableData.length == 0){
			let message = "Object is not selected!"
			showAlertMessage(message)
			hideDiagramFilterItemsInTheStickyHeader()
			return
		}
		
		let userSelectedObjects = [];
		let objectsForHideVertices = []
		let userSelectedObjectsColor = [];
		
		objectTableData.map((item)=>{
			userSelectedObjects.push(item.objectName)
			//			objectsForHideVertices.push(item.objectName)
			userSelectedObjectsColor.push(item.color)
			filterItemsForStickyHeaderBar[item.objectName] = { color: item.color }
		});
		
		let OpenedDiagramDetails = [];
		
		OpenedDiagramDetails = getCurrentOpenedDiagramDetail();
		

		$.ajax({
			url: "checkOpenedDiagramRelationshipsWithOtherSelectedObjects", 	// url: "/findTables?dbName="+db_name,
			type: "POST",
			data: {
				userSelectedElementName: dropDownSelectedElementName,
				userSelectedObjects: userSelectedObjects,
				userSelectedObjectsColor: userSelectedObjectsColor,
				openedDiagramElementName: OpenedDiagramDetails.openedDiagramElementName,
				openedDiagramObjectName: OpenedDiagramDetails.openedDiagramObjectName,
				'architectureID':openedDiagramArchitectureId
			},
			success: function(data) {
				
				console.log("data",data)
				
				let filterObjectKeys = Object.keys(data)
				
				filterObjectKeys.map((objName)=>{
					objectsForHideVertices.push(objName.replace(/(\r\n|\n|\r)/gm, " "))
				})
				
				var parent = graph1.getDefaultParent();
				var allVerticesDrawn = graph1.getChildVertices(parent);
				

		  		filterObjectKeys.map((filteredObj)=>{
		
					allVerticesDrawn.map((item, index)=>{
						let diagramObjectName = item.value.replace(/(\r\n|\n|\r)/gm, " ")
						
						// console.log(filteredObj, diagramObjectName)
	
						if(filteredObj == diagramObjectName){
							let objectRelationColor = data[filteredObj]
							
							if(objectRelationColor != undefined){
								let x = 0.5;
								objectRelationColor.map((color, colorIndex)=>{
									let tempStyle = 'shape=ellipse;strokeColor='+color+';fillColor='+color+';rounded=50;shadow=0;strokeWidth=0;'
						  			graph1.insertVertex(allVerticesDrawn[index], null, '', x, 1, 15, 15, tempStyle);
									x= x+17;
								})
							}
						}
					})
				})
				
				showOrHideUnrelationalDiagrams(HideUnassignedObjects, allVerticesDrawn, objectsForHideVertices)
			}
		});
		
		
		showDiagramFilterItemsInTheStickyHeader(objectTableData, "objectName")
		graph1.setEnabled(false);
    	document.getElementById("palete").style.pointerEvents = "none";

	}
	
	$("#save_button").hide();
	$("#showHideRelationships").hide();
	$("#change-shape").hide();
	
	
	closeDiagramFilterModal();
	
	
	


}

function showOrHideUnrelationalDiagrams(HideUnassignedObjects, allVerticesDrawn, objectsForHideVertices){
	if(HideUnassignedObjects){
		allVerticesDrawn.map((item, index)=>{
			let diagramObjectName = item.value.replace(/(\r\n|\n|\r)/gm, " ");
			
			let relationExists = objectsForHideVertices.includes( diagramObjectName )
			
			
			if(!relationExists){
				graph1.toggleCells(!graph1.getModel().isVisible(allVerticesDrawn[index]), [allVerticesDrawn[index]], true);
			}
			
		})
	}
}


function showAlertMessage(message){
	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+message+'</div>');
	alert_message_function();
}


function getDiagramFilterTableData(tableId, objectOrAttributeName){
	
	var objectTable = document.getElementById(tableId).rows
	
	var tableData = [];
	for(var i=1; i < objectTable.length; i++){
		var objectName = objectTable[i].cells[0].innerText;
		var color =  objectTable[i].cells[1].firstChild.children[0].value
		
		tableData.push({[objectOrAttributeName]: objectName, color})
	}
	return tableData
}

function getCurrentOpenedDiagramDetail(){
	
	//	let DiagramObjectData = []
	let openedDiagramElementNameArray = []
	let openedDiagramObjectNameArray = []
	
	var parent = graph1.getDefaultParent();
	var allVerticesDrawn = graph1.getChildVertices(parent);
	
	
	allVerticesDrawn.map((item)=>{

		let newObjectElement = item.style.split("/");
		newObjectElement = newObjectElement[newObjectElement.length - 1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-', ' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		
		let tempElementName = newObjectElement.replace(" ", "_")
		let tempObjectName = item.value.replace("\n", " ")
		
		openedDiagramElementNameArray.push(tempElementName)
		openedDiagramObjectNameArray.push(tempObjectName)

	})
	
	return { openedDiagramElementName: openedDiagramElementNameArray, openedDiagramObjectName: openedDiagramObjectNameArray }
}

function showDiagramFilterItemsInTheStickyHeader(tableData, attributeOrObjectName){
	var diagramFilterStickyHeader = document.getElementById("diagramFilterStickyHeader");
	var stickyHeaderChild = ""
	
	document.getElementById("diagramFilterStickyHeaderParentDiv").style.display = "flex"
	diagramFilterStickyHeader.innerHTML = "";
	
	tableData.map((item, index)=>{
		stickyHeaderChild += `
		<div class="diagramFilterCircleParentDiv">
			<span class="circle" style=background-color:${item.color}></span>
			<span class="circleText">${item[attributeOrObjectName]}</span>
		</div>`
	})
	
	diagramFilterStickyHeader.innerHTML = stickyHeaderChild
}

function hideDiagramFilterItemsInTheStickyHeader(){
	var diagramFilterStickyHeader = document.getElementById("diagramFilterStickyHeader");
	
	document.getElementById("diagramFilterStickyHeaderParentDiv").style.display = "none"
	diagramFilterStickyHeader.innerHTML = "";

}

function resetCompleteDiagramFilterModalElements(){
	
	
	$('#graphElementAttributeDropdown').empty().append('<option disabled selected> '+select_attributes+' </option>')
	$('#graphObjectDropdown').empty().append('<option disabled> '+select_an_object+' </option>')
	$('#graphObjectDropdown').multiselect('rebuild');
	
	$("#diagramFilterObjectTable").removeClass("disabled");
	$("#diagramFilterAttributeTable").addClass("disabled");
	
	$("#diagramFilterAttributeTable").find("tr:gt(0)").remove();
	$("#diagramFilterObjectTable").find("tr:gt(0)").remove(); // to empty attribute table
	$("#save_button").show();
	$("#change-shape").show();
	$("#showHideRelationships").show();
	document.getElementById("enableDisableObjectAttribute").checked = false;
	document.getElementById("diagramFilterHideRelationship").checked = false;
	//	getElementsForElementsDropDown();
	fillElementDropDownFlag = false
	isDiagramFiltered = false;
	savediagramWithOutFilter = false;
	getElementsForElementsDropDown();
}


function resetDiagramFilter(){
	resetCompleteDiagramFilterModalElements()
	resetFilteredDiagram();
	hideDiagramFilterItemsInTheStickyHeader();
	//	closeDiagramFilterModal();
	getElementsForElementsDropDown()
	savediagramWithOutFilter = false;
	
	graph1.setEnabled(true);
	document.getElementById("palete").style.pointerEvents = "all";
}

function parseXml(xml) {
   var dom = null;
   if (window.DOMParser) {
      try { 
         dom = (new DOMParser()).parseFromString(xml, "text/xml"); 
      } 
      catch (e) { dom = null; }
   }
   else if (window.ActiveXObject) {
      try {
         dom = new ActiveXObject('Microsoft.XMLDOM');
         dom.async = false;
         if (!dom.loadXML(xml)) // parse error ..

            window.alert(dom.parseError.reason + dom.parseError.srcText);
      } 
      catch (e) { dom = null; }
   }
   else
      alert("cannot parse xml string!");
   return dom;
}

function createNewModelFileForFilteredDiagram(companyName, folderId, id, xml_str, filterItemsForStickyHeaderBar){
	// console.log("companyName, folderId, id, xml_str, filterItemsForStickyHeaderBar")
	//console.log(companyName, folderId, id, xml_str, filterItemsForStickyHeaderBar)
	
	
	console.log("openedDiagramName:", graph_name);
	console.log("openedDiagramId:", openedDiagramId);


	const parser = new DOMParser();
	const xmlDoc = parser.parseFromString(xml_str, "text/xml");
	
	const mxCells = xmlDoc.getElementsByTagName("mxCell");
	for (let i = mxCells.length - 1; i >= 0; i--) {
	  if (mxCells[i].getAttribute("visible") === "0") {
	    mxCells[i].parentNode.removeChild(mxCells[i]);
	  }
	}
	
	const updatedXmlString = new XMLSerializer().serializeToString(xmlDoc);
	//	console.log(updatedXmlString);
	
	var filteredDiagramDetails = JSON.stringify(filterItemsForStickyHeaderBar);
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form-file" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: "50%",
	      modal: true,
	      buttons: {
	        [filteredModalCreateButton]: function addUser(){
	        	$("#paleteDiv").show();
	        	$('#chart').hide();
	        	var modelName = document.getElementById("file_name_save_as").value;
		        	// modelName = modelName.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
					// modelName = modelName.replace(/[^\w]/gi, '_');
					// modelName = replaceSpecialCharacters(modelName);
	        	
				modelName = modelName.replace(/[^\w\u0600-\u06FF\s]/gi,'_')
				
	        	
				if(modelName){
					$.ajax({
					  url: "validateModelName",
					  data: {'modelName': modelName},
					  async : false,
						success: function(data) {
							
					        //////////////////////////////////////////////////////////////
					        var openedDiagramObjectNames = []
					        var openedDiagramElementNames = []
					        var idsToNameDict = {};
					        var xmlDoc = mxUtils.parseXml(updatedXmlString);
					
					        var vertices = xmlDoc.getElementsByTagName("mxCell");
					        for (var i = 0; i < vertices.length; i++) {
					            var vertex = vertices[i];
					            if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
					                var value = vertex.getAttribute("value");
					                var currentObjectName = value.replaceAll('\n', ' ');
					                var cellElementName = vertex.getAttribute("style");
					                if (!cellElementName.startsWith('edgeStyle')) {
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
					                'architectureID':openedDiagramArchitectureId
					            }, // Send the current value as a parameter
					            success: function (objectId) {
					                var xmlDoc1 = mxUtils.parseXml(updatedXmlString);
					
					                var vertices = xmlDoc1.getElementsByTagName("mxCell");
					                for (var i = 0; i < vertices.length; i++) {
					                    var vertex = vertices[i];
					                    if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
					                        var vertexValue = vertex.getAttribute("value");
					                        var ObjectName = "'" + vertexValue.replaceAll('\n', ' ') + "'";
					                        var ElementName = vertex.getAttribute("style");
					                        if (!ElementName.startsWith('edgeStyle')) {
												let objVal = ObjectName.replace(/'/g, '');
												let objID = objectId[ObjectName.replace(/'/g, '')];
												idsToNameDict[objID] = objVal
					                            vertex.setAttribute("value", objectId[ObjectName.replace(/'/g, '')]);
					                        	openedDiagramObjectNames.push(currentObjectName)
					                        }
					                    }
					                }
					
					                var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
					                
							if(data==''){
						 		$.ajax({
								      url: "createNewModelFileForFilteredDiagram", // url: "/findAttributes?dbName="+db_name,
								      type: "POST",
										      data:{
												'id':id, 
											    'company_name': companyName,
											    'graphname':modelName, 
											    'graph_json':modifiedXmlStr, 
											    'isFiltered': isDiagramFiltered, 
											    'filteredDetails': filteredDiagramDetails,
											    'architectureId': openedDiagramArchitectureId,
											    'idsToNameDict':JSON.stringify(idsToNameDict)
										      },
								      success:function(id) {
								    	  
								    	 $(".alert_message").html('<div class="alert alert-success" role="alert">'+filteredModalSuccessMessage+'</div>');
									   	 alert_message_function();
									   	 let diagramElementId = graph_name+""+openedDiagramId;
								    	 refreshTree(diagramElementId);
								    	 getGraphNames();
								      }	  	
								}); 
						 		dialog.dialog( "close" );
							}
							else{
						    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+filteredModalExistingGraphMsg+'</div>');
						    	alert_message_function();
							}
						}
							})

						}
					});
				}
				else{
					dialog.dialog( "open" );
					$(".alert_message").html('<div class="alert alert-warning" role="alert">'+filteredModalEnterGraphName+'</div>');
					alert_message_function();
				}
	        },
	        [filteredModalCancelButton]: function() {
	          dialog.dialog( "close" );
	        }
	      },
	      close: function() {
	        form[0].reset();
	      }
	    });
	    form = dialog.find( "form" ).on( "submit", function( event ) {
	      event.preventDefault();
	      addUser();
	    });
	    //$( "#create-user" ).button().on( "click", function() {
	      dialog.dialog( "open" );
	    //});
		});
	
}
		 

function drawFilteredDiagram(id, folderName, graphName_1, filteredDiagramDetails, architectureId, architectureName, parentID){

	var thisGraphClassList = document?.getElementById(graphName_1 + id)?.classList
	if(thisGraphClassList?.contains('deletedObject')){

		console.log("class deletedObject not found")
		return
	}
	isDiagramFiltered = false;
	hideDiagramFilterItemsInTheStickyHeader();
	setDeactiveElementInHistoryTab();
	
	if(allExistElementInHistoryTab.includes(graphName_1.replaceAll(" ","---")+"_"+parentID) == false){
		allExistElementInHistoryTab.push(graphName_1.replaceAll(" ","---")+"_"+parentID)
	}	
	loader_image_body()
	$(".loader").show();
	$("#paleteDiv").show();
	$("#save_graph_as_button").show();
	$("#save-as-button-nav").hide();
	$("#chart").css("display", "none");

	var nonExistingElements = [];
	$.ajax({
		url: "checkFileStatus",
		data:{'graphID':id},
		success: function(result){
			if(result == 1){
				
				allDivIds.push(current_ID);
				historyTab(architectureId)
				
				$("#save_button").prop('disabled', true);
				$(".graph_button").prop('disabled', false);
				graphSaveButton[graph_name] = true;
				graph_name=graphName_1
				var graphExists = false;
				openedGraphID = id;
				$("#save_button").show();
				$("#save_graph_as_button").show();
				$(".graph_button").show();
				$(".nav_button").hide();
				$("#synchronizeIcon").hide();
				
				
				if(createNew == true){
					addNewGraphInHistory();
					createNew = false;
				}
				$.ajax({
					url: "getGraphLastDate",
					data:{'graphID':id},
					success: function(result){
						last_time_updated = result.slice(0, 19);
						dictionaryGraphDates[id] = last_time_updated;
						
					}
				});
					
				$.ajax({
					url: "getGraphXML_And_idsToNameDict",
					data:{dbname:"graphs", graphID:id},
					success: function(data){
						var result = data['xml'];
				 		var idsToNameDict;
				 		if(data['dictionary'] != ''){
							idsToNameDict = JSON.parse(data['dictionary']);
						}
						
						///////////////////////////////////////////////////////////////////
						var openedDiagramObjectids = []
						var openedDiagramElementNames = []
						// Parse the XML string
						var xmlDoc = mxUtils.parseXml(result);
	
						var vertices = xmlDoc.getElementsByTagName("mxCell");
						for (var i = 0; i < vertices.length; i++) {
							var vertex = vertices[i];
							if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
								var value = vertex.getAttribute("value");
								var currentObjectId = value.replaceAll('\n', ' ');
								var cellElementName = vertex.getAttribute("style");
								if (!cellElementName.startsWith('edgeStyle')) {
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
	
								var xmlDoc1 = mxUtils.parseXml(result);
	
								var vertices1 = xmlDoc1.getElementsByTagName("mxCell");
								for (var i = 0; i < vertices1.length; i++) {
									var vertex1 = vertices1[i];
									if (vertex1.getAttribute("edge") != "1" && vertex1.getAttribute("value")) {
										var vertexValue1 = vertex1.getAttribute("value");
										var ObjectId = vertexValue1.replaceAll('\n', ' ');
										var ElementName = vertex1.getAttribute("style");

										if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/) && !( objectNamesAndIds[ObjectId].replaceAll(' ', '\n') == ObjectId )) {
											vertex1.setAttribute("value", objectNamesAndIds[ObjectId].replaceAll(' ', '\n'));
										}else if(!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)){
											vertex1.setAttribute("value", idsToNameDict[ObjectId]);
										}
									}
								}
	
								var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
								
								var xml = modifiedXmlStr;
				 				previousDiagramDrawn = xml;
				 				
				 				
				 		xmlDoc = $.parseXML(xml),
						$xml = $(xmlDoc),
						$intRate = $xml.find("mxCell");
						$intRate.each(function(index, element) {
							if(element.attributes["value"]) {

								var cellElementName = element.attributes["style"].value;
								if(!cellElementName.startsWith('edgeStyle')){
								cellElementName = cellElementName.split('.svg')[0];
								cellElementName = cellElementName.split('/');
								cellElementName = cellElementName[cellElementName.length-1].replaceAll('-',' ');
								cellElementName = capitalizeFirstLetter(cellElementName);
								
								var loopCellValue = element.attributes["value"].value;
								loopCellValue = loopCellValue.replaceAll('\n',' ');
								
								$.ajax({
									url: "validateObjectName", // url: "/findTables?dbName="+db_name,
								    //type: "GET",
								    data: {
								    	'tableName' :cellElementName,
								    	'object_name' :loopCellValue,
							    	  	'oldName': '',
							    	  	'repositoryID': architectureId
									},
								      //dataType: "text/String"
									success: function(data) {
										if(data == '' && loopCellValue!= ''){
											nonExistingElements.push(loopCellValue);
										}
									},
									async: false
								});
							}
								
							}
							if(index==$intRate.length-1){
								if(nonExistingElements.length != 0){
									nonExistingElementsFunc(nonExistingElements);	
								}
							}
						});
							// $.each(allDivIds, function(i, val){
							// 	$( "#"+val+"11" ).css("background", "");
							// });
							$.each( dictionaryXML, function( key, value ) {
						  		if(key==graphName_1.replaceAll(" ","---")+"_"+parentID){
						  			graphXML = value;
									graphExists = true;
						  		}
						  		else if(key==graphName_1.replaceAll(" ","---")+"_"+parentID){
						  			graphXML = value;
									graphExists = true;
						  		}						  		
							});
							if(graphExists!=true){

								var getTitleValue = elementTitle(graphName_1.replaceAll(' ','---'), id, folderName);
								$("#repositoryID"+architectureId).append('<div id="'+graphName_1.replaceAll(' ','---')+"_diagram_"+parentID+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeModelDiv(\'' + graphName_1.replaceAll(" ", "---") + '\', \'' + parentID + '\', \'' + id + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1.replaceAll(' ','---')+'\',\''+id+'\', \''+architectureId+'\',\''+getTitleValue+'\',\''+parentID+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImageFiltered.svg"><br/>'+graphName_1+'</a></div></div>');								
								// closeModelDiv(\'' + graphName_1 + '\', \'' + parentID + '\', \'' + id + '\')
								//	$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImageFiltered.svg"><br/>'+graphName_1+'</a></div></div>');
								//$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+graphName_1+'</a>');
								$("#history_tab").css("display", "flex")
								dictionaryXML[graphName_1.replaceAll(' ','---')+ "_diagram_" +parentID] = result;
							}
							else{
							}
									let edgesHiddenOrVisible =  !modifiedXmlStr.includes("visible=\"0\"");
									modifiedXmlStr = modifiedXmlStr.replaceAll("visible=\"0\"","");
							$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);
							
							currentWindowID = graphName_1.replaceAll(' ','---')+ "_diagram_" +parentID+"11";
							setActiveElementInHistoryTab(currentWindowID);
							var diagram = mxUtils.parseXml(modifiedXmlStr);
						    var codec = new mxCodec(diagram);
						    codec.decode(diagram.documentElement, graph1.getModel());
						    
						    //// disable graoh start
						    
							graph1.setEnabled(false);
							document.getElementById("palete").style.pointerEvents = "none";
							
							$("#save_button").css("display", "none");
			    			$("#save_graph_as_button").css("display", "none");
							$("#filterDiagram").css("display", "none");
							$("#change-shape").css("display", "none");
							$("#showHideRelationships").css("display", "none");
							
						    //// disable graph end
						    
						    //// hiding or showing relationship arrows
						    let parent = graph1.getDefaultParent();
							let edges = graph1.getChildEdges(parent);
							graphEdges[graphName_1.replaceAll(' ','---')] = edges;
							graph1.toggleCells(edgesHiddenOrVisible, edges, true);
							
							
							
							////// show elements/attriubtes name in the header start //////////////////
							filteredDiagramDetails = filteredDiagramDetails.replaceAll("%%", "\"")
							let filteredDiagramInJSON = JSON.parse(filteredDiagramDetails)
							
							
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
							
							openFilteredDiagramFromHistoryDictionary[id] = filteredDiagramInJSON
							
							////// show elements/attriubtes name in the header end //////////////////
									}
								})
						
						
						///////////////////////////////////////////////////////////////////
						
				 		
							
							
						},
						complete: function(result){
							$(".loader").hide()
							$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
							$("body").css("pointer-events", "initial");							
						},
				        error: function(data){
// 				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">An error occured</div>');
					    	alert_message_function(); 
				        }
					});	
					modelsView();
//					$("#element_title").show().text(graphName_1+"["+folderName+"]");
//					$('#element_title').prop('title', graphName_1+"["+folderName+"]");
					elementTitle(graphName_1, id, folderName)					
			}
			else{
				$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
		    	alert_message_function();
			}
			//last_time_updated = result.slice(0, 19);
			//dictionaryGraphDates[id] = last_time_updated;
			
			
			// ------- highlight selected graph --------	
			const filteredDiagramElementId = graphName_1+""+id;
			removeClassFromElement('openedActive');
			addClassToElement(filteredDiagramElementId, 'openedActive');
			// ------- highlight selected graph --------	
		}
	});
}


function on_context_menu_restore_filtered_graph(graphID, name, folderName, liID, type, architectureId, company_name, parentID, architectureName){
			
	console.log("Inside on_context_menu_restore")
	console.log("graphID, name, folderName, liID, type, architectureId, company_name, parentID, architectureName")
	console.log(graphID, name, folderName, liID, type, architectureId, company_name, parentID, architectureName)
	
	var thisGraph = document.getElementById(liID)
	var thisParent = document.getElementById(liID)?.parentElement?.parentElement
	
	if(thisGraph.classList.contains("deletedObject") && !thisGraph.classList.contains("deletedObjectSelf")){
		console.log("found deletedObjectClass")
		return
	}
	
	if(thisParent?.classList?.contains("deletedObject")){
		console.log("found deletedObjectClass")
		return
	}




 	event.preventDefault();
	var contextElement = document.getElementById("context-menu");
	//<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
  																				// restore(graphID,             name,           folderName,        liID,        type,         architectureId,         company_name,        parentID){
	var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\', \''+architectureId+'\', \''+company_name+'\',\''+parentID+'\',\''+architectureName+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i>'+Restore+'</div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteModelPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i>'+Delete+'</div></a>';
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


function on_context_menu_remove_filtered_graph(graphID, liID, folderName, modelName, parentFolder, parentID, architectureId, architectureName){

	console.log("-------------------")
	console.log("Inside on_context_menu_remove_filtered_graph")

	
	console.log("graphID:", graphID)
	console.log("liID:", liID)
	console.log("folderName:", folderName)
	console.log("modelName:", modelName)
	console.log("parentFolder:", parentFolder)
	console.log("parentID:", parentID)
	console.log("architectureId:", architectureId)
	console.log("architectureName:", architectureName)
	console.log("-------------------")
	console.log("")
	
	event.preventDefault();
	
	
	var thisGraph = document.getElementById(liID)
	if(thisGraph.classList.contains("deletedObject")){
		console.log("found class deletedObject")
		return
	}
	
	
	var contextElement = document.getElementById("context-menu");
	var content_ = '';
  
	content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+graphID+'\',\'SVG\', true)"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>'+exportSVGFiltered+'</a>';
	content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+graphID+'\',\'PNG\', true)"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>'+exportPNGFiltered+'</div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameFilteredDiagram(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+parentID+'\' , \''+architectureId+'\', \''+architectureName+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i>'+renameFiltered+'</div></a>';	
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeFilteredGraph(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\', \''+parentID+'\', \''+architectureId+'\', \''+architectureName+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i>'+removeFiltered+'</div></a>';
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
	
function removeFilteredGraph(graphID, liID, folderName, modelName1, parentFolder, parentID, architectureId, architectureName) {
	
	$.ajax({
		url: "delGraphRowData", // url: "/findAttributes?dbName="+db_name,
		data: { 'graphID': graphID },
		success: function (data) {
			historyNumberCloseDiv(modelName1+"_"+parentID)
			var thisObject = document.getElementById(liID)
			thisObject.classList.add('deletedObject');
			thisObject.classList.add('deletedObjectSelf');
			                                        //on_context_menu_restore(      graphID,               name,                 folderName,             liID,                  type,              architectureId,           company_name,                   parentID,  architectureName)
			thisObject.setAttribute('oncontextmenu', 'on_context_menu_restore_filtered_graph(\'' + graphID + '\', \'' + modelName1 + '\', \'' + folderName + '\', \'' + liID + '\', \'' + parentFolder + '\', \'' + architectureId + '\', "company_name", \'' + parentID + '\', \''+architectureName+'\')');

			$.each(data, function (key, value) {
			});
			delete dictionaryXML[modelName1.replaceAll("---", "_")+"_"+parentID]
			$(".gh" + graphID + "").remove();
			if (allExistElementInHistoryTab.includes(modelName1.replaceAll(" ", "---")+"_"+parentID) == true) {
				allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName1.replaceAll(" ", "---")+"_"+parentID);
//				numItemCounter();
			}
			if (currentWindowID == modelName1.replaceAll("---", "_")+"_"+parentID + "11") {
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
			}
			

			const filteredDiagramElementId = modelName1+""+graphID;
			removeClassFromElement('openedActive', filteredDiagramElementId);
		}
	});
	hideDiagramFilterItemsInTheStickyHeader()
}