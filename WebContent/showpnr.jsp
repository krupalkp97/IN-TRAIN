<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		      <a href="#">RPF Complaint</a>
		      <a href="#">Food Order</a>
		      <a href="#">Cleaner Request</a>
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
    	<table>
    		<tr>
    			<td>
    				PNR Number : 
    			</td>
    			<td>
    				<%=session.getAttribute("pnr") %>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				Seat Number : 
    			</td>
    			<td>
    				<%=session.getAttribute("seat_no") %>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				Status :
    			</td>
    			<td>
    				<%=session.getAttribute("status") %>
    			</td>
    		</tr>
    	</table>
    </div>
  </div>
  <div id="footer"> &copy;2018 IN-TRAIN &nbsp;<span class="separator">|</span>&nbsp; Design by Krupal </div>
</div>
</body>
</html>