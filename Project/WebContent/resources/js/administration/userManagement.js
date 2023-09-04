//Show All Users
let usernamesToAdd				= 	[];
//User Selected For Import
let userToImport				= 	[];
//To Show Users In The Group
let groupList 					= 	[];
//All Groups In The Ldap
let groupNames					= 	[];
let groupFilterValue 			=	"*";
let userFilterValue 			=	"*"; 
let getAllGroupNameByDefault	=	[];

$(document).ready(function() {
	fillUsers_userRegistration();
	fillUsers_changePassword();
	fillLdapUsers();
	$("#addUser").click(function() {
		addUser();
	});
//	$("#username").keyup(function(){
//		checkUserNameAvailablity();
//	});
	
	$(".addUser").keyup(function(){
//		checkFieldsEmpty();
		checkUserNameAvailablity();
	});
	
	usersList_userRegistrationClick();
	
	usersList_changePasswordClick();
	
});

function usersList_userRegistrationClick(){
	$(".usersList_userRegistration tr").click(function() {
		$(this).addClass('usersList_userRegistration_selected').siblings().removeClass('usersList_userRegistration_selected').addClass('pools_tbody_tr');
		$(this).removeClass('pools_tbody_tr')
	});
}

function usersList_changePasswordClick(){
	$(".usersList_changePassword tr").click(function() {
		$(this).addClass('usersList_changePassword_selected').siblings().removeClass('usersList_changePassword_selected').addClass('pools_tbody_tr');
		$(this).removeClass('pools_tbody_tr')
	});
}

