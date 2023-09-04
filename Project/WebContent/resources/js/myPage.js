// console.log("mypage.js")
var historyTabItemsMyPage = [];
var allExistElementInHistoryTabForMyPage = [];
var allDivIdsMyPage = [];
var divIdMypage = 'currentFormDivIdMyPage';
var numItemsMyPage = 1;
var sliderValue = "true";
var myPageTableDataArray = {};
var myPageToggleFlag = "true"




let historyTabDictionaryMyPage = {};
let alldivIdInHistoryMyPage;




function handleHistoryTabMyPage(repositoryID, tblName, objectName, objectId) {
    // console.log("historyTabDictionaryMyPage")
    // console.log(historyTabDictionaryMyPage)
    // console.log("repositoryID", repositoryID);
    // console.log("tblName", tblName);
    // console.log("allExistElementInHistoryTabForMyPage", allExistElementInHistoryTabForMyPage);
    // console.log("historyTabItemsMyPage", historyTabItemsMyPage);
    //	If the `repositoryID` is not already in the `historyTabDictionaryMyPage` object, add an empty array for it
    if (!historyTabDictionaryMyPage[repositoryID]) {
        historyTabDictionaryMyPage[repositoryID] = [];
        //		Create seperate div for each repository    	
        $("#historyListMyPage").append("<div id='repositoryID" + repositoryID + "'></div>")
    }

    // let objectNameToAdd = allExistElementInHistoryTabForMyPage[allExistElementInHistoryTabForMyPage.length - 1]

    let objectNameToAdd = objectName.replaceAll(" ", "---")
    let newElement = objectNameToAdd + "_" + tblName;

    // console.log("before_values:", Object.values(historyTabDictionaryMyPage[repositoryID]))

    if (!Object.values(historyTabDictionaryMyPage[repositoryID]).flat().includes(objectId)) {
        //		console.log(".push:", newElement)
        historyTabDictionaryMyPage[repositoryID].push(objectId);
        //	Get length of selected repositoryID
        // Execute the sayHello function after a delay of 2 seconds
        // numItems = $("#repositoryID" + repositoryID + " .column").length + 1;
        // $(".history_page_no_mypage").html(numItems);
        if (historyTabDictionaryMyPage[repositoryID].length) {
            // console.log("ifif")
            $(".history_page_no_mypage").html(historyTabDictionaryMyPage[repositoryID].length);
        } else {
            // console.log("elseelse")
            $(".history_page_no_mypage").html(0);
        }


    }

    // console.log("newElement:", newElement)
    // console.log("historyTabDictionaryMyPage:", historyTabDictionaryMyPage)
    // console.log("values:", Object.values(historyTabDictionaryMyPage[repositoryID]))


    alldivIdInHistoryMyPage = Object.keys(historyTabDictionaryMyPage);

    //	Filter current repositoryID from the given array
    const filteredArray = alldivIdInHistoryMyPage.filter((element) => element !== repositoryID);
    filteredArray.forEach(hideOtherDivs);
    //	Hide all inactive div
    function hideOtherDivs(item) {
        $("#repositoryID" + item).hide()
    }


    //	Show the current div in the history tab
    $("#repositoryID" + repositoryID).show()


}



function handleRemoveRepositoryDivMyPage() {
    alldivIdInHistoryMyPage.forEach(function (currentValue) {
        // execute code block
        $("#repositoryID" + currentValue).remove();
    });
    alldivIdInHistoryMyPage = [];
    allExistElementInHistoryTabForMyPage = [];
    historyTabItemsMyPage = [];
}

function handleHistoryTabIndicatorMyPage(objectNameWithTableName) {
    // numItems = $("#repositoryID" + closeDivRepositoryId + " .column").length - 1;
    // $(".history_page_no_mypage").html(numItems);
    var repositoryID = $("#myPageArchitechtureDropDown").val()

    // console.log("objectNameWithTableName")
    // console.log(objectNameWithTableName)

    // console.log('historyTabDictionaryMyPage')
    // console.log(historyTabDictionaryMyPage)

    // removing the object from history dictionary start
    let index = historyTabDictionaryMyPage[repositoryID].indexOf(objectNameWithTableName); // find the index of the element to remove
    if (index > -1) {
        historyTabDictionaryMyPage[repositoryID].splice(index, 1); // remove the element at the index
    }
    // removing the object from history dictionary end

    // console.log('afhistoryTabDictionaryMyPage')
    // console.log(historyTabDictionaryMyPage)


    try {

        if (historyTabDictionaryMyPage[repositoryID].length) {
            // console.log("if")
            $(".history_page_no_mypage").html(historyTabDictionaryMyPage[repositoryID].length);
        } else {
            // console.log("else")
            $(".history_page_no_mypage").html(0);
        }

    } catch (error) {
        $(".history_page_no_mypage").html(0);
    }


}


