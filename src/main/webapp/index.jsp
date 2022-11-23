<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<h1>Login</h1>
	<form action="AuthServlet" method="POST">
	  <label for="fname">First name:</label><br>
	  <input type="email" id="fname" name="email" value="John"><br>
	  <label for="lname">Last name:</label><br>
	  <input type="password" id="lname" name="password" value="Doe"><br><br>
	  <input type="submit" value="Entrar">
	</form>
	${mensaje}