function removeUser_userRegistration(){
	let username = $('.usersList_userRegistration_selected').find('td:eq(1)').html();
	$.ajax({
		url: "removeUser",
		type: 'GET',
		data: {username},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}

function removeUser_changePassword(){
	let username = $('.usersList_changePassword_selected').find('td:eq(1)').html();
	$.ajax({
		url: "removeUser",
		type: 'GET',
		data: {username},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}


function fillUsers_userRegistration(){
	$(".usersList_userRegistration").empty();
	let users = [];
	$.ajax({
		url: "getUsers",
		type: 'POST',
		data: {},
		success: function(res) {
			users = res;
		},
		async: false
	});
	
	$.each(users, function(i, val) {
		let email = val.email;
		let user_fullname = val.user_fullname;
		let username = val.username;
		let enabled = val.enabled;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>'+user_fullname+'</td><td>'+username+'</td><td>'+email+'</td>';
		if(enabled == 1){
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'deactivate\');" type="button" style="width: 100%;" value='+deactivate+'></td>';
		}else{
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'activate\');" type="button" style="width: 100%;" value='+activate+'></td>';
		}
		tr += '</tr>';
		$(".usersList_userRegistration").append(tr);
	});
}

function fillUsers_changePassword(){
	$(".usersList_changePassword").empty();
	let users = [];
	$.ajax({
		url: "getUsers",
		type: 'POST',
		data: {},
		success: function(res) {
			users = res;
		},
		async: false
	});
	
	$.each(users, function(i, val) {
		let email = val.email;
		let user_fullname = val.user_fullname;
		let username = val.username;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>'+user_fullname+'</td><td>'+username+'</td><td>'+email+'</td>';
//		if(enabled == 1){
			tr += '<td><input onclick="changePassword(\''+username+'\');" type="button" style="width: 100%;" value="'+change+'"></td>';
//		}else{
//			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'activate\');" type="button" style="width: 100%;" value="Activate"></td>';
//		}
		tr += '</tr>';
		$(".usersList_changePassword").append(tr);
	});
}

function activate_OR_deactivate(username,action){
	$.ajax({
		url: "updateUserStatus",
		type: 'GET',
		data: {username,action},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillLdapUsers();
		},
		async: false
	});
}

function changePassword(username){
	$("#password").val('');
	$("#confirmPassword").val('');
	$(".changePassword").prop('disabled', false);
	$("#updatePassword").click(function() {
		let passwordValue = $("#password").val();
		let confirmPasswordValue = $("#confirmPassword").val();
		var alphanumericRegex = /^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9]+$/;
		if ( alphanumericRegex.test(password)){		
			if(passwordValue == confirmPasswordValue && passwordValue != '' && passwordValue.length>=8){
				$("#passwordErrorMessage").empty();
				$.ajax({
					url: "updateUserPassword",
					type: 'POST',
					data: { username, passwordValue },
					success: function(res) {
						$(".alert_message").html('<div class="alert alert-success" role="alert">'+password_successfully_updated+'</div>');
				    	alert_message_function();
						$(".changePassword").prop('disabled', true);
					},
					async: false
				});
			}else if(passwordValue.length<8){
				$("#passwordErrorMessage").html(''+minimum_8_characters_are_required+'');
			}else if(confirmPasswordValue == '' ||  passwordValue == ''){
				$("#passwordErrorMessage").html(''+fields_cant_be_empty+'');
			}else if ( (passwordValue != confirmPasswordValue) && passwordValue != ''){
				$("#passwordErrorMessage").html(''+password_doesnt_match+'');
			}
		}
		else{
			$("#passwordErrorMessage").html(password_must_contain_at_least_one_letter_and_one_digit);			
		}		
		$("#password").val('');
		$("#confirmPassword").val('');
	});
}

function addUser(){
	$("#addUser").prop("disabled", true);
	let fullName = $("#userFullName").val();
	let username = $("#username").val();
	let email = $("#email").val();
	$.ajax({
		url: "addUser",
		type: 'GET',
		data: {fullName,username,email},
		success: function(res) {
			$(".alert_message").html('<div class="alert alert-success" role="alert">'+user_added+'</div>');
			alert_message_function();
			$("#userFullName").val('');
			$("#username").val('');
			$("#email").val('');
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}

//function checkFieldsEmpty(){
//	let fullName = $("#userFullName").val();
//	let email = $("#email").val();
//	if (fullName == '' || email == '') {
//		$("#addUser").prop("disabled", true);
//	}else{
//		checkUserNameAvailablity();
//	}
//}

//function checkUserNameAvailablity() {
//	
//	let username = $('#username').val();
//	let fullName = $("#userFullName").val();
//	let email = $("#email").val();
//	let emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
//	var format = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
////		console.log('fileVal',fileVal)
////		console.log( format.test(fileVal) );
//	if (username != '' && username.length>=5 && !format.test(username) ) {
//		$.ajax({
//			url: "check_username_when_registration",
//			data: { 'username': username },
//			success: function(response) {
//				if (response == 'Available') {
////					$("#addUser").prop('disabled', false);
//					if (fullName != '' && email != '' && emailReg.test(email)) {
//						$("#addUser").prop("disabled", false);
//					}else {
//						$("#addUser").prop("disabled", true);
//					}
//				} else {
//					$("#addUser").prop("disabled", true);
//				}
//				$('#username_response').html(response);
//			}
//		});
//	} else {
//		$("#addUser").prop("disabled", true);
//		if(username.length<5 && username != ''){
//			$("#username_response").html("(Minimum 5 Characters Are Required)");
//		}else if(format.test(username) && username != ''){
//			$("#username_response").html("(Only Alphanumeric ID is Allowed)");
//		}else{
//			$("#username_response").html("<br>");
//		}
//	}
//}





function checkUserNameAvailablity() {
	
	let username = $('#username').val();
	let fullName = $("#userFullName").val();
	let email = $("#email").val();
	let emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	var format = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,<>\/?~]/;


	if (username != '' && username.length>=5 && !format.test(username) && !format.test(fullName)) {
		$.ajax({
			url: "check_username_when_registration",
			data: { 'username': username },
			success: function(response) {
				if (response == 'Available') {
//					$("#addUser").prop('disabled', false);
					if (fullName != '' && email != '' && emailReg.test(email)) {
						$("#addUser").prop("disabled", false);
					}else {
						$("#addUser").prop("disabled", true);
						$("#userfullname_response").html("<br>");
					}
				} else {
					$("#addUser").prop("disabled", true);
				}
				$('#username_response').html(response);
			}
		});
		
			
	} else {
		$("#addUser").prop("disabled", true);
		
		if( format.test(username) ){
//			$("#username_response").html(''+special_characters_are_not_allowed+'');
			if(format.test(username)){
				$("#username_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#username_response").html("<br>");
			}
			if( format.test(fullName) ){
				$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#userfullname_response").html("<br>");
			}
		}
		else if(username.length<5 && username != ''){
			$("#username_response").html(''+minimum_5_characters_are_required+'');
		}else if(format.test(fullName)){
//			$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			if(format.test(username)){
				$("#username_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#username_response").html("<br>");
			}
			if( format.test(fullName) ){
				$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#userfullname_response").html("<br>");
			}
		}
		else if(format.test(username) && username != ''){
			$("#username_response").html(''+only_alphanumeric_id_is_allowed+'');
		}else{
			$("#username_response").html("<br>");
			$("#userfullname_response").html("<br>");
		}
	}
}

function syncActiveDirectory(){
//	alert("syncActiveDirectory clicked!");
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "getLdapAdmin", 
//	    dataType: "json",
	    async: 'false',
//	    data:{"hostname":hostname, "port":port, "ldapUsername":ldapUsername, "ldapPassword":ldapPassword},
	    success: function (response) {
			let username = response[0];
			let password = response[1];
			let hostname = response[2];
			let port_no  = response[3];
			let baseDN	 = response[4];
			getAllActiveUserFromActiveDirectory(username, password, hostname, port_no, baseDN);      
	    },
	    error: function (xhr, status, error) {
	        console.error("Sync failed:", error);
	    }
	});	
	
}

function importActiveDirectory(){
	//Show All Users
	usernamesToAdd		= [];
	//User Selected For Import
	userToImport		= [];
	//To Show Users In The Group
	groupList 			= [];
	//All Groups In The Ldap
	groupNames			= [];
	$("#getActiveDirectorySecurityGroups").html("");
	$("#getActiveDirectoryUsers").html("");	
	// Retrieve hostname and port from Local Storage
	const storedHostname = localStorage.getItem('hostname');
	const storedPort = localStorage.getItem('port');
	const storedBaseDN = localStorage.getItem('baseDN');
	
	// Use the retrieved values
	if(storedHostname != null){
		$("#hostname").val(storedHostname);
		$("#port").val(storedPort);
		$("#baseDN").val(storedBaseDN);
		$("#user-filter").val(userFilterValue);
		$("#group-filter").val(groupFilterValue);
		
	}
		
	// Get the modal
	var modal = document.getElementById("activeDirectoryModal");
	$( ".modal-content" ).draggable();
//	var span = document.getElementsByClassName("close")[0];
	document.getElementById("active_directory_modal_heading").innerHTML = import_users_from_active_directory;//  for "+heading
//	document.getElementById("active_directory_modal_info_text").innerHTML = "Body";
	modal.style.display = "block";
/*	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}*/
}

function closeButton(){
	var modal = document.getElementById("activeDirectoryModal");
	modal.style.display = "none";
}

function searchButtonClick(){
	let hostname = $("#hostname").val();
	let port = $("#port").val();
	let ldapUsername = $("#ldapUsername").val();
	let ldapPassword = $("#ldapPassword").val();
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "connectLdap", // URL to your Spring MVC controller method
	    dataType: "json",
	    async: 'false',
	    data:{"hostname":hostname, "port":port, "ldapUsername":ldapUsername, "ldapPassword":ldapPassword},
	    success: function (response) {
	        console.log("LDAP connection successful:", response.status);
	        if(response.status == 'success'){
				console.log("function calling..")
				getAllActiveDirectoryUsers(hostname, port, ldapUsername, ldapPassword);
				$("#activeDirectoryGroupsSelectAll").prop("disabled",false)
				$("#activeDirectoryGroupsDeSelectAll").prop("disabled",false)
			}	        
	    },
	    error: function (xhr, status, error) {
	        console.error("LDAP connection failed:", error);
	    }
	});
}



