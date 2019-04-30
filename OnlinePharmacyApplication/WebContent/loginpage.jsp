<%-- <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %> --%>
<%@ page import="com.cognizant.model.UserModel" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	UserModel userModel = new UserModel();
	userModel.setUserName(userName);
	userModel.setPassword(password);
	
	try{
		RequestDispatcher dispatcher = null;
		if(userModel.getUserName().equals("admin")&&userModel.getPassword().equals("admin")){
			dispatcher = request.getRequestDispatcher("");
			dispatcher.forward(request, response);
		}
		else if(userModel.getUserName().equals("customer")&&userModel.getPassword().equals("customer")){
			dispatcher = request.getRequestDispatcher("");
			dispatcher.forward(request, response);
		}
	}catch(Exception exception){
		out.print(exception.getMessage());
	}
	
%>

</body>
</html>