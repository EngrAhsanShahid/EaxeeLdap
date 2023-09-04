function export_Graph(graphID, fileType, isDiagramFiltered) {
	//	modelName = modelName.replaceAll("---", " ");
	var modelName = "Diagram";
	if (!mxClient.isBrowserSupported()) {
		// Displays an error message if the browser is not supported.
		mxUtils.error('Browser is not supported!', 200, false);
	}
	else {
		var container2 = document.getElementById('exportGraph');
		var graph2 = new mxGraph(container2);

		$.ajax({
			url: "getGraphXML_And_idsToNameDict",
			data: { dbname: "graphs", graphID: graphID },
			success: function (data) {
				var result = data['xml'];
				var idsToNameDict;
				if (data['dictionary'] != '') {
					idsToNameDict = JSON.parse(data['dictionary']);
				}

				///////// replacing ids to object names start


				//---------------- getting diagram objectNames and elemntName start--------------------//
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
						openedDiagramObjectids.push(currentObjectId)
						var cellElementName = vertex.getAttribute("style");
						if (!cellElementName.startsWith('edgeStyle') && cellElementName.match(/\.svg|\.png/)) {
							cellElementName = cellElementName.split('.svg')[0];
							cellElementName = cellElementName.split('/');
							cellElementName = cellElementName[cellElementName.length - 1].replaceAll('-', '_');
							cellElementName = capitalizeFirstLetter(cellElementName);
							openedDiagramElementNames.push(cellElementName)
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

						var xmlDoc1 = mxUtils.parseXml(result);

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

						///////// replacing ids to object names end

						if (fileType == 'PNG') {
							modifiedXmlStr = modifiedXmlStr.replaceAll('.svg', '.png');
						}

						var diagram = mxUtils.parseXml(modifiedXmlStr);
						var codec = new mxCodec(diagram);
						codec.decode(diagram.documentElement, graph2.getModel());


						// ------------------------------
						// Exporting the Legends on the top of the downloaded diagram
						if (isDiagramFiltered) {

							let legendContainerWidth = 0;
							let paddingBetweenItems = 10;

							let filteredDetails = JSON.parse(data['filtered_details'])

							var parent2 = graph2.getDefaultParent();

							let totalItems = Object.keys(filteredDetails).length;
							let currentItem = 0;

							for (var key in filteredDetails) {
								let attributeName = key;
								let legendItemWidth = 25 + attributeName.length * 6;
								legendContainerWidth += legendItemWidth + paddingBetweenItems;

								// Add padding between items (except for the last item)
								if (currentItem < totalItems - 1) {
									legendContainerWidth += paddingBetweenItems;
								}

								currentItem++;
							}

							legendContainerWidth -= paddingBetweenItems;

							graph2.insertVertex(parent2, null, "", 0, 0, legendContainerWidth, 40, 'rounded=0;whiteSpace=wrap;fillColor=#d3d3d3;html=1;');

							console.log("legendContainerWidth: ", legendContainerWidth)


							let legendPositionX = 10
							let legendPositionY = 10

							for (var key in filteredDetails) {

								let attributeName = key;
								let color = filteredDetails[key].color;
								let legentCircleStyle = 'shape=ellipse;fillColor=' + color + ';rounded=50;shadow=0;strokeWidth=0;'

								graph2.insertVertex(parent2, null, "", legendPositionX, legendPositionY, 18, 18, legentCircleStyle);
								graph2.insertVertex(parent2, null, attributeName, legendPositionX + 25, legendPositionY, attributeName.length * 6, 20, 'text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;');

								legendPositionX = legendPositionX + 25 + attributeName.length * 6 + 10
							}
						}
						// ------------------------------


						if (fileType == 'PNG')
							exportAsPNG();
						if (fileType == 'SVG')
							exportAsSVG();

					}
				});
			}
		});
	}

	function exportAsPNG() {
		var format = 'png';
		var bg = '#ffffff';
		var scale = 1;
		var b = 1;

		var imgExport = new mxImageExport();
		var bounds = graph2.getGraphBounds();
		var vs = graph2.view.scale;

		// New image export
		var xmlDoc = mxUtils.createXmlDocument();
		var root = xmlDoc.createElement('output');
		xmlDoc.appendChild(root);

		// Renders graph2. Offset will be multiplied with state's scale when painting state.
		var xmlCanvas = new mxXmlCanvas2D(root);
		xmlCanvas.translate(Math.floor((b / scale - bounds.x) / vs) + 30, Math.floor((b / scale - bounds.y) / vs));
		xmlCanvas.scale(scale / vs);

		imgExport.drawState(graph2.getView().getState(graph2.model.root), xmlCanvas);

		// Puts request data together
		var w = Math.ceil(bounds.width * scale / vs + 2 * b) + 100;
		var h = Math.ceil(bounds.height * scale / vs + 2 * b) + 50;
		var xml = mxUtils.getXml(root);

		if (bg != null) {
			bg = '&bg=' + bg;
		}

		new mxXmlRequest('Export', 'filename=' + modelName + '.' + format + '&format=' + format +
			bg + '&w=' + w + '&h=' + h + '&xml=' + encodeURIComponent(xml)).
			simulate(document);
		$('#exportGraph').empty();
	}

	function exportAsSVG() {
		var background = '#ffffff';
		var scale = 1;
		var border = 1;

		var imgExport = new mxImageExport();
		var bounds = graph2.getGraphBounds();
		var vs = graph2.view.scale;

		// Prepares SVG document that holds the output
		var svgDoc = mxUtils.createXmlDocument();
		var root = (svgDoc.createElementNS != null) ?
			svgDoc.createElementNS(mxConstants.NS_SVG, 'svg') : svgDoc.createElement('svg');

		if (background != null) {
			if (root.style != null) {
				root.style.backgroundColor = background;
			}
			else {
				root.setAttribute('style', 'background-color:' + background);
			}
		}

		if (svgDoc.createElementNS == null) {
			root.setAttribute('xmlns', mxConstants.NS_SVG);
			root.setAttribute('xmlns:xlink', mxConstants.NS_XLINK);
		}
		else {
			// KNOWN: Ignored in IE9-11, adds namespace for each image element instead. No workaround.
			root.setAttributeNS('http://www.w3.org/2000/xmlns/', 'xmlns:xlink', mxConstants.NS_XLINK);
		}

		root.setAttribute('width', (Math.ceil(bounds.width * scale / vs) + 2 * border) + 100 + 'px');
		root.setAttribute('height', (Math.ceil(bounds.height * scale / vs) + 2 * border) + 50 + 'px');
		root.setAttribute('version', '1.1');

		// Adds group for anti-aliasing via transform
		var group = (svgDoc.createElementNS != null) ?
			svgDoc.createElementNS(mxConstants.NS_SVG, 'g') : svgDoc.createElement('g');
		group.setAttribute('transform', 'translate(0.5,0.5)');
		root.appendChild(group);
		svgDoc.appendChild(root);

		// Renders graph2. Offset will be multiplied with state's scale when painting state.
		var svgCanvas = new mxSvgCanvas2D(group);
		svgCanvas.translate(Math.floor((border / scale - bounds.x) / vs) + 30, Math.floor((border / scale - bounds.y) / vs));
		svgCanvas.scale(scale / vs);

		// Displayed if a viewer does not support foreignObjects (which is needed to HTML output)
		svgCanvas.foAltText = '[Not supported by viewer]';
		imgExport.drawState(graph2.getView().getState(graph2.model.root), svgCanvas);

		var xml = encodeURIComponent(mxUtils.getXml(root));
		var xml1 = mxUtils.getXml(root);
		new mxXmlRequest('Echo', 'filename=' + modelName + '.svg&format=svg' + '&xml=' + xml).simulate(document);
		$('#exportGraph').empty();
	}
}
/* Export Testing ends here */