function getAllActiveDirectoryUsers(hostname, port, ldapUsername, ldapPassword) {
	let baseDN = $("#base-dn").val();
	console.log("baseDN=", baseDN)
	groupFilterValue = $("#group-filter").val();
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "getAllActiveDirectoryUsers", // URL to your Spring MVC controller method
	    dataType: "json",
	    async: "false",
	    data:{"hostname":hostname, "port":port, "ldapUsername":ldapUsername, "ldapPassword":ldapPassword, "baseDN":baseDN, "userFilterValue":userFilterValue, "groupFilterValue":groupFilterValue},
	    success: function (response) {
			console.log("response=>",response.groups)
            // Process the user data here (e.g., display it on the page)
			let ouValues = [];
			if(groupFilterValue == '*'){
	            // Extract all cn values from the response array
	            ouValues = response.groups
	            						.filter(user => user.ou !== undefined) // Filter out objects without 'ou' property
	            						.map(user => user.ou);
				getAllGroupNameByDefault	=	[...ouValues]; 
	            // Create the HTML content with each cn value wrapped in a <span> element on separate lines
	            const htmlContent = ouValues.map(ou => `<span class="inActive ldapGroupElements" onclick="toggleAndHandle(this)">${ou}</span><br>`).join("");				
	
	            // Set the HTML content inside the div with id "getActiveDirectoryUsers"
	            $("#getActiveDirectorySecurityGroups").html(htmlContent);
			}
			else{
	            // Extract all cn values from the response array
	            ouValues = [''+groupFilterValue+'']
        		// Check if 'users' is in getAllGroupNameByDefault
				const isUserInArray = getAllGroupNameByDefault.includes(groupFilterValue);
				if (isUserInArray) {
				  	console.log('The string "users" is found in getAllGroupNameByDefault.');
		            // Create the HTML content with each cn value wrapped in a <span> element on separate lines
		            const htmlContent = ouValues.map(ou => `<span class="inActive ldapGroupElements" onclick="toggleAndHandle(this)">${ou}</span><br>`).join("");				
		            // Set the HTML content inside the div with id "getActiveDirectoryUsers"
		            $("#getActiveDirectorySecurityGroups").html(htmlContent);				  	
				} else {
					$("#getActiveDirectorySecurityGroups").html("");
				  	console.log('The string "users" is not found in getAllGroupNameByDefault.');
				}
			}
			
//	            usernamesToAdd = ouValues;
            groupNames = ouValues;

            selectAllActiveDirectoryGroups();
            
	    },
	    error: function (xhr, status, error) {
	        console.error("LDAP connection failed:", error);
	    }
	});	
}

