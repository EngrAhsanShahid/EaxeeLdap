//var navigationGraph;
var imageSourcePrefix = '';
var openedCellsArray = [];
var openedNavigationNewEdgesDictionary = {};
var openedNavigationID = '';
var openedNavigationArchitectureID = '';
var openedNavigationParentID = '';
var dictionaryNavigationDates = {};
var navigationSaveButton = {};
var navigation_name = '';
var createNewNavigation = false;
var tooltipsDict = {};
var contextMenuMultipleRelationsDict = {};
//function createNavigation() {
////	$(".alert_message").html(`<div class="alert alert-success" role="alert">${Navigation_Created_Successfully}</div>`);
////	alert_message_function();
////	refreshTree();
////	getGraphNames();
////	callNavigationGraph();
////	navigationViewjs();
//}
function navigationCellDraw(objectName, x, y, imgSrc, architectureId) {
	if (architectureId != openedNavigationArchitectureID) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + can_not_drag_other_architecture_object + '</div>');
		alert_message_function();
		return;
	}
	var parent = navigationGraph.getDefaultParent();
	var vertices = navigationGraph.getChildVertices(parent);
	if (vertices.length == 0) {
		// console.log('vertices',vertices.length)
		$("#save-button-nav").prop('disabled', false);
		var newObjectName = objectName;
		var newObjectElement = imgSrc.split('/');
		let temp = imgSrc.split('/');
		temp.pop();
		imageSourcePrefix = temp.join('/');
		newObjectElement = newObjectElement[newObjectElement.length - 1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-', ' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		newObjectElement = newObjectElement.replaceAll(' ', '_')
		var parent = navigationGraph.getDefaultParent();
		objectName = objectName.split(' ').join('\n');
		var objectExists = false;
		var style = 'shape=image;strokeColor=' + stColor + ';fillColor=' + color + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSource + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
		//var style = 'shape=label;image='+imageSource+';imageHeight=14;imageWidth=22;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;';

		// Moves the given cell to the center
		var cx = navigationGraph.container.clientWidth / 2 - 100;
		var cy = navigationGraph.container.clientHeight / 2;
		//var geo = navigationGraph.getModel().getGeometry(v1);
		var v1 = navigationGraph.insertVertex(parent, null, objectName, cx, cy, 50, 40, style);
		openedCellsArray.push(v1.id);
		//	if (geo != null)
		//	{
		//		geo = geo.clone();
		//		geo.x = cx + geo.width / 2;
		//		geo.y = cy + geo.height / 2;

		//		navigationGraph.getModel().setGeometry(v1, geo);
		//	}	

		var vertices = drawRelationsObject(newObjectElement, objectName, parent, v1, cx, cy, []);
//		console.log("vertices: "+vertices)
//		$.each(vertices, function(i, val) {
//			console.log('vertex '+i+': '+val)
//		});

		// Arranges the response in a circle
		var cellCount = vertices.length;
		var phi = 2 * Math.PI / cellCount;
		var r = Math.min(navigationGraph.container.clientWidth / 5,
			navigationGraph.container.clientHeight / 5);
			
//		vertices.sort((a, b) => {
//			if (a.value < b.value) return -1;
//			if (a.value > b.value) return 1;
//			return 0;
//		});

		for (var i = 0; i < cellCount; i++) {
			var geo = navigationGraph.getModel().getGeometry(vertices[i]);

			if (geo != null) {
				geo = geo.clone();
				if (cellCount > 8) {

					if (i % 2 == 0) {
						geo.x += r * Math.cos(i * phi);
						geo.y += r * Math.sin(i * phi);
					}
					else {

						geo.x += 2 * r * Math.cos(i * phi);
						geo.y += 2 * r * Math.sin(i * phi);
					}
					//				navigationGraph.getModel().setGeometry(vertices[i], geo);
				}
				else {

					geo.x += r * Math.cos(i * phi);
					geo.y += r * Math.sin(i * phi);

				}
				navigationGraph.getModel().setGeometry(vertices[i], geo);
			}
		}
		// console.log("cellLength",cellCount);

		var keyHandler = new mxKeyHandler(navigationGraph);
		keyHandler.bindKey(46, function (evt) {
			if (navigationGraph.isEnabled()) {
				navigationGraph.removeCells();
			}
		});
		navigationGraph.getModel().addListener(mxEvent.UNDO, listener);
		navigationGraph.getView().addListener(mxEvent.UNDO, listener);
		function KeyPress(e) {
			var evtobj = window.event ? event : e
			if (evtobj.keyCode == 90 && evtobj.ctrlKey)
				undoManager.undo();
			document.onkeydown = KeyPress;
		}
		var encoder = new mxCodec();
		var node = encoder.encode(navigationGraph.getModel());
		var xml_str = mxUtils.getXml(node);
		dictionaryXML[navigation_name+"_navigation_"+openedNavigationParentID] = xml_str;
		
		
		navigationSaveButton[navigation_name] = false;
		
		updateModelStatus(navigation_name, openedNavigationParentID, "navigation")
		
	} else {
		$(".alert_message").html('<div class="alert alert-warning" role="alert">' + drag_allowed_only_on_empty_canvas + '</div>');
		alert_message_function();
	}

}
function drawRelationsObject(elementName, objectName, parent, v1, cx, cy, allConnectedEdgesObjects) {
	imageSourcePrefix = 'resources/js/examples/editors/images/images1';
	parent = navigationGraph.getDefaultParent();
	let vertices = [];
	var parent = navigationGraph.getDefaultParent();
	var allVerticesDrawn = navigationGraph.getChildVertices(parent);
	let allVerticesDrawn_Names = [];
	// console.log('allVerticesDrawn',allVerticesDrawn)
	$.each(allVerticesDrawn, function (i, val) {
		allVerticesDrawn_Names.push(val.value.replaceAll('\n',' '));
	});
	$.ajax({
		url: "getRelationsObjects", // url: "/findTables?dbName="+db_name,
		//type: "GET",
		data: {
			'elementName': elementName,
			'objectName': objectName.replaceAll('\n', ' '),
		},
		success: function (data) {
			// console.log('data',data)
			let forwardRelations = data['forward'];
			let backwardRelations = data['backward'];
			let forwardMapLength = Object.keys(forwardRelations).length;
			let backwardMapLength = Object.keys(backwardRelations).length;
			//			var cx = navigationGraph.container.clientWidth / 2-100;
			//			var cy = navigationGraph.container.clientHeight / 2;
			for (let i = 0; i < forwardMapLength; i++) {
				if (forwardRelations[i]['sourceAttValue'] == objectName.replaceAll('\n', ' ') || allConnectedEdgesObjects.includes(forwardRelations[i]['sourceAttValue'])) {
					continue;
				}
				let imageSourceInsideLoop = imageSourcePrefix + '/' + forwardRelations[i]['targetRelElement'].toLowerCase().replaceAll('_', '-') + '.svg';
				let style1 = 'shape=image;strokeColor=' + stColor + ';fillColor=' + getVertexColor(forwardRelations[i]['targetRelElement']) + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSourceInsideLoop + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
				//				var v_temp = navigationGraph.insertVertex(parent, null, forwardRelations[i]['sourceAttValue'], cx, cy, 100, 40, style1);
				//				var relType = forwardRelations[i]['relationshipType'];
				//				var relStyle = getRelationshipStyleNavigation(forwardRelations[i]['relationshipType']);
				//				if(allVerticesDrawn_Names.includes(forwardRelations[i]['sourceAttValue'])){
				//					$.each(allVerticesDrawn, function(j, val){
				////						allVerticesDrawn_Names.push(val.value);
				//						if(val.value==forwardRelations[i]['sourceAttValue']){
				//							console.log('val.value',val.value)
				//							var e2 = navigationGraph.insertEdge(parent, null, relType , val, v_temp,relStyle);
				//						}
				//					});
				//				}else{
				//					var e2 = navigationGraph.insertEdge(parent, null, relType , v1, v_temp,relStyle);
				//				}

				///////////////////////


				var relType = forwardRelations[i]['relationshipType'];
				var relStyle = getRelationshipStyleNavigation(forwardRelations[i]['relationshipType']);
				var v_temp;
				if (allVerticesDrawn_Names.includes(forwardRelations[i]['sourceAttValue'])) {
					allVerticesDrawn = navigationGraph.getChildVertices(parent);
					$.each(allVerticesDrawn, function (j, val) {
						if (val.value == forwardRelations[i]['sourceAttValue'] || val.value.replaceAll('\n', ' ') == forwardRelations[i]['sourceAttValue']) {
							v_temp = val;
						}
					});
				} else {
					v_temp = navigationGraph.insertVertex(parent, null, forwardRelations[i]['sourceAttValue'], cx, cy, 50, 40, style1);
					vertices.push(v_temp);
					allVerticesDrawn_Names.push(forwardRelations[i]['sourceAttValue']);
				}
				var toottipText = '';
				var contextMenuText = '';
				$.each(openedNavigationNewEdgesDictionary, function(j, val) {
					if (j == v1.value.replaceAll('\n', ' ')+'__'+v_temp.value.replaceAll('\n', ' ')) {
//						relType = val.value+'\n'+relType;
						let valID = val.id;
						toottipText = tooltipsDict[valID]+'\n'+relType;
						delete tooltipsDict.valID;
						contextMenuText = contextMenuMultipleRelationsDict[valID]+'<div style="cursor: pointer" class="item"><i class="fa fa-long-arrow-right"></i>'+relType+'</div>';
						delete contextMenuMultipleRelationsDict.valID;
						val.value = "";
						const lines = toottipText.split(/\r?\n/);
						relType = lines.length;
						navigationGraph.removeCells([val]);
						relStyle = ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;';
					}
				});
				var e2 = navigationGraph.insertEdge(parent, null, relType, v1, v_temp, relStyle);
				if(toottipText == undefined || toottipText == ''){
					toottipText = relType;
				}
				if(contextMenuText == undefined || contextMenuText == ''){
					contextMenuText = '<div style="cursor: pointer" class="item"><i class="fa fa-long-arrow-right"></i>'+relType+'</div>';
				}
				tooltipsDict[e2.id] =  toottipText;
				contextMenuMultipleRelationsDict[e2.id] =  contextMenuText;
				openedNavigationNewEdgesDictionary[v1.value.replaceAll('\n', ' ')+'__'+v_temp.value.replaceAll('\n', ' ')] = e2;

//				vertices.push(v_temp);
			}
			
			for (let i = 0; i < backwardMapLength; i++) {
				if (backwardRelations[i]['targetAttValue'] == objectName.replaceAll('\n', ' ') || allConnectedEdgesObjects.includes(backwardRelations[i]['targetAttValue'])) {
					continue;
				}
				let imageSourceInsideLoop = imageSourcePrefix + '/' + backwardRelations[i]['sourceRelElement'].toLowerCase().replaceAll('_', '-') + '.svg';
				let style1 = 'shape=image;strokeColor=' + stColor + ';fillColor=' + getVertexColor(backwardRelations[i]['sourceRelElement']) + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSourceInsideLoop + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
				var relType = backwardRelations[i]['relationshipType'];
				var relStyle = getRelationshipStyleNavigation(backwardRelations[i]['relationshipType']);

				var v_temp;
				if (allVerticesDrawn_Names.includes(backwardRelations[i]['targetAttValue'])) {
					allVerticesDrawn = navigationGraph.getChildVertices(parent);
					$.each(allVerticesDrawn, function (j, val) {
						if (val.value == backwardRelations[i]['targetAttValue'] || val.value.replaceAll('\n', ' ') == backwardRelations[i]['targetAttValue']) {
							v_temp = val;
						}
					});
				} else {
					v_temp = navigationGraph.insertVertex(parent, null, backwardRelations[i]['targetAttValue'], cx, cy, 50, 40, style1);
					vertices.push(v_temp);
					allVerticesDrawn_Names.push(backwardRelations[i]['targetAttValue']);
				}
				var toottipText = '';
				var contextMenuText = '';
				var brString = '';
				$.each(openedNavigationNewEdgesDictionary, function(j, val) {
					if (j == v1.value.replaceAll('\n', ' ')+'__'+v_temp.value.replaceAll('\n', ' ')) {
//						relType = val.value+'\n'+relType;
						let valID = val.id;
						toottipText = tooltipsDict[valID]+'\n'+relType;
						delete tooltipsDict.valID;
						if(contextMenuMultipleRelationsDict[valID].includes("fa fa-long-arrow-right") && !contextMenuMultipleRelationsDict[valID].includes("fa fa-long-arrow-left")){
							brString = '<hr>';
						}
						contextMenuText = contextMenuMultipleRelationsDict[valID]+brString+'<div style="cursor: pointer" class="item"><i class="fa fa-long-arrow-left"></i>'+relType+'</div>';
						brString = '';
						delete contextMenuMultipleRelationsDict.valID;
						val.value = "";
						const lines = toottipText.split(/\r?\n/);
						relType = lines.length;
						navigationGraph.removeCells([val]);
						relStyle = ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;';
					}
				});
				var e2 = navigationGraph.insertEdge(parent, null, relType, v_temp, v1, relStyle);
//				var e2 = navigationGraph.insertEdge(parent, null, relType, v1, v_temp, relStyle);
				if(toottipText == undefined || toottipText == ''){
					toottipText = relType;
				}
				if(contextMenuText == undefined || contextMenuText == ''){
					contextMenuText = '<div style="cursor: pointer" class="item"><i class="fa fa-long-arrow-left"></i>'+relType+'</div>';
				}
				tooltipsDict[e2.id] =  toottipText;
				contextMenuMultipleRelationsDict[e2.id] =  contextMenuText;
				openedNavigationNewEdgesDictionary[v1.value.replaceAll('\n', ' ')+'__'+v_temp.value.replaceAll('\n', ' ')] = e2;
//				vertices.push(v_temp);
			}

		},
		async: false
	});
	return vertices;
}

