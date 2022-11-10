<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    
<!DOCTYPE html>
<html>
<head>
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
	<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="container">
	<h1>JSTL Library</h1> 
	
	<a href="CustomTag.jsp">Custom Tag</a>
	
	<hr/>
	
	<h2>JSTL Core Tags List</h2> 
	<div>
		<h4>c:out</h4>
		<c:out value="${'Hello c:out tag'}"/>  
		<br/>
		
		<h4>c:set</h4>
		<c:set var="Income" scope="session" value="${4000*4}"/>  
		<c:out value="${Income}"/> 
		<br/>
		
		<h4>c:remove</h4>
		<c:set var="income" scope="session" value="${4000*4}"/>  
		<p>Before Remove Value is: <c:out value="${income}"/></p>  
		<c:remove var="income"/>  
		<p>After Remove Value is: <c:out value="${income}"/></p> 
		
		<h4>c:if</h4>
		<c:set var="income" scope="session" value="${4000*4}"/>  
		<c:if test="${income > 8000}">  
		<p>My income is: <c:out value="${income}"/><p>  
		</c:if>  
		
		<h4>c:choose c:when c:otherwise</h4>
		<c:set value="10" var="num"></c:set>  
		<c:choose>  
		<c:when test="${num%2==0}">  
		<c:out value="${num} is even number"></c:out>  
		</c:when>  
		<c:otherwise>  
		<c:out value="${num} is odd number"></c:out>  
		</c:otherwise>  
		</c:choose>  
		
		<h4>c:forEach</h4>
		<c:forEach var="j" begin="1" end="3">  
		   Item <c:out value="${j}"/><br/>  
		</c:forEach>  
		<br/>
		
		<h4>c:forTokens</h4>
		<c:forTokens items="Java-Python-Javascript-PHP-C++" delims="-" var="name">  
		  <c:out value="${name}"/><br/>  
		</c:forTokens> 
		
		<h4>c:url c:param </h4>
		<c:url value="/index.jsp" var="completeURL">  
		 <c:param name="userID" value="123"/>  
		 <c:param name="name" value="Lehi"/>  
		</c:url>  
		${completeURL}   
		
		<c:set var="url" value="1" scope="request"/>  
		<c:if test="${url<1}">  
		   <c:redirect url="http://google.com"/>  
		</c:if>  
		<c:if test="${url>1}">  
		   <c:redirect url="http://localhost"/>  
		</c:if> 
	
		<!--  Formatting  -->
		<hr>
		
		<h3>The fmt:parseNumber tag Example is:</h3>  
	  
		<c:set var="Amount" value="786.970" />  
	  
	    <fmt:parseNumber var="j" type="number" value="${Amount}" />  
	    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
	  
	    <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
	    <p><i>Amount is:</i>  <c:out value="${j}" /></p> 
	    
    </div>
   	<hr/>
   	<h2>JSTL function</h2>
   	<div>
   	<h4>fn:contains</h4>
   	<c:set var="String" value="Welcome to jungle"/>  
  
	<c:if test="${fn:contains(String, 'jungle')}">  
	   <p>Found jungle string<p>  
	</c:if>  
	
	<c:if test="${fn:contains(String, 'WELCOME')}">  
	   <p>Found WELCOME string<p>  
	</c:if>  
	
	<h4>fn:join fn:split</h4>
	<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	  
	<p>String-3 : ${str3}</p>  
	<c:set var="str4" value="${fn:split(str3, ' ')}" />  
	<c:set var="str5" value="${fn:join(str4, '-')}" />  
	  
	<p>String-5 : ${str5}</p>  
	
	<h4>fn:startsWith</h4>
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
	The string starts with "The": ${fn:startsWith(msg, 'The')}  
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  
	<br/>
	
	<h4>fn:toLowerCase  fn:toLowerCase </h4>
	
	<c:set var="string" value="Welcome to JSP Programming"/> 
	${string}<br/>   
	${fn:toLowerCase(string)} <br/>
	${fn:toLowerCase(string)}  	  
	 	  
   	
   	</div>
   	
   	
   	<hr/>
   	<h2>JSTL formatting</h2>
   	<div>
	   	<!--  Formatting Number  -->
	    
	    <c:set var="Amount" value="9850.14115" />  
		<p> Formatted Number-1:  
		<fmt:formatNumber value="${Amount}" type="currency" /></p>  
		<p>Formatted Number-2:  
		<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></p>  
		<p>Formatted Number-3:  
		<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>  
		<p>Formatted Number-4:  
		<fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}" /></p>  
		<p>Formatted Number-5:  
		<fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></p>  
		<p>Formatted Number-6:  
		<fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></p>  
		<br/>  
		
		<h4>fmt:parseDate</h4>
		<c:set var="date" value="12-08-2016" />  
		<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
		<p><c:out value="${parsedDate}" /></p>    
   	</div>

   	<hr/>
   	<h2>JSTL XML</h2>
    <div>
    	<c:set var="vegetable">  
		<vegetables>  
		    <vegetable>  
		      <name>onion</name>  
		      <price>40/kg</price>  
		    </vegetable>  
		 	<vegetable>  
		      <name>Potato</name>  
		      <price>30/kg</price>  
		    </vegetable>  
		 	<vegetable>  
		      <name>Tomato</name>  
		      <price>90/kg</price>  
		    </vegetable>  
		</vegetables>  
		</c:set>  
		<x:parse xml="${vegetable}" var="output"/>  
		<b>Name of the vegetable is</b>:  
		<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
		<b>Price of the Potato is</b>:  
		<x:out select="$output/vegetables/vegetable[2]/price" />  
    </div>
    
    <hr/>
   	<h2>JSTL SQL</h2>
    <div>
     
     <sql:setDataSource 
     	var="db" 
     	driver="com.mysql.cj.jdbc.Driver"  
     	url="jdbc:mysql://localhost:3306/sesion3db"  
     	user="root"  
     	password=""
     />  
  
		<sql:query dataSource="${db}" var="rs">  
		SELECT * from empleados;  
		</sql:query>  
		   
		<table border="2" width="100%">  
		<tr>  
		<th>First Name</th>  
		<th>Last Name</th>  
		<th>HourlyRate</th>  
		</tr>  
		<c:forEach var="table" items="${rs.rows}">  
		<tr>  
		<td><c:out value="${table.firstName}"/></td>  
		<td><c:out value="${table.lastName}"/></td>  
		<td><c:out value="${table.hourlyRate}"/></td>  
		</tr>  
		</c:forEach>  
		</table>  
     </div>
    
    

</body>
</html>