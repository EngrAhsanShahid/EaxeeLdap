function downloadMatrix(matrixName, tableID) {
    matrixName = matrixName.replaceAll('---', ' ')
    var matrix_table_var = document.getElementById(tableID);
    var theadVar = matrix_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
    var theadList = [];
    var tbodyVar = matrix_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
    $.each(theadVar, function (i, item) {
        theadList.push(item.innerHTML);
    });
    var tbodyList = [];
    $.each(tbodyVar, function (i, item) {
        let loop_td = item.getElementsByTagName("td");
        let current_td_list = [];
        $.each(loop_td, function (k, item) {
            let tdValue = item.innerHTML.replaceAll('<strong>', '').replaceAll('</strong>', '');
            current_td_list.push(tdValue);
        });
        tbodyList.push(current_td_list);
        // 		theadList.push(item.innerHTML);
    });
    let check = tbodyList[0];
    if (Object.keys(check).length === 0) {
        tbodyList = tbodyList.splice(1, tbodyList.length)
    }
    var matrixJson = {
        "matrixName": matrixName,
        "theads": theadList,
        "tbodies": tbodyList,
    }
    $.ajax({
        url: "downloadMatrixAsExcel", // url: "/findTables?dbName="+db_name,
        contentType: 'application/json; charset=utf-8',
        type: "POST",
        data: JSON.stringify(matrixJson),
        //dataType: "text/String"
        success: function (data) {
            window.open('downloadMatrixExcelFile?EXCEL_FILE=' + data);
        }
    });
}

function showMatrixDiv(showDivID, save_btn_id, matrixName, architectureName, matrixId, matrixNameSpaceReplacedWith3Dash) {

    setDeactiveElementInHistoryTab();

    var parentId = matrixName.split("_");
    parentId = parentId[parentId.length - 1];
    const historyItemId = matrixNameSpaceReplacedWith3Dash.replaceAll(" ", "---") + "_matrix_" + parentId + "11";
    console.log("historyItemId:", historyItemId);


    let title_for_matrix = matrixName.substring(0, matrixName.lastIndexOf("_"));
    matrixView();
    $("#chart").hide();
    $("#element_title").empty();
    $("#element_title").show().text(title_for_matrix.replaceAll("---", " ") + " [" + architectureName + "]");
    $('#element_title').prop('title', title_for_matrix.replaceAll("---", " ") + " [" + architectureName + "]");
    //	$("#element_title").html(title_for_matrix.replaceAll("---", " ")+"["+architectureName+"]")
    // $.each(dictionaryXML, function (key, value) {
    //     $("#" + key.replaceAll(' ', '_') + "11").css("background", "");
    // });
    $(".matrix_save_button").empty();
    $("#save_button").hide();
    $("#save_graph_as_button").hide();
    $(".graph_button").hide();
    $(".nav_button").hide();
    $.each(allDivIds, function (i, val) {
        if (val != showDivID) {
            $("#" + val).css("display", "none");
            //			$("#"+val).attr('style', 'width:100%; display:none !important');
            $("#" + val).hide();
            // $("#" + val + "11").css("background", "");
        } else {
            //			$("#"+val).css("display", "block");
            $("#" + val).css("display", "inline-table");
            //			$("#"+val).attr('style', 'width:100%; display:block !important');
            $("#" + val).show();
            // $("#" + val + "11").css("background", "#e9e9e9");
            //            numItems = $('.column').length;
            $(".matrix_save_button").append('<button id="matrixDownload' + val + '" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\'' + matrixName + '\',\'' + val + '\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');
            //            $(".history_page_no").html(numItems);
        }
    });

    setActiveElementInHistoryTab(historyItemId);

    $("#palete").css("display", "none");
    $("#graphId").css("display", "none");
    $("#form_id").css("display", "none");
    $("#matrix").css("display", "block");
    hideLoader();

    $("#historyList").css("display", "none");


    // ------- highlight selected graph --------
    setTimeout(() => {
        let matrixLiId = matrixNameSpaceReplacedWith3Dash.replaceAll(" ", "---") + "" + matrixId;
        removeClassFromElement('openedActive');
        addClassToElement(matrixLiId, 'openedActive');
    }, 500);
    // ------- highlight selected graph --------	
}