// Function to toggle class and handle click
function toggleAndHandle(element) {
	// Check if the element is in the clickedElements array
	const index = groupList.indexOf(element.textContent);
	
	if (index === -1) {
		// First click
		element.classList.add('highlightGroups');
		groupList.push(element.textContent);
		getSpecificGroupUsers(element); // Call your function
	} else {
		// Second click
		element.classList.remove('highlightGroups');
		groupList.splice(index, 1);
		getSpecificGroupUsers(element); // Call your function
		// Perform another action for the second click if needed
	}
}
  
function getSpecificGroupUsers(e){
	if(groupList.length != 0){
		const groupValue = e.textContent;
		$.ajax({
		    type: "POST", // or "GET" depending on your Spring MVC controller method
		    url: "getSpecificGroupUsers", // URL to your Spring MVC controller method
		    dataType: "json",
	        contentType: "application/json", // Set Content-Type
	        data: JSON.stringify({ 'groupList': groupList }), // Convert to JSON string
	//	    data: {'groupList':groupList},
		    async: "false",
		    success: function (response) {
				console.log("response=",response)
				if (typeof response === 'object' && Object.keys(response).length !== 0) {
					$("#getActiveDirectoryUsers").html("")
					
		            // Process the user data here (e.g., display it on the page)
		            getAllUsersFromArrays(response);
		            // Create the HTML content with each cn value wrapped in a <span> element on separate lines
//		            const htmlContent = allCnValues.map(cn => `<span onclick="importUsers(this)" class="inActive">${cn}</span><br>`).join("");
				}
				else{
					$("#getActiveDirectoryUsers").html("")
					console.log("No record Found.")
				}
		    },
		    error: function (xhr, status, error) {
		        console.error("LDAP connection failed:", error);
		    }
		});
		$("#activeDirectoryUsersSelectAll").prop("disabled",false)
		$("#activeDirectoryUsersDeSelectAll").prop("disabled",false)				
	}
	else{
		$("#getActiveDirectoryUsers").html("")
		userToImport = []
		$("#activeDirectoryUsersSelectAll").prop("disabled",true)
		$("#activeDirectoryUsersDeSelectAll").prop("disabled",true)		
	}
	
}

