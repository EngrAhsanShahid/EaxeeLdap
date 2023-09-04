<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page session="true"%>
<spring:message code=""/>
<html lang="en">
<head>
	<title>EAXee</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Security-Policy" content="default-src 'self';img-src * data:;script-src 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline';">
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="/resources/vendor/images/icons/favicon.ico"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" >
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/iconic/css/material-design-iconic-font.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css"/>">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/main.css"/>">
<!-- 	////// default css -->
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/login/login-default.css"/>">
	<!--===============================================================================================-->
	
	
	
	
</head>
<body>
<style>

	.error{
		text-align:center;
	}
	
	.passwordDiv{
		display: flex;
	    flex-direction: row-reverse;
	    align-items: center;
	    justify-content: center;
	    color: gray;
	}
	
	 showNow:focus{
	 	background-color: 'red';
	}

</style>
<script>

document.addEventListener("keydown", function (event) {
	if (event.ctrlKey) {
	event.preventDefault();
	}
});
	

</script>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
<%-- 				<form id="loginForm" class="login100-form validate-form" action="<c:url value='/loginLdapUsers' />" method='POST'> --%>
				<form id="loginForm" class="login100-form validate-form">
<!-- 				<form id="loginForm" class="login100-form validate-form" > -->
					<span class="login100-form-title p-b-26">
						<img class="logo" alt="logo"  width="150px" src="<c:url value="resources/images/logo-login.png"/>">
					</span>
					<!-- <span class="login100-form-title p-b-48"> -->
						<!-- <i class="zmdi zmdi-font"></i> -->
					<!-- </span> -->
					<div class="wrap-input100 validate-input" data-validate = "">
						<input id="loginUsername" class="input100" type="text" name='username' placeholder="Username" required>
<!-- 						<span class="focus-input100"></span> -->
					</div>

					<div class="wrap-input100 validate-input passwordDiv" data-validate="">
						<span class="showNow">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input id="loginPassword" class="input100" type="password" name='password' placeholder="Password" required>
<!-- 						<span class="focus-input100" placeholder="Password"></span> -->
					</div>

					<div class="container-login100-form-btn">
<!-- 						<div class="wrap-login100-form-btn"> -->
<!-- 							<div class="login100-form-bgbtn"></div> -->
							<button class="login100-form-btn" id="login-btn">
								Login
							</button>
<!-- 						</div> -->
					</div>
					<div class="container-login100-form-btn text-center p-t-115">
						<a class="txt2" href="/EAZee/forgot-password" target="_blank">
							Forgot Password
						</a>					
					</div>
						<div class="alreadyLoginMessage" style="text-align:center;"></div>
						<c:if test="${not empty error}">
						<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
						</c:if>	
						
					<div class="text-center p-t-115">
<!-- 						<span class="txt1"> -->
<!-- 							Don't have an account? -->
<!-- 						</span> -->

<!-- 						<a class="txt2" href="/EAZee/registration"> -->
<!-- 							Sign Up -->
<!-- 						</a> -->
						<br/>
<!-- 						<a class="txt2" href="#/EAZee/forgot_password"> -->
<!-- 							Forgot Password -->
<!-- 						</a> -->
					</div>
					<div id="messageDiv">${message}</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
							
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	
	<div id="dialog-confirm" title="Alert" style="display:none">
	  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span><spring:message code="logout_from_another_device"/></p>
	</div>	
	<!--===============================================================================================-->
<%-- 	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"></script> --%>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.3.js" />"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js"/>"></script>
	<!--===============================================================================================-->
<%-- 	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>"></script> --%>
<%-- 	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>"></script> --%>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/js/main.js"/>"></script>

</body>
	
<!-- 	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"> -->
	<link href="<c:url value="/resources/css/jquery-1.13.1-ui.css"/>" rel="stylesheet">
<!-- 	<link rel="stylesheet" href="/resources/demos/style.css"> -->
<!-- 	<script src="https://code.jquery.com/jquery-3.6.0.js"></script> -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>
<!-- 	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.13.1-ui.js" />"></script>
	
	
<!-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script> -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.cookie.min.js" />"></script>
	
	<script type="text/javascript" src="<c:url value="/resources/js/login.js" />"></script>
	<script>
		$(document).ready(function() {
			  // Retrieve the error message from localStorage
			  var errorMessage = localStorage.getItem("errorMessage");
	
			  // Check if the error message is present
			  if (errorMessage) {
				  console.log("errorMessage=",errorMessage)
			    // Display the error message
			    $(".alreadyLoginMessage").html(errorMessage);
	
			    // Clear the error message from localStorage
			    localStorage.removeItem("errorMessage");
			  }
		});
	    $("#login-btn").click(function(event) {
	        event.preventDefault();
	        var formData = {
	            username: $("#loginUsername").val(),
	            password: $("#loginPassword").val()
	        };
			let getUsername = $("input[name='username']").val();
			let getPassword = $("input[name='password']").val();			
			$.cookie('userName', getUsername, { expires: 7 });
			$.cookie('userPassword', getPassword, { expires: 7 });	        
	        checkUserInTheDB(formData);
// 	        $.ajax({
// 	            type: "POST",
// 	            url: "loginLdapUsers",
// 	            data: formData,
// 	            async: "false",
// 	            success: function(response) {
// 	                console.log("Authentication response:", response);
// 	                if (response === "1") {
// 	                	/* LDAP Login */
// 	                    $(".alreadyLoginMessage").text("User authenticated successfully.");
// 	                    checkLdapUserInTheDB(formData);
// // 	                    window.location.href = "<c:url value='/home' />"; 
// 	                } else {
// 	                	/* Normal login */
// 	                    // Set form's action and method attributes dynamically
// 	                    $("#loginForm").attr("action", "<c:url value='/login' />");
// 	                    $("#loginForm").attr("method", "POST");
	                    
// 	                    // Perform form submission using JavaScript
// 	                    $("#loginForm")[0].submit();	  
// 	                    event.preventDefault();
// // 	                    $(".alreadyLoginMessage").text("Authentication failed.");
// 	                }
// 	            },
// 	            error: function(jqXHR, textStatus, errorThrown) {
// 	                console.error("AJAX Error:", textStatus, errorThrown);
// 	            }
// 	        });
	    });
	</script>
</html>