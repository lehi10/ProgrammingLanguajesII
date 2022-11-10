<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<%@page import="java.util.ArrayList"%> 
<%@page import="model.Empleado"%> 


     
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista empleados</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<style>
		.rowContainer {
			display: flex;
			flex-direction: row;
			width: 100%;
			justify-content: space-between;
		}
		body {
			padding: 20px;
		}
	</style>
</head>
<body class="container">

	<div class="rowContainer">
		<h1>Lista de Empleados</h1>
		<a href="formularioEmpleado.jsp">
			<button class="btn btn-primary">Agregar</button>
		</a>
	</div>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">LastName</th>
	      <th scope="col">HourlyRate</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  	
	  <tbody>
	    
		<c:forEach items="${arrayListEmpleados}" var="empleado">  
		    <tr>
			  <td>${empleado.getEmployeeID()}</td>
			  <td scope="row">${empleado.getFirstName()}</td>
		      <td>${empleado.getLastName()}</td>
		      <td>${empleado.getHourlyRate()}</td>
		      <td>
		      	<a href="emp?opcion=s&id=${empleado.getEmployeeID()}">
		      		<button class="btn btn-success">Actualizar</button>
		      	</a>
		      	<a href="emp?opcion=e&id=${empleado.getEmployeeID()}">
		      		<button class="btn btn-danger">Eliminar</button>
		      	</a>
		      </td>
		    </tr>
		</c:forEach> 
	
	  </tbody>
	</table>
	
	
	

</body>
</html>