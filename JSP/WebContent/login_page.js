/**
 * 
 */
function validateForm(){
	var x = document.forms["login-form"]["username"].value;
	if (x==""){
		window.location.href = "login-validation.html";
		return false;
	}
	
	var y = document.forms["login-form"]["password"].value;
	if (y==""){
		window.location.href = "login-validation.html";
		return false;
	}
	
	if(x=="" || y==""){
		window.location.href = "login-validation.html";
		return false;
	}
	else{
		window.location.href = "medicine-search.html";
	}
}