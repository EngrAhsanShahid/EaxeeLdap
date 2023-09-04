<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code="" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>License Creation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Tabs - Default functionality</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-4.1.3.min.css"/>">
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" -->
<!-- 	crossorigin="anonymous"> -->
<link href="<c:url value="/resources/css/jquery-1.13.1-ui.css"/>" rel="stylesheet">	
<!-- <link rel="stylesheet" -->
<!-- 	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css"> -->
<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type">

<!--  CSS THAT WILL BE CHANGED ACCORDING TO THEME LATER	 -->
<%-- <link href="<c:url value="/resources/css/administration/administration-default.css"/>" rel="stylesheet"> --%>
	<link rel="stylesheet" type="text/css" id="" href="<c:url value="/resources/css/licenseCreation/licenseCreationPage.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>">
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->

<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.js" />"></script>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.js"></script> -->
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.13.1-ui.js" />"></script>
<!-- <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> -->

<!--  USER MANAGEMENT JS FILE	 -->
<script type="text/javascript" src="<c:url value="/resources/js/licenseCreation/licenseCreationPage.js" />"></script>

<!--  Global JS FILE	 -->
<script type="text/javascript" src="<c:url value="/resources/js/global.js" />"></script>

<!-- userinfo css -->
<link href="<c:url value="/resources/css/userinfo.css"/>" rel="stylesheet">

<link
	href="<c:url value="/resources/css/administration/administration-default.css"/>"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>">

<!-- Datatbale css starts here -->
<%-- 	<link rel="stylesheet" href="<c:url value="/resources/css/datatable1.css"/>"> --%>
<%-- 	<link rel="stylesheet" href="<c:url value="/resources/css/datatable2.css"/>"> --%>
<!-- Datatbale css ends here -->
<script type="text/javascript">
	   
	   function sessionLoggedOutModalOpen(){
		   
		   $( function() {
			    var dialog, form,
			    dialog = $( "#sessionExpiredDialog" ).dialog({
			      autoOpen: false,
			      width: 350,
			      modal: true,
			      buttons: {
				        "Okay": function() {
				        	document.location.href="login";
				          $( this ).dialog( "close" );
				        }
				  }
			    });
			      dialog.dialog( "open" );
			      $(".ui-dialog-titlebar-close").hide();
			  }); 
	   }
	   
	  
	   
	   function changeTheme(){
		   //// session time out alert
		    inactivityTime();
		    resetTimer();
		    document.body.onclick = resetServerSessionTimeOut;
		    
		    
			document.addEventListener("keydown", function (event) {
				if (event.ctrlKey) {
				event.preventDefault();
				}
			});	   
		   
		   
	// 		let themeURL = '';
	// 		var themeLink = document.getElementById("switcher-id");
	// 		$.ajax({
	// 		    url: "getThemeName", // url: "/findTables?dbName="+db_name,
	// 		  	method: 'get',
	// 		  	async: true,
	// 		    data: {},
	// 		    success: function (data) {
	// 			  	console.log(data)
	// 			  	if(data=='dark'){
	// 					themeURL = '<c:url value="/resources/css/administration/administration-dark.css"/>';
	// 				}
	// 				else if(data=='light'){
	// 					themeURL ='<c:url value="/resources/css/administration/administration-light.css"/>';
	// 				}
	// 				else if(data=='default'){
	// 					themeURL ='<c:url value="/resources/css/administration/administration-default.css"/>';
	// 				}
	// 			},
	// 	        async: false
	// 		  });
	// 		themeLink.href = themeURL;
		}
	   
	   function alert_message_function(){
			setTimeout(function() { $(".alert_message").html(""); }, 2500);
			setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
		}
	   
  </script>

<script>
	<!-- Spring:messages ends -->
</script>
<style>
.sorting_1 {
	pointer-events: none;
}

.loader {
	border: 16px solid #f3f3f3; /* Light grey */
	border-top: 16px solid #0D7E8A; /* Blue */
	border-radius: 50%;
	width: 120px;
	height: 120px;
	animation: spin 2s linear infinite;
	position: absolute;
	z-index: 999;
	top: 50%;
	left: 50%;
}

@keyframes spin {
	  0% { transform: rotate(0deg); }
	  100% { transform: rotate(360deg); }
	}