function getAllUsersFromArrays(response){
	// Extract all cn values from arrays in the response object
	const allCnValues = Object.values(response)
	  .flatMap(array => 
	    array.filter(item => item.cn !== undefined) // Filter out objects without 'cn' property
	         .map(item => item.cn)
	  );
	filterHighlightUser(allCnValues)
    // Use cnValues array as needed (e.g., display in console)
    usernamesToAdd = allCnValues;
	showActiveUserList(allCnValues);	
}

function filterHighlightUser(allCnValues){
	var filteredValues = userToImport.filter(value => allCnValues.includes(value));
	userToImport = filteredValues;
}

function showActiveUserList(allCnValues){
	console.log("allCnValues=>",allCnValues)
	let getSpecificUsers	=	$("#user-filter").val();
	console.log("getSpecificUsers=>",getSpecificUsers)
	

	if(getAllGroupNameByDefault.length != 0){
		console.log("Inside If...")
		console.log("usernamesToAdd=>",usernamesToAdd)
		$("#getActiveDirectoryUsers").html("");
		console.log("usernamesToAdd=>",usernamesToAdd)
		let userFound =  usernamesToAdd.includes(getSpecificUsers)
		console.log("userFound=>",userFound);
		if(userFound){
			$("#getActiveDirectoryUsers").html("");
		    const isActive = userToImport.includes(getSpecificUsers);
		    const className = isActive ? "highlightUsers" : "inActive";			
			$("#getActiveDirectoryUsers").html(`<span onclick="importUsers(this)" class="${className} ldapUsers">${getSpecificUsers}</span><br>`);
		}
		else{
			$("#getActiveDirectoryUsers").html("");
			// Modify the HTML content generation to include class changes based on conditions
			const htmlContent = allCnValues.map(cn => {
			    const isActive = userToImport.includes(cn);
			    const className = isActive ? "highlightUsers" : "inActive";
			    return `<span onclick="importUsers(this)" class="${className} ldapUsers">${cn}</span><br>`;
			}).join("");	
			$("#activeDirectoryUsersSelectAll").prop("disabled",false)
			$("#activeDirectoryUsersDeSelectAll").prop("disabled",false)		
			// Set the HTML content inside the div with id "getActiveDirectoryUsers"
			$("#getActiveDirectoryUsers").html(htmlContent);			
		}
	}
	else{	
	}
//	checkUserFilter();	
}

