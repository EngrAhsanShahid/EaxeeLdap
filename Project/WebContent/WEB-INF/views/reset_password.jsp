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
	<title><spring:message code = "reset_password"/></title>
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
	<script>
		var password_reset_successfully= '<spring:message code="password_reset_successfully" />';
		var password_not_match= '<spring:message code="password_not_match" />';
		var field_are_empty= '<spring:message code="field_are_empty" />';
		var new_password= '<spring:message code="new_password" />';
		var confirm_new_password= '<spring:message code="confirm_new_password" />';
		
	</script>
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
			    <%-- Check if the success attribute is set to true --%>
			    <c:if test="${success}">
					<span class="login100-form-title p-b-26">
						<img class="logo" alt="logo"  width="150px" src="<c:url value="resources/images/logo-login.png"/>">
					</span> 
  					<div class="login100-form validate-form p-b-10">
						<h3 class="validate-input p-b-20" style="text-align: center; color: black; font-weight: bold; font-size: 14px"><spring:message code="reset_password"/></h3>						
					</div>
			        <p id="tokenID" style="display:none">${token}</p> <%-- Display the token value --%>
			        <p id="userID" style="display:none">${user_id}</p> <%-- Display the token value --%>
					<form class="login100-form validate-form">
					        <div class="wrap-input100 validate-input" data-validate = "">
					            <input class="input100" type="password" id="password" name="password" placeholder="<spring:message code="new_password"/>" required>
					        </div>
					        
					        <div class="wrap-input100 validate-input" data-validate = "">
					            <input class="input100" type="password" id="confirm_password" name="confirm_password" placeholder="<spring:message code="confirm_new_password"/>" required>
					        </div>
							<div class="container-login100-form-btn">
								<input id="login-btn" class="login100-form-btn" type="button" value="Reset" onclick="resetFormSubmit();"> 
<!-- 									<button class="login100-form-btn" id="login-btn" onclick="resetFormSubmit();"> -->
<!-- 										Reset -->
<!-- 									</button> -->
							</div>				        
			    	</form>
			    </c:if>
			    <%-- Check if the success attribute is set to false --%>
			    <c:if test="${!success}">
					<span class="login100-form-title p-b-26">
						<img class="logo" alt="logo"  width="150px" src="<c:url value="resources/images/logo-login.png"/>">
					</span>  			    
			        <p class="container-login100-form-btn">Invalid token.</p>
			    </c:if>
				<p style="display:none; text-align: center" class="showErrorMessage container-login100-form-btn"></p>			
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
	
	<script type="text/javascript" src="<c:url value="/resources/js/resetPassword.js" />"></script>
</html>