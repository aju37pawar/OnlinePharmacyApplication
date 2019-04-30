/**
 * 
 */
function validateForm(){
	var x = document.forms["login-form"]["username"].value;
	var y = document.forms["login-form"]["password"].value;
	if(x=="" && y==""){
		document.getElementById("user_error").style.display = "block";
		document.getElementById("pass_error").style.display = "block";
		return false;
	}
	
	if (x==""){
		document.getElementById("user_error").style.display = "block";
		return false;
	}
	else{
		document.getElementById("user_error").style.display = "none";
		document.getElementById("pass_error").style.display = "none";
	}
	
	if (y==""){
		document.getElementById("pass_error").style.display = "block";
		return false;
	}
	else{
		document.getElementById("pass_error").style.display = "none";
		document.getElementById("user_error").style.display = "none";
	}
	
}