function getAllActiveDirectoryUsersSync() {
	$.ajax({
	    type: "GET", // or "GET" depending on your Spring MVC controller method
	    url: "getAllActiveDirectoryUsers", // URL to your Spring MVC controller method
	    dataType: "json",
	    asyns: "false",
	    success: function (response) {
			console.log("Inside getAllActiveDirectoryUsersSync... ")
			console.log("response=>",response)
            // Process the user data here (e.g., display it on the page)

            // Extract all cn values from the response array
            const cnValues = response.users.map(user => user.cn);

            // Use cnValues array as needed (e.g., display in console)
            usernamesToAdd = cnValues;

            // Create the HTML content with each cn value wrapped in a <span> element on separate lines
            const htmlContent = cnValues.map(cn => `<span>${cn}</span><br>`).join("");

            // Set the HTML content inside the div with id "getActiveDirectoryUsers"
            $("#getActiveDirectoryUsers").html(htmlContent);
            
            if(usernamesToAdd != undefined){
				importActiveDirectoryUsersSync();
			}
	    },
	    error: function (xhr, status, error) {
	        console.error("LDAP connection failed:", error);
	    }
	});	
}

function importActiveDirectoryUsersSync(){
	const usernames = usernamesToAdd;
    // Convert the usernames array to a JSON string
    getLdapUserFromTheDB(usernames)
}

function getLdapUserFromTheDB(usernames){
	$.ajax({
		url: "getLdapUsers",
		type: 'POST',
		data: {},
	    dataType: "json",
		success: function(res) {
			ldapUsers = res;
	    },
		async: false
	});	
	const usernamesArray = ldapUsers.map(item => item.username);
	const matchingUsernames = usernames.filter(username => usernamesArray.includes(username));
	const notFoundUsernames = usernamesArray.filter(username => !matchingUsernames.includes(username));
	if(notFoundUsernames.length != 0){
		deleteUserFromDBIfNotExists(notFoundUsernames);	
	}
	else{
		console.log("All Users Are Found")
	}
}
//function importActiveDirectoryUsersSync(){
//	const usernames = usernamesToAdd;
//	console.log("usernames=",usernames)
//	
//    // Convert the usernames array to a JSON string
//    const usernamesJSON = JSON.stringify(usernames);
//    console.log("usernamesJSON=",usernamesJSON)
//	$.ajax({
//	    type: "POST", // or "GET" depending on your Spring MVC controller method
//	    url: "insertUsersInLdapUsers", // URL to your Spring MVC controller method
//	    dataType: "json",
//	    async: 'false',
//	    data:{"username":usernamesJSON, "status":'1'},
//	    success: function (response) {
//			fillLdapUsers();
//			const dbLdapUser = ldapUsers.map(item => item.username);
//			
//			console.log("dbLdapUser=",dbLdapUser); // This will output: ['mike', 'ali', 'jil', 'peter', 'husain']
//			try {
//			    const usernamesArray = JSON.parse(usernamesJSON); // Parse the JSON string into an array
//			
//			    const usersToAdd = usernamesArray.filter(username => !dbLdapUser.includes(username));
//			    const usersToDelete = dbLdapUser.filter(username => !usernamesArray.includes(username));
//			
//			    if (usersToAdd.length === 0 && usersToDelete.length === 0) {
//			        console.log("No changes, nothing to do.");
//			    } else {
//			        console.log("Users to add:", usersToAdd);
//			        console.log("Users to delete:", usersToDelete);
//			        deleteUserFromDBIfNotExists(usersToDelete);
//			
//			        // Perform actions based on the comparison results
//			        // For example, add users from usersToAdd and delete users from usersToDelete
//			    }
//			} catch (error) {
//			    console.error("Error parsing usernamesJSON:", error);
//			}			
//	    },
//	    error: function (xhr, status, error) {
//	    }
//	});	
//}

function deleteUserFromDBIfNotExists(usersToDelete){
    // Convert the usernames array to a JSON string
    const usernamesJSON = JSON.stringify(usersToDelete);
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "deleteUserFromDBIfNotExists", // URL to your Spring MVC controller method
	    dataType: "json",
	    async: 'false',
	    data:{"username":usernamesJSON, "status":'1'},
	    success: function (response) {
			fillLdapUsers();
	    },
	    error: function (xhr, status, error) {
	    }
	});	
}

