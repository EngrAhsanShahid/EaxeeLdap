<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <meta http-equiv="Content-Security-Policy" content="Content-Security-Policy", "default-src 'self'; script-src 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline';"/> -->
<title>Insert title here</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-3.4.0.min.css"/>" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
<%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script> --%>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.3.min.js" />"></script>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<%-- <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-3.4.0.min.js" />"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-4.1.3.min.js" />"></script> --%>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap-5.0.0.bundle.min.min.js" />"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->

<script type="text/javascript">
$( document ).ready(function() {
	
	$( ".getType" ).click(function() {
		var abac = $(".getType").val();
		alert(abac);
		});
	
	
});

var _validFileExtensionsForExcel = [".xls", ".xlsx", ".xlsm"];   

var _validFileExtensionForXML = [".xml"];    
function ValidateSingleInput(oInput,type) {
	if(type=='excel'){
		_validFileExtensions = _validFileExtensionsForExcel;
	}
	else if(type =='xml'){
		_validFileExtensions = _validFileExtensionForXML;
	}
    if (oInput.type == "file") {
        var sFileName = oInput.value;
         if (sFileName.length > 0) {
            var blnValid = false;
            for (var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
             
            if (!blnValid) {
                alert("Invalid File Format");
                oInput.value = "";
                return false;
            }
        }
    }
    return true;
}

</script>

</head>
<body>
<div class="container">
	<form method="POST" action="excelToXML2" enctype="multipart/form-data">
		<h3>Add Data From Excel</h3>
			<div class="form-group addAttribute">
				<select class="form-control" type="text" name="db_Name">
						<option disabled selected="selected">-- Select Database --</option>
						<c:forEach items="${dbList}" var="contact" varStatus="status">
							<option>${contact.dbName}</option>
						</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label>Select File</label>
				<input  type="file" name="file" onchange="ValidateSingleInput(this,'excel');"  accept=".xls,.xlsx,.xlsm"/>
			</div>
		    <button type="submit" class="btn btn-default">Submit</button>
		</form>
		
		<br><br><hr><br><hr>
		
		
		<a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
		</div>
</body>
</html>