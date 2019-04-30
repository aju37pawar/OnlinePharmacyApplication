<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- step1 -->
<jsp:useBean id="employeeObject" class= "com.cognizant.model.Employee"></jsp:useBean>

<!-- step2 -->
<jsp:setProperty property="userName" name="employeeObject"/>
<jsp:setProperty property="password" name="employeeObject"/>
<jsp:setProperty property="emailId" name="employeeObject"/>
<jsp:setProperty property="mobileNumber" name="employeeObject"/>

<!-- step3 -->
<center>
<h1>Registration Page</h1>
<table border= "1" style= "background-color: aqua; color: black; border-style: solid; border-color: black;">
	<tr>
		<td>User Name</td>
		<td><jsp:getProperty property="userName" name="employeeObject"/></td>
	</tr>
	
	<tr>
		<td>Password</td>
		<td><jsp:getProperty property="password" name="employeeObject"/></td>
	</tr>
	
	<tr>
		<td>Email Id</td>
		<td><jsp:getProperty property="emailId" name="employeeObject"/></td>
	</tr>
	
	<tr>
		<td>Mobile Number</td>
		<td><jsp:getProperty property="mobileNumber" name="employeeObject"/></td>
	</tr>
</table>
</center>