function getAllActiveUserFromActiveDirectory(username, password, hostname, port_no, baseDN){
	setLdapFormDetailsInCookies(hostname, port_no, baseDN);	
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "connectLdap", // URL to your Spring MVC controller method
	    dataType: "json",
	    async: 'false',
	    data:{"hostname":hostname, "port":port_no, "ldapUsername":username, "ldapPassword":password},
	    success: function (response) {
	        console.log("LDAP connection successful:", response.status);
	        if(response.status == 'success'){
				getAllActiveDirectoryUsersSync();
			}	        
	    },
	    error: function (xhr, status, error) {
	        console.error("LDAP connection failed:", error);
	    }
	});	
}

function fillLdapUsers(){
	$(".ldapusersList_userRegistration").empty();
	let users = [];
	$.ajax({
		url: "getLdapUsers",
		type: 'POST',
		data: {},
		dataType: "json",
		success: function(res) {
			ldapUsers = res;
		},
		async: false
	});
	$.each(ldapUsers, function(i, val) {
		let username = val.username;
		let enabled = val.enabled;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>'+username+'</td>';
		tr += '<td>'+username+'</td>';
		tr += '<td>'+username+'</td>';
		if(enabled == 1){
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'deactivate\');" type="button" style="width: 100%;" value='+deactivate+'></td>';
		}else{
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'activate\');" type="button" style="width: 100%;" value='+activate+'></td>';
		}
		tr += '</tr>';
		$(".ldapusersList_userRegistration").append(tr);
	});
}

//function syncMinutesChanged(){
//	console.log("Calling..")
//    // Clear any existing interval before setting a new one
//    clearInterval(window.intervalId);
//	let getMinutes = $("#syncMinutes").val();
//	console.log("getMinutes=",getMinutes)
////	Call Sync Function
//    setInterval(syncActiveDirectory, getMinutes * 60 * 1000);
//}

function syncMinutesChanged() {
    // Clear any existing interval before setting a new one
    clearInterval(window.intervalId);

    let getMinutes = $("#syncMinutes").val();
    if(getMinutes == null){
		getMinutes = 60;
	}

    // Call Sync Function immediately and then set interval
    syncActiveDirectory(); // Call the sync function immediately
    window.intervalId = setInterval(syncActiveDirectory, getMinutes * 60 * 1000);
}


function setLdapFormDetailsInCookies(hostname, port, baseDN){
	// Store hostname and port in Local Storage
	localStorage.setItem('hostname', hostname);
	localStorage.setItem('port', port);
	localStorage.setItem('baseDN', baseDN);	
}

function importUsers(element){
	let username = element.textContent;
    // Check if the element is in the clickedElements array
    const index = userToImport.indexOf(element.textContent);
    
    if (index === -1) {
      // First click
      element.classList.add('highlightUsers');
      userToImport.push(element.textContent);
    } else {
      // Second click
      element.classList.remove('highlightUsers');
      userToImport.splice(index, 1);
      // Perform another action for the second click if needed
    }	
}

function importActiveDirectoryUsers(){
	const usernames = userToImport;
	
    // Convert the usernames array to a JSON string
    const usernamesJSON = JSON.stringify(usernames);
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "insertUsersInLdapUsers", // URL to your Spring MVC controller method
	    dataType: "json",
	    async: 'false',
	    data:{"username":usernamesJSON, "status":'1'},
	    success: function (response) {
			fillLdapUsers();
	    },
	    error: function (xhr, status, error) {
	    }
	});	
}

function selectAllActiveDirectoryGroups(){
	selectAllGroups(groupNames)
	console.log("Inside selectAllActiveDirectoryGroups..")
}

function deSelectAllActiveDirectoryGroups(){
	deSelectAllGroups(groupNames)
	console.log("Inside deSelectAllActiveDirectoryGroups..")
}

