function forgotFormSubmit(){
	let username = $("#username").val();
	$(".showErrorMessage").css("display", "block")
	if(username !== ""){
		$.ajax({
			url:'getUserEmail',
			type:'POST',
			data: {'username': username},
		    beforeSend: function() {
		    },		
			success: function(email){
				console.log("email==", email);
				if(email == ""){
					$(".showErrorMessage").html(id_not_found)
					alert_message_function()						
				}
				else{
					sendEmail(email);
				}
			},
			complete: function(result){
			}
		})		  
	}
	else{
		console.log("Not Matched!");
		$(".showErrorMessage").html(field_is_empty)
		alert_message_function()
	}
}

function alert_message_function(){
	setTimeout(function() { $(".showErrorMessage").html(""); }, 2500);
} 

function sendEmail(email){
	$.ajax({
		url:'forgot-password',
		type:'POST',
		data: {'email': email},
	    beforeSend: function() {
//			$(".showErrorMessage").html(Processing)
	    },		
		success: function(result){
		},
		complete: function(result){
			$(".showErrorMessage").html(email_sent_successfully)
			alert_message_function()
		}
	})		
}