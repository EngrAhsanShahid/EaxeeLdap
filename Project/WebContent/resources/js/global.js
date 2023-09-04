//Hussain code starts here
////function sessionLoggedOutModalOpen(){
////	
////	console.log("opening modal")
////	   
////   $( function() {
////	    var dialog, form,
////	    dialog = $( "#sessionExpiredDialog" ).dialog({
////	      autoOpen: false,
////	      width: 350,
////	      modal: true,
////	      buttons: {
////	        "Okay": function() {
////	        	document.location.href="login";
////	          $( this ).dialog( "close" );
////	        }
////		  }
////	    });
////	    dialog.dialog( "open" );
////	    $(".ui-dialog-titlebar-close").hide();
////	  }); 
////}
//   
//var time;
//var inactivityTime = function () {
//    window.onload = resetTimer;
//    // DOM Events
//
//	//document.onload = resetTimer;
//	//document.onmousemove = resetTimer;
//	//document.onmousedown = resetTimer; // touchscreen presses
//	//document.ontouchstart = resetTimer;
//	document.onclick = resetTimer;     // touchpad clicks
//
//    // document.onmousemove = resetTimer;
//    document.onkeydown = resetTimer;
//
//
//
//};
//
//function logout() {
//	console.log("Inside logout.....")
//	$.ajax({
//        url: "getSessionStatus",
//        type: 'GET',
//        data: {},
//        success: function(res) {
//        	console.log("res= ",res)
//        	if(res == 1){
//				//sessionLoggedOutModalOpen();
//				alert("session timeout")
//				location.reload()
//			}else{
//				resetTimer()	
//			}
//
//			
//        }
//    });
//}
//function resetTimer() {
//    clearTimeout(time);
//    time = setTimeout(logout, 630000)
////    time = setTimeout(logout, 10000)
//    // 1000 milliseconds = 1 second
//}
//
//
////$( document ).ready(function() {
////    console.log( "ready!" );
////    inactivityTime();
////    resetTimer()
////	document.body.onclick = resetServerSessionTimeOut;
////    
////});
//
//function resetServerSessionTimeOut(){
//	$.ajax({
//		url: "resetServerSessionTimeOut",
//		type: 'GET',
//		data: {},
//		success: function(res) {
//		}
//	});
//}
//Hussain code ends here

function checkSessionID() {
	// console.log("Inside checkSessionID")
	// Retrieve the sessionId element from the DOM
	var sessionIdElement = document.getElementById("getSessionId");

	// Retrieve the sessionId value from the element
	var sessionId = sessionIdElement.innerText.trim();

	// Use the sessionId as needed
	//	console.log("Session ID: " + sessionId);
	//	$.ajax({
	//		url: "getSessionIDStatus",
	//		type: 'POST',
	//		data: {'sessionId':sessionId},
	//		success: function(res) {
	//			// Assuming you have the response stored in the 'res' variable
	//			var sessionExpired = res;			
	//			console.log("res=",res)
	//			// Check if the response indicates session expiration
	//			if (sessionExpired.includes("This session has been expired")) {
	//				console.log("Inside if...")
	//				// Store the error message in localStorage
	//				localStorage.setItem("errorMessage", "You have been logged in from another device.");
	//				
	//				window.location.href = 'logout';
	////				$(".error").html("You have been logged in from another device.")
	//				// Reload the current page
	////				window.location.reload();
	//			}
	//			else{
	//				console.log("Inside else...")
	//			}
	//		},
	//		error: function(res){
	//		}
	//	});  

	$.ajax({
		url: "getSessionStatus",
		type: 'GET',
		//		data: {'sessionId':sessionId},
		success: function (res) {
			// Assuming you have the response stored in the 'res' variable
			var sessionExpired = res;
			//			console.log("res=",res)
			if (res != 0) {
				// Check if the response indicates session expiration
				if (sessionExpired.includes("This session has been expired")) {
					console.log("Inside if...")
					// Store the error message in localStorage
					localStorage.setItem("errorMessage", "You have been logged in from another device.");

					window.location.href = 'logout';
					//				$(".error").html("You have been logged in from another device.")
					// Reload the current page
					//				window.location.reload();
				}
				else {
					console.log("Inside else...")
				}
			}
		},
		error: function (res) {
		}
	});
	// Your code here
}

// Call myFunction every 5 seconds to check whether user login from another device or not
setInterval(checkSessionID, 5000);

// Check User Inactivity
let inactivityTimer;
const inactivityThreshold = 10 * 60; // 10 minutes in seconds;
let lastActivityTime = Date.now();

// Function to reset the timer
function resetTimer() {
	clearTimeout(inactivityTimer);
	inactivityTimer = setTimeout(logoutUser, inactivityThreshold * 1000);
}

// Function to handle mouse click activity
function handleMouseClick() {
	lastActivityTime = Date.now();
	resetTimer();
}

// Function to handle keyboard activity
function handleKeyboardActivity() {
	lastActivityTime = Date.now();
	resetTimer();
}

// Function to logout the user (you can customize this as needed)
function logoutUser() {
	//  alert("You've been logged out due to inactivity.");
	localStorage.setItem("errorMessage", "Session Timeout.");

	window.location.href = 'logout';
	// Perform any logout actions here (e.g., redirect to login page)
}

// Attach activity event listeners
document.addEventListener('click', handleMouseClick);
document.addEventListener('keydown', handleKeyboardActivity);

// Start the timer initially
resetTimer();

function showLoader() {
	$(".loaderAnimation").css("display", "flex");
}

function hideLoader() {
	$(".loaderAnimation").css("display", "none");
}

function setActiveElementInHistoryTab(itemId) {
	console.log("");
	console.log("---------------------");
	console.log("In setActiveElementInHistoryTab");
	allHistoryElements[itemId] = { "active": true };
	console.log("allHistoryElements:", allHistoryElements);
	$("#" + itemId).css("background", "#e9e9e9");
	console.log("---------------------");
	console.log("");
}
function setDeactiveElementInHistoryTab() {
	console.log("");
	console.log("---------------------");
	console.log("In setDeactiveElementInHistoryTab");
	for (const key in allHistoryElements) {

		const historyItemId = key;
		$("#" + historyItemId).css("background", "#fff");

		allHistoryElements[key].active = false;
		console.log("allHistoryElements:", allHistoryElements);
		console.log("---------------------");
		console.log("");
	}
}