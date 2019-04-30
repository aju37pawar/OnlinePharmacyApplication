/**
 * 
 */
function validateForm(){
	var x = document.getElementById("field-name").value;
	if(x==""){
		document.getElementById("error-name").style.display= "block";
		document.getElementById("error-name1").style.display= "none";
	}
	
	if(document.getElementById("field-name").value.length>50){
		document.getElementById("error-name1").style.display= "block";
		document.getElementById("error-name").style.display= "none";
	}
	
	var y = document.getElementById("field-type").value;
	if(y==""){
		document.getElementById("error-type").style.display= "block";
		document.getElementById("error-name1").style.display= "none";
		document.getElementById("error-name").style.display= "none";
	}
}