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
	<div id="page" class="container">
		<center>
			<form action="logincheck" method="post">
			<% 
				//HttpSession session2=request.getSession();
				try
				{
				if(session.getAttribute("loginerror").equals("please enter valid username and password"))
				{
					%>
						<p style="color:red"><%=session.getAttribute("loginerror") %></p>
					<% 
				}
				}
				catch(Exception e)
				{
				
				}
			%>
	<table align="center">
	<tr>
	<td>UserName:</td>
	<td><input type="text" name="uname"></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type="password" name="pass"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Login"></td>
	</tr>
	<tr>
		<td><a href="Signup.jsp" >Signup?</a></td>
		<td><a href="#">change password?</a></td>
	</tr>
	</table>
	</form>	
		</center>
	</div>
	</body>
</html>