////let allDivData = {};
//let allNavigationdivIdInHistory;
//let closeNavigationDivRepositoryId;
//function historyTabForNavigation(repositoryID, tblName) {
//	console.log("1")
//	closeNavigationDivRepositoryId = repositoryID
////	If the `repositoryID` is not already in the `allDivData` object, add an empty array for it
//  	if (!allDivData[repositoryID]) {
//    	allDivData[repositoryID] = [];
////		Create seperate div for each repository    	
//		$("#historyList").append("<div id='repositoryID"+repositoryID+"'></div>")
//  	}
//	let objectNameToAdd = allExistElementInHistoryTab[allExistElementInHistoryTab.length - 1]
//	
////	let newElement = objectNameToAdd + "_" + tblName;
//	let newElement = objectNameToAdd;
//	if (!Object.values(allDivData).flat().includes(newElement) && typeof newElement !== 'undefined') {
//	  allDivData[repositoryID].push(newElement);
////	Get length of selected repositoryID
//		// Execute the sayHello function after a delay of 2 seconds
//		numItems = allDivData[repositoryID].length;
//		$(".history_page_no").html(numItems);		
//	}
//	else{
//		numItems = allDivData[repositoryID].length;
//		$(".history_page_no").html(numItems);	
//	}
////	Show the current div in the history tab
//	$("#repositoryID"+repositoryID).show()
//	allNavigationdivIdInHistory = Object.keys(allDivData);
////	Filter current repositoryID from the given array
//	const filteredArray = allNavigationdivIdInHistory.filter((element) => element !== repositoryID);
//	filteredArray.forEach(hideOtherDivs);
////	Hide all inactive div
//	function hideOtherDivs(item) {
//		$("#repositoryID"+item).hide()
//	}	
//	console.log("allDivData",allDivData)
//	console.log("allNavigationdivIdInHistory",allNavigationdivIdInHistory)
//	console.log("closeNavigationDivRepositoryId",closeNavigationDivRepositoryId)
//	
//}
//
//function removeRepositoryDiv(){
//	allNavigationdivIdInHistory.forEach(function(currentValue, index, array) {
//	  // execute code block
//	  $("#repositoryID"+currentValue).remove();
//	});	
//	allNavigationdivIdInHistory = [];
//	allExistElementInHistoryTab = [];
//	historyTabItems = [];
//}

//function historyNavigationNumberCloseDiv(closeDivName){
//	console.log("inside historyNavigationNumberCloseDiv")
//////	numItems = $("#repositoryID"+closeNavigationDivRepositoryId+" .column").length-1;
//////	$(".history_page_no").html(numItems);
////	if(dictionaryXML.length !== 0 && allExistElementInHistoryTab.length !== 0){
////		if(allDivData[closeNavigationDivRepositoryId].includes(closeDivName) || allExistElementInHistoryTab.includes(closeDivName)){
////			numItems = allDivData[closeNavigationDivRepositoryId].length-1;
////			$(".history_page_no").html(numItems);		
////		}
////		const indexToRemove = allDivData[closeNavigationDivRepositoryId].indexOf(closeDivName); // Find the index of the element to remove
////		if (indexToRemove !== -1) { // If the element is found in the array
////			allDivData[closeNavigationDivRepositoryId].splice(indexToRemove, 1); // Remove the element at the index
////		}
////		const indexToRemove2 = allExistElementInHistoryTab.indexOf(closeDivName);
////		if (indexToRemove2 > -1) {
////		  allExistElementInHistoryTab.splice(indexToRemove2, 1);
////		}		
////	}
//
////	numItems = $("#repositoryID"+closeDivRepositoryId+" .column").length-1;
////	$(".history_page_no").html(numItems);
//	console.log("allDivData[closeDivRepositoryId]",allDivData[closeDivRepositoryId]);
//	console.log("closeDivName",closeDivName);
//	console.log("allDivIds.length",allDivIds.length);
//	console.log("allExistElementInHistoryTab.length",allExistElementInHistoryTab.length);
//	if(allDivIds.length !== 0 && allExistElementInHistoryTab.length !== 0){
//		if(allDivData[closeDivRepositoryId].includes(closeDivName) || allExistElementInHistoryTab.includes(closeDivName)){
//			numItems = allDivData[closeDivRepositoryId].length-1;
//			$(".history_page_no").html(numItems);		
//		}		
//		const indexToRemove = allDivData[closeDivRepositoryId].indexOf(closeDivName); // Find the index of the element to remove
//		if (indexToRemove !== -1) { // If the element is found in the array
//			allDivData[closeDivRepositoryId].splice(indexToRemove, 1); // Remove the element at the index
//		}
//		const indexToRemove2 = allExistElementInHistoryTab.indexOf(closeDivName);
//		if (indexToRemove2 > -1) {
//		  allExistElementInHistoryTab.splice(indexToRemove2, 1);
//		}		
//
//		console.log("allDivData[closeDivRepositoryId]",allDivData[closeDivRepositoryId])
//		console.log("allExistElementInHistoryTab",allExistElementInHistoryTab)		
//	}
//}