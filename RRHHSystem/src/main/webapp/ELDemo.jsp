<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="varPage" value="holaPagina"/>


<h2>Using the employee Java Bean</h2>
Employee ID: ${employee.employeeID} <br/>
Employee Name: ${sessionScope.employee.firstName} ${sessionScope.employee.lastName} <br/>
Hourly Rate: ${employee["hourlyRate"]} <br/>


<h3>Scopes</h3>
Aplication Scope: ${applicationScope.varApplication} <br/>
Request Scope: ${requestScope.varRequest} <br/>
Page Scope: ${pageScope.varPage} <br/>

<table>
	<tr>
		<td>Lima</td>
		<td>${taxRates.Lima}</td>
	</tr>
	<tr>
		<td>Cusco</td>
		<td>${taxRates.Cusco}</td>
	</tr>
	<tr>
		<td>Arequipa</td>
		<td>${taxRates.Arequipa}</td>
	</tr>
</table>

<!--  Some EL operations -->
<h3>Temperature calculation</h3>
<p>
3C = ${(9.0/5.0)*3.0 + 32.0} F
</p>

<h3>An expression language if stament</h3>
10 is an ${10 mod 2 == 0? "even": "odd"} number

<h2>Using the implicit object</h2>
<!--  Some EL implicit object examples -->
<h3>Check to see if the hoursWorked field is empty</h3>
${empty param.hoursWorked}
<h3>Check combined with EL if stament:</h3>
${empty param.hoursWorked ? "Please enter hours worked": "Thanks for entering hours worked"}

<h3>Using param and math operation:</h3>
Employee Compensation: ${employee.hourlyRate * param.hoursWorked}

<h3>Using header to get host information</h3>
${header["host"]}
<hr />






</body>
</html>