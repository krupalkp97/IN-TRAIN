<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		 <title>IN TRAIN</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" title="style" />
  <script type="text/javascript">
	function check() {
		<%
			try{  
				if(session==null||session.getAttribute("uname")==null||session.getAttribute("uname")==""){
					response.sendRedirect("login.jsp");
				}
			}catch(Exception e){
				response.sendRedirect("login.jsp");					
			}
		%>
	}
</script>
</head>
<body>
	<div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">IN<span class="logo_colour">TRAIN</span></a></h1>
          <h2>have a safe jureny</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="examples.html">About Us</a></li>
          <li><a href="contact.html">Contact Us</a></li>
          <li><a href="#" >Welcome <%=session.getAttribute("uname")%></a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
	<div>
	</div>
	</div>
		<div class="title">
		<form action="medicineresult.jsp">
					<div id="showdiv" align="center" style="height:800px">
				Select Medicine: <input list="medicines" name="medicine" id="prodselect">
			  <%
			  	Connection connection=null;
			  	PreparedStatement statement;
			  	try{
				    Class.forName("com.mysql.jdbc.Driver");
				    connection = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/collageproject","root","");
				    statement = (PreparedStatement)connection.prepareStatement("select * from medicine_tb");
				    ResultSet rs = (ResultSet)statement.executeQuery();
				    %>
				    
				    <datalist id="medicines">
				    <%
				    while(rs.next()){
				    	System.out.println(rs.getString(2));
				    		%>
				  				<option value="<%=rs.getString("medicine_name") %>"><%=rs.getString("medicine_name") %></option>			
				    		<%
				    }
			  	}catch(Exception e){
			  		e.printStackTrace();
			  	}
			  %>
			   </datalist>
			   <span><p></p></span>
			   <input type="submit" value="Submit"/>
			</div>
	
</body>
</html>