$(document).ready(function () {
    $.ajax({
        url: "getAllRepositories",
        async: false,
        type: 'POST',
        data: {},
        dataType: 'json', // added data type
        success: function (data) {

            $("#myPageArchitechtureDropDown").empty()
            $("#myPageArchitechtureDropDown").append(`<option disabled ">${select_architecture}</option>`);
            for (var i = 0; i <= data.length - 1; i++) {
                if (i == 0) {
                    $("#myPageArchitechtureDropDown").append(`<option selected value="${data[i]["id"]}">${data[i]["architecture_name"]}</option>`);
                } else {
                    $("#myPageArchitechtureDropDown").append(`<option value="${data[i]["id"]}">${data[i]["architecture_name"]}</option>`);
                }

                // let repositoryId = data[i]["id"]

                // historyTabDictionary[repositoryId] = []
            }

            // console.log(historyTabDictionary)
        }
    })
});

function handleMyPageArchitechtureDropDownOnchange() {

    let filterValue = $('#changeHistoryMyPageTableDaysInput').val()
    filterValue = filterValue.toString();

    let sliderValue = document.getElementById('myPageToggleCheckBox').checked
    var architechtureId = $("#myPageArchitechtureDropDown").val()

    getDataForMyPageTable(filterValue, 'myPageButton', sliderValue, architechtureId)





    //	Show the current div in the history tab
    $("#repositoryID" + architechtureId).show()
    alldivIdInHistoryMyPage = Object.keys(historyTabDictionaryMyPage);
    //	Filter current repositoryID from the given array
    const filteredArray = alldivIdInHistoryMyPage.filter((element) => element !== architechtureId);
    filteredArray.forEach(hideOtherDivs);
    //	Hide all inactive div
    function hideOtherDivs(item) {
        $("#repositoryID" + item).hide()
    }





    try {

        if (historyTabDictionaryMyPage[architechtureId].length) {
            // console.log("if")
            $(".history_page_no_mypage").html(historyTabDictionaryMyPage[architechtureId].length);
        } else {
            // console.log("else")
            $(".history_page_no_mypage").html(0);
        }

    } catch (error) {
        $(".history_page_no_mypage").html(0);
    }


}



function myPageView() {
    $("#element_title").css("display", "none");
    //    $("#history_tab").css("display", "none");
    $("#formDiv").hide();
    $("#chart").hide()
    $("#apexchartstyei9slx").hide();
    $("#changeHistoryMyPageTable").show();
    $("#navbar_buttons").hide();
    //    $("#save_button").hide();
    //    $(".graph_button").hide();
    //    $(".nav_button").hide();
    //    $("#save-button-nav").hide();
}


function myPageTableView() {
    myPageView()
    document.getElementById("myPageObjectTableDiv").style.display = "block";
    document.getElementById("myPageObjectFormDiv").style.display = "none";
}

function myPageObjectView() {
    myPageView()
    document.getElementById("myPageObjectTableDiv").style.display = "none";
    document.getElementById("myPageObjectFormDiv").style.display = "block";
}