function getRelationshipStyleNavigation(relVal) {
	var orthogonalEdge = "";
//	var orthogonalEdge ="edgeStyle=orthogonalEdgeStyle";
	var style = "";
//	style = '' + orthogonalEdge + ';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;labelBackgroundColor=#FFFFFF;';
	if (relVal == 'Composition' || relVal == 'Composed of' || relVal == 'Part of') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Aggregation' || relVal == 'Aggregates' || relVal == 'Aggregated by') {
		//   		edgeStyle=orthogonalEdgeStyle  use this as style for orthogonal edge style
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Assignment' || relVal == 'Assigned to' || relVal == 'Assigned from') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startFill=1;startArrow=oval;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Realization' || relVal == 'Realizes' || relVal == 'Realized by') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Serving' || relVal == 'Serves' || relVal == 'Served by') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Access' || relVal == 'Accesses' || relVal == 'Accessed by') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Influence' || relVal == 'Influences' || relVal == 'Influenced by') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Association' || relVal == 'Associated to' || relVal == 'Associated from') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Triggering' || relVal == 'Triggers' || relVal == 'Triggered by') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else if (relVal == 'Flow' || relVal == 'Flows to' || relVal == 'Flows from') {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	else {
		style = '' + orthogonalEdge + ';rounded=0;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	return style;
}

function getAllConnectedCells(cellEdges) {
	let index = cellEdges.length;
	let allConnectedCells = [];
	for (var i = 0; i < index; i++) {
		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
	}
	return allConnectedCells;
}
function getParentDistance(cellEdges, cx, cy) {
	let index = cellEdges.length;
	let parentCellX = 0;
	let parentCellY = 0;
	let diffrences = {};
	//	for(var i=0;i<index;i++){
	let parentCell = cellEdges[0].source;
	parentCellX = parentCell.geometry.x;
	parentCellY = parentCell.geometry.y;
	//	}
	diffrences['parentCellX'] = parentCellX - cx;
	diffrences['parentCellY'] = parentCellY - cy;
	return diffrences;
}

function rearrangeConnectedCells(cellEdges) {
	let index = cellEdges.length;
	//	let parentCellEdges = cellEdges.source.edges;
	//	console.log('cellEdges',parentCellEdges);
	for (var i = 0; i < index; i++) {
		//		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
		//		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
		let parentCell = cellEdges[i].source;
		let parentCellX = parentCell.geometry.x;
		let parentCellY = parentCell.geometry.y;
		console.log('parentCellX', parentCellX)
		console.log('parentCellY', parentCellY)
		let parentCellEdges = parentCell.edges;
		let index_2 = parentCellEdges.length;
		var phi = 2 * Math.PI / index_2;
		var r = Math.min(navigationGraph.container.clientWidth / 3, navigationGraph.container.clientHeight / 3);
		for (let j = 0; j < index_2; j++) {
			let childCell = parentCellEdges[j].target;
			let geo = navigationGraph.getModel().getGeometry(childCell);
			if (geo != null) {
				geo = geo.clone();
				geo.x = (parentCellX + geo.x) / 2;
				geo.y = (parentCellY + geo.y) / 2;
				//					geo.x += r * Math.sin(i * phi);
				//					geo.y += r * Math.cos(i * phi);
				navigationGraph.getModel().setGeometry(childCell, geo);
			}
		}
	}
}

