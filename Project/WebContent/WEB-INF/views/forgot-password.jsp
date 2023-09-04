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
	<title><spring:message code = "forgot_password"/></title>
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
		var Processing= '<spring:message code="Processing" />';
		var email_not_found= '<spring:message code="email_not_found" />';
		var email_is_in_incorrect_format = '<spring:message code="email_is_in_incorrect_format" />';
		var field_is_empty = '<spring:message code="field_is_empty" />';
		var email_sent_successfully = '<spring:message code="email_sent_successfully" />';
		var id_not_found = '<spring:message code="id_not_found" />';
		
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
				<form id="loginForm" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						<img class="logo" alt="logo"  width="150px" src="<c:url value="resources/images/logo-login.png"/>">
					</span>
					<div class="login100-form validate-form p-b-10">
						<h6 class="validate-input p-b-20" style="text-align: center; color: black; font-weight: bold; font-size: 14px"><spring:message code="forgot_password"/></h6>						
					</div>
					<div class="wrap-input100 validate-input" data-validate = "">
						<input class="input100" type="text" id="username" name="username" placeholder="<spring:message code="enter_user_id"/>" required>						
					</div>

<!-- 					<div class="container-login100-form-btn"> -->
<!-- 							<button class="login100-form-btn" id="login-btn"> -->
<%-- 								<spring:message code="submit"/> --%>
<!-- 							</button> -->
<!-- 					</div> -->
					<div class="container-login100-form-btn">
						<input id="login-btn" class="login100-form-btn" type="button" value="Submit" onclick="forgotFormSubmit();"> 
<!-- 									<button class="login100-form-btn" id="login-btn" onclick="resetFormSubmit();"> -->
<!-- 										Reset -->
<!-- 									</button> -->
					</div>						
						<c:if test="${not empty error}">
						<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
						</c:if>	
<%-- 					    <p class="container-login100-form-btn">${error}</p> --%>
<%-- 					    <p class="container-login100-form-btn">${param.success == 'true' ? 'Password reset email sent successfully!' : 'Email Not Found!'}</p> --%>
				</form>
<%-- 				<p class="container-login100-form-btn">${param.success == 'true' ? '<p style="display:none; text-align: center" class="showErrorMessage container-login100-form-btn"></p>' : ''}</p> --%>
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
	
	<script type="text/javascript" src="<c:url value="/resources/js/forgot_password.js" />"></script>
</html>