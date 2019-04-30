<%@page import="com.cognizant.model.EditMedicine"%>
<%@page import="com.cognizant.model.AddMedicine"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	EditMedicine editMedicine = new EditMedicine();
	editMedicine.setName(name);
	editMedicine.setType(type);
	editMedicine.setUnit_value(add_unit);
	editMedicine.setPrice(add_price);
	editMedicine.setUnit(radio_tag);
	editMedicine.setExpiry(add_expiry);
	editMedicine.setIn_stock(add_instock);
	
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
		String updateQuery = "update add_medicine set name= ?, type= ?, unit_value= ?, price= ?, unit= ?, expiry= ?, in_stock= ? where name= ?";
		statement = connection.prepareStatement(updateQuery);
		
		
 		statement.setString(1, editMedicine.getName());
		statement.setString(2, editMedicine.getType());
		statement.setString(3, editMedicine.getUnit_value());
		statement.setString(4, editMedicine.getPrice());
		statement.setString(5, editMedicine.getUnit());
		statement.setString(6, editMedicine.getExpiry());
		statement.setString(7, editMedicine.getIn_stock()); 
		statement.setString(8, editMedicine.getName());
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