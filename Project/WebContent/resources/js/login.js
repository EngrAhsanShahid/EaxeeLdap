		$(".showNow").mousedown(function(){
		    $("#loginPassword").attr('type','text');
			// $(".showNow").css('background-color', '#0d7e8a');
		    $(".showNow").css('color', '#0d7e8a');
		}).mouseup(function(){
		    $("#loginPassword").attr('type','password');
			// $(".showNow").css('background-color', '#e3fdff');
		    $(".showNow").css('color', 'gray');
		}).mouseout(function(){
		    $("#loginPassword").attr('type','password');
			// $(".showNow").css('background-color', '#e3fdff');
		    $(".showNow").css('color', 'gray');
		});
		
		
		$(document).ready(function () {
		    $("#loginForm").submit(function () {
		        $("#login-btn").prop("disabled", true);
			setTimeout(function(){
				$("#login-btn").prop("disabled", false);
			}, 3000);
		        return true;
		    });
		    
			let getMsgValue = $(".msg").html();
			let getErrorMsgValue = $(".error").html();
			if(getErrorMsgValue == 'Already Logged In From Another Device'){
// 				alert("Show Modal");
			  $( function() {
			    $( "#dialog-confirm" ).dialog({
			      resizable: false,
			      height: "auto",
			      width: 400,
			      modal: true,
			      buttons: {
			        "Yes": function() {
// 			          window.location.href = 'logout';
			          $( this ).dialog( "close" );
			          logoutFunc();
			        },
			        "No": function() {
			          $( this ).dialog( "close" );
			        }
			      }
			    });
			  } );
			}
			else{
				
			}
		});
	
		function logoutFunc(){
			var getUsername = $.cookie('userName');
			var getPassword = $.cookie('userPassword');		

			$("#loginUsername").val(getUsername);
			$("#loginPassword").val(getPassword);
			$("#login-btn").click();
			
//			$.cookie('userName', null);
//			$.cookie('userPassword', null);
			
		  $.ajax({
		    type: 'POST',
		    url: 'logoutForcefully',
		    data: {'username': getUsername, 'password': getPassword},
		    success: function(data) {
		      // Code to handle a successful response goes here
		      console.log("data",data)	      
		    },
		    error: function(xhr, status, error) {
		      // Code to handle an error response goes here
		    }
		  });			
		}
		
//		$('#login-btn').click(function() {
//			let getUsername = $("input[name='username']").val();
//			let getPassword = $("input[name='password']").val();			
//			$.cookie('userName', getUsername, { expires: 7 });
//			$.cookie('userPassword', getPassword, { expires: 7 });
//		});		
	
function checkUserInTheDB(formData){
	let username = formData.username;
	let password = formData.password;	
	$.ajax({
		type: 'POST',
		url: 'checkUserExistOrNot',
		data: {'username': username, 'password':password},
		success: function(data) {
			// Code to handle a successful response goes here
			console.log("data",data)
			if(data == 1){
//				User Exist In The DB
				$(".alreadyLoginMessage").text("User Found.");
				loginUserExistInTheDB(username, password);
			}	
			else{
//				User Does Not Exist In The DB
				$(".alreadyLoginMessage").text("User Not Found.");
				checkLdapUserInTheDB(formData);				
			}      
		},
		error: function(xhr, status, error) {
			// Code to handle an error response goes here
		}
	});	
}	

function loginUserExistInTheDB(username, password){
	// Set form's action and method attributes dynamically
	$("#loginForm").attr("action", "/EAZee/login");
	$("#loginForm").attr("method", "POST");
	
	// Perform form submission using JavaScript
	$("#loginForm")[0].submit();	  
	event.preventDefault();
	//$(".alreadyLoginMessage").text("Authentication failed.");	
}
function checkLdapUserInTheDB(formData){
	let username = formData.username;
	let password = formData.password;
	$.ajax({
		type: 'POST',
		url: 'checkLdapUserExistOrNot',
		data: {'username': username},
		success: function(data) {
			// Code to handle a successful response goes here
			console.log("data",data)
			if(data == 1){
				$(".alreadyLoginMessage").text("User Found.");
				updateLdapUserPassword(username, password);				
//				window.location.href = "<c:url value='/home' />";
			}	
			else{
				$(".alreadyLoginMessage").text("User Not Found.");	
			}      
		},
		error: function(xhr, status, error) {
			// Code to handle an error response goes here
		}
	});
}	

function updateLdapUserPassword(username, password){
	console.log("Inside updateLdapUserPassword");
	$.ajax({
		type: 'POST',
		url: 'updateLdapUserPassword',
		data: {'username': username, 'password':password},
		success: function(data) {
			// Code to handle a successful response goes here
			console.log("data",data)
			if(data == 1){
	            $("#loginForm").attr("action", "/EAZee/login");
	            $("#loginForm").attr("method", "POST");
	            
	            // Perform form submission using JavaScript
	            $("#loginForm")[0].submit();	  
	            event.preventDefault();				
			}     
		},
		error: function(xhr, status, error) {
			// Code to handle an error response goes here
		}
	});	
} 	