</style>
</head>
<body onload="changeTheme();">
	<div id="getSessionId" style="display:none;">${sessionId}</div>
	<!-- Prompt For new Architecture Backup-->
	<div id="dialog-form-backupName" title="<spring:message code="create_backup"/>" style="display:none">
	  <form>
	    <fieldset class="createBackupDialogFieldset">
	    	<div>
		      <label for="name"><spring:message code="Name"/></label>
		      <input type="text" name="filename" id="" placeholder="<spring:message code="backup_name"/>" class="text ui-widget-content ui-corner-all backupName">
		      <!-- Allow form submission with keyboard without duplicating the dialog button -->
			  <!-- <input type="submit" tabindex="-1" style="position:absolute; top:-1000px"> -->
	      	</div>
	    </fieldset>
	  </form>
	</div>
	<!-- Prompt For Old Architecture Backup With New Name-->
	<div id="dialog-form-old-backupName" title="<spring:message code="restore_name"/>" style="display:none">
	  <form>
	    <fieldset>
	      <label for="name"><spring:message code="Name"/></label>
	      <input type="text" name="newBackupName" id="newbackupName" placeholder="<spring:message code="new_name"/>" class="text ui-widget-content ui-corner-all newbackupName">
	      <!-- Allow form submission with keyboard without duplicating the dialog button -->
	      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
	    </fieldset>
	  </form>
	</div>	
	<div id="dialog-confirm"
		title="<spring:message code="confirm_delete"/>" style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 12px 12px 20px 0;"></span>
			<spring:message code="you_are_about_to_delete" />
			<b><i class="title"></i></b>
			<spring:message code="record_this_procedure_is_irreversible" />
		</p>
	</div>
	<div id="dialog-restore"
		title="<spring:message code="confirm_restore"/>" style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 12px 12px 20px 0;"></span>
			<spring:message code="you_are_about_to_delete" />
			<b><i class="title"></i></b>
			<spring:message code="record_this_procedure_is_irreversible" />
		</p>
	</div>
	<div id="dialog-restore-old-new"
		title="<spring:message code="confirm_restore"/>" style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 12px 12px 20px 0;"></span>
			<spring:message code="you_are_about_to_delete" />
			<b><i class="title"></i></b>
			<spring:message code="record_this_procedure_is_irreversible" />
		</p>
	</div>	
	<div id="dialog-delete"
		title="<spring:message code="confirm_delete"/>" style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 12px 12px 20px 0;"></span>
			<spring:message code="you_are_about_to_delete" />
			<b><i class="title"></i></b>
			<spring:message code="record_this_procedure_is_irreversible" />
		</p>
	</div>		
	<div id="sessionExpiredDialog" style="display: none"
		title="Session Expired!">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 3px 3px 20px 0;"></span>Session Expired!
			Please Login again.
		</p>
	</div>
	<img id="loader_image_body" style="display: none;" loading="lazy"
		alt="schema" width="200px" height="50px"
		src="<c:url value="/resources/images/logo-login.png"/>">
	<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width: 100vw">

		<!-- loader  start-->
		<div class="loader" style="display: none;"></div>
		<!-- loader  end-->

		<div style="display: flex; justify-content: space-between; width: 100vw; margin-bottom: -10px; background: #f8f9fa; height: 60px !important;">
			<div>
				<!-- 				<a href="home"> -->
				<a>
					<p class="image1" style="margin-left: 0px;margin-top:-5px">
						<img draggable="false" alt="logo" width="155px"
							src="<c:url value="/resources/images/logo-login.png"/>">
					</p>
				</a>
			</div>
			<div
				style="display: flex; justify-content: space-between; padding-right: 10px">
				<div id="home-btn">
					<!-- <a id="language" class="fa-2x lang-icon" draggable="false" title="Module Page" onclick="toggleLanguageSelection()">Ar</a> -->
					<a href="home" class="fa fa-home fa-2x" draggable="false"
						title="Module Page"></a>
				</div>
				<!-- 			<!-- ///////////////////////////////////////////////////////// -->
				<div class="account-item clearfix js-item-menu ">
					<div class="content">
						<a class="js-acc-btn" href="#">${userProfileDetials.userFullName}
							<i class="fa fa-caret-down" aria-hidden="true"></i>
						</a>
					</div>
					<div class="account-dropdown js-dropdown">
						<div class="info clearfix">
							<div class="content">
								<h5 class="name">
									<a href="#">${userProfileDetials.userFullName}</a>
								</h5>
								<span class="email">${userProfileDetials.emailAddress}</span>
							</div>
						</div>
						<div class="account-dropdown__body">
							<div class="account-dropdown__item">
								<a href="userprofile" onclick="saveCurrentUrlToLocalStorage()"><i
									class="fa fa-user" aria-hidden="true"></i>
								<spring:message code="profile" /></a>
							</div>
						</div>
						<div class="account-dropdown__footer">
							<a href="logout"><i class="fa fa-power-off"
								aria-hidden="true"></i>
							<spring:message code="logout" /></a>
						</div>
					</div>
				</div>
				<!-- ///////////////////////////////////////////////////////// -->
			</div>
		</div>

		<div class="navbar" style="background: #0d7e8a; width: 100%; height: 55px">
			<div class="bs-example leftSideButtons" style="margin-left: -20px">
			</div>
			<div style="height: 40px; position: absolute; left: 50%;">
				<span class="alert_message"></span>
			</div>

