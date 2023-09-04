var getfolder = "";
var getcompanyName = "";
var getParentID = "";
var getArchitectureId = "";
function ganttChart(companyName, folderID, parentID, architectureId) {
	//			var dialog
	// console.log(companyName + "  " + folderID + "  " + parentID)
	// console.log("At gantt chart");
	getfolder = parentID;
	getcompanyName = companyName;
	getParentID = parentID;
	getArchitectureId = architectureId;
	$("#dialogGanttChart").dialog({
		modal: true
	});

	$.ajax({
		url: "getDateForElement",
		success: function (data) {
			$("#elementNameGanttList").empty();
			$('#elementNameGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));

			$("#StartDateGanttList").empty();
			$('#StartDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));

			$("#EndDateGanttList").empty();
			$('#EndDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));

			$('#LegendGanttList').empty();
			$('#LegendGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));

			$.each(data, function (i, item) {
				//						if (i == 0) {
				//							$('#elementNameGanttList').append($("<option Disabled Selected />").val("Select").text("Select"));
				//						}
				// var getDivid = "#elementNameGanttList";
				// fill_elements_in_dropdown(getDivid, item);
				$("#elementNameGanttList").append($('<option>', {
					value: item,
					text: customDictionary[item.replaceAll(" ", "_")]
				}));
			});

		}
	});


	//			$( "#newRoadmapInbox" ).html('<label> New Roadmap </label> 				   &emsp; 			<label> <input type="text" id="new_roadmap" name="roadmap" placeholder="New Roadmap" style="width: 150px">');
	//			$( "#elementNameGantt" ).html('<label> Element Name </label> 			   &emsp; 			<label> <select name="element" id="elementNameGanttList" style="width: 150px">  </select>');


	var getElement1 = "";



	$('#elementNameGanttList').on('change', function () {
		$('#StartDateGanttList').empty();
		$('#EndDateGanttList').empty();


		getElement1 = $('#elementNameGanttList').val();
		shoaib999 = getElement1;
		$.ajax({
			url: "getDateForStartDate",
			data: { 'Element_Name': getElement1 },
			success: function (data) {

				$("#StartDateGanttList").empty();

				$("#EndDateGanttList").empty();

				$.each(data, function (i, item) {
					if (i == 0) {
						$('#StartDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
						$('#EndDateGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
					}
					// var getDivid = "#StartDateGanttList";
					// fill_elements_in_dropdown(getDivid, item);
					$("#StartDateGanttList").append($('<option>', {
						value: item,
						text: customDictionary[item.replaceAll(" ", "_")]
					}));

					// var getDividEndDateGanttList = "#EndDateGanttList";
					// fill_elements_in_dropdown(getDividEndDateGanttList, item);
					$("#EndDateGanttList").append($('<option>', {
						value: item,
						text: customDictionary[item.replaceAll(" ", "_")]
					}));


				});
				//							dropdown validation for start and end date
				$('#StartDateGanttList').on('change', function () {
					//									var start =$.trim($(this).val());
					var start = ($(this).val());
					$("#EndDateGanttList option").prop("disabled", false);
					// console.log("start-data; ", start);
					$("#EndDateGanttList option[value='" + start + "']").attr("disabled", "disabled");
				});

				$('#EndDateGanttList').on('change', function () {
					var end = ($(this).val());
					$("#StartDateGanttList option").prop("disabled", false);
					// console.log("end-data; ", end);
					$("#StartDateGanttList option[value='" + end + "']").attr("disabled", "disabled");

				});
			}
		});
	});



	//			$( "#StartDateGantt" ).html('<label> Start Date </label>   	 &ensp; &ensp; &emsp; &nbsp;	<label> <select name="sDate" id="StartDateGanttList" style="width: 150px">  </select>'); 
	//			$( "#EndDateGantt" ).html('<label> End Date  </label> 		 &ensp; &ensp; &emsp; &ensp;	<label> <select name="eDate" id="EndDateGanttList" style="width: 150px">  </select>');

	// var ElementVal = $('#elementNameGanttList').val();

	$('#elementNameGanttList').on('change', function () {
		$('#LegendGanttList').empty();
		getElement1 = $('#elementNameGanttList').val();
		$.ajax({
			url: "getDateForLegend",
			data: { 'Element_Name': getElement1 },
			success: function (data) {
				$('#LegendGanttList').empty();

				$.each(data, function (i, item) {
					if (i == 0) {
						$('#LegendGanttList').append($("<option Disabled Selected />").val("Select").text(select_dropdown));
					}
					// var getDividLegendGanttList = "#LegendGanttList";
					// fill_elements_in_dropdown(getDividLegendGanttList, item);
					$("#LegendGanttList").append($('<option>', {
						value: item,
						text: customDictionary[item.replaceAll(" ", "_")]
					}));
				});

			}
		});
	});



	// console.log($('#StartDateGanttList').val(), "start")

	$(function () {
		// console.log("Open roadmap modal");
		// console.log("folderID88", folderID);
		var dialog, form11,
			dialog = $("#dialogGanttChart").dialog({
				autoOpen: false,
				height: 400,
				// width: 350,
				width: '50%',
				modal: true,
				buttons: {
					//					 [generate_roadmap]: TimeLinegraphBTN,
					[generate_roadmap]: function () {
						TimeLinegraphBTN(companyName, folderID, parentID, architectureId);
					},
					[Cancel]: function () {
						// console.log("modal close")

						dialog.dialog("close");
					}
				},
				close: function () {
					form11[0].reset()
				}
			});

		form11 = dialog.find("form").on("submit", function (event) {
			// console.log("check form")
			// TimeLinegraphBTN(companyName, folderID, parentID,architectureId);
			// event.preventDefault();
		});

		$("#dialogGanttChart").button().on("click", function () {
			dialog.dialog("open");
		});
		dialog.dialog("open");
	});



	// var getDD = "";

	// $("#elementNameGantt").click(function () {
	// 	getDD = $("#elementNameGanttList").val()
	// })

	// console.log("getDD", getDD);
	// var rrr = $('#elementNameGanttList').val();

	//			new function
	$(function () {
		$('#elementNameGanttList').on('change', function (e) {
			var RRselected = $('#elementNameGanttList').val();
			var changeSelec = false;
			$('#StartDateGanttList option').each(function () {
				var opt = $(this);
				var VValue = opt.val();

				if (VValue !== RRselected) {
					opt.addClass('hide');
					opt.removeAttr('selected');
				}
				else {
					opt.removeClass('hide');

					if (!changeSelec) {
						opt.attr('selected', 'selected');
						changeSelec = true;
					}
					else {
						opt.removeAttr('selected');
					}
				}
			});
		});
	});

}


//	Time Line Chart
function TimeLinegraphBTN(companyName, folderID, parentID, architectureId) {

	console.log("in TimeLinegraphBTN")
	setDeactiveElementInHistoryTab();
	RoadMapView();
	$("#element_title").empty();

	var ElementVal = $('#elementNameGanttList').val();
	var StartDateVal = $('#StartDateGanttList').val();
	var EndDateVal = $('#EndDateGanttList').val();
	var LegendVal = $('#LegendGanttList').val();
	var roadMap_name = $('#new_roadmap').val();

	//			roadMap_name = roadMap_name.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
	//			roadMap_name = roadMap_name.replace(/[^\w]/gi, '_');
	roadMap_name = roadMap_name.replace(/[^\w\u0600-\u06FF\s]/gi, '_')
	currentWindowID = roadMap_name.replaceAll(" ", "---") + "_roadmap_" + parentID + "11";

	$.ajax({
		url: "validateRoadmapName", // url: "/findTables?dbName="+db_name,
		//type: "GET",
		data: { 'roadMap_name': roadMap_name },
		//dataType: "text/String"
		success: function (data) {
			if (data == '') {
				//					if(roadMap_name != "same"){
				//			$("#element_title").show().text(roadMap_name);
				var StartActDate = "";
				var EndActDate = "";
				var legendData = "";

				$.ajax({
					url: 'getDateForGanttChartStartDate',
					async: false,
					data: { ElementVal, StartDateVal },
					success: function (data) {
						StartActDate = data[0];
					}
				});
				$.ajax({
					url: "getDateForGanttChartEndDate",
					async: false,
					data: { ElementVal, EndDateVal },
					success: function (data) {
						EndActDate = data[0];

					}
				});

				$.ajax({
					url: "getDateForGanttChartLegend",
					async: false,
					data: { ElementVal, LegendVal },
					success: function (data) {
						legendData = data[0];

					}
				});

				var spltLeg = "";
				$.ajax({
					type: "POST",
					async: false,
					data: { ElementVal, LegendVal },
					url: "getLegendValues",
					success: function (data) {
						let val = data.toString();
						spltLeg = val.split(";");

					}
				});

				$.ajax({
					type: "POST",
					data: { ElementVal, StartActDate, EndActDate, legendData, architectureId },
					url: "getTimeLineData",
					success: function (data) {

						$("#chart").empty();

						//	-----------------------------------------------------------------------------------	


						const leg = spltLeg;
						var incorrectDate = false;
						var incorrectLegend = false;
						var allowObj = 0;
						// var my_array = [];
						// var my_legend = [];
						// 				var listofList = [];
						var datalist = {};
						var objInd = 0;
						for (let i = 0; i < leg.length; i++) {
							datalist[leg[i]] = { 'data': [], "name": "" };
						}
						var flag = true;
						for (let i = 0; i < leg.length; i++) {
							if (flag) {
								//						console.log("Flag ",flag)
								for (let j = 0; j < data.length; j++) {
									if (data[j]['startDate'] == "1900-01-01" || data[j]['endDate'] == "1900-01-01") {
										continue;
									}
									if (data[j]['startDate'] == data[j]['endDate']) {
										$(".alert_message").html('<div class="alert alert-danger" role="alert">' + date_values_of + ' "' + data[objInd]['element'] + '"' + are_same + '</div>');
										alert_message_function();
										objInd = j;
										continue;
									}

									if (data[j]['legend'].length < 2) {

										incorrectLegend = true;
										$(".alert_message").html('<div class="alert alert-danger" role="alert">' + legend_values + ' "' + data[j]['element'] + '" ' + is_not_set + '</div>');
										alert_message_function();
										flag = false;
										break;
									}
									else {
										if (new Date(data[j]['startDate']).getTime() > new Date(data[j]['endDate']).getTime()) {
											document.getElementById('chart').style.display = 'none';
											document.getElementById('element_title').style.display = 'none';
											incorrectDate = true;
											$(".alert_message").html('<div class="alert alert-danger" role="alert">' + date_values_of + ' "' + data[objInd]['element'] + ' "' + are_incorrect + '.</div>');
											alert_message_function();
											flag = false;
											break;
										}
										if (leg[i] == data[j]['legend']) {
											allowObj += 1;
											let object1 = {
												x: data[j]['element'],
												y: [new Date(data[j]['startDate']).getTime(), new Date(data[j]['endDate']).getTime()]
											};
											datalist[leg[i]].data.push(object1);
											datalist[leg[i]].name = leg[i]
										}
									} //else loop end

								}
							}
							else {

								document.getElementById('element_title').style.display = 'none';
								break;
							}

						}
						if (allowObj > 0) {
							if (flag) {
								//			Insert in Database for XML 
								getcompanyName = getcompanyName.replaceAll("---", " ");
								// console.log("getcompanyName", getcompanyName);
								$.ajax({
									url: "mapToXML",
									type: "POST",
									data: { roadMap_name, ElementVal, StartActDate, EndActDate, legendData, getcompanyName, getParentID, getArchitectureId },
									success: function (data) {

										if (allExistElementInHistoryTab.includes(roadMap_name.replaceAll(" ", "---") + "_roadmap_" + parentID) == false) {
											allExistElementInHistoryTab.push(roadMap_name.replaceAll(" ", "---") + "_roadmap_" + parentID)
										}
										historyTab(architectureId)
										refreshTree();
										let current_ID = data;

										allDivIds.push(current_ID);
										let clsName = roadMap_name + "_roadmap_" + parentID;
										$.each(allDivIds, function (i, val) {
											$("#" + val + "11").css("background", "");
										});

										if (historyTabItems.includes(roadMap_name.replace(" ", "---") + "_roadmap_" + parentID) == false) {
											$("#repositoryID" + architectureId).append('<div id="' + currentWindowID + '" class="column ' + clsName + '"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\'' + current_ID + '\', \'' + roadMap_name + "_" + parentID + '\',\'' + getcompanyName + '\',\'' + getParentID + '\', \'' + roadMap_name + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"/"></span></div><br/><div><a href="#" onclick="getRoadmap(\'' + roadMap_name + '\',\'' + current_ID + '\',\'' + getcompanyName + '\', \'' + getfolder + '\',' + null + ',\'' + architectureId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/road.svg"/"><br/>' + roadMap_name + '</a></div></div>');
											$("#history_tab").css("display", "flex")
											historyTabItems.push(roadMap_name.replace(" ", "---") + "roadmap_" + parentID);

											$("#" + current_ID.replaceAll(' ', '_') + "11").css("background", "#e9e9e9");
										}

										setActiveElementInHistoryTab(currentWindowID);


										// ------- highlight selected graph --------	
										setTimeout(() => {
											let roadMapLiId = roadMap_name.replaceAll(" ", "---") + "" + current_ID;
											removeClassFromElement('openedActive');
											addClassToElement(roadMapLiId, 'openedActive');
										}, 500);
										// ------- highlight selected graph --------

									}


								});

								$("#element_title").show().text(roadMap_name + " [" + companyName + "]");
								$("#changeHistoryMyPageTable").hide();
								$("#apexchartstyei9slx").hide();
								$("#form_id").hide();
								$("#chart").show();
								var new_array = [];
								for (let i = 0; i < Object.values(datalist).length; i++) {

									let obj = Object.values(datalist)
									let keys = Object.keys(datalist)

									new_array.push({ "name": keys[i], "data": obj[i].data })
								}

								var options =
								{
									series: new_array,
									chart: {
										height: "95%",
										type: 'rangeBar',
										toolbar: {
											show: true,
											offsetX: 0,
											offsetY: 0,
											tools: {
												download: '<i class="fa fa-bars fa-lg roadMapIcon" style="font-size:24px;color:#ffffff" aria-hidden="true"></i>',
												// selection: '<i class="fa fa-hand-paper-o fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												zoom: '<i class="fa fa-search fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												zoomin: '<i class="fa fa-search-plus zoom-in fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												zoomout: '<i class="fa fa-search-minus zoom-out fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												pan: '<i class="fa fa-hand-paper-o fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												reset: '<i class="fa fa-refresh fa-lg roadMapIcon" style="font-size:24px;color:#ffffff"></i>',
												customIcons: []
											},
										},
										zoom: {
											enabled: true,
											type: 'x',
											autoScaleYaxis: false,
											zoomedArea: {
												fill: {
													color: '#90CAF9',
													opacity: 0.4
												},
												stroke: {
													color: '#0D47A1',
													opacity: 0.4,
													width: 1
												}
											}
										}, events: {
											click: function (event, chartContext, config) {
												var label = event.srcElement.innerHTML;
												var labelCheckThroughtspan = event.srcElement.localName;
												if (labelCheckThroughtspan == 'tspan') {
													roadmapObjectClickToOpenForm(label, ElementVal, architectureId);
												}
												roadmapObjectClickToOpenForm(label, ElementVal, architectureId);
											}
										}
									},
									plotOptions: {
										bar: {
											horizontal: true,
											barHeight: '50%',
											rangeBarGroupRows: true
										}
									},

									fill: {
										type: 'gradient',
										gradient: {
											shade: 'light',
											type: 'vertical',
											shadeIntensity: 0.25,
											gradientToColors: undefined,
											inverseColors: true,
											opacityFrom: 1,
											opacityTo: 1,
											stops: [50, 0, 100, 100]
										}
									},
									xaxis: {
										type: 'datetime',

									},
									yaxis: {
										// opposite: getLanguage == "En" ? false : true,
										opposite: false,
										floating: false,
										labels: {
											show: true,
											align: 'left',

										},
										style: {
											colors: '#2e6ebf', // Set the color for the x-axis labels (e.g., red)
											fontSize: '12px', // Set the font size for the labels
											// Add any other x-axis label style properties as needed
										},

									},
									dataLabels: {
										enabled: true,
										formatter: function (val, opts) {
											var label = opts.w.globals.labels[opts.dataPointIndex]
											var a = moment(val[0])
											var b = moment(val[1])
											var diff = b.diff(a, 'days')
											//			                return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
											return + diff + (diff > 1 ? ' days' : ' day')
										},
										style: {
											colors: ['#f3f4f5', '#fff']
										}
									},
									legend: {
										legend: {
											position: 'top',
											horizontalAlign: 'center',
											itemMargin: {
												horizontal: 7,
												vertical: 0
											}
										}
									},
									tooltip: {
										formatter: function (val, opts) {
											// var label = opts.w.globals.labels[opts.dataPointIndex]
											var a = moment(val[0])
											var b = moment(val[1])
											var diff = b.diff(a, 'days')
											// return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
											return + diff + (diff > 1 ? ' days' : ' day')
										},
									}
								};

								var chart = new ApexCharts(document.querySelector("#chart"),
									options);
								chart.render();

							}	//flag end
						}   //allowObj 
						else {

							if (incorrectDate) {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">Start and End date are at incorrect position.</div>');
								alert_message_function();
							}
							if (incorrectLegend) {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + legend_values + ' "' + data[j]['element'] + '" ' + is_not_set + '</div>');
								alert_message_function();
							}

							else {
								$(".alert_message").html('<div class="alert alert-danger" role="alert">' + start_and_end_date_are_not_set_yet + '</div>');
								alert_message_function();
							}

						}
					}
				});

				$("#dialogGanttChart").dialog('close');
				//						}	
				// dialog.dialog("close");
			}
			else {
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${roadmap_exist_message}</div>`);
				alert_message_function();
			}
		}
	});

}

function fill_elements_in_dropdown(append_id, item) {
	//$('#catalogElements').empty();
	$.ajax({
		url: "getPropertiesDictionary",
		type: 'POST',
		data: {},
		async: false,
		dataType: 'json', // added data type
		success: function (langDict) {
			$(append_id).append($('<option>', {
				value: item,
				text: langDict[item.replaceAll(" ", "_")]
			}));
		}
	});
}

function roadmapObjectClickToOpenForm(label, elementName, architecture_id) {
	var row_id = '';
	$.ajax({
		url: "getObjectIdByObjectNameAndArchitectureID",
		type: 'POST',
		data: {
			'tableName': elementName.replaceAll(' ', '_'),
			'objectName': label.replaceAll('\n', ' '),
			'architectureID': architecture_id
		},
		success: function (result) {
			row_id = result;
		},
		async: false
	});
	if (row_id != '') {
		updateFormModal(label, elementName, null, 'roadmap', row_id, architecture_id);
	}
}

function closeRoadmapDiv(current_ID, roadMap_name, companyName, parentId, roadmapName) {
	console.log("current_ID, roadMap_name, companyName, parentId, roadmapName");
	console.log(current_ID, roadMap_name, companyName, parentId, roadmapName);
	roadMap_name = roadMap_name.replaceAll(" ", "---")
	var index_no_of_deleted_item = historyTabItems.indexOf(roadMap_name);
	historyTabItems.splice(index_no_of_deleted_item, 1);
	historyNumberCloseDiv(roadMap_name);
	delete dictionaryXML[current_ID];

	const historyItemId = roadmapName + "_roadmap_" + parentId + "11"

	$("#" + historyItemId + "").remove();

	setTimeout(function () { displaydiv(); }, 0.5);
	if (currentWindowID == roadMap_name) {
		var diagram = mxUtils.parseXml(newGraphXML);
		var codec = new mxCodec(diagram);
		codec.decode(diagram.documentElement, graph1.getModel());
		$("#element_title").hide()
		$("#chart").hide();
		$("#element_title").hide();
	}
	// let curIID = current_ID + "11";

	$.ajax({
		url: "getRoadMapNameThroudRoadMapId",
		type: "POST",
		data: JSON.stringify({
			'roadMapId': current_ID,
		}),
		contentType: "application/json", // Set the content type to JSON
		success: function (roadmapName) {
			const roadMapElementId = roadmapName.replaceAll(" ", "---") + "" + current_ID;
			removeClassFromElement('openedActive', roadMapElementId);
		},
		error: function (err) {
			console.log('error ', err);
		},
		async: false
	});



}