<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cognizant.model.AddMedicine"%>
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
	String name = request.getParameter("add-name");
	String type = request.getParameter("type");
	String add_unit = request.getParameter("add_unit");
	String add_price = request.getParameter("add_price");
	String radio_tag = request.getParameter("radio_tag");
	String add_expiry = request.getParameter("add_expiry");
	String add_instock = request.getParameter("add_instock");
	
	//Object Creation
	AddMedicine addMedicine = new AddMedicine();
	addMedicine.setName(name);
	addMedicine.setType(type);
	addMedicine.setUnit_value(add_unit);
	addMedicine.setPrice(add_price);
	addMedicine.setUnit(radio_tag);
	addMedicine.setExpiry(add_expiry);
	addMedicine.setIn_stock(add_instock);
	
	//JDBC
	String db_username = "root";
	String db_password = "root";
	String db_driverClassName = "com.mysql.jdbc.Driver";
	String db_url = "jdbc:mysql://localhost:3306/company_db";
	
	//JDBC connection
	Connection connection = null;
	PreparedStatement statement;
	
	try{
		Class.forName(db_driverClassName);
		connection = DriverManager.getConnection(db_url, db_username, db_password);
		String insQuery = "insert into add_medicine values(?,?,?,?,?,?,?)";
		statement = connection.prepareStatement(insQuery);
		statement.setString(1, addMedicine.getName());
		statement.setString(2, addMedicine.getType());
		statement.setString(3, addMedicine.getUnit_value());
		statement.setString(4, addMedicine.getPrice());
		statement.setString(5, addMedicine.getUnit());
		statement.setString(6, addMedicine.getExpiry());
		statement.setString(7, addMedicine.getIn_stock());
		statement.executeUpdate();
	}catch(Exception exception){
		out.print(exception.getMessage());
	}finally{
		if(connection != null){
			connection.close();
		}
	}
	%>
</body>
</html>