<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cognizant.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		/* String emailId = request.getParameter("email");
		String mobileNumber = request.getParameter("mobileNumber"); */
		Employee employee = new Employee();
		employee.setUserName(userName);
		employee.setPassword(password);
		/* employee.setEmailId(emailId);
		employee.setMobileNumber(mobileNumber); 
		out.print("User Name: "+employee.getUserName());
		out.print("<br>");
		out.print("Password: "+employee.getPassword());
		out.print("<br>");
		out.print("Email Id: "+employee.getEmailId());
		out.print("<br>");
		out.print("Mobile Number: "+employee.getMobileNumber()); */
		
		//JDBC
		String db_username = "root";
		String db_password = "root";
		String db_driverClassName = "com.mysql.jdbc.Driver";
		String db_url = "jdbc:mysql://localhost:3306/company_db";
		
		//JDBC connection
		Connection connection = null;
		PreparedStatement statement;
		ResultSet resultSet = null;
		try{
			Class.forName(db_driverClassName);
			connection = DriverManager.getConnection(db_url, db_username, db_password);
			String selectQuery = "select username, password from employee_table values where userName='"+userName+"'";
			statement = connection.prepareStatement(selectQuery);
			resultSet = statement.executeQuery(selectQuery);
			String database_userName= null;
			String database_password= null;
			while(resultSet.next()){
				database_userName = resultSet.getString("userName");
				database_password = resultSet.getString("password");
			}
			
			if(employee.getUserName().equals(database_userName)){
				if(employee.getPassword().equals(database_password)){
					System.out.println("Successfull login");
				}
			}
			//JDBC insert values
			
		/* 	statement.setString(1, employee.getUserName());
			statement.setString(2, employee.getPassword());
			statement.setString(3, employee.getEmailId());
			statement.setString(4, employee.getMobileNumber()); */
			
			/* statement.executeUpdate(); */
		}catch(Exception e){
			out.print(e.getMessage());
		}finally{
			if(connection != null){
				connection.close();
			}
		/* 	out.print("Successfully added in the database"); */
		}
		
	%>
	<%-- <jsp:include page="registrationPage.html"></jsp:include> --%>
</body>
</html>