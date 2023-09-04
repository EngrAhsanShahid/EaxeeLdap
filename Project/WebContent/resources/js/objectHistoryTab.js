let allDivData = {};
let alldivIdInHistory;
let closeDivRepositoryId;
function historyTab(repositoryID) {
	$("#businessProcessList").hide()
	closeDivRepositoryId = repositoryID
//	If the `repositoryID` is not already in the `allDivData` object, add an empty array for it
  	if (!allDivData[repositoryID]) {
    	allDivData[repositoryID] = [];
//		Create seperate div for each repository    	
		$("#historyList").append("<div id='repositoryID"+repositoryID+"'></div>")
  	}
	let objectNameToAdd = allExistElementInHistoryTab[allExistElementInHistoryTab.length - 1]
	
//	let newElement = objectNameToAdd + "_" + tblName;
	let newElement = objectNameToAdd;
	if (!Object.values(allDivData).flat().includes(newElement) && typeof newElement !== 'undefined') {
	  allDivData[repositoryID].push(newElement);
//	Get length of selected repositoryID
		// Execute the sayHello function after a delay of 2 seconds
		numItems = allDivData[repositoryID].length;
		$(".history_page_no").html(numItems);
	}
	else{
		numItems = allDivData[repositoryID].length;
		$(".history_page_no").html(numItems);	
	}
	
//	Show the current div in the history tab
	$("#repositoryID"+repositoryID).show()
	alldivIdInHistory = Object.keys(allDivData);
//	Filter current repositoryID from the given array
	const filteredArray = alldivIdInHistory.filter((element) => element !== repositoryID);
	filteredArray.forEach(hideOtherDivs);
//	Hide all inactive div
	function hideOtherDivs(item) {
		$("#repositoryID"+item).hide()
	}	
}

function removeRepositoryDiv(){
	alldivIdInHistory.forEach(function(currentValue, index, array) {
	  // execute code block
	  $("#repositoryID"+currentValue).remove();
	});	
	alldivIdInHistory = [];
	allExistElementInHistoryTab = [];
	historyTabItems = [];
}

function historyNumberCloseDiv(closeDivName){
	delete dictionaryXML[closeDivName];
	const valueToFind = closeDivName;
	const foundKey = Object.keys(allDivData).find(key => allDivData[key].includes(closeDivName));

//	numItems = $("#repositoryID"+closeDivRepositoryId+" .column").length-1;
//	$(".history_page_no").html(numItems);
	if(foundKey !== undefined && closeDivRepositoryId != undefined){
		if(foundKey == closeDivRepositoryId){
			// console.log("Matched!!")
			if(allDivIds.length !== 0 || allExistElementInHistoryTab.length !== 0){
				// console.log("allDivIds.length !== 0 && allExistElementInHistoryTab.length !== 0")
				if(allDivData[closeDivRepositoryId].includes(closeDivName) || allExistElementInHistoryTab.includes(closeDivName)){
					// console.log("Inside allDivData[closeDivRepositoryId].includes(closeDivName) || allExistElementInHistoryTab.includes(closeDivName)")
					const businessProcessList = document.getElementById('businessProcessList');
					const computedStyle = getComputedStyle(businessProcessList);
					const isActive = computedStyle.display !== 'none';	
					if(isActive == false){
						numItems = allDivData[closeDivRepositoryId].length-1;
						$(".history_page_no").html(numItems);
					}				
	//				numItems = allDivData[closeDivRepositoryId].length-1;
	//				$(".history_page_no").html(numItems);		
				}
				const indexToRemove = allDivData[closeDivRepositoryId].indexOf(closeDivName); // Find the index of the element to remove
				if (indexToRemove !== -1) { // If the element is found in the array
					allDivData[closeDivRepositoryId].splice(indexToRemove, 1); // Remove the element at the index
				}
				const indexToRemove2 = allExistElementInHistoryTab.indexOf(closeDivName);
				if (indexToRemove2 > -1) {
				  allExistElementInHistoryTab.splice(indexToRemove2, 1);
				}	
				const indexToRemove3 = historyTabItems.indexOf(closeDivName);
				if (indexToRemove3 > -1) {
				  historyTabItems.splice(indexToRemove3, 1);
				}						
			}
		}
		else if(foundKey != undefined){
			if(allDivIds.length !== 0 && allExistElementInHistoryTab.length !== 0){
				if(allDivData[foundKey].includes(closeDivName) || allExistElementInHistoryTab.includes(closeDivName)){
					const businessProcessList = document.getElementById('businessProcessList');
					const computedStyle = getComputedStyle(businessProcessList);
					const isActive = computedStyle.display !== 'none';	
					if(isActive == false){
						numItems = allDivData[foundKey].length-1;
					}
	//				numItems = allDivData[foundKey].length-1;
	//				$(".history_page_no").html(numItems);		
				}
				const indexToRemove = allDivData[foundKey].indexOf(closeDivName); // Find the index of the element to remove
				if (indexToRemove !== -1) { // If the element is found in the array
					allDivData[foundKey].splice(indexToRemove, 1); // Remove the element at the index
				}
				const indexToRemove2 = allExistElementInHistoryTab.indexOf(closeDivName);
				if (indexToRemove2 > -1) {
				  allExistElementInHistoryTab.splice(indexToRemove2, 1);
				}	
				const indexToRemove3 = historyTabItems.indexOf(closeDivName);
				if (indexToRemove3 > -1) {
				  historyTabItems.splice(indexToRemove3, 1);
				}					
			}	
		}
	}
	else if(foundKey != undefined){
		const businessProcessList = document.getElementById('businessProcessList');
		const childDivCount = businessProcessList.children.length-1;
		numItems = childDivCount;
		const computedStyle = getComputedStyle(businessProcessList);
		const isActive = computedStyle.display !== 'none';
		if(isActive == true){
			$(".history_page_no").html(numItems)
		}		
	}
	else if(foundKey == undefined && closeDivName =="BusinessProcess"){
		const businessProcessList = document.getElementById('businessProcessList');
		const childDivCount = businessProcessList.children.length-1;
		numItems = childDivCount;
		const computedStyle = getComputedStyle(businessProcessList);
		const isActive = computedStyle.display !== 'none';
		if(isActive == true){
			$(".history_page_no").html(numItems)
		}		
	}	
	
	if(numItems == -1){
		numItems = 0;
		$(".history_page_no").html(numItems)
	}
}

function historyNumberCloseDivForBusinessProcess(){
	const businessProcessList = document.getElementById('businessProcessList');
	const childDivCount = businessProcessList.children.length;
	numItems = childDivCount;
	const computedStyle = getComputedStyle(businessProcessList);
	const isActive = computedStyle.display !== 'none';
	if(isActive == true){
		$(".history_page_no").html(numItems)
	}
}

function getArchitecture(architectureID, objectName){
	$.ajax({
		url:'getArchitectureName',
		type:'POST',
		data: {'architecture_id': architectureID},
	    beforeSend: function() {
	    },		
		success: function(architectureName){
			$("#element_title").show().text(objectName+" ["+architectureName+"]");
			$('#element_title').prop('title', objectName+" ["+architectureName+"]");
		},
		complete: function(){
		}
	})		
}