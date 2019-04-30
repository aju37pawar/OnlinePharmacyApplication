/**
 * 
 */
function showMedicines(){
	var x = document.getElementById("field-search").value;
	if(x==""){
		document.getElementById("error").style.display= "block";
		document.getElementById("delete-message").style.display = "none";
		document.getElementById("add-message").style.display = "none";
		document.getElementById("medicine_table").style.display= "none";
	}
	else{
		document.getElementById("error").style.display= "none";
		document.getElementById("add-message").style.display = "none";
		document.getElementById("delete-message").style.display = "none";
		document.getElementById("medicine_table").style.display= "block";
	}
}

function showDeleteMessage(){
	var x = document.getElementById("delete-message");
	document.getElementById("error").style.display= "none";
	document.getElementById("add-message").style.display = "none";
	//document.getElementById("medicine_table").style.display= "none";
	x.style.display = "block";
}

function showAddMessage(){
	var x = document.getElementById("add-message");
	document.getElementById("delete-message").style.display = "none";
	document.getElementById("error").style.display= "none";
	//document.getElementById("medicine_table").style.display= "none";
	x.style.display = "block";
}