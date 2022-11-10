<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="model.Empleado"%> 

<%
	String name="";
	String lastName="";
	double hourlyRate=0;
	Empleado empleado =(Empleado)request.getAttribute("empleado");
	if(empleado!=null){
		name= empleado.getFirstName();
		lastName= empleado.getLastName();
		hourlyRate= empleado.getHourlyRate();	
	}
	
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Formulario empleado</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<style>
	.myFormContainer {
		display: flex;
		flex-direction: column;
		gap: 10px;
	}
	</style>
</head>
<body class="container">
	<% 
		String id = (String)request.getParameter("id"); 
		if(id != null){
			%><h1>Actualizar</h1><%
		} else {
			%><h1>Crear</h1><%
		}
	%>
	
	<form 
		class="myFormContainer" 
		action="ServletEmpleados?opcion=<%=(id!=null?"a":"c") %>&id=<%=id %>" 
		method="post"
	>
		<div>
		  <label for="nombre">Nombres:</label>
		  <input 
		  	class="form-control" 
		  	id="nombre" 
		  	type="text" 
		  	name="firstName"
		  	value="<%=name %>"
		  />
	 	</div>
	  	<div>
		  <label for="nombre">Apellidos</label>
		  <input 
		  	class="form-control" 
		  	id="nombre" 
		  	type="text" 
		  	name="lastName"
		  	value="<%=lastName %>"
		  />
	  	</div>
	  	<div>
		  <label for="nombre">Tarifa por hora:</label>
		  <input 
		  	class="form-control" 
		  	id="nombre" 
		  	type="text" 
		  	name="hourlyRate"
		  	value="<%=hourlyRate %>"
		  />
	 	</div>
	  <button type="submit" class="btn btn-success">Guardar</button>
	</form>
</body>
</html>