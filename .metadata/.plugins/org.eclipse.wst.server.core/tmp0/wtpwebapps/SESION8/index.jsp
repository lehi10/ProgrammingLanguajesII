<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Registro de empleado</h1> 
	
		<form action="EmployeeServlet" method="POST">
			<div class="form-group">
				<label>Nombre:</label>
				<input name="firstName"/>
			</div>
			<div class="form-group">
				<label>Apellidos</label>
				<input name="lastName"/>
			</div>
			<div class="form-group">
				<label>Tarifa por hora</label>
				<input name="hourlyRate"/>
			</div>
			<div class="form-group">
				<label>Horas trabajadas</label>
				<input name="hoursWorked"/>
			</div>
			<button type="submit">Enviar</button>
		</form>
	</div>
</body>
</html>