//	10/nov/2021 starts here
function drawMatrixFromXML(matrix_id, matrix_name, matrix_element1, matrix_element2, matrix_relation, parent_id, folderName, architectureId, architectureName) {
    console.log("Inside drawMatrixFromXML");

    const historyItemIdForMatrix = matrix_name.replaceAll(" ", "---") + "_matrix_" + parent_id + "11";

    let matrixName = matrix_name;
    const originalMatrixName = matrix_name;

    var thisMatrixClassList = document.getElementById(matrix_name + matrix_id)?.classList
    if (thisMatrixClassList?.contains('deletedObject')) {
        console.log("class deletedObject found")
        return
    }

    var allRelations = false;
    if (matrix_relation == '') {
        allRelations = true;
    }

    if (allExistElementInHistoryTab.includes(matrix_name.replaceAll(" ", "---") + "_matrix_" + parent_id) == false) {
        allExistElementInHistoryTab.push(matrix_name.replaceAll(" ", "---") + "_matrix_" + parent_id)
    }
    $("#chart").hide();
    $("#chart").css("display", "none");
    $("#element_title").empty();

    elementTitle(matrix_name.replaceAll("---", " "), matrix_id, architectureName)

    var current_ID = divId + divIdCount++;
    allDivIds.push(current_ID);
    only_matrix_name = matrix_name.replaceAll(" ", "---");
    matrix_name_for_passing = matrix_name.replaceAll(" ", "---") + "_" + parent_id;
    matrix_name = matrix_name.replaceAll(" ", "---") + "_matrix_" + parent_id;

    $.ajax({
        url: "getMatrixTable",
        type: "POST",
        data: { 'matrix_element1': matrix_element1, 'matrix_element2': matrix_element2, 'matrix_relation': matrix_relation, 'matrix_name': matrix_name, 'existing': 1, 'allRelations': allRelations, 'architectureId': architectureId },
        success: function (data) {
            historyTab(architectureId);

            if (historyTabItems.includes(matrix_name) == false) {
                $("#repositoryID" + architectureId).append('<div id="' + historyItemIdForMatrix + '" class="column ' + matrix_name + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeMatrixDiv(\'' + current_ID + '\', \'' + matrix_name + '\', \'' + originalMatrixName + '\', \'' + architectureId + '\', \''+parent_id+'\' )"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name_for_passing + '\', \'' + architectureName + '\', \'' + matrix_id + '\', \'' + matrixName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + only_matrix_name.replaceAll("---", " ") + '</a></div></div>');
                $("#history_tab").css("display", "flex")
                historyTabItems.push(matrix_name);
                currentWindowID = matrix_name;
            } else {
                $("." + matrix_name).remove();
                $("#repositoryID" + architectureId).append('<div id="' + historyItemIdForMatrix + '" class="column ' + matrix_name + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeMatrixDiv(\'' + current_ID + '\', \'' + matrix_name + '\', \'' + originalMatrixName + '\', \'' + architectureId + '\', \''+parent_id+'\' )"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name_for_passing + '\', \'' + architectureName + '\', \'' + matrix_id + '\', \'' + matrixName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + only_matrix_name.replaceAll("---", " ") + '</a></div></div>');
                $("#history_tab").css("display", "flex");
            }

            var tableData = '<table id=' + current_ID + ' class="' + matrix_name + ' table table-striped table-bordered" style="width:100%">';
            var thead = data["thead"];
            var tbody = data["tbody"];
            tableData += '<thead class="">' + thead + '</thead>';
            tableData += '<tbody class="">' + tbody + '</tbody>';
            tableData += '</table>';
            $("#matrix").append(tableData);
            $(".matrix_save_button").append('<button id="matrixDownload' + current_ID + '" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\'' + matrix_name + '\',\'' + current_ID + '\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');



            showMatrixDiv(current_ID, null, matrix_name_for_passing, architectureName, matrix_id, matrixName.replaceAll(" ", "---"));
            /* matrix In history End's here */
        },
        complete: function (data) {
        }
    });

}


async function saveMatrix(matrix_name, matrix_element1, matrix_element2, matrix_relation, parentID, allRelations, architectureId) {

    matrix_name = matrix_name.trim().replaceAll("---", " ");

    return new Promise((resolve, reject) => {
        $.ajax({
            url: "saveMatrixIntoDB",
            type: 'GET',
            data: { matrix_name, matrix_element1, matrix_element2, matrix_relation, parentID, allRelations, architectureId },
            success: function (id) {
                resolve(id); // Resolve the promise with the id
            },
            error: function (error) {
                reject(error); // Reject the promise with the error
            }
        });
    });
}


function fillMatrixElement1And2() {
    $('#matrixElement1').prop('disabled', false);
    $('#matrixElement2').prop('disabled', false);
    $("#matrixElement1").html('');
    $('#matrixElement1').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
    $("#matrixElement2").html('');
    $('#matrixElement2').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
    $("#matrixRelation").html('');
    $('#matrixRelation').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
    $('#matrixRelation').prop('disabled', false);
    $('#selectAllRelationsMatrix').prop('checked', false);
    $.ajax({
        url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
        data: {},
        async: false,
        success: function (data) {
            $.each(data, function (i, item) {
                // fill_elements_in_dropdown('#matrixElement1', item);

                $('#matrixElement1').append($('<option>', {
                    value: item,
                    text: customDictionary[item.replaceAll(" ", "_")]
                }));

            });
            $.each(data, function (i, item) {
                // fill_elements_in_dropdown('#matrixElement2', item);

                $('#matrixElement2').append($('<option>', {
                    value: item,
                    text: customDictionary[item.replaceAll(" ", "_")]
                }));

            });
        }
    });
}
function matrixname(companyName, folderID, parentID, architectureId) {
    console.log("companyName, folderID, parentID, architectureId")
    console.log(companyName, folderID, parentID, architectureId)
    
    setDeactiveElementInHistoryTab();

    var rowOrColumnSelected = false;
    $('#selectAllRelationsMatrix').click(function () {
        if ($(this).prop("checked") == true) {
            $('#matrixRelation').prop('disabled', true);
        }
        else if ($(this).prop("checked") == false) {
            $('#matrixRelation').prop('disabled', false);
        }
    });

    fillMatrixElement1And2();

    $("#matrixElement1").change(function () {
        $('#matrixElement1').prop('disabled', 'disabled');
        if (rowOrColumnSelected == false) {
            var rowElement = $("#matrixElement1").val();
            $("#matrixElement2").html('');
            $('#matrixElement2').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
            $.ajax({
                url: "getColumnElements",
                //type: "GET",
                data: { 'rowElement': rowElement },
                //					      async: false,
                //dataType: "text/String"
                success: function (data) {
                    $.each(data, function (i, item) {
                        // fill_elements_in_dropdown('#matrixElement2', item.replace(/_/g, ' '));
                        // 			     		            $('#matrixElement2').append($('<option>',{
                        // 			     		              value: item,
                        // 			     		              text : item
                        // 			     		            }));

                        $('#matrixElement2').append($('<option>', {
                            value: item,
                            text: customDictionary[item]
                        }));


                    });
                }
            });
            rowOrColumnSelected = true;
        }
        showMatrixRelations();
    });
    $("#matrixElement2").change(function () {
        $('#matrixElement2').prop('disabled', 'disabled');
        if (rowOrColumnSelected == false) {
            var colElement = $("#matrixElement2").val();
            $("#matrixElement1").html('');
            $('#matrixElement1').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
            $.ajax({
                url: "getRowElements",
                //type: "GET",
                data: { 'colElement': colElement },
                async: false,
                //dataType: "text/String"
                success: function (data) {
                    $.each(data, function (i, item) {
                        // fill_elements_in_dropdown('#matrixElement1', item.replace(/_/g, ' '));
                        // 			     		            $('#matrixElement1').append($('<option>',{
                        // 			     		              value: item,
                        // 			     		              text : item
                        // 			     		            }));

                        $('#matrixElement1').append($('<option>', {
                            value: item,
                            text: customDictionary[item]
                        }));



                    });
                }
            });
            rowOrColumnSelected = true;
        }
        showMatrixRelations();
    });
    function showMatrixRelations() {
        if ($('#matrixElement2').is(':disabled') && $('#matrixElement1').is(':disabled')) {
            let rowElement = $("#matrixElement1").val();
            let colElement = $("#matrixElement2").val();
            $.ajax({
                url: "getRelationsForMatrix",
                //type: "GET",
                data: {
                    'rowElement': rowElement,
                    'colElement': colElement
                },
                async: false,
                //dataType: "text/String"
                success: function (data) {
                    $("#matrixRelation").html('');
                    $('#matrixRelation').append('<option disabled selected value=""> ' + select_dropdown + ' </option>');
                    $.each(data, function (i, item) {
                        $('#matrixRelation').append($('<option>', {
                            value: item,
                            text: item
                        }));
                        // $.ajax({
                        //     url: "getPropertiesDictionary",
                        //     type: 'POST',
                        //     data: {},
                        //     async: false,
                        //     dataType: 'json', // added data type
                        //     success: function (langDict) {
                        //         $('#matrixRelation').append($('<option>', {
                        //             value: item,
                        //             text: item
                        //             // text : langDict[item.replaceAll(" ", "_")]
                        //         }));
                        //     }
                        // });
                    });
                }
            });
        }

    }

    $(function () {
        var dialog, form,
            dialog = $("#matrixName").dialog({
                autoOpen: false,
                height: 400,
                // width: 350,
                width: '50%',
                modal: true,
                buttons: {
                    //		        "<spring:message code='Create'/>": function addMatrix(){
                    [Create]: async function addMatrix() {
                        // 		        	$("#matrix").empty();
                        // 					$('#chart').hide();
                        // 		        	$("#save_button").hide();
                        // 		        	$(".graph_button").hide();
                        // 		        	$("#element_title").empty();
                        // 		        	$("#element_title").show().text(matrixName);
                        matrixView();
                        $("#matix").css("display", "none")
                        var matrix_name = $("#matrix_name").val();
                        
                        const histroyItemId = matrix_name.replaceAll(" ", "---") + "_matrix_" + parentID + "11";
                        // 		        	matrix_name = matrix_name.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
                        // 					matrix_name = matrix_name.replace(/[^\w]/gi, '_');

                        matrix_name = matrix_name.replace(/[^\w\u0600-\u06FF\s]/gi, '_')

                        var matrix_element1 = $("#matrixElement1").val();
                        var matrix_element2 = $("#matrixElement2").val();
                        var matrix_relation = $("#matrixRelation").val();
                        var allRelations = $('#selectAllRelationsMatrix').prop("checked");


                        console.log("matrix_relationas:", matrix_relation)
                        console.log("allRelations:", allRelations)
                        // 		        	$(element_title).empty();
                        // 					$("#element_title").show().text("matrix_name);
                        if (matrix_name && matrix_element1 && matrix_element2 && (matrix_relation || $('#selectAllRelationsMatrix').prop("checked") == true)) {
                            showLoader();
                            matrix_name = matrix_name.replaceAll(" ", "---");

                            const historyItemId = matrix_name+"_matrix_"+parentID+"11"


                            $.ajax({
                                url: "getMatrixTable",
                                type: "POST",
                                async: false,
                                data: { 'matrix_element1': matrix_element1, 'matrix_element2': matrix_element2, 'matrix_relation': matrix_relation, 'matrix_name': matrix_name, 'existing': 0, 'allRelations': allRelations, 'architectureId': architectureId, 'parentID': parentID },
                                success: async function (data) {
                                    if (allExistElementInHistoryTab.includes(matrix_name.replaceAll(" ", "---") + "_matrix_" + parentID) == false) {
                                        allExistElementInHistoryTab.push(matrix_name.replaceAll(" ", "---") + "_matrix_" + parentID)
                                    }
                                    historyTab(architectureId)
                                    var key = Object.keys(data)[0];
                                    var value = data[key];
                                    if (value != null) {
                                        // 	alert("Do something..")
                                        $('#chart').hide();
                                        $("#save_button").hide();
                                        $(".graph_button").hide();
                                        $("#element_title").empty();
                                        //                                        $("#element_title").show().text(matrixName+"["+companyName+"]");
                                        //                                        $('#element_title').prop('title', matrixName+"["+companyName+"]");
                                        elementTitle(matrix_name, folderID, companyName)
                                        dialog.dialog("close");
                                        var current_ID = divId + divIdCount++;
                                        matrix_name = matrix_name.replaceAll(" ", "---");
                                        allDivIds.push(current_ID);
                                        var tableData = '<table id=' + current_ID + ' class="' + matrix_name + ' table table-striped table-bordered" style="width:100%">';
                                        var thead = data["thead"];
                                        var tbody = data["tbody"];
                                        tableData += '<thead class="">' + thead + '</thead>';
                                        tableData += '<tbody class="">' + tbody + '</tbody>';
                                        tableData += '</table>';
                                        $("#matrix").append(tableData);
                                        $(".matrix_save_button").append('<button id="matrixDownload' + current_ID + '" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\'' + matrixName + '\',\'' + current_ID + '\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');

                                        //								$(".tags-input").tagsinput('items')
                                        /* matrix In history start's here */
                                        var clsName = matrixElement1;
                                        var clsName = matrixElement2;
                                        // $("#matrix").empty();



                                        /* matrix In history End's here */

                                        try {
                                            const matrixId = await saveMatrix(matrix_name, matrix_element1, matrix_element2, matrix_relation, parentID, allRelations, architectureId);
                                            refreshTree();

                                            if (historyTabItems.includes(matrix_name + "_matrix_" + parentID) == false) {
                                                currentWindowID = matrix_name + "_matrix_" + parentID;
                                                // $("#historyList").append('<div id="' + current_ID + '11" class="column ' + matrix_name + '"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\'' + current_ID + '\', \'' + matrix_element1 + '\',\'' + matrix_element2 + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + matrix_name.replaceAll("---", " ") + '</a></div></div>');
                                                $("#repositoryID" + architectureId).append('<div id="' + histroyItemId + '" class="column ' + matrix_name + "_matrix_" + parentID + '"><div style="display:inline-block"><span class="close_image" onclick="closeMatrixDiv(\'' + current_ID + '\', \'' + matrix_name.replaceAll(" ", "---") + "_" + parentID + '\', \'' + matrix_name + '\', \'' + architectureId + '\', \''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name + "_" + parentID + '\', \'' + companyName + '\', \'' + matrixId + '\', \'' + matrix_name.replaceAll(" ", "---") + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + matrix_name.replaceAll("---", " ") + '</a></div></div>');
                                                // $("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
                                                $("#history_tab").css("display", "flex")
                                                historyTabItems.push(matrix_name + "_" + parentID);
                                                // numItems = $('.column').length;
                                            } else {
                                                $("." + clsName).remove();
                                                //                                            $("#historyList").append('<div id="' + current_ID + '11" class="column ' + matrix_name + '"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\'' + current_ID + '\', \'' + matrix_element1 + '\'\'' + matrix_element2 + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + matrix_name.replaceAll("---", " ") + '</a></div></div>');
                                                $("#repositoryID" + architectureId).append('<div id="' + histroyItemId + '" class="column ' + matrix_name + "_matrix_" + parentID + '"><div style="display:inline-block"><span class="close_image" onclick="closeMatrixDiv(\'' + current_ID + '\', \'' + matrix_name + '\', \'' + matrix_name + '\', \'' + architectureId + '\', \''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="' + historyCrossIcon + '"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\'' + current_ID + '\', ' + null + ',\'' + matrix_name + "_" + parentID + '\', \'' + companyName + '\', \'' + matrixId + '\', \'' + matrix_name.replaceAll(" ", "---") + '\')"><img draggable="false" alt="" width="20px" height="20px" src="' + matrixIcon + '"><br/>' + matrix_name.replaceAll("---", " ") + '</a></div></div>');
                                                $("#history_tab").css("display", "flex");
                                            }
											
											setActiveElementInHistoryTab(histroyItemId);
											
                                            setTimeout(() => {
                                                showMatrixDiv(current_ID, null, matrix_name + "_" + parentID, companyName, matrixId, matrix_name.replaceAll(" ", "---"));
                                            }, 500);
                                            
                                        } catch (error) {
                                            console.error("An error occurred while saving matrix:", error);
                                        }


                                    }
                                    else {
                                        // 	$("#element_title").empty();
                                        hideLoader();
                                        $("#matix").css("display", "none")
                                        $(".alert_message").html('<div class="alert alert-danger" role="alert">' + matrix_exist_message + '</div>');
                                        alert_message_function();
                                    }

                                },
                                complete: function (data) {

                                }
                            });
                            // dialog.dialog( "close" );
                        }
                        else {
                            dialog.dialog("open");
                            $(".alert_message").html('<div class="alert alert-warning" role="alert"> ' + select_element_enter_name + ' </div>');
                            alert_message_function();
                            //   				    	hideLoader();
                            //   			        	$("#matix").css("display","none")
                        }
                    },
                    //		        "<spring:message code='Cancel'/>": function() {
                    [Reset]: function () {
                        // 		        	 $('#matrixElement1').prop('selectedIndex',0);
                        // 		        	 $('#matrixElement2').prop('selectedIndex',0);
                        // 		        	 $('#matrixRelation').prop('selectedIndex',0);
                        // 		        	 $('#matrixElement1').prop('disabled', false);
                        // 		        	 $('#matrixElement2').prop('disabled', false);

                        rowOrColumnSelected = false;
                        fillMatrixElement1And2();
                    }, [Cancel]: function () {
                        dialog.dialog("close");
                    }
                },
                close: function () {
                    form[0].reset();
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



function openRelationshipObjectForm(rowElement, columnElement, rowObject, columnObject, matrix_relation, td_id) {
    console.log("td_id", td_id)
    var tableName = matrix_relation;

    var modal11 = document.getElementById("updateFormModal");
    $("#modal_content").draggable();
    var span = document.getElementsByClassName("close")[3];
    console.log("tableName", tableName)
    document.getElementById("updateFormModal_heading").innerHTML = tableName;
    var cell = null;
    $.ajax({
        url: "openRelationshipForm",
        type: "POST",
        data: {
            'rowElement': rowElement,
            'columnElement': columnElement,
            'rowObject': rowObject,
            'columnObject': columnObject,
            'relation': matrix_relation,
            'name': name
        }
        ,
        beforeSend: function () {
            $("#updateFormModal_form").empty();
        },
        success: function (data) {
            var formData = "";
            var labels = [];
            var idd = "";
            var checkboxIds = "";
            var CurrenttabID = "";
            var row_name = "";
            var allIds = "";
            var AllRelRowIDs = [];
            var btnedit = '';
            var object_name_id = '';
            var relationsClass;
            var last_time_updated = '';
            var AllRelTableIDs = [];
            var radioClass = "";
            $.each(data, function (i, val) {
                $.each(data, function (i, val) {
                    if (i == "row_id") {
                        console.log(val)
                        idd = val;
                    }
                    if (i == "allIds") {
                        allIds = val;
                    }
                    if (i == "checkboxIds") {
                        checkboxIds = val;
                    }
                    if (i == "formData") {
                        formData = val;
                    }
                    if (i == "attributeNames") {
                        labels = val;
                    }
                    if (i == "CurrenttabID") {
                        CurrenttabID = val;
                    }
                    if (i == "row_name") {
                        row_name = val;
                    }
                    if (i == "AllRelRowIDs") {
                        AllRelRowIDs = val;
                    }
                    if (i == "AllRelRowIDs") {
                        AllRelRowIDs = val;
                    }
                    if (i == "editButtonId") {
                        btnedit = val;
                    }
                    if (i == "object_name_id") {
                        object_name_id = val;
                    }
                    if (i == "relationsClassList") {
                        relationsClass = val[0];
                    }
                    if (i == "AllRelTableIDs") {
                        AllRelTableIDs = val;
                    }
                    if (i == "last_time_updated") {
                        last_time_updated = val[0];
                    }
                    if (i == "radioClass") {
                        radioClass = val[0];
                    }
                });
            });
            $(function () {
                $("#" + CurrenttabID).tabs().addClass("ui-tabs-vertical1 ui-helper-clearfix");
                $("#" + CurrenttabID + " li").removeClass("ui-corner-top").addClass("ui-corner-left");
            });
            var imageName = tableName.toLowerCase().replaceAll('_', '-');
            imageName = imageName + '.svg';
            var current_ID = "";
            //formData += '</form></div>'
            //console.log(formData);
            $("#updateFormModal_form").append(formData);

            $.each(checkboxIds, function (i, val) {
                $("#" + val).on('change', function () {
                    if ($(this).is(':checked')) {
                        $(this).attr('value', 'True');
                    } else {
                        $(this).attr('value', 'False');
                    }

                });

            });

            // 					form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],AllRelTableIDs);
            form_submitForMatrixRelationUpdate(dbName, tableName, labels, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id, imageName, current_ID, CurrenttabID[0], null, last_time_updated, AllRelTableIDs, td_id, radioClass);
        }
    });

    modal11.style.display = "block";
    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal11.style.display = "none";
    }
}

function form_submitForMatrixRelationUpdate(dbName, tableName, attributes, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id, imageName, current_ID, CurrenttabID, cell, last_time_updated, AllRelTableIDs, td_id, radioClass) {
    var imgTagLength = 0;
    var imgTag;
    var imgSrc = '';
    $("." + radioClass).change(function () {
        let radioVar = document.getElementsByClassName(radioClass)
        $.each(radioVar, function (i, val) {
            let accessAttribute = val.getAttribute("radioforaccess");
            let accessValue = val.value;
            let current_td = document.getElementById(td_id)
            let imgTags = current_td.getElementsByTagName("IMG");

            if (accessValue == "on") {
                imgSrc = "resources/js/examples/editors/images/images1/" + accessAttribute.replaceAll(" ", "").replaceAll("_", "").toLowerCase() + ".png";
                if (accessAttribute == "Read") {
                    console.log("Read")
                } else if (accessAttribute == "Write") {
                    console.log("Write")
                } else if (accessAttribute == "Read_Write") {
                    console.log("Read_Write")
                }
                if (imgTags.length > 1) {
                    imgTag = imgTags[1];
                    imgTagLength = imgTags.length;
                }
            }


        });

    });
    var temp = { "dbName": dbName, "tableName": tableName, "attributes": attributes, "idd": idd, "allIds": allIds, "row_name": row_name, "AllRelRowIDs": AllRelRowIDs, "btnedit": btnedit, "imageName": imageName, "current_ID": current_ID, "CurrenttabID": CurrenttabID, "cell": cell }
    get_data_for_save_button.push(temp)

    getDate = get_data_for_save_button[0]["dbName"]

    //	 	if(current_ID)
    if (AllRelRowIDs.length == 0)
        AllRelRowIDs[0] = "null";
    if (AllRelTableIDs.length == 0)
        AllRelTableIDs[0] = "null";
    $("#" + btnedit).click(function () {
        $.ajax({
            url: "getDateForFormSubmit", // url: "/findTables?dbName="+db_name,
            type: "GET",
            data: {
                'tableName': tableName,
                'row_name': row_name[0],
            },
            //dataType: "text/String"
            success: function (data) {

                console.log('date', data)
                console.log('rowname', row_name)
                updated_time = data.slice(0, 19);
                if (last_time_updated.slice(0, 19) === updated_time) {
                    var formData = [];
                    $.each(allIds, function (i, val1) {
                        var tag = document.getElementById(val1).tagName;
                        if (tag == 'TABLE') {
                            var object_names_form = document.getElementById(val1).getElementsByClassName("object_name_form");
                            var element_name_from_icon = document.getElementById(val1).getElementsByClassName("elementIcon");
                            var loopLength = object_names_form.length;
                            var allObjects = '';
                            for (var i = 0; i < loopLength; i++) {
                                var objectValue = object_names_form[i].innerHTML;
                                if (objectValue == '') {
                                    continue;
                                }
                                var imgSrc = element_name_from_icon[i];
                                if (imgSrc != undefined) {
                                    imgSrc = imgSrc.getElementsByTagName("IMG")[0].src;

                                    var objectElement = imgSrc.split('/');
                                    objectElement = objectElement[objectElement.length - 1];
                                    objectElement = objectElement.split('.svg');
                                    objectElement = objectElement[0].replaceAll('-', ' ');
                                    objectElement = capitalizeFirstLetter(objectElement);
                                    objectElement = objectElement.replaceAll(' ', '_');
                                    objectElement = objectElement.replaceAll(' Of ', ' of ');
                                    allObjects += objectValue + '---' + objectElement + ',';
                                } else {
                                    allObjects += objectValue + ",";
                                }

                            }

                            //						 					console.log('val',objectValue)

                            //						 				$.each( object_names_form, function( key, value ) {
                            //						 					allObjects += value.innerHTML+",";
                            //						 				});
                            allObjects = allObjects.slice(0, -1);
                            formData.push(allObjects);
                        } else if (tag == 'TEXTAREA') {
                            var currentAttVal = $('#' + val1).val();
                            formData.push(currentAttVal);
                        } else {
                            formData.push($('#' + val1).val())
                        }
                    });
                    var id = idd[0];
                    $.ajax({
                        url: "validateObjectName", // url: "/findTables?dbName="+db_name,
                        //type: "GET",
                        data: {
                            'tableName': tableName,
                            'object_name': formData[0],
                            'oldName': row_name[0],
                        },
                        //dataType: "text/String"
                        success: function (data) {
                            if (data == '') {
                                $.ajax({
                                    url: "editRow", // url: "/findTables?dbName="+db_name,
                                    type: "POST",
                                    data: {
                                        'dbName': dbName,
                                        'tableName': tableName,
                                        'attributes': attributes,
                                        'id': id,
                                        'oldName': row_name[0],
                                        'formData': formData,
                                        'AllRelRowIDs': AllRelRowIDs,
                                        'AllRelTableIDs': AllRelTableIDs
                                    },
                                    //dataType: "text/String"
                                    success: function (data) {
                                        if (imgTagLength > 1) {
                                            imgTag.src = imgSrc;
                                        } else {
                                            $("#" + td_id).append('<img style=\"width:20px; height:20px; float:right\" draggable=\"false\" src=\"' + imgSrc + '"\">');
                                            console.log()
                                        }
                                        let getcurrentDate = new Date();
                                        let gethour = getcurrentDate.getHours();
                                        let getMinute = getcurrentDate.getMinutes();
                                        //console.log("getMinute", getMinute)
                                        if (getMinute < 10) {
                                            getMinute = "0" + getMinute;
                                        }
                                        let getSecond = getcurrentDate.getSeconds();
                                        //console.log("getSecond", getSecond)
                                        getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
                                        //console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
                                        last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
                                        $(".alert_message").html('<div class="alert alert-secondary" role="alert">' + successfully_updated + '</div>');
                                        alert_message_function();
                                        refreshTree();
                                        var get_id = $("#" + CurrenttabID + " :input[name=\"Name\"]").attr("id");
                                        var new_value_input = $("#" + get_id + "").val();
                                        /* console.log("object_name_id", object_name_id[0])
                                        console.log('new_value_input',new_value_input)
                                        console.log("label_value", $("#"+object_name_id[0]+"").text(new_value_input)) */
                                        $("#" + object_name_id[0] + "").text(new_value_input);
                                        if (cell) {
                                            graph1.model.setValue(cell, new_value_input);
                                            // 														//save_graph_for_rename_component();
                                            //save_graph();
                                            //graph1.updateCellSize(cell, true);
                                            /* var geom = cell.getGeometry();
                                            geom.width = 300;
                                            $("rect").attr("height","50"); */
                                            //geom.width = geom.width > width ? geom.width : width;
                                        }
                                        var change_value = $('#' + get_id).val(new_value_input);
                                        var removeItem = change_value[0].value + '_' + tableName;
                                        historyTabItems = jQuery.grep(historyTabItems, function (value) {
                                            return value != removeItem;
                                        });
                                        if (historyTabItems.includes(change_value[0].value + '_' + tableName) == false) {
                                            $("div#" + current_ID + "11").replaceWith('<div id="' + current_ID + '11" class="column ' + removeItem.replaceAll(' ', '---') + '" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\'' + current_ID + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\'' + current_ID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/' + imageName + '"/>"><br/>' + change_value[0].value + '</a></div></div>');
                                            $("#history_tab").css("display", "flex")
                                            historyTabItems.push(change_value[0].value.replaceAll(' ', '---') + '_' + tableName);
                                        }
                                        $("#" + btnedit).attr('disabled', true);
                                    }
                                });
                            }
                            else {
                                $(".alert_message").html('<div class="alert alert-danger" role="alert">' + name_already_exist + '</div>');
                                alert_message_function();
                            }
                        }
                    });
                }
                else {
                    $(".alert_message").html('<div class="alert alert-danger" role="alert">' + another_user_updated_this_file_please_refresh_the_tree + '</div>');
                    alert_message_function();
                }
            },
            error: function (data) {
                $(".alert_message").html('<div class="alert alert-danger" role="alert">' + someone_changed_the_file_name_please_refresh_the_tree + '</div>');
                alert_message_function();
            }
        });
    });
    save_button_toggle(btnedit, CurrenttabID);
}

function addInMatrixInput(val, inputClass) {
    var value = val.value;
    $('#' + inputClass).tagsinput('add', value);
}

function showMatrix(matrix_name, matrix_element1, matrix_element2) {
    $("#historyList").css("display", "none");
    $("#element_title").empty();
    $("#element_title").show().text(matrix_name);
    $('#element_title').prop('title', matrix_name);
    $("#historyList").css("display", "none");

    $.ajax({
        url: "getMatrixTable",
        type: "GET",
        data: { 'matrix_element1': matrix_element1, 'matrix_element2': matrix_element2 },
        success: function (data) {
            var thead = data["thead"];
            var tbody = data["tbody"];
            var a = document.getElementById("matrix_table");
            var theadVar = a.getElementsByTagName("thead");
            console.log(' theadVar', theadVar)
            thead = "<tr>" + thead + "</tr>";
            $(theadVar).empty();
            $(theadVar).append(thead);
            var tbodyVar = a.getElementsByTagName("tbody");
            $(tbodyVar).empty();
            $(tbodyVar).append(tbody);
        }
    });
    matrixView();
}

function closeMatrixDiv(current_ID, catalog_element, matrixName, architectureId, parentId) {

    $("#" + current_ID + "").remove();
    $("#" + current_ID + "11").remove();
    
    const historyItemId = matrixName.replaceAll(" ", "---")+"_matrix_"+parentId+"11";
    
    $("#" + historyItemId + "").remove();

    if (currentWindowID == catalog_element) {
        $("#element_title").hide();
        $(".catalog_save_button").hide();
        $(".matrix_save_button").css("display", "none");
        ////////////////////////////////////////
        let loadingGrid = false
        emptyTheGridTable(loadingGrid)
    }

    if (numItems = $('.column').length == 0) {
        $("#downloadCatalogButton").hide();
    }
    historyNumberCloseDiv(catalog_element);

    $.ajax({
        url: "getMatrixIdThroughMatrixName",
        type: "POST",
        data: JSON.stringify({
            'matrixName': matrixName,
            'architectureId': architectureId,
        }),
        contentType: "application/json", // Set the content type to JSON
        success: function (matrixId) {

            const matrixElementId = matrixName.replaceAll(" ", "---") + "" + matrixId;
            removeClassFromElement('openedActive', matrixElementId);
        },
        error: function (err) {
            console.log('error ', err);
        },
        async: false
    });

}
	// matrix work End's here