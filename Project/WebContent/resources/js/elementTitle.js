function elementTitle(name, id, architectureName){
	console.log("name, id, architectureName")
	console.log(name, id, architectureName)
	var makeID = name+""+id;
	var parent_name = document.getElementById(makeID);
	if (typeof parent_name !== 'undefined') {
		var parent = parent_name?.parentNode?.parentNode?.parentNode?.previousElementSibling?.innerHTML;
		var parentTitle = parent;
		if(typeof parentTitle !== 'undefined'){
			$("#element_title").show().text(name.replaceAll("---", " ")+" ["+parentTitle+"]");
			$('#element_title').prop('title', name.replaceAll("---", " ")+" ["+parentTitle+"]");
			return parentTitle;								
		}
		else{
			$("#element_title").show().text(name.replaceAll("---", " ")+" ["+architectureName+"]");
			$('#element_title').prop('title', name.replaceAll("---", " ")+" ["+architectureName+"]");
			return architectureName;
		}					
	}	
}