<!-- 			<button disabled style="font-size: 18px; margin-right: 20px" -->
<!-- 				title="Save" id="save_button" class="btn" onclick=""> -->
<!-- 				<i class="fa fa-floppy-o" style="font-size: 24px; color: black"></i> -->
<!-- 			</button> -->
		</div>
	</div>
	
	<div style="margin: 0 auto !important; padding: 0 !important; width: 90vw;">
		<div class="formAndButton-container">
<!--             <div class="col-sm-3"> -->
                <form class="left-form">
                    <label class="col-form-label">Deployment Type</label>
                    <select id="deploymentType" class="form-select">
					  <option selected disabled="disabled"> --- Select ---</option>
					  <option value="Prem">On-Prem</option>
					  <option value="Cloud">Cloud</option>
					</select>
                    <label class="col-form-label">Repository ID</label>
					<input id="repositoryID" type="text" class="form-control" placeholder="">
                </form>
<!--             </div> -->
<!--             <div class="col-sm-3"> -->
<!--                 <form class="right-form"> -->
<!--                     <input id="addLicenseButton" style="background: #0d7e8a" type="button" class="btn btn-primary mb-2 licenseCreationPageButton" onclick="" value="Add License"> -->
                	 <div class="button-container">
			            <input id="licenseCreateButton" style="background: #0d7e8a" type="button" class="btn btn-primary mb-2 licenseCreationPageButton" onclick="addLicenseModal();" value="Add License">
			        </div>
<!--                 </form> -->
<!--             </div> -->
		</div>
		<br>
<!-- 		<div class="table-container" style="height: calc(100vh - 105px - 55px - 23px); display: inline-block;"> -->
			<form>
				<h5>
					<%-- <spring:message code="registered_users" /> --%>
					License Details
				</h5>
				<table class="licenseDetailsTable table table-bordered pool_table_data">
					<thead>
						<tr>
<%-- 							<th><spring:message code="name" /></th> --%>
							<th>License Role</th>
							<th>Number of Licenses</th>
							<th>Deployment Type</th>
							<th>Repository ID</th>
							<th>Longetivity</th>
							<th>Start Date</th>
							<th>End Date</th>
							<th>License Type</th>
							<th>License Association</th>
							<th>User ID</th>
						</tr>
					</thead>
					<tbody class="" id="licenseDetailsTbody"></tbody>
				</table>
			</form>
			<div style="display: flow-root;">
	            <input id="generateLicenseButton" style="background: #0d7e8a" type="button" class="btn btn-primary mb-2 licenseCreationPageButton" onclick="generateLicenseKeys()" value="Generate License">
	        </div>
	        <div>
		        <h4>Serial Numbers</h4>
				<textarea class="form-control" disabled="disabled" id="generatedLicenseKeys" rows="5"></textarea>
	        </div>
	    </div>
	</div>

	<!-- for header dropdown start -->
	
	<!-- The Modal -->
	<div id="addLicenseModal" class="modal" style="display: none; ">
	  <!-- Modal content -->
	  <div class="modal-content" style="max-width: 800px;">
	    <div class="modal-header">
	      <span id="active_directory_modal_heading"></span>
	      <span class="close" id="addLicenseModalClose" onclick="addLicenseModalCloseButton()">&times;</span>
	    </div>
	    <div class="modal-body">
	    	<div>
	    		<div class="form-group row">
<!-- 				    <label for="hostname" class="col-sm-2 col-form-label">Hostname:</label> -->
				    <div class="col-sm-4">
				      <span>Deployment Type</span><input disabled="disabled" type="text" class="form-control" id="deploymentType_modal"/>
				    </div>
				    <div class="col-sm-4">
				      <span>Repository ID</span><input disabled="disabled" type="text" class="form-control" id="repositoryID_modal">
				    </div>
				    <div class="col-sm-4">
				    	<span>License Role</span>
					    <select id="licenseRole_modal" class="form-select">
						  <option selected disabled="disabled"> --- Select ---</option>
						  <option value="Enterprise Architect">Enterprise Architect</option>
						  <option value="Repository Admin">Repository Admin</option>
						  <option value="Organization Portal">Organization Portal</option>
						  <option disabled="disabled" value="Metamodeler">Metamodeler</option>
						</select>