var globalMyPageInputValue = "";
function getDataForMyPageTable(filterVal, route, getAllData, architechtureId) {
    // console.log("d")
    // console.log("getAllData: ",getAllData)
    $.ajax({
        url: "getDataForChangeHistoryMypage",
        type: "GET",
        data: {
            "filterVal": filterVal,
            "getAllData": getAllData,
            "route": route,
            "architechtureId": architechtureId,
        },
        beforeSend: function () {
            // // console.log("e")
            if (route == "myPageButton") {
                showLoader();
                // $("#changeHistoryMyPageTable").hide();
                $("#myPageRightPane").hide();
                // console.log("0")
            } else if (route == "inputOnchange") {
                showLoader();
                $("#myPageTableDiv").hide();
                $("#changeHistoryMyPageTableDaysInput").prop('disabled', true);
                // console.log("0.1")
            } else if (route == "refresh") {
                showLoader();
            }
        },
        success: function (data) {
            // console.log("f")

            myPageTableDataArray["sliderValue"] = sliderValue
            myPageTableDataArray["tableData"] = data

            var t = $('#myPageTable').DataTable();
            if (myPageTableDataArray["tableData"].length == 0) {
                t.clear().draw();
                $('.dataTable').css('width', '100%');
                $('.dataTables_scrollHeadInner').css('width', '100%');
                $('.dataTables_empty').css('width', '100vw');
                $('.dataTables_scroll').css('margin-right', '10px');
                $('.pagination').css('margin-right', '10px');
                if (route == "myPageButton") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").css("display", "block")
                        hideLoader();
                        // console.log("1")
                        $("#myPageRightPane").show();
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        hideLoader();
                        // console.log("2")
                    }
                } else if (route == "inputOnchange") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        $("#myPageTableDiv").show();
                        $("#changeHistoryMyPageTableDaysInput").prop('disabled', false);
                        hideLoader();
                        // console.log("3")
                        $("#myPageRightPane").show();
                    } else {
                        $("#myPageTableDiv").hide();
                        hideLoader();
                        // console.log("4")
                        $("#myPageRightPane").show();
                    }
                }
            } else {
                t.clear().draw();
                // console.log("g")
                var tempData = myPageTableDataArray["tableData"]
                for (var i = 0; i < tempData.length; i++) {
                    // t.row.add(tempData[i]).draw(false);
                    t.row.add(tempData[i]);
                }
                if (route == "myPageButton") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").show();
                        hideLoader();
                        // console.log("5")
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        hideLoader();
                        // console.log("5.5")
                    }
                } else if (route == "inputOnchange") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        $("#myPageTableDiv").show();
                        $("#changeHistoryMyPageTableDaysInput").prop('disabled', false);
                        hideLoader();
                        // console.log("6")
                        $("#myPageRightPane").show();
                    } else {
                        $("#myPageTableDiv").hide();
                        hideLoader();
                        // console.log("7")
                        $("#myPageRightPane").show();
                    }
                } else if (route == "refresh") {
                    if ($("#MyPageButton").hasClass("active1")) {
                        // $("#changeHistoryMyPageTable").show();
                        $("#myPageRightPane").show();
                        hideLoader();
                        // console.log("5a")
                        $("#symbolColumnId").click();
                    } else {
                        // $("#changeHistoryMyPageTable").hide();
                        $("#myPageRightPane").hide();
                        hideLoader();
                        // console.log("5.5a")
                        $("#symbolColumnId").click();
                    }
                }
                $('.dataTable').css('width', '100%');
                $('.dataTables_scrollHeadInner').css('width', '100%');
                $('.dataTables_empty').css('width', '100vw');
                $('.dataTables_scroll').css('margin-right', '10px');
                $('.pagination').css('margin-right', '10px');
                $("#symbolColumnId").click();
            }
            globalMyPageInputValue = filterVal;
        }
    });
}

function changeHistoryMypageButton(filterVal, route) {

    myPageTableView()

    document.getElementById("history_tab_mypage").style.display = "inline-flex";
    document.getElementById("history_tab").style.display = "none";


    var architechtureId = $("#myPageArchitechtureDropDown").val()


    // console.log("a")
    if (!(typeof filterVal == "string")) {
        filterVal = filterVal.toString();
        // console.log("b")

        // console.log("c")
    }

    if (filterVal != "") {
        // console.log("i")


        sliderValue = document.getElementById('myPageToggleCheckBox').checked
        // console.log("sliderValue:",sliderValue)

        //        document.getElementById('myPageToggleCheckBox').checked = sliderValue

        if ((filterVal != globalMyPageInputValue)) {

            // console.log("j")
            getDataForMyPageTable(filterVal, route, sliderValue, architechtureId)

        } else if ((filterVal == globalMyPageInputValue) && (route == "inputOnchange")) {

            // console.log("k")
            $(".alert_message").html('<div class="alert alert-danger" role="alert">Already showing data for ' + filterVal + ' days</div>');
            alert_message_function();

        } else if ((filterVal == globalMyPageInputValue) && (route == "myPageButton")) {
            // console.log("l")
            $("#symbolColumnId").click();
        } else if ((filterVal == globalMyPageInputValue) && (route == "refresh")) {
            // console.log("no")
            getDataForMyPageTable(filterVal, route, sliderValue, architechtureId)

        }
        else {
            // console.log("m")
        }
    } else {
        // console.log("n")
        $(".alert_message").html('<div class="alert alert-danger" role="alert">Please select the days first!</div>');
        alert_message_function();
    }
}



