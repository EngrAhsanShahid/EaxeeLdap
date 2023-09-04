let valueForFilter = {}
/*By default showAll option selected*/
$("#activeInactiveDropdown").val('show_all');

/*On Dropdown Change*/
var dropdown = document.getElementById("activeInactiveDropdown");
dropdown.addEventListener("change", function() {
	var selectedValue = dropdown.value;
	console.log(selectedValue); // You can do further processing with the value
	getUserValue(selectedValue)
});

/*On Tab Change*/
var dropdown1 = document.getElementById("tabs_1");
dropdown1.addEventListener("click", function() {
	// Find the active tab element
	var activeTab = document.querySelector(".ui-tabs-active");	
	// Get the title attribute of the active tab
	var activeTabTitle = activeTab.querySelector("a").getAttribute("title");	
	// console.log("activeTabTitle",activeTabTitle)
	// console.log("valueForFilter[activeTabTitle]", valueForFilter[activeTabTitle])
	getUserValue(valueForFilter[activeTabTitle])
	if(valueForFilter[activeTabTitle] == undefined){
		$("#activeInactiveDropdown").val('show_all');
		getActiveInActive();
	}		
});

/*Get Values Onchange Of Dropdown And Onchange Of Tab*/
function getUserValue(selectedValue){
	// console.log("selectedValue=", selectedValue);
	// Find the active tab element
	var activeTab = document.querySelector(".ui-tabs-active");	
	// Get the title attribute of the active tab
	var activeTabTitle = activeTab.querySelector("a").getAttribute("title");
	// console.log("activeTabTitle=",activeTabTitle)	
	valueForFilter[activeTabTitle] = selectedValue;
	// console.log("valueForFilter===",valueForFilter)
		
	if(valueForFilter[activeTabTitle] == 'show_all'){
		// console.log("You clicked on show_all")
		$("#activeInactiveDropdown").val(valueForFilter[activeTabTitle]);
		// Set the selected value of the dropdown
		getActiveInActive();
	}
	else if(valueForFilter[activeTabTitle] == 'show_active'){
		// console.log("You clicked on show_active")
		$("#activeInactiveDropdown").val(valueForFilter[activeTabTitle]);
		getOnlyActiveTree();
	}
	else if(valueForFilter[activeTabTitle] == 'show_inactive'){
		// console.log("You clicked on show_inactive")
		$("#activeInactiveDropdown").val(valueForFilter[activeTabTitle]);
		getOnlyInactiveTree();
	}
	else if(valueForFilter[activeTabTitle] == undefined){
		$("#activeInactiveDropdown").val('show_all');
		getActiveInActive();
	}	
}

/*Get All Elements*/
function getOnlyInactiveTree(){
	$(".objectlist").hide()
	$(".model_list").hide()
	$(".deletedObject").show();
}
/*Get Only Active elements*/
function getOnlyActiveTree(){
	$(".objectlist").show()
	$(".model_list").show()
	$(".deletedObject").hide();
}
/*Get Only InActive elements*/
function getActiveInActive(){
	$(".objectlist").show()
	$(".model_list").show()
	$(".deletedObject").show();	
}

function changeSelectedDropdownCSS(){
  // Event listener for dropdown change
  $("#activeInactiveDropdown").change(function() {
    // Remove bold styling from previously selected option
    $("#activeInactiveDropdown option").css("font-weight", "normal");

    // Apply bold styling to the newly selected option
    $(this).find("option:selected").css("font-weight", "bold");
  });
}
//function getOnlyInactiveTree(){
//	
//	$(".objectlist").hide()
//	$(".model_list").hide()
//	$(".deletedObject").show();
////	$(".loader").css("display", "block");
////	if(paleteCreated==0)
////		callGraph();
////		callNavigationGraph();
////	$("#palete").css("display", "none");
////	$("#graphId").css("display", "none");
////	$("#navigationId").css("display", "none");
////	$("#form_id").css("display", "block");
////	$.ajax({
////	    url: "getOnlyInactiveTree", // url: "/findTables?dbName="+db_name,
////	  method: 'get',
////	  async:true,
////	    data: {},
////	    beforeSend: function() {
////	    	loader_image();
////	        $("#left_pane").hide();
////	    },
////	    success: function (data) {
////			$('#tabs-1').append(data);
////			setTimeout(() => {
////				crt();
////			}, 500);
////	  		$("#loader_image").hide();
////	  		$("#left_pane").show();
////	  		$(".loader").css("display", "none");
////	  		if(globalLanguage == "En"){
////		  		$(".caret").css('display', 'flex')
////	  		}else{
////	  			$(".caret").css('display', 'initial')
////	  		}
////		},
////		error: function(ts) {
////			if(ts.responseText.includes("The system cannot find the file specified") || ts.responseText.includes("No such file or directory")){
////				alert("Please Upload Metamodel File"); 
////		     	window.location.href = "metamodel_user";
////			}
////		}
////	  });
//}