function selectAllGroups(groupNames){
	groupList = [...groupNames];
    var ldapGroupElements = document.querySelectorAll('.ldapGroupElements');
    
    for (var i = 0; i < ldapGroupElements.length; i++) {
        ldapGroupElements[i].classList.add('highlightGroups');
//        ldapGroupElements[i].classList.remove('ldapGroupElements');
    }
	$.ajax({
	    type: "POST", // or "GET" depending on your Spring MVC controller method
	    url: "getSpecificGroupUsers", // URL to your Spring MVC controller method
	    dataType: "json",
	    contentType: "application/json", // Set Content-Type
	    data: JSON.stringify({ 'groupList': groupNames }), // Convert to JSON string
	    async: "false",
	    success: function (response) {
			if (typeof response === 'object' && Object.keys(response).length !== 0) {
				$("#getActiveDirectoryUsers").html("")
				
//	            Process the user data here (e.g., display it on the page)
	            getAllUsersFromArrays(response);
//	            Create the HTML content with each cn value wrapped in a <span> element on separate lines
	            groupList = [...groupNames];
			}
			else{
				$("#getActiveDirectoryUsers").html("")
				console.log("No record Found.")
			}
	    },
	    error: function (xhr, status, error) {
	        console.error("LDAP connection failed:", error);
	    }
	});	
}

function deSelectAllGroups(groupNames){
	groupNames 		= 	[];
	groupList		= 	[];
	userToImport	=	[];
	usernamesToAdd	=	[];
	$("#getActiveDirectoryUsers").html(`<span onclick="importUsers(this)" class="inActive"></span><br>`);
    var ldapGroupElements = document.querySelectorAll('.highlightGroups');
    
    for (var i = 0; i < ldapGroupElements.length; i++) {
        ldapGroupElements[i].classList.add('ldapGroupElements');
        ldapGroupElements[i].classList.remove('highlightGroups');
    }	
}

function selectAllActiveDirectoryUsers(){
	selectAllUsers(usernamesToAdd)
	console.log("Inside selectAllActiveDirectoryGroups..")	
}

function selectAllUsers(usernamesToAdd){
	console.log("usernamesToAdd=>",usernamesToAdd)
	userToImport = [...usernamesToAdd]
	console.log("userToImport=>",userToImport);
    var ldapUsers = document.querySelectorAll('.ldapUsers');
    
    for (var i = 0; i < ldapUsers.length; i++) {
        ldapUsers[i].classList.add('highlightUsers');
//        ldapGroupElements[i].classList.remove('ldapGroupElements');
    }	
}

function DeSelectAllActiveDirectoryUsers(){
	userToImport = [];
//	$("#getActiveDirectoryUsers").html(`<span onclick="importUsers(this)" class="inActive"></span><br>`);
    var ldapGroupElements = document.querySelectorAll('.highlightUsers');
//    
    for (var i = 0; i < ldapGroupElements.length; i++) {
        ldapGroupElements[i].classList.add('ldapGroupElements');
        ldapGroupElements[i].classList.remove('highlightUsers');
    }	
}

function checkUserFilter(){
	let getSpecificUsers	=	$("#user-filter").val();
	console.log("Inside checkUserFilter...");
	console.log("getAllGroupNameByDefault")
	if(getAllGroupNameByDefault.length != 0){
		console.log("usernamesToAdd=>",usernamesToAdd)
		$("#getActiveDirectoryUsers").html("");

		$("#activeDirectoryUsersSelectAll").prop("disabled",false)
		$("#activeDirectoryUsersDeSelectAll").prop("disabled",false)		
		// Set the HTML content inside the div with id "getActiveDirectoryUsers"
		$("#getActiveDirectoryUsers").html(`<span onclick="importUsers(this)" class="Active ldapUsers">${getSpecificUsers}</span><br>`);		
	}
	else{
	}
}