function getMyPageTableDataBasedOnSlider() {

    sliderValue = document.getElementById('myPageToggleCheckBox').checked
    var currentTitle = document.getElementById('myPageToggleSwitchLabel').title

    var tableData = myPageTableDataArray["tableData"]

    //		if(tableData.length > 0 ){
    //			
    //			if(sliderValue == false){
    //				
    //				// console.log("false")
    //				
    //				var objectCreatedBy = tableData[0][6]
    //				
    //				// console.log("window.userName:", window.userName)
    //				
    //				var filteredByUser = tableData.filter((item)=> item[6] == window.userName)
    //				
    //				// console.log("filteredByUser:",filteredByUser)
    //				
    //				var t = $('#myPageTable').DataTable();
    //				t.clear().draw();
    //	
    //
    //				for (var i = 0; i < filteredByUser.length; i++) {
    //				    t.row.add(filteredByUser[i]);
    //				}
    //				t.draw();
    //			}else{
    ////				showLoader();
    ////				var t = $('#myPageTable').DataTable();
    ////				t.clear();
    ////	
    ////				var tempData = myPageTableDataArray["tableData"]
    ////				for (var i = 0; i < tempData.length; i++) {
    ////				    t.row.add(tempData[i]).draw(false);
    ////				}
    ////				
    ////				hideLoader();
    //
    //				getDataForMyPageTable("0", "inputOnchange", sliderValue)
    //			}
    //			
    //		}else{
    //			getDataForMyPageTable("0", "inputOnchange", sliderValue)
    //		}
    var architechtureId = $("#myPageArchitechtureDropDown").val()
    getDataForMyPageTable($('#changeHistoryMyPageTableDaysInput').val(), "inputOnchange", sliderValue, architechtureId)

    if (currentTitle == "Show My Objects") {
        document.getElementById('myPageToggleSwitchLabel').title = "Show All Objects"
    } else {
        document.getElementById('myPageToggleSwitchLabel').title = "Show My Objects"
    }


}

function changeHistoryModelpage() {
    $("#element_title").css("display", "flex");
    //    $("#history_tab").css("display", "flex");
    $("#changeHistoryMyPageTable").hide();
    $("#formDiv").show();
    hideLoader();
    $("#changeHistoryMyPageTable").hide()
    $("#navbar_buttons").show();

    document.getElementById("history_tab_mypage").style.display = "none";
    document.getElementById("history_tab").style.display = "inline-flex";



    //	$("#fit-screen-nav").css("display", "none");
    //    $("#zoom-in-nav").css("display", "none");
    //    $("#zoom-out-nav").css("display", "none");
    //    $("#save-button-nav").css("display", "none");
    //    $("#save-as-button-nav").css("display", "none");
    //    $("#fit-screen").css("display", "none");
    //    $("#zoom-in").css("display", "none");
    //    $("#zoom-out").css("display", "none");
    //    $("#save_button").css("display", "none");
    //    $("#save_graph_as_button").css("display", "none");


    //	if(navigationView == true){
    //		$(".nav_button").show();
    //		$("#save-button-nav").show();		
    //	}else{
    //		$("#save_button").show();
    //		$(".graph_button").show();
    //	}
}




function refreshTreeForMyPage() {
    $('#MyPagetab-1-li').empty();
    $.ajax({
        url: "getCompleteTreeForMyPage",
        method: 'get',
        data: {},
        beforeSend: function () {
            //            $("body").css("cursor", "progress");
            showLoader();
        },
        success: function (data) {
            var myPageTree = '<ul class="nested">';
            myPageTree += data;
            myPageTree += '</ul>';
            $('#MyPagetab-1-li').append('<p style="margin-bottom:0px;" class="caret">MIM</p>' + myPageTree);
            // crt();
            $(".leftPalleteParent").show();
            hideLoader();
            //            $("body").css("cursor", "default");
        },
    });
}




