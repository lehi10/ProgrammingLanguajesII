<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	            
	<sql:setDataSource 
		var="con" 
		driver="com.mysql.cj.jdbc.Driver"  
	    url="jdbc:mysql://localhost:3306/sesion3db"  
	    user="root"  
	    password=""
	/>

	<sql:query dataSource="${con}" var="results">  
		SELECT * from empleados;  
	</sql:query>

	<table border="2" width="100%">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Hourly Rate</th>
		</tr>
		<c:forEach var="empleado" items="${results.rows}">
			<tr>
				<td><c:out value="${empleado.employeeID}" /></td>
				<td><c:out value="${empleado.firstName}" /></td>
				<td><c:out value="${empleado.lastName}" /></td>
				<td><c:out value="${empleado.hourlyRate}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>