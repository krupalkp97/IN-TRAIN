<%@page import="java.sql.ResultSet"%>
<%@page import="jdk.nashorn.internal.ir.BreakableNode"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div id="container">
  <div id="header"> <a href="">IN-TRAIN</a> </div>
  
		  <div class="navbar">
		  <a href="">Home</a>
		  <div class="dropdown">
		    <button class="dropbtn">Services 
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		      <a href="rpfcomplaint.jsp">RPF Complaint</a>
		      <a href="foodorder.jsp">Food Order</a>
		      <a href="cleaner.jsp">Cleaner Request</a>
		    </div>
		  </div>
		  <a href="">Contact Us</a>
		  <a href="">About Us</a> 
		</div>
  <div id="sidebar">
    <h1>Welcome</h1>
  </div>
  <div id="main">
    <div align="center">
    	<form action="" method="post">
	  		Select Product: <input list="products" name="product" id="prodselect">
			  <%
			  	Connection connection=null;
			  	PreparedStatement statement;
			  	try{
				    Class.forName("com.mysql.jdbc.Driver");
				    connection = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/in_train","root","");
				    statement = (PreparedStatement)connection.prepareStatement("select * from "+request.getParameter("typefood").toString());
				    ResultSet rs = (ResultSet)statement.executeQuery();
				    %>
				    
				    <datalist id="products">
				    <%
				    while(rs.next()){
				    		%>
				  				<option value="<%=rs.getString("menu") %>"><%=rs.getString("menu") %></option>			
				    		<%
				    }
			  	}catch(Exception e){
			  		e.printStackTrace();
			  	}
			  %>
			   </datalist>
    	</form>
    </div>
  </div>
  <div id="footer"> &copy;2018 IN-TRAIN &nbsp;<span class="separator">|</span>&nbsp; Design by Krupal </div>
</div>
</body>
</html>