function showDataForMyPage(table, name, objectId) {
    // console.log("table, name, objectId")
    // console.log(table, name, objectId)

    document.getElementById("myPageObjectTableDiv").style.display = "none";
    document.getElementById("myPageObjectFormDiv").style.display = "block";

    if (allExistElementInHistoryTabForMyPage.includes(name.replaceAll(" ", "---")) == false) {
        allExistElementInHistoryTabForMyPage.push(name.replaceAll(" ", "---"))
    }

    showLoader();

    var tableName = table.split(' ').join('_');
    var architechtureId = $("#myPageArchitechtureDropDown").val()




    $.ajax({
        url: "getRowData",
        type: "POST",
        data: {
            'tableName': tableName,
            'name': name,
            'repositoryID': architechtureId,
            'r_id': objectId
        },
        dataType: "json",
        beforeSend: function () {
            //            loader_image_body();
        },
        success: function (data) {

            // console.log("dadta")
            // console.log(data["row_name"][0])

            var objectName = data["row_name"][0]

            handleHistoryTabMyPage(architechtureId, tableName, objectName, objectId)

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
            let { dataBeforeUpdate } = data;
            let { multiListIds } = data;
            $.each(data, function (i, val) {
                if (i == "row_id") {
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
            });
            var name_for_class = row_name[0].replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_');
            // console.log("name_for_class", name_for_class)
            $(function () {
                $("#" + CurrenttabID).tabs().addClass("ui-tabs-vertical ui-helper-clearfix " + name_for_class + "");
                $("#" + CurrenttabID + " li").removeClass("ui-corner-top").addClass("ui-corner-left");
            });

            var current_ID = divIdMypage + divIdCount++;
            allDivIdsMyPage.push(current_ID);
            formData = '<div id="' + current_ID + '">' + formData + '</div>';
            var imageName = tableName.toLowerCase().replaceAll('_', '-');

            imageName = imageName + '.svg';

            //            var clsName = row_name[0].replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_') + '_' + tableName.replaceAll(' ', '_');
            var clsName = objectId;
            var historyObjectDivId = current_ID + "_myPage"
            // console.log("clsName", clsName);
            // console.log("historyTabItemsMyPage", historyTabItemsMyPage)
            if (historyTabItemsMyPage.includes(clsName) == false) {
                $("#repositoryID" + architechtureId).append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\', \'' + objectId + '\')"><img  onclick="titleempty();" draggable="false" alt="" width="20px" height="20px"  src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\', \'' + architechtureId + '\', \'' + name.replaceAll(" ", "---") + '\', \'' + objectId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                // $("#historyListMyPage").append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\')"><img  onclick="titleempty();" draggable="false" alt="" width="20px" height="20px"  src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                $("#history_tab_mypage").css("display", "flex")
                historyTabItemsMyPage.push(clsName);
                // console.log("")
            } else {
                $("." + clsName).remove();
                $("#repositoryID" + architechtureId).append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\', \'' + objectId + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\', \'' + architechtureId + '\', \'' + name.replaceAll(" ", "---") + '\', \'' + objectId + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                // $("#historyListMyPage").append('<div id="' + historyObjectDivId + '" class="columnMyPage ' + clsName + '"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\'' + current_ID + '\', \'' + row_name + '_' + tableName + '\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg" /></span></div><br/><div><a href="#" onclick="showDivMyPage(\'' + current_ID + '\', \'' + data.editButtonId[0] + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/js/examples/editors/images/images1/' + imageName + '" /><br/>' + row_name + '</a></div></div>');
                $("#history_tab_mypage").css("display", "flex");
            }


            // $("#form_id_mypage").empty();
            $("#form_id_mypage").append(formData);
            hideLoader();
            showDivMyPage(current_ID, data.editButtonId[0], architechtureId, name, objectId);
            $.each(checkboxIds, function (i, val) {
                $("#" + val).on('change', function () {
                    if ($(this).is(':checked')) {
                        $(this).attr('value', 'True');
                    } else {
                        $(this).attr('value', 'False');
                    }
                });
            });
            getMultiListValue(multiListIds);
            $(".choices__inner").css("display", "block");
            form_submitForUpdate(dbName, tableName, labels, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id, imageName, current_ID, CurrenttabID[0], null, last_time_updated, AllRelTableIDs, dataBeforeUpdate, "fromMyPage", architechtureId);
            show_or_hide_relationships(relationsClass);
            //            $("#loader_image_body").hide();
            //            $("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
            $("body").css("pointer-events", "initial");







        }
    });
}



//function on_context_menu_myPage_object(element, type) {
//    // console.log("on_context_menu_myPage_object")
//    // console.log(element, type)
//    var element_content = element;
//    var type_content = type;
//    //  		alert("You clicked on_context_menu")
//
//
//    event.preventDefault();
//    var contextElement = document.getElementById("context-menu-my-page");
//    //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
//    var content_ = '<a style="text-decoration:none; cursor:cell;" href="javascript:addNew(\'' + element_content + '\',\'' + type_content + '\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+createNewObject+'</div></a>';
//    contextElement.innerHTML = content_;
//    contextElement.style.top = event.pageY + "px";
//    contextElement.style.left = event.pageX + "px";
//    contextElement.classList.add("active");
//
//    window.addEventListener("click", function () {
//        document.getElementById("context-menu-my-page").classList.remove("active");
//    });
//}



function getElementsForObjectPalleteForMyPage() {
    $.ajax({
        url: "getElementsForPalete",
        method: 'get',
        data: {},
        beforeSend: function () {
            $("body").css("cursor", "progress");
            showLoader();
        },
        success: function (data) {

            var mainDiv = document.createElement('div')

            data.map((elementName, i) => {
                var lowerCase = elementName.toLowerCase()
                var replaceSpaceWithDash = lowerCase.replaceAll(" ", "-")
                // <img class="mxToolbarModeSelected" src="/EAZee/resources/js/examples/editors/images/images1/business-application.svg" title="Business Application" />

                if (elementName != "break") {

                    var img = document.createElement("IMG");
                    //                    img.setAttribute('src', `/EAZee/resources/js/examples/editors/images/images1/${replaceSpaceWithDash}.svg`);
                    img.setAttribute('src', `resources/js/examples/editors/images/images1/${replaceSpaceWithDash}.svg`);
                    img.setAttribute("class", "mxToolbarModeSelected");
                    img.classList.add("myPageObjectPalleteImage");
                    img.setAttribute("title", elementName);
                    img.setAttribute("onclick", "myPageAddnewObject('" + elementName + "', null)");

                    mainDiv.appendChild(img);

                } else {
                    var hr = document.createElement('hr');
                    hr.setAttribute('size', '1')
                    hr.setAttribute('style', 'margin-right: 6px')

                    mainDiv.appendChild(hr);
                }
            })

            var objectPalleteId = document.getElementById("myPageObjectPallete")
            objectPalleteId.appendChild(mainDiv)
            $("body").css("cursor", "default");
        },
    });

}

function myPageAddnewObject(element, type) {

    var architechtureId = $("#myPageArchitechtureDropDown").val()

    $.ajax({
        url: "getUniqueObjectName",
        data: { 'objectName': element },
        success: function (objectName) {

            $.ajax({
                url: "addElementInDBFromGraph",
                data: {
                    'elementName': element,
                    'objectName': objectName,
                    'objectType': 'Other',
                    'repositoryID': architechtureId
                },
                success: function (result) {

                    let newObjectId = result[0]
                    var tableName = element.replaceAll(' ', '_');

                    showDataForMyPage(tableName, objectName, newObjectId)
                    // console.log("z")
                    myPageTableDataArray = {};
                    sliderValue = document.getElementById('myPageToggleCheckBox').checked


                    getDataForMyPageTable("0", "newUser", sliderValue, architechtureId)
                }
            });
        }
    });

}



function displaydivmypage() {
    var HistoryChildLength = document.getElementsByClassName("columnMyPage").length
    if (HistoryChildLength >= 1) {
        var x = document.getElementById("historyListMyPage");
        x.style.display = x.style.display === 'none' ? 'block' : 'none';
    }
    else {
        $(".alert_message").html('<div class="alert alert-info" role="alert">No History Found</div>');
        alert_message_function();
        close_all_history_div_mypage();
    }

}

document.addEventListener('mouseup', function (e) {
    var container = document.getElementById('historyListMyPage');

    if (!container.contains(e.target)) {
        container.style.display = 'none';
    }
}.bind(this));



function closeDivFromMyPageHistory(showDivID, data, objectId) {

    var index_no_of_deleted_item = historyTabItemsMyPage.indexOf(objectId);
    historyTabItemsMyPage.splice(index_no_of_deleted_item, 1);


    $("#" + showDivID + "").remove();
    $("#" + showDivID + "_myPage").remove();
    setTimeout(function () { displaydivmypage(); }, 0.5);

    // numItemsMyPage = $('.columnMyPage').length;

    // $(".history_page_no_mypage").html(numItemsMyPage);

    document.getElementById("symbolColumnId").click()


    // console.log("data")
    // console.log(data)


    let objectNameWithTableName = objectId.replaceAll(" ", "---")




    handleHistoryTabIndicatorMyPage(objectNameWithTableName)

    var repositoryID = $("#myPageArchitechtureDropDown").val()
    $(".history_page_no_mypage").html(historyTabDictionaryMyPage[repositoryID].length);
}

function titleempty() {
    $("#element_title").empty();
}


function showDivMyPage(showDivID, save_btn_id, repositoryID, objectName, r_id) {
    myPageObjectView();


    $.each(dictionaryXML, function (key, value) {
        $("#" + key.replaceAll(' ', '---') + "11").css("background", "");
    });
    $(".matrix_save_button").empty();
    $("#save_button").hide();
    $(".graph_button").hide();
    $(".nav_button").hide();

    $.each(allDivIdsMyPage, function (i, val) {
        if (val != showDivID) {
            $("#" + val).css("display", "none");
            $("#" + val + "_myPage").css("background", "");
            $("#matrixDownload" + val).css("display", "none");

        } else {
            $("#" + val).css("display", "block");
            $("#" + val + "_myPage").css("background", "#e9e9e9");
            $("#matrixDownload" + val).css("display", "block");
            // numItemsMyPage = $('.columnMyPage').length;

            // $(".history_page_no_mypage").html(numItemsMyPage);
        }
        $("#palete").css("display", "none");
        $("#graphId").css("display", "none");
        $("#form_id").css("display", "block");
        $("#historyList").css("display", "none");
    });
}

function close_all_history_div_mypage() {


    $(".columnMyPage").remove();
    $("#historyList").hide();
    $("#historyListMyPage").hide();


    document.getElementById("myPageObjectFormDiv").style.display = "none";
    document.getElementById("myPageObjectTableDiv").style.display = "block";
    document.getElementById("symbolColumnId").click()

    handleRemoveRepositoryDivMyPage()
    $(".history_page_no_mypage").html(0);
    historyTabDictionaryMyPage = {}
}

const myTimeout = setTimeout(function () {
    $(document).ready(function () {
        var table = $('#myPageTable').DataTable({
            scrollY: "calc(100vh - 55px - 60px - 180px - 5px)",
            paging: true,
            ordering: true,
            searching: true,
            pageLength: 20,
            dom: 'l<"#add">frtip',
            scrollResize: true,
            width: "100%",
            scrollCollapse: true,
            columnDefs: [
                {
                    "targets": 0, // your case first column
                    "className": "text-center",
                },
                {
                    "targets": 2,
                    "visible": false,
                },
                {
                    "targets": 6,
                    "visible": false,
                },
            ],
            language: {
                'paginate': {
                    'previous': previous,
                    'next': next,
                }
            }
        });

        $('#myPageTable tbody').on('click', 'tr', function () {

            var data = table.row(this).data();
            var elementName = data[1];
            var tableName = data[2];
            var objectId = data[data.length - 1];

            showDataForMyPage(tableName, elementName, objectId)
        });
    });
}, 500)


function getUserName() {
    $.ajax({
        url: "getUserName",
        success: function (userName) {
            window.userName = userName
        }
    });
}


function validateQuickAccessInputValue(e) {
    if ((e.value) && (e.value < 0)) {
        document.getElementById("changeHistoryMyPageTableDaysInput").value = 0;
    }
}
