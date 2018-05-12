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
          <li><a href="login.jsp">LOGIN</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </div>
    </div>
	<div>
	</div>
	</div>
	<div>
	
		<form action="Signup" method="post" name="form1" onsubmit="return validation()">
	<table align="center">
		<tr>
			<td colspan="2" align="center"><h1>Signup</h1></td>
		</tr>
		<tr>
			<td> Fast Name:</td>
			<td><input type="text" name="fname"></td>
		</tr>
		<tr>
			<td> Last Name:</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td> username:</td>
			<td><input type="text" name="uname"></td>
		</tr>
		<tr>
			<td> password:</td>
			<td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td> re-type password:</td>
			<td><input type="password" name="repass"></td>
		</tr>
		<tr>
			<td> mobile No.</td>
			<td><input type="text" name="mobile"></td>
		</tr>
		<tr>
			<td> Email :</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr></tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="submit">
			</td>
		</tr>
	</table>
	</form>
	</div>
</body>
</html>