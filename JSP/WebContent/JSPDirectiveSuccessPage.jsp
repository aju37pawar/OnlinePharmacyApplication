<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session= "true" %>
<%@ page errorPage= "JSPDirectiveErrorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("userName");
		if(userName== null || "".equals(userName)){
			throw new Exception("User Name is empty");
		}else{
			out.print("User Name: "+userName);
		}
	%>
</body>
</html>