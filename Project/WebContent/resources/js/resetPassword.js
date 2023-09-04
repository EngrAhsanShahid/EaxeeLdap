function resetFormSubmit(){
	let password = $("#password").val();
	let confirm_password = $("#confirm_password").val();
	let user_id = $("#userID").html();
	var alphanumericRegex = /^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9]+$/;
	
	console.log("user_id==",user_id);
	$(".showErrorMessage").css("display", "block")
	if(password !== "" && confirm_password !== ""){
		if (alphanumericRegex.test(password)) {
			if(password.length >= 8){
				if(password == confirm_password){
					$.ajax({
						url:'get_old_password',
						type:'POST',
						data: {'password': password, 'user_id':user_id},
						async: false,
					    beforeSend: function() {
					    },		
						success: function(old_password){
							console.log("old_password",old_password)
							if(old_password == "error"){
								let tokenID = $("#tokenID").html();
								console.log("Matched!")
								$.ajax({
									url:'reset_password',
									type:'POST',
									data: {'tokenID': tokenID,'password': password},
								    beforeSend: function() {
								    },		
									success: function(architectureName){
									},
									complete: function(){
										$(".showErrorMessage").html("Password Reset Successfully")
										$(".validate-form").remove();
									}
								})
							}
							else{
								$(".showErrorMessage").html("New Password Is Not Same As Old Password.")
								alert_message_function()						
							}
						},
						complete: function(){
						}
					})
				}
				else{
					console.log("Not Matched!");
					$(".showErrorMessage").html("Password Doesn't Match.")
					alert_message_function()
				}				
			}
			else{
					$(".showErrorMessage").html("Password Length Must Have 8 Characters.")
					alert_message_function()				
			}
		}
		else{
				$(".showErrorMessage").html("Password Must Contain At Least One Letter And One Digit.")
				alert_message_function()
		}
	}
	else{
		console.log("Not Matched!");
		$(".showErrorMessage").html("Fields Are Empty.")
		alert_message_function()
	}
}

function alert_message_function(){
	setTimeout(function() { $(".showErrorMessage").html(""); }, 2500);
} 

//			let tokenID = $("#tokenID").html();
//			console.log("Matched!")
//			$.ajax({
//				url:'reset_password',
//				type:'POST',
//				data: {'tokenID': tokenID,'password': password},
//			    beforeSend: function() {
//			    },		
//				success: function(architectureName){
//				},
//				complete: function(){
//					$(".showErrorMessage").html("Password Reset Successfully")
//					alert_message_function()
//				}
//			})