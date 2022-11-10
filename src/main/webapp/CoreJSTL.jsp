<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:out value="${'Welcome to JSTL'}"/>  
	<br />
	<c:set var="Income" scope="session" value="${4000*4}"/>  
	<c:out value="${Income}"/>  
	<br />

	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Before Remove Value is: <c:out value="${income}"/></p>  
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p>  

	<br />
	<c:catch var ="catchtheException">  
	   <% int x = 2/0;%>  
	</c:catch>  
	  
	<c:if test = "${catchtheException != null}">  
	   <p>The type of exception is : ${catchtheException} <br />  
	   There is an exception: ${catchtheException.message}</p>  
	</c:if> 



	<c:set var="income" scope="session" value="${4000*4}"/>  
	<c:if test="${income < 8000}">  
	   <p>My income is: <c:out value="${income}"/><p>  
	</c:if>  
	
	
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Your income is : <c:out value="${income}"/></p>  
	<c:choose>  
	    <c:when test="${income <= 1000}">  
	       Income is not good.  
	    </c:when>  
	    <c:when test="${income > 10000}">
	        Income is very good.  
	    </c:when>  
	    <c:otherwise>  
	       Income is undetermined...  
	    </c:otherwise>  
	</c:choose>  
	
	<hr />
	<c:forEach var="i" begin="1" end="3">  
	   Item : <c:out value="${i}"/><p>  
	</c:forEach>
	
	<hr />
	
	
	<c:forTokens items="Angelo+Camila+Andres" delims="+" var="student">  
	   <c:out value="${student}"/><p>  
	</c:forTokens>  
	
	<hr />
	
	<c:url value="/index1.jsp" var="myUrl">  
	 	<c:param name="trackingId" value="786"/>  
	 	<c:param name="user" value="Nakul"/>  
	</c:url>  
	${myUrl}  
	
	  
	<c:set var="url" value="1" scope="request"/>  
	<c:if test="${url<1}">  
		<c:redirect url="http://google.com"/>  
	</c:if>
	<c:if test="${url>1}">
		<c:redirect url="https://cibertec.edu.pe" />
	</c:if>
	
	<hr />
	<h2>Functions</h2>
	


</body>
</html>