<!-- 				      <span>License Role</span><input type="text" class="form-control" id="licenseRole_modal"> -->
				    </div>
				  </div>
	    	</div>
	    	<div>
	    		<div class="form-group row">
<!-- 				    <label for="hostname" class="col-sm-2 col-form-label">Hostname:</label> -->
				    <div class="col-sm-4">
				      <span>Number of Licenses</span><input type="number" class="form-control" id="numberOfLicenses_modal"/>
				    </div>
				    <div class="col-sm-4">
				      <span>Longetivity</span>
				      <select id="longetivity_modal" class="form-select">
						  <option selected disabled="disabled"> --- Select ---</option>
						  <option value="Fixed Duration">Fixed Duration</option>
						  <option value="Perpetual">Perpetual</option>
				      </select>
<!-- 				      <input type="text" class="form-control" id="longetivity_modal"> -->
				    </div>
				    <div class="col-sm-4">
				      <span>Start Date</span><input type="date" class="form-control" id="startDate_modal">
				    </div>
				  </div>
	    	</div>
	    	<div>
	    		<div class="form-group row">
<!-- 				    <label for="hostname" class="col-sm-2 col-form-label">Hostname:</label> -->
				    <div class="col-sm-4">
				      <span>End Date</span><input type="date" class="form-control" id="endDate_modal"/>
				    </div>
				    <div class="col-sm-4">
				      <span>License Type</span>
				      <select id="licenseType_modal" class="form-select">
						  <option selected disabled="disabled"> --- Select ---</option>
						  <option value="Commercial">Commercial</option>
						  <option value="Trial">Trial</option>
				      </select>
<!-- 				      <input type="text" class="form-control" id="licenseType_modal"> -->
				    </div>
				    <div class="col-sm-4">
				      <span>License Association</span>
				      <select id="licenseAssociation_modal" class="form-select">
						  <option selected disabled="disabled"> --- Select ---</option>
						  <option value="Concurrent">Concurrent</option>
						  <option value="Named User">Named User</option>
				      </select>				      
<!-- 				      <input type="text" class="form-control" id="licenseAssociation_modal"> -->
				    </div>
				  </div>
	    	</div>
	    	<div>
	    		<div class="form-group row">
				    <div class="col-sm-4">
				      <span>User ID</span><input type="text" class="form-control" id="userID_modal"/>
				    </div>
				  </div>
	    	</div>
<!-- 	      <p id="active_directory_modal_info_text"></p> -->
			
			
	    </div>
	      <div class="modal-footer">
			<button type="button" class="changeButtonFontSize btn btn-secondary" onclick="addLicenseButtonClickFromModal()"><spring:message code="add"/></button>
	        <button type="button" class="changeButtonFontSize btn btn-secondary" onclick="addLicenseModalCloseButton()"><spring:message code="Cancel"/></button>
	      </div>
	      
	      	    
		<!--     <div class="modal-footer"> -->
		<!--       <h3>Modal Footer</h3> -->
		<!--     </div> -->
	  </div>
	  
	  
	  
	  
	</div>	
	
	<script type="text/javascript"
		src="<c:url value="/resources/js/animsition.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/main.js" />"></script>
	<!-- for header dropdown end -->


	<!-- Datatable starts here -->
	<%-- 	<script type="text/javascript" src="<c:url value="/resources/js/datatable1.js" />"></script> --%>
	<script type="text/javascript"
		src="<c:url value="/resources/js/datatable2.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/datatable3.js" />"></script>
	

	<!-- Datatable ends here -->
	
	<!-- Information_modal css here -->
	<link href="<c:url value="/resources/css/modal.css"/>" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-5.0.0.min.css"/>">
	<!-- Information_modal script file -->
<%-- 	<script type="text/javascript" src="<c:url value="/resources/js/information_modal.js" />"></script>	 --%>

<!-- datatable links starts-->
<!-- 	<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" /> -->
	<link rel="stylesheet" href="<c:url value="/resources/css/jquery.dataTables.css"/>" />
	  
<!-- 	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script> -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.js"/>"></script>
	<!-- datatable links ends-->
</body>
</html>