//function cellMoved(initial_x,initial_y,cell){
//	let CellX = cell.geometry.x;
//	let CellY = cell.geometry.y;
//	$("#save-button-nav").prop('disabled', false);
//	let cellEdges = cell.edges;
//	let difference_x = initial_x-CellX;
//	let difference_y = initial_y-CellY;
//	console.log('cell: ',cell)
////	console.log('initial_x: ',initial_x)
////	console.log('initial_y: ',initial_y)
////	console.log('CellX: ',CellX)
////	console.log('CellY: ',CellY)
//	let index = cellEdges.length;
//	let allConnectedCells = [];
//	for(var i=0;i<index;i++){
////		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
////		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
//		let currentIndexCell = cellEdges[i].target;
//		
//		let currentIndexCell_X = currentIndexCell.geometry.x;
//		let currentIndexCell_Y = currentIndexCell.geometry.y;
//		
//		var geo = navigationGraph.getModel().getGeometry(currentIndexCell);
//		if (geo != null) {
//			geo = geo.clone();
//			geo.x = currentIndexCell_X - difference_x;
//			geo.y = currentIndexCell_Y - difference_y;
//
//			navigationGraph.getModel().setGeometry(currentIndexCell, geo);
//		}
//	}
////	console.log('allConnectedCells',allConnectedCells)
//}

function callNavigationGraph() {
	if (!mxClient.isBrowserSupported()) {
		mxUtils.error('Browser is not supported!', 200, false);
	}
	else {
		
		//		navigationView = true;
		$("#navigationId").append('<div id="navigationGraphContainer" style="overflow:overlay; cursor:grab;"></div>');
		//		$(".nav_button").show();
		$(".graph_button").hide();
		var container = document.getElementById('navigationGraphContainer');
		navigationGraph = new mxGraph(container);
		var parent = navigationGraph.getDefaultParent();
		// Changes some default colors
		mxConstants.HANDLE_FILLCOLOR = '#99ccff';
		mxConstants.HANDLE_STROKECOLOR = '#0088cf';
		mxConstants.VERTEX_SELECTION_COLOR = '#00a8ff';

		navigationGraph.setTooltips(true);
		// Enables rubberband selection
		new mxRubberband(navigationGraph);
		style = navigationGraph.getStylesheet().getDefaultEdgeStyle();
		style['strokeColor'] = '#000000';
		style['fontColor'] = '#000000';
		style['fontStyle'] = '0';
		style['fontStyle'] = '0';
		style['startSize'] = '8';
		style['endSize'] = '8';

		// Enables guides
		mxGraphHandler.prototype.guidesEnabled = true;
		mxEdgeHandler.prototype.snapToTerminals = true;

		var layout = new mxHierarchicalLayout(navigationGraph);
		layout.execute(navigationGraph.getDefaultParent());
		
		navigationGraph.getTooltipForCell = function(cell) {
			if (cell.edge == 1) {
				return tooltipsDict[cell.id];
			} else {
				return this.convertValueToString(cell);
			}
		}
		

		navigationGraph.popupMenuHandler.factoryMethod = function(menu, cell, evt) {
				var x = event.pageX;
			    var y = event.pageY;
			if (cell.edge) {
				navigationRelationRightClick(x,y,cell.id);
//				menu.addItem('First edge option', null, function() {
//					alert('This is the first option of edge ');
//				})
//				menu.addItem('Second edge option', null, function() {
//					alert('This is the second option of edge ');
//				})
			}
			if (cell.vertex) {
				
				navigationObjectRightClick(x,y,cell);
//				menu.addItem('First vertex option', null, function() {
//					alert('This is the first option of vertex ');
//				})
//				menu.addItem('Second vertex option', null, function() {
//					alert('This is the second option of vertex ');
//				})
			}
		}


		navigationGraph.popupMenuHandler.autoExpand = true;
		navigationGraph.setAllowDanglingEdges(false);
		navigationGraph.setDisconnectOnMove(false);

		// Workaround for Internet Explorer ignoring certain styles

		if (mxClient.IS_QUIRKS) {
			document.body.style.overflow = 'hidden';
			new mxDivResizer(tbContainer);
			new mxDivResizer(container);
		}
		navigationGraph.dropEnabled = true;
		//		mxDragSource.prototype.dragEnter = function(navigationGraph, evt) {
		//			mxDragSource.prototype.drop = function(navigationGraph, evt, dropTarget, x, y) {
		//				var parent = navigationGraph.getDefaultParent();
		//				//				function createNewVertex(UniqueObjectName) {
		//				//					var vertex = navigationGraph.insertVertex(parent, null, UniqueObjectName.split(" ").join("\n"), x, y, 140, 60, style);
		//				//				}
		//			}
		//		}

		// Installs a handler for double click events in the navigationGraph
		// that shows an alert box


		//		navigationGraph.addListener(mxEvent.CLICK, function(sender, evt) {
		//			var cell = evt.getProperty("cell"); // cell may be null
		//			if (cell != null) {
		//				let initial_x = cell.geometry.x;
		//				let initial_y = cell.geometry.y;
		//				console.log("initLocCx", initial_x);
		//				console.log("initLocCy", initial_y);
		//				navigationGraph.addListener(mxEvent.CELLS_MOVED, function(sender, evt) {
		//					var cell = navigationGraph.getSelectionCell();
		//					cellMoved(initial_x,initial_y,cell);
		//				});
		//			}
		//		});

		/// cell with edges moved start
		/*
		mxPanningHandler.prototype.mouseDown = function(	sender,me	){
			var cell = navigationGraph.getSelectionCell();
			if (cell != null)
			{
				let initial_x = cell.geometry.x;
				let initial_y = cell.geometry.y;
				navigationGraph.addListener(mxEvent.CELLS_MOVED, function(sender, evt) {
					cellMoved(initial_x,initial_y,cell);
				});
			}
		}
		*/
		/// cell with edges moved end

		navigationGraph.addListener(mxEvent.CELLS_MOVED, function (sender, evt) {
			$("#save-button-nav").prop('disabled', false);
			let cell = navigationGraph.getSelectionCell();
			console.log('cell', cell);
			let initial_x = cell.geometry.x;
			let initial_y = cell.geometry.y;
			cellMoved(initial_x, initial_y, cell);
			
			navigationSaveButton[navigation_name] = false;
			updateModelStatus(navigation_name, openedNavigationParentID, "navigation");
		});

		function cellMoved(initial_x, initial_y, cell) {
			console.log(initial_x, initial_y, cell)
			let cellEdges = cell.edges;
			if (cellEdges) {
				let index = cellEdges.length;
				var phi = 2 * Math.PI / index;
				var r = Math.min(navigationGraph.container.clientWidth / 5,
					navigationGraph.container.clientHeight / 5);
				for (var i = 0; i < index; i++) {
					let currentIndexCell = cellEdges[i].target;

					var geo = navigationGraph.getModel().getGeometry(currentIndexCell);
					if (geo != null) {
						geo = geo.clone();
						geo.x = initial_x;
						geo.y = initial_y;
						navigationGraph.getModel().setGeometry(currentIndexCell, geo);
					}
					var geo1 = navigationGraph.getModel().getGeometry(currentIndexCell);
					if (index > 8) {
						if (i % 2 == 0) {
							geo1.x += r * Math.cos(i * phi);
							geo1.y += r * Math.sin(i * phi);
						}
						else {

							geo1.x += 2 * r * Math.cos(i * phi);
							geo1.y += 2 * r * Math.sin(i * phi);
						}
						//				navigationGraph.getModel().setGeometry(vertices[i], geo);
					}
					else {

						geo.x += r * Math.cos(i * phi);
						geo.y += r * Math.sin(i * phi);

					}
					navigationGraph.getModel().setGeometry(currentIndexCell, geo1);
				}
			}
		}

		//		var selectionCell = navigationGraph.getSelectionCell();
		navigationGraph.addListener(mxEvent.DOUBLE_CLICK, function (sender, evt) {
			var cell = evt.getProperty('cell');
			let allConnectedEdgesObjects = getAllConnectedCells(cell.edges);
			if (cell != null && openedCellsArray.includes(cell.id) == false) {
				let cx = cell.geometry.x;
				let cy = cell.geometry.y;
				let diffrences = getParentDistance(cell.edges, cx, cy);
				let xDifference = diffrences['parentCellX'];
				let yDifference = diffrences['parentCellY'];
				var geo = navigationGraph.getModel().getGeometry(cell);
				openedCellsArray.push(cell.id);
				var elementName = cell.style.split('/');
				elementName = elementName[elementName.length - 1];
				elementName = elementName.split('.svg');
				elementName = elementName[0].split('-').join(' ');
				elementName = capitalizeFirstLetter(elementName);
				let objectName = cell.value;
				let vertices = drawRelationsObject(elementName.replaceAll(' ', '_'), objectName, parent, cell, cx - xDifference * 1.5, cy - yDifference * 1.5, allConnectedEdgesObjects);
				var cellCount = vertices.length;
				var phi = 2 * Math.PI / cellCount;
				var r = Math.min(navigationGraph.container.clientWidth / 5,
					navigationGraph.container.clientHeight / 5);
				if (geo != null && cellCount != 0) {
					$("#save-button-nav").prop('disabled', false);
					geo = geo.clone();
					geo.x = cx - xDifference * 1.5;
					geo.y = cy - yDifference * 1.5;

					navigationGraph.getModel().setGeometry(cell, geo);
				}
				for (var i = 0; i < cellCount; i++) {
					let geo = navigationGraph.getModel().getGeometry(vertices[i]);
					if (geo != null) {
						geo = geo.clone();

						if (cellCount > 8) {

							if (i % 2 == 0) {

								geo.x += r * Math.cos(i * phi);
								geo.y += r * Math.sin(i * phi);

							}
							else {

								geo.x += 2 * r * Math.cos(i * phi);
								geo.y += 2 * r * Math.sin(i * phi);
							}
							navigationGraph.getModel().setGeometry(vertices[i], geo);
						}
						else {

							geo.x += r * Math.cos(i * phi);
							geo.y += r * Math.sin(i * phi);
							navigationGraph.getModel().setGeometry(vertices[i], geo);

						}

					}
				}
			}
			var encoder = new mxCodec();
			var node = encoder.encode(navigationGraph.getModel());
			var xml_str = mxUtils.getXml(node);
			dictionaryXML[navigation_name+"_navigation_"+openedNavigationParentID] = xml_str;
			
			
			navigationSaveButton[navigation_name] = false;
			updateModelStatus(navigation_name, openedNavigationParentID, "navigation");
		});

		// Enables new connections in the gr m  

		navigationGraph.setConnectable(true);
		navigationGraph.setDisconnectOnMove(false);
		navigationGraph.htmlLabels = true;
		navigationGraph.centerZoom = true;
		navigationGraph.setResizeContainer(false);
		navigationGraph.setAllowNegativeCoordinates(true);
		navigationGraph.setCellsCloneable(false);
		navigationGraph.setPanning(true);
		navigationGraph.panningHandler.useLeftButtonForPanning = true;
		// Stops editing on enter or escape keypress
		var addVertex = function (mylabel, icon, w, h, style) {
			var vertex = new mxCell(mylabel, new mxGeometry(0, 0, w, h), style);
			vertex.setVertex(true);
			addToolbarItem(navigationGraph, toolbar, vertex, icon);
		};

		var addEdge = function (mylabel, icon, w, h, style) {
			var edge = new mxCell(mylabel, new mxGeometry(0, 0, w, h), style);
			edge.geometry.setTerminalPoint(new mxPoint(50, 150), true);
			edge.geometry.setTerminalPoint(new mxPoint(150, 50), false);
			edge.setEdge(true);
			var funct = function (navigationGraph, evt, cell) {
				navigationGraph.stopEditing(false);
				var pt = navigationGraph.getPointForEvent(evt);
				var edge = navigationGraph.getModel().cloneCell(prototype);
				edge.geometry.x = pt.x;
				edge.geometry.y = pt.y;
				navigationGraph.setSelectionCells(navigationGraph.importCells([edge], 0, 0, cell));
			}
			edge.geometry.relative = true;
			edge.edge = true;
			addToolbarItem(navigationGraph, toolbar, edge, icon);
		}
		// Handles clicks on cells
		//		navigationGraph.addListener(mxEvent.CLICK, function(sender, evt)
		//		{
		//			
		//		});
		//// Graph DELETE and UNDO //////// START /////////////
		$('html').keyup(function (e) {
			if (e.keyCode == 46) {
				if (navigationGraph.isEnabled()) {
					navigationGraph.removeCells();
					$("#save-button-nav").prop('disabled', false);
				}
			}
		});
		navigationGraph.getModel().addListener(mxEvent.UNDO, listener);
		navigationGraph.getView().addListener(mxEvent.UNDO, listener);

		function KeyPress(e) {
			var evtobj = window.event ? event : e
			if (evtobj.keyCode == 90 && evtobj.ctrlKey)
				undoManager.undo();
			document.onkeydown = KeyPress;
		}
		navigationGraph = navigationGraph;
		return false;
	}
}




