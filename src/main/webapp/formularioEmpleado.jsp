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


    
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Formulario empleado</title>
	<t:head />
  
	<style>
	.myFormContainer {
		display: flex;
		flex-direction: column;
		gap: 10px;
	}
	</style>
</head>
<body>
	<t:header />
	
	<div class="container">
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
	</div>
	${mensaje}
	<t:footer />
</body>
</html>