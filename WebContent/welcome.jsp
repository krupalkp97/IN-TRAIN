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
		<div id="banner" align="center">
		<div class="container">
			<div class="title">
				<h2>PNR STATUS</h2>
				<span class="byline">Check your PNR Status and check your PNR update</span> </div>
			<ul class="actions">
				<li><a href="medicinesearch.jsp" class="button">Search</a></li>
			</ul>
		</div>
	</div>
		<div id="banner" align="center">
		<div class="container">
			<div class="title">
				<h2>RPF Complaint</h2>
				<span class="byline">Fill your Complaint here</span> </div>
			<ul class="actions">
				<li><a href="medicinesearch.jsp" class="button">Fill</a></li>
			</ul>
		</div>
		</div>
			<div id="banner" align="center">
		<div class="container">
			<div class="title">
				<h2>Food Service</h2>
				<span class="byline">Order your food at your seat</span> </div>
			<ul class="actions">
				<li><a href="medicinesearch.jsp" class="button">ORDER</a></li>
			</ul>
		</div>
		</div>
			<div id="banner" align="center">
			<div class="container">
			<div class="title">
				<h2>Cleaning Service</h2>
				<span class="byline">Request for cleaning</span> </div>
			<ul class="actions">
				<li><a href="medicinesearch.jsp" class="button">Request</a></li>
			</ul>
		</div>
		</div>
</body>
</html>