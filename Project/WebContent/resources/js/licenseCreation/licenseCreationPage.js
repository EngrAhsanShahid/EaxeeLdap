function addLicenseModal(){
	var deploymentType = $("#deploymentType").val();
	var repositoryID = $("#repositoryID").val();
	console.log('deploymentType',deploymentType);
	console.log('repositoryID',repositoryID);
	if(deploymentType==null || repositoryID==''){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">Fill Required Fields</div>');
	    alert_message_function();
	    return;
	}
	$("#deploymentType_modal").val(deploymentType);
	$("#repositoryID_modal").val(repositoryID);
	// Get the modal
	var modal = document.getElementById("addLicenseModal");
	$( ".modal-content" ).draggable();
//	var span = document.getElementById("addLicenseModalClose");
	document.getElementById("active_directory_modal_heading").innerHTML = "Add License";//  for "+heading
//	document.getElementById("active_directory_modal_info_text").innerHTML = "Body";
	modal.style.display = "block";
//	span.onclick = function() {
//	  modal.style.display = "none";
//	}
}

function addLicenseModalCloseButton(){
	var modal = document.getElementById("addLicenseModal");
	modal.style.display = "none";
}

function addLicenseButtonClickFromModal(){
	var deploymentType_modal = $("#deploymentType_modal").val();
	var repositoryID_modal = $("#repositoryID_modal").val();
	var licenseRole_modal = $("#licenseRole_modal").val();
	var numberOfLicenses_modal = $("#numberOfLicenses_modal").val();
	var longetivity_modal = $("#longetivity_modal").val();
	var startDate_modal = $("#startDate_modal").val();
	var endDate_modal = $("#endDate_modal").val();
	var licenseType_modal = $("#licenseType_modal").val();
	var licenseAssociation_modal = $("#licenseAssociation_modal").val();
	var userID_modal = $("#userID_modal").val();
	
	
	if(licenseRole_modal == null || numberOfLicenses_modal == '' || longetivity_modal == null || licenseType_modal  == null || licenseAssociation_modal   == null || userID_modal == '' ){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">Fill Required Fields</div>');
	    alert_message_function();
	    return;
	}else if(longetivity_modal == 'Fixed Duration' && (startDate_modal == '' || endDate_modal == '')){
		console.log('else if')
		$(".alert_message").html('<div class="alert alert-danger" role="alert">Fill Required Fields</div>');
	    alert_message_function();
	    return;
	}
	
	var tds_string = "<tr>";
	
	tds_string += '<td id="">'+licenseRole_modal+'</td>';
	tds_string += '<td id="">'+numberOfLicenses_modal+'</td>';
	tds_string += '<td id="">'+deploymentType_modal+'</td>';
	tds_string += '<td id="">'+repositoryID_modal+'</td>';
	tds_string += '<td id="">'+longetivity_modal+'</td>';
	tds_string += '<td id="">'+startDate_modal+'</td>';
	tds_string += '<td id="">'+endDate_modal+'</td>';
	tds_string += '<td id="">'+licenseType_modal+'</td>';
	tds_string += '<td id="">'+licenseAssociation_modal+'</td>';
	tds_string += '<td id="">'+userID_modal+'</td>';
	tds_string += '</tr>';
	
	$("#licenseDetailsTbody").append(tds_string);
	addLicenseModalCloseButton();
	resetModalData();
	
}

function generateLicenseKeys() {
	var array_rowDataArray = [[]];
	$("#licenseDetailsTbody tr").each(function() {
		var rowData = [];
		$(this).find("td").each(function() {
			rowData.push($(this).text());
			console.log('rowData', rowData)
		});
		array_rowDataArray.push(rowData);
	});

	let array_rowDataArrayString = JSON.stringify(array_rowDataArray);
	$.ajax({
		url: "generateLicenseKeysFromLicenseCreationPage",
		type: 'POST',
		contentType: "application/json",
		data: array_rowDataArrayString,
		success: function(res) {
			let generatedLicenseKeysStr = '';
			$.each(res, function(i, val) {
				generatedLicenseKeysStr += val + '\n';
			});
			$('#generatedLicenseKeys').val(generatedLicenseKeysStr);
		},
		async: false
	});

}

function resetModalData() {
	$('#deploymentType_modal').val('');

	$('#repositoryID_modal').val('');

	$('#licenseRole_modal').prop('selectedIndex', 0);

	$('#numberOfLicenses_modal').val('');

	$('#longetivity_modal').prop('selectedIndex', 0);

	$('#startDate_modal').val('');

	$('#endDate_modal').val('');

	$('#licenseType_modal').prop('selectedIndex', 0);

	$('#licenseAssociation_modal').prop('selectedIndex', 0);

	$('#userID_modal').val('');
}