function createNewNavigationFile(company_name, folderID, id, graphXML, architectureId) {
	console.log("in createNewNavigationFile")
	console.log("company_name, folderID, id, graphXML, architectureId")
	console.log(company_name, folderID, id, graphXML, architectureId)
	
	
	
	let parentID = id;
	let folderName = folderID.replaceAll(id, "");
	if (graphXML != undefined) {
		newGraphXML = graphXML
	} else {
		newGraphXML = '<mxGraphModel> <root><mxCell id="0" /><mxCell id="1" parent="0" /></root></mxGraphModel>';
	}

	$(function () {
		var dialog, form,
			dialog = $("#dialog-form-navigation").dialog({
				autoOpen: false,
				height: 400,
				// width: 350,
				width: '50%',
				modal: true,
				buttons: {
					[Create]: function addUser() {
						var navigationName = $("#navigation_name").val();
						// navigationName = navigationName.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
						// navigationName = navigationName.replace(/[^\w]/gi, '_');
						navigationName = navigationName.replace(/[^\w\u0600-\u06FF\s]/gi, '_')

						if (navigationName) {
							$.ajax({
								url: "validateNavigationName", // url: "/findTables?dbName="+db_name,
								//type: "GET",
								data: { 'navigationName': navigationName },
								//dataType: "text/String"
								success: function (data) {
									//								console.log("data",data)
									if (data == '') {

										/////////////////////////////////////////////////////////////////
										var openedDiagramObjectNames = []
										var openedDiagramElementNames = []

										var xmlDoc = mxUtils.parseXml(newGraphXML);

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
												'architectureID':openedNavigationArchitectureID
											}, // Send the current value as a parameter
											success: function (objectId) {
												var xmlDoc1 = mxUtils.parseXml(newGraphXML);

												var vertices = xmlDoc1.getElementsByTagName("mxCell");
												for (var i = 0; i < vertices.length; i++) {
													var vertex = vertices[i];
													if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
														var vertexValue = vertex.getAttribute("value");
														var ObjectName = "'" + vertexValue.replaceAll('\n', ' ') + "'";
														openedDiagramObjectNames.push(currentObjectName)
														var ElementName = vertex.getAttribute("style");
														if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {

															vertex.setAttribute("value", objectId[ObjectName.replace(/'/g, '')]);
														}
													}
												}

												var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
												/////////////////////////////////////////////////////////////////


												$.ajax({
													url: "createNewNavigationFile", // url: "/findAttributes?dbName="+db_name,
													type: "POST",
													data: { 'id': id, 'company_name': company_name, 'navigationName': navigationName, 'graph_json': modifiedXmlStr, 'architectureId': architectureId },
													success: function (navigationId) {
														
														initalizeModelStatus(navigationName, parentID, "navigation")
														
														// var historyTabActiveGraphId = navigation_name+"_"+openedNavigationParentID;
														// closeNavigationDiv(historyTabActiveGraphId)
														closeNavigationDiv(navigationName, navigationId, parentID);
														
														drawNavigationFromDB(navigationName, navigationId, null, folderName, architectureId, company_name, parentID);
														
														navigation_name = navigationName;
														$("#element_title").empty();
														$("#element_title").show().text(navigationName+" ["+company_name+"]");
														$('#element_title').prop('title', navigationName+" ["+company_name+"]");
													}
												});
											}
										})

										dialog.dialog("close");
										$(".alert_message").html(`<div class="alert alert-success" role="alert">${navigation_created_successfully}</div>`);
										alert_message_function();
										refreshTree();
										getGraphNames();
										navigationViewjs();
									}
									else {
										$(".alert_message").html('<div class="alert alert-danger" role="alert">' + navigation_name_already_exist + ' </div>');
										alert_message_function();
									}
								}
							});
							/* $.ajax({
							  url: "createNewModelFile", // url: "/findAttributes?dbName="+db_name,
							  data:{'id':id, 'graphname':modelName,'graph_json':newGraphXML},
							  success:function(data) {
										 refreshTree();
										 getGraphNames();
								 $('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
								 getDBlist(modelName, id);
							  }	  	
						}); 
								//refreshTree();
						//getGraphNames();
								dialog.dialog( "close" ); */
						}
						else {
							dialog.dialog("open");
							$(".alert_message").html('<div class="alert alert-warning" role="alert">' + enter_navigation_name + ' </div>');
							alert_message_function();
						}
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
			// addUser();
		});
		//$( "#create-user" ).button().on( "click", function() {
		dialog.dialog("open");
		//});
	});
}

function save_navigation(navigationName, navigationId, parentId, navXML, callback) {
	console.log('in save_navigation');

	let navId = navigationId ? navigationId : openedNavigationID;
	let navName = navigationName ? navigationName : navigation_name;
	parentId = parentId ? parentId : openedNavigationParentID

	// let navigationNameForSaveButton = $("#element_title").html();
	// if (navigationNameForSaveButton) {
	$.ajax({
		url: "getNavigationLastDate",
		data: { "navigationID": navId },
		success: function(result) {

			last_time_updated = result.slice(0, 19);

			if (last_time_updated === dictionaryNavigationDates[navId]) {

				let getcurrentDate = new Date();
				let gethour = getcurrentDate.getHours();
				let getMinute = getcurrentDate.getMinutes();
				if (getMinute < 10) {
					getMinute = "0" + getMinute;
				}
				let getSecond = getcurrentDate.getSeconds();
				getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
				last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');

				dictionaryNavigationDates[navId] = last_time_updated;

				
				// var encoder = new mxCodec();
				// var node = encoder.encode(navigationGraph.getModel());
				// xml_str = mxUtils.getXml(node);


				// var parent = navigationGraph.getDefaultParent();
				// var forSplit = xml_str.split('mxCell id="')
				// var last_element = forSplit.length - 1;
				

				var xml_str = "";
				xml_str = navXML ? navXML : dictionaryXML[navName + "_navigation_" + parentId];

				//////////////////////////////////////////////////////////////
				var openedDiagramObjectNames = []
				var openedDiagramElementNames = []
				var idsToNameDict = {};

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
							openedDiagramElementNames.push(cellElementName.replaceAll(' ', '_'));
							openedDiagramObjectNames.push(currentObjectName);
						}
					}
				}


				$.ajax({
					url: 'getIdsOfOpenedDiagramObjects', // Replace with your API URL
					type: "POST",
					data: {
						objectNames: JSON.stringify(openedDiagramObjectNames),
						elementNames: JSON.stringify(openedDiagramElementNames),
						'architectureID': openedNavigationArchitectureID
					}, // Send the current value as a parameter
					success: function(objectId) {
						var xmlDoc1 = mxUtils.parseXml(xml_str);

						var vertices = xmlDoc1.getElementsByTagName("mxCell");
						for (var i = 0; i < vertices.length; i++) {
							var vertex = vertices[i];
							if (vertex.getAttribute("edge") != "1" && vertex.getAttribute("value")) {
								var vertexValue = vertex.getAttribute("value");
								var ObjectName = "'" + vertexValue.replaceAll('\n', ' ') + "'";
								openedDiagramObjectNames.push(currentObjectName)
								var ElementName = vertex.getAttribute("style");
								if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {
									let objVal = ObjectName.replace(/'/g, '');
									let objID = objectId[ObjectName.replace(/'/g, '')];
									idsToNameDict[objID] = objVal;
									vertex.setAttribute("value", objectId[ObjectName.replace(/'/g, '')]);
								}
							}
						}

						var modifiedXmlStr = mxUtils.getXml(xmlDoc1);

						dictionaryXML[navName + "_navigation_" + parentId] = modifiedXmlStr;


						$.ajax({
							url: "save_navigation",
							data: { 'graph_json': modifiedXmlStr, 'navigationname': 'ssf', 'navigationID': navId, 'last_time_updated': last_time_updated, 'idsToNameDict': JSON.stringify(idsToNameDict),'tooltipsDict':JSON.stringify(tooltipsDict),'contextMenuMultipleRelationsDict':JSON.stringify(contextMenuMultipleRelationsDict) },
							type: "POST",
							success: function(result) {
								$(".alert_message").html('<div class="alert alert-success" role="alert">' + navigation_saved + '</div>');
								alert_message_function();
								$("#save_button").prop('disabled', true);
								$(".graph_button").prop('disabled', false);
								navigationSaveButton[navName] = true;

								saveAndRemoveModelStatus(navName, parentId, "navigation");
								if (callback) {
									callback();
								}
								
								
								
								setTimeout(()=>{
									const NavigationLiId = navName.replaceAll(" ", "---") + "" + navId;
									// ------- highlight selected graph --------	
									removeClassFromElement('openedActive');
									addClassToElement(NavigationLiId, 'openedActive');
									// ------- highlight selected graph --------
									
								},500);
							}
						});

					}
				})
				/////////////////////////////////////////////////////////////


			} else {
				//alert("Another User Updated This File Please Refresh the tree!!")
				$(".alert_message").html('<div class="alert alert-danger" role="alert">' + another_user_updated_this_file_please_refresh_the_tree + '</div>');
				alert_message_function();
			}
		},
		error: function(data) {
			$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
			alert_message_function();
		}
	});
	refreshTree();
	getGraphNames();
	// } else {
	// 	$(".alert_message").html('<div class="alert alert-danger" role="alert">' + file_not_selected + '</div>');
	// 	alert_message_function();
	// }
}

function save_as_navigation() {
	$.ajax({
		url: "getNavigationCompanyNameModelName",
		data: {
			'navigationID': openedNavigationID
		},
		success: function (res) {
			
			if (res[0] == "please save the navigation first") {
				$(".alert_message").html('<div class="alert alert-danger" role="alert">File should be saved before save as</div>');
				alert_message_function();
				return
			} else {
				var companyName = res[0];
				var id = res[2];
				var architectureId = res[3];
				var folderId = res[4];

				var encoder = new mxCodec();
				var parent = navigationGraph.getDefaultParent();
				var node = encoder.encode(navigationGraph.getModel());

				var xml_str = mxUtils.getXml(node);

				createNewNavigationFile(companyName, folderId, id, xml_str, architectureId)
			}


		},
		error: function (data) {
			$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
			alert_message_function();
		}
	});
}

function drawNavigationFromHistory(navName, id, architectureName, parentID) {
	
	$('#chart').hide();
	var button_prop = navigationSaveButton[navName];
	$("#save-button-nav").prop('disabled', button_prop);
	//	$(".graph_button").prop('disabled', button_prop);
	navigation_name = navName;
	openedNavigationID = id;
	openedNavigationParentID = parentID;
	openedNavigationArchitectureID = parentID;
	openedGraphID = id;
	//	$("#save-button-nav").show();
	$("#navigationId").css("display", "block");
	$(".nav_button").show();
	$(".graph_button").hide();
	$("#history_page_no").html(numItems)
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#historyList").css("display", "none");

	$.each(allDivIds, function (i, val) {
		$("#" + val + "11").css("background", "");
	});
	if (createNew == true) {
		addNewNavigationInHistory();
		createNew = false;
	}
	if (createNewNavigation == true) {
		addNewNavigationInHistory();
		createNewNavigation = false;
	}
	var graphXML = "";
	$.each(dictionaryXML, function (key, value) {
		
		if (key == navName+"_navigation_"+parentID) {
			graphXML = value;
			$("#" + key.replaceAll(' ', '_') + "_navigation_11").css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ', '_') + "_navigation_11";
		}
		else {
			$("#" + key.replaceAll(' ', '_') + "_navigation_11").css("background", "");
		}
	});


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

			var diagram = mxUtils.parseXml(modifiedXmlStr);
			var codec = new mxCodec(diagram);
			codec.decode(diagram.documentElement, navigationGraph.getModel());
			navigationViewjs();
			$("#element_title").show().text(navName.replaceAll("---", " ")+" ["+architectureName+"]");
			$('#element_title').prop('title', navName.replaceAll("---", " ")+" ["+architectureName+"]");
			
			
			
			
			const NavigationLiId = navName.replaceAll(" ", "---") + "" + id;
			// ------- highlight selected graph --------	
			removeClassFromElement('openedActive');
			addClassToElement(NavigationLiId, 'openedActive');
			// ------- highlight selected graph --------
		}
	});


}

function drawNavigationFromDB(navigationName_1, id, roleDetails, folderName, architecture_id, architectureName, parentID) {

	tooltipsDict = {};
	contextMenuMultipleRelationsDict = {}
	openedNavigationNewEdgesDictionary = {};
	openedCellsArray = [];
	let parent = navigationGraph.getDefaultParent();
	let edges = navigationGraph.getChildEdges(parent);

	

	console.log("Inside drawNavigationFromDB navigationName_1, id, roleDetails, folderName, architecture_id, architectureName, parentID")
	console.log(navigationName_1, id, roleDetails, folderName, architecture_id, architectureName, parentID);

	initalizeModelStatus(navigationName_1, parentID, "navigation")

	var thisGraphClassList = document.getElementById(navigationName_1 + id)?.classList
	// console.log(thisGraphClassList)
	if (thisGraphClassList?.contains('deletedObject')) {
		console.log("This navigation is not found")
		return
	}


	if (allExistElementInHistoryTab.includes(navigationName_1.replaceAll(" ", "---")+"_navigation_"+parentID) == false) {
		allExistElementInHistoryTab.push(navigationName_1.replaceAll(" ", "---")+"_navigation_"+parentID)
	}
	$("#save-as-button-nav").show();
	loader_image_body()
	showLoader();
	// 	console.log("historyTabItems: DBList ",historyTabItems)
	var nonExistingElements = [];
	$(".nav_button").prop('disabled', false);
	$("#save-button-nav").prop('disabled', true);
	//	graphSaveButton[navigationName_1] = true;
	graph_name = navigationName_1+"_"+parentID;
	openedNavigationID = id;
	navigation_name = navigationName_1;
	openedNavigationParentID = parentID;
	openedNavigationArchitectureID = architecture_id;
	var navigationExists = false;
	// openedGraphID = id;
	$("#save_button").hide();
	$("#save_button").hide();
	$(".graph_button").hide();
	$(".nav_button").show();
	$("#navigationId").css("display", "block");
	// if(createNew == true){
	// 	addNewNavigationInHistory();
	// 	createNew = false;
	// }
	$.ajax({
		url: "getNavigationLastDate",
		data: { 'navigationID': id },
		success: function (result) {
			last_time_updated = result.slice(0, 19);
			dictionaryNavigationDates[id] = last_time_updated;

		}
	});

	$.ajax({
		url: "getNavigationXML_And_idsToNameDict",
		data: { dbname: "graphs", navID: id },
		success: function (result) {
			var xml = result['xml'];
			var idsToNameDict;
	 		if(result['dictionary'] != ''){
				idsToNameDict = JSON.parse(result['dictionary']);
			}
			if(result['tooltipDict'] != ''){
				tooltipsDict = JSON.parse(result['tooltipDict'].replaceAll('\n','---$'));
				$.each(tooltipsDict, function(i, val) {
//					$("#" + val + "11").css("background", "");
					tooltipsDict[i] = val.replaceAll('---$','\n');
				});
			}
			if(result['contextMenuMultipleRelationsDict'] != ''){
				contextMenuMultipleRelationsDict = JSON.parse(result['contextMenuMultipleRelationsDict']);
			}
			var current_ID = divId + divIdCount++;
			allDivIds.push(current_ID);
			historyTab(architecture_id)
			/////////// HISTORY WORK START
			$.each(allDivIds, function (i, val) {
				$("#" + val + "11").css("background", "");
			});
			$.each(dictionaryXML, function (key, value) {
				if (key == navigationName_1.replaceAll(" ", "---")+"_navigation_"+parentID) {
					graphXML = value;
					navigationExists = true;
				}
				else {
					$("#" + key.replaceAll(' ', '_') + "11").css("background", "");
				}
			});

			if (navigationExists != true) {
				//								$("#historyList").append('<div id="'+navigationName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeNavigationDiv(\''+navigationName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawNavigationFromHistory(\''+navigationName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/navigation.svg"><br/>'+navigationName_1+'</a></div></div>');
				var getTitleValue = elementTitle(navigationName_1, id, architectureName);
				$("#repositoryID" + architecture_id).append('<div id="' + navigationName_1.replaceAll(' ', '---')+"_navigation_"+parentID + '11" class="column gh' + id + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeNavigationDiv(\''+navigationName_1+'\', \''+id+'\', \''+parentID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawNavigationFromHistory(\'' + navigationName_1.replaceAll(' ', '---') + '\',\'' + id + '\', \''+getTitleValue+'\', \''+parentID+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/navigation.svg"><br/>' + navigationName_1 + '</a></div></div>');
				$("#history_tab").css("display", "flex")
				dictionaryXML[navigationName_1.replaceAll(' ', '---')+"_navigation_"+parentID] = xml;

				
			}
			//	numItems = $('.column').length;
			//	$(".history_page_no").html(numItems)
			$("#" + navigationName_1.replaceAll(' ', '---')+"_navigation_"+parentID + "11").css("background", "#e9e9e9");
			currentWindowID = navigationName_1.replaceAll(' ', '---')+"_navigation_"+parentID + "11";


			/// HISTORY WORK END


			///////////////////////////////////////////////////////////
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
//							if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)) {
//								vertex1.setAttribute("value", objectNamesAndIds[ObjectId].replaceAll(' ', '\n'));
//							}
							if (!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/) && !( objectNamesAndIds[ObjectId].replaceAll(' ', '\n') == ObjectId )) {
								vertex1.setAttribute("value", objectNamesAndIds[ObjectId].replaceAll(' ', '\n'));
							}else if(!ElementName.startsWith('edgeStyle') && ElementName.match(/\.svg|\.png/)){
								vertex1.setAttribute("value", idsToNameDict[ObjectId]);
							}
						}
					}

					var modifiedXmlStr = mxUtils.getXml(xmlDoc1);
					
					xmlDoc = $.parseXML(modifiedXmlStr),
						$xml = $(xmlDoc),
						$intRate = $xml.find("mxCell");
						$intRate.each(function(index, element) {
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
										success: function(data) {
											if (data == '' && loopCellValue != 'Container') {
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

					let diagram = mxUtils.parseXml(modifiedXmlStr);
					let codec = new mxCodec(diagram);
					codec.decode(diagram.documentElement, navigationGraph.getModel());
					
					const NavigationLiId = navigationName_1.replaceAll(" ", "---") + "" + id;
					// ------- highlight selected graph --------	
					removeClassFromElement('openedActive');
					addClassToElement(NavigationLiId, 'openedActive');
					// ------- highlight selected graph --------
					
					
				}
			})



		},
		complete: function (data) {
			hideLoader();
			$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
			$("body").css("pointer-events", "initial");
			elementTitle(navigationName_1, id, architectureName)	
		},
		error: function (data) {
			$(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
			alert_message_function();
		}
	});

	navigationViewjs();
//	$("#element_title").show().text(navigationName_1+"["+architectureName+"]");
//	$('#element_title').prop('title', navigationName_1+"["+architectureName+"]");
	
	//last_time_updated = result.slice(0, 19);
	//dictionaryGraphDates[id] = last_time_updated;
}


// function on_context_menu_remove_navigation(graphID, liID, folderName, modelName, parentFolder, type, parentID, architectureName, architectureId) {
function on_context_menu_remove_navigation(graphID, liID, folderName, modelName, parentFolder, type, architectureId, architectureName, parentID){
	console.log("Inside on_context_menu_remove_navigation")
	console.log("graphID, liID, folderName, modelName, parentFolder, type, architectureId, architectureName, parentId")
	console.log(graphID, liID, folderName, modelName, parentFolder, type, architectureId, architectureName, parentID)
	var thisGraph = document.getElementById(liID)
	if (thisGraph.classList.contains("deletedObject")) {
		console.log("found class deletedObject")
		return
	}


	event.preventDefault();
	var contextElement = document.getElementById("context-menu");
	var content_ = '';
	//<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
	//		  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
	/* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Navigation(\'' + modelName + '\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i> ' + export_as_svg + '</div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Navigation(\'' + modelName + '\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i> ' + export_as_png + '</div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameNavigation(\'' + graphID + '\', \'' + liID + '\', \'' + folderName + '\', \'' + modelName + '\', \'' + parentFolder + '\', \'' + type +  '\', \''+parentID+'\' ,\'' +architectureId+  '\',  \'' +architectureName+  '\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i> ' + rename + '</div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeNavigation(\'' + graphID + '\',\'' + liID + '\', \'' + folderName + '\',\'' + modelName + '\', \'' + parentFolder + '\', \'' + type + '\' ,\'' +architectureId+  '\',  \''+architectureName+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i> ' + remove + '</div></a>';
	contextElement.innerHTML = content_;
	contextElement.style.top = event.pageY + "px";
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
function removeNavigation(graphID, liID, folderName, modelName1, parentFolder, parentID , architectureId, architectureName) {
	
	// 2    nav2  EAXee1       nav         undefined
	// 3   hussainNav3  hussain7  hussainNav  hussain
	
	console.log("in remove navigation")
	console.log("graphID, liID, folderName, modelName1, parentFolder, parentID , architectureId, architectureName")
	console.log(graphID, liID, folderName, modelName1, parentFolder, parentID , architectureId, architectureName)
	$.ajax({
		url: "delNavigationRowData", // url: "/findAttributes?dbName="+db_name,
		data: { 'graphID': graphID },
		success: function (data) {
			historyNumberCloseDiv(modelName1+"_navigation_"+parentID)


			var thisObject = document.getElementById(liID)
			thisObject.classList.add('deletedObject');
			thisObject.classList.add('deletedObjectSelf');
			console.log("Inside removeNavigation")
			console.log(graphID, liID, folderName, modelName1, parentFolder, parentID)
			// 3   hussainNav3  hussain7  hussainNav  hussain
			// function on_context_menu_restore_navigation(graphID,            name,                 folderName,            liID, type,company_name,parentID){}
			thisObject.setAttribute('oncontextmenu', 'on_context_menu_restore_navigation(\'' + graphID + '\', \'' + modelName1 + '\', \'' + folderName + '\', \'' + liID + '\', \'' + parentFolder + '\', "company_name", \''+parentID+'\', \''+architectureId+'\', \''+architectureName+'\')');

			// for (var i = 0; i < data.length; i++) {
			// 	data[i].modelName.replaceAll(' ', '---');
			// 	if (data[i].modelName.replaceAll(' ', '---') == modelName1) {
			// 		$("#recycle_bin_list").append('<li id="' + liID + '2" class="model_list ' + parentFolder + 'file ' + parentFolder + '" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_navigation(\'' + data[i].id + '\', \'' + data[i].modelName + '\',\'' + folderName + '\', \'' + liID + '\', \'' + parentFolder + '\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;' + data[i].modelName + '</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
			// 	}
			// 	else if (data[i].modelName == modelName1) {
			// 		$("#recycle_bin_list").append('<li id="' + liID + '2" class="model_list ' + parentFolder + 'file ' + parentFolder + '" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_navigation(\'' + data[i].id + '\', \'' + data[i].modelName + '\',\'' + folderName + '\', \'' + liID + '\', \'' + parentFolder + '\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;' + data[i].modelName + '</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
			// 	}
			// }
			// $.each(data, function (key, value) {
			// });
			delete dictionaryXML[modelName1.replaceAll(" ", "---")+"_navigation_"+parentID]
			$(".gh" + graphID + "").remove();
			if (allExistElementInHistoryTab.includes(modelName1.replaceAll(" ", "---")+"_navigation_"+parentID) == true) {
				allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName1.replaceAll(" ", "---")+"_navigation_"+parentID);
				//				numItemCounter();
			}
			//		    	  numItemCounter();
			modelName1 = modelName1+"_navigation_"+parentID+"11";
			//		    	  console.log("currentWindowID",currecntWindowID)
			//		    	  console.log("modelName1",modelName1)
			console.log("currentWindowID Navigation", currentWindowID)
			console.log("modelName1.replaceAll(---, _)", modelName1.replaceAll("---", "_"))
			if (currentWindowID == modelName1.replaceAll(" ", "---")) {
				var diagram = mxUtils.parseXml(newGraphXML);
				var codec = new mxCodec(diagram);
				codec.decode(diagram.documentElement, navigationGraph.getModel());
				$(".nav_button").hide();
				$("#save-as-button-nav").hide();
				$("#navigationId").css("display", "none");
				$("#element_title").hide();
			}
			// $("#" + liID + "").remove();
		}
	});
}


//	
function on_context_menu_restore_navigation(graphID, name, folderName, liID, type, company_name, parentID, architectureId, architectureName) {
	console.log("Inside on_context_menu_restore_navigation")
	console.log("graphID, name, folderName, liID, type, company_name, parentID, architectureId, architectureName")
	console.log(graphID, name, folderName, liID, type, company_name, parentID, architectureId, architectureName)
	event.preventDefault();
	
	var thisParent = document.getElementById(liID)?.parentElement?.parentElement
	if(thisParent?.classList?.contains("deletedObject")){
		console.log("found deletedObjectClass")
		return
	}
	
	
	var contextElement = document.getElementById("context-menu");
	//<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
	var content_ = '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore_navigation(\'' + graphID + '\',  \'' + name + '\', \'' + folderName + '\', \'' + liID + '\',\'' + type + '\',\'' + parentID + '\', \'' + architectureId + '\', \'' + architectureName + '\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i> ' + Restore + ' </div></a>';
	content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteNavigationPermanently(\'' + graphID + '\',  \'' + name + '\', \'' + folderName + '\', \'' + liID + '\',\'' + type + '\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i> ' + Delete + '</div></a>';
	contextElement.innerHTML = content_;
	contextElement.style.top = event.pageY + "px";

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

function restore_navigation(graphID, name, folderName, liID, type, parentID, architectureId, architectureName) {
	// 3 hussainNav hussain7 hussainNav3 hussain navigation undefined
	console.log("in restore navigation")
	console.log("graphID, name, folderName, liID, type, parentID, architectureId, architectureName")
	console.log(graphID, name, folderName, liID, type, parentID, architectureId, architectureName)


	$.ajax({
		url: "restoreNavigation",
		data: { 'graphID': graphID },
		success: function () {

			var thisNav = document.getElementById(liID)
			if (thisNav.classList.contains('deletedObject')) {
				thisNav.classList.remove('deletedObject')

			} else if (thisNav.classList.contains('deletedObjectSelf')) {
				thisNav.classList.remove('deletedObjectSelf')
			}

			thisNav.setAttribute('oncontextmenu', 'on_context_menu_remove_navigation(\'' + graphID + '\', \'' + liID + '\', \'' + folderName + '\', \'' + name + '\', \'' + type + '\', \''+parentID+'\',  \''+architectureId+'\',  \''+architectureName+'\', \''+parentID+'\')');

		}
	});

}

function deleteNavigationPermanently(graphID, name, folderName, liID, type) {
	$("#dialog-confirm").dialog({
		resizable: false,
		height: "auto",
		width: 400,
		modal: true,
		buttons: {
			"Delete": function () {
				if (type == 'folder') {
					var tree = '';
					$.ajax({
						url: "deleteFolderPermanently",
						data: { 'graphID': graphID },
						success: function (data) {
							//alert(""+folderName+" has been deleted!")
							if (data == "done") {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + folderName + ' ' + has_been_deleted + '</div>');
								alert_message_function();
								$("#" + name + "2").remove();
							}
							else {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + object_delete_restriction + '</div>');
								alert_message_function();
							}
						}
					});
				}
				else {
					$.ajax({
						url: "deleteNavigationPermanently",
						data: { 'graphID': graphID },
						success: function (data) {
							//alert(""+name+" is deleted!")
							if (data == "done") {
								// $("#"+liID+"2").remove();
								// $("#"+name+"2").remove();

								$("#" + liID + "").remove();

								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + name + ' ' + is_deleted + '</div>');
								alert_message_function();
							}
							else {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + object_delete_restriction + '</div>');
								alert_message_function();
							}
						}
					});
				}
				$(this).dialog("close");
			},
			[Cancel]: function () {
				$(this).dialog("close");
			}
		}
	});

}

function closeNavigationDiv(navigationName, navigationId, parentId) {
	
	let navigationName_1 = navigationName.replaceAll(' ', '---')+"_navigation_"+parentId;
	
	var navigationNameWithParentId = navigationName+"_navigation_"+parentId;
	if(modelUpdatationStatus[navigationNameWithParentId]?.update){
		$("#dialog-confirm-close").dialog({
			resizable: false,
			height: "auto",
			// width: 400,
			width: '50%',
			modal: true,
			buttons: {
				[save]: function() {
					
					
					let navXML = dictionaryXML[navigationName+"_navigation_"+parentId];
					
					save_navigation(navigationName, navigationId, parentId, navXML, function() {
						delete dictionaryXML[navigationName_1+"_navigation_"+parentId];
						$("#" + navigationName_1 + "11").remove();
						
						setTimeout(function() { displaydiv(); }, 0.5);
						if (currentWindowID == navigationName_1 + "11") {
							var diagram = mxUtils.parseXml(newGraphXML);
							var codec = new mxCodec(diagram);
							codec.decode(diagram.documentElement, navigationGraph.getModel());
							$("#element_title").hide()
							$(".nav_button").hide();
							$("#element_title").empty();	
							$("#graphId").hide();
							$("#navigationId").css("display", "none");
						}
						
						historyNumberCloseDiv(navigationName_1);
						
						$("#dialog-confirm-close").dialog("close");
					});
	

				},
				[dont_save]: function() {

					//setTimeout(() => {
						historyNumberCloseDiv(navigationName_1)
		
						delete dictionaryXML[navigationName_1+"_navigation_"+parentId];
						$("#" + navigationName_1 + "11").remove();
						
						setTimeout(function() { displaydiv(); }, 0.5);
						if (currentWindowID == navigationName_1 + "11") {
							var diagram = mxUtils.parseXml(newGraphXML);
							var codec = new mxCodec(diagram);
							codec.decode(diagram.documentElement, navigationGraph.getModel());
							$("#element_title").hide()
							$(".nav_button").hide();
							$("#element_title").empty();	
							$("#graphId").hide();
							$("#navigationId").css("display", "none");
						}
					//}, 100);

					$(this).dialog("close");
				},
				[Cancel]: function() {
					$(this).dialog("close");
				}
			}
		});
	}else{
		//setTimeout(() => {
			historyNumberCloseDiv(navigationName_1)

			delete dictionaryXML[navigationName_1+"_navigation_"+parentId];
			$("#" + navigationName_1 + "11").remove();
			
			setTimeout(function() { displaydiv(); }, 0.5);
			if (currentWindowID == navigationName_1 + "11") {
				var diagram = mxUtils.parseXml(newGraphXML);
				var codec = new mxCodec(diagram);
				codec.decode(diagram.documentElement, navigationGraph.getModel());
				$("#element_title").hide()
				$(".nav_button").hide();
				$("#element_title").empty();	
				$("#graphId").hide();
				$("#navigationId").css("display", "none");
			}
		//}, 100);
	}

}

function addNewNavigationInHistory() {
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());

	var xml_graph = mxUtils.getXml(node);

	var navigationName_1 = 'New graph1';
	$("#historyList").append('<div id="' + navigationName_1.replaceAll(' ', '_') + '11" class="column"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\'' + navigationName_1.replaceAll(' ', '_') + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\'' + navigationName_1 + '\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>' + navigationName_1 + '</a></div></div>');
	currentWindowID = navigationName_1 + '11';
	//$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+navigationName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+navigationName_1+'</a>');
	$("#history_tab").css("display", "flex")
	dictionaryXML[navigationName_1+"_navigation_"+openedNavigationParentID] = xml_graph;
	$.each(allDivIds, function (i, val) {
		$("#" + val + "11").css("background", "");
	});
	$.each(dictionaryXML, function (key, value) {
		if (key == navigationName_1+"_navigation_"+openedNavigationParentID) {
			graphXML = value;
			$("#" + key.replaceAll(' ', '_') + "11").css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ', '_') + "11";
		}
		else {
			$("#" + key.replaceAll(' ', '_') + "11").css("background", "");
		}
	});
}


function navigationRelationRightClick(x, y, cellID) {
	var contextElement = document.getElementById("context-menu2");
	var content_ = contextMenuMultipleRelationsDict[cellID];
	var count = (content_.match(/<div/g) || []).length;
	if (count <= 1) {
		return;
	}

	contextElement.innerHTML = content_;
	contextElement.style.setProperty('--mouse-x', x + 'px')
	contextElement.style.setProperty('--mouse-y', y + 'px')
	document.getElementById("context-menu2").style.display = 'block';
	removeMenu();
	function removeMenu() {
		window.onclick = function() {
			document.getElementById("context-menu2").style.display = 'none';
			menuOpened = false;
		}
	}
}

function navigationObjectRightClick(x,y,cell){
	console.log('called')
	
	var cellValue = cell.value;
	var elementName = cell.style.split('/');
	elementName = elementName[elementName.length - 1];
	elementName = elementName.split('.svg');
	elementName = elementName[0].split('-').join(' ');
	elementName = capitalizeFirstLetter(elementName);
	var cellId = cell.getId();
	// console.log("elementName", elementName)
//	openFormOnCellDoubleClick(cellValue, elementName, cell);
	
	var content_='<div style="cursor: pointer" class="item" onclick="openFormOnNavigationCellContextMenu(\''+cellValue+'\',\''+elementName+'\',\''+cellId+'\')">'+open_form+'</div>';
	var contextElement = document.getElementById("context-menu2");
	contextElement.innerHTML = content_;
	contextElement.style.setProperty('--mouse-x', x + 'px')
	contextElement.style.setProperty('--mouse-y', y + 'px')
	document.getElementById("context-menu2").style.display = 'block';
	removeMenu();
	function removeMenu() {
		window.onclick = function() {
			document.getElementById("context-menu2").style.display = 'none';
			menuOpened = false;
		}
	}
}

function openFormOnNavigationCellContextMenu(cellValue,elementName,cell){
	if(cellValue && cellValue!="Container"){	
		var row_id;
   		$.ajax({
 	           url: "getObjectIdByObjectNameAndArchitectureID",
 	           type: 'POST',
 	           data: {
					'tableName':elementName.replaceAll(' ','_'),
					'objectName':cellValue.replaceAll('\n',' '),
					'architectureID':openedNavigationArchitectureID
 	           },
 	           success: function(result) {
 	        	  row_id = result;
 	           },
 		        async: false
 	     });
		updateFormModal(cellValue,elementName,cell,'navigation',row_id,openedNavigationArchitectureID);
	}
// 	updateFormModal(cellValue,elementName,cell)
	
}


function synchronizeNavigation(){
	
	let objectNamesArray = [];
	let elementNamesArray = [];	
	
	
	var parent = navigationGraph.getDefaultParent();
	var allVerticesDrawn = navigationGraph.getChildVertices(parent);
		
	allVerticesDrawn.map((item, index)=>{
		if(item.style.toLowerCase().includes(".svg")){
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
	
	
	$.ajax({
		url: "checkDiagramObjectFromDB",
		data:{
			'elementNames': JSON.stringify(elementNamesArray),
			'objectNames': JSON.stringify(objectNamesArray),
			'architectureId':openedNavigationArchitectureID
		},
		type: "POST",
		success: function(res){
			
			allVerticesDrawn.map((item, index)=>{
				
				if(item.style.toLowerCase().includes(".svg")){
		
					let newObjectElement = item.style.split("/");
					newObjectElement = newObjectElement[newObjectElement.length - 1];
					newObjectElement = newObjectElement.split('.svg');
					newObjectElement = newObjectElement[0].replaceAll('-', ' ');
					newObjectElement = capitalizeFirstLetter(newObjectElement);
					
					let tempElementName = newObjectElement.replace(" ", "_");
					let tempObjectName = item.value.replace("\n", " ");
					
					if(res[tempObjectName]['exist'] == "false" && res[tempObjectName]['elementName'] == tempElementName){
						navigationGraph.removeCells([item]);
						console.log("Removing the cell");
					}else{
						console.log("this object ["+tempObjectName+"] present in the database");
					}
				}
			
			})
	
		}
	});
	
	
	
	
}

