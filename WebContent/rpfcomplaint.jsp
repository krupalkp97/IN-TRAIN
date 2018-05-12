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
    RPF Complaint Can Register Through Here
  </div>
  <div id="main">
    <div align="center">
    	<form action="LodgeComplaint" method="post">
    	<table>
    		<tr>
    			<td>
    				Name :
    			</td>
    			<td>
    				<input type="text" name="name" />
    			</td>
    		</tr>
    		<tr>
    			<td>
    				PNR :
    			</td>
    			<td>
    				<input type="text" name="pnr" />
    			</td>
    		</tr>
    		<tr>
    			<td>
    				Contact Number :
    			</td>
    			<td>
    				<input type="text" name="cellno" />
    			</td>
    		</tr>
    		<tr>
    			<td>
    				Subject :
    			</td>
    			<td>
    				<input type="text" name="subject" />
    			</td>
    		</tr>
    		<tr>
    			<td>
    				Complaint :
    			</td>
    			<td>
    				<textarea rows="10" cols="22" name="complaint"></textarea>
    			</td>
    		</tr>
    		<tr align="center">
    			<td colspan="2">
					<input type="submit" value="Complaint" style="border: 0; background-color:black; color:white; margin-top:5px; width: 100px; height: 30px;">
    			</td>
    		</tr>
    	</table>
    	</form>
    </div>
  </div>
  <div id="footer"> &copy;2018 IN-TRAIN &nbsp;<span class="separator">|</span>&nbsp; Design by Krupal </div>
</div>
</body>
</html>