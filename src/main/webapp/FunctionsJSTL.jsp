<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Functions</title>
</head>
<body>

	<c:set var="myString" value="Welcome to JSTL" />

	<c:if test="${fn:contains(myString, 'JSTL')}">
		<p>
			Found JSTL string
		</p>
	</c:if>

	<c:if test="${fn:contains(myString, 'jstl')}">
		<p>
			Found jstl string
		</p>
	</c:if>
	
	<c:set var="string1" value="It is first String."/>  
	<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
	  
	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>  
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>  
	  
	 <c:set var="str1" value="Welcome-to-JSP-Programming."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	  
	<p>String-3 : ${str3}</p>  
	<c:set var="str4" value="${fn:split(str3, ' ')}" />  
	<c:set var="str5" value="${fn:join(str4, '-')}" />  
	  
	<p>String-5 : ${str5}</p>  
	
	<hr />
	
	<c:set var="myCamellCaseString" value="Welcome To Jsp Programming"/>  
	${fn:toLowerCase(myCamellCaseString)}  
	${fn:toUpperCase(myCamellCaseString)}  
	
	<hr />
	<c:set var="str1" value="This is first string"/>  
	<c:set var="str2" value="Hello"/>  
	Length of the String-1 is: ${fn:length(str1)}<br>  
	Length of the String-2 is: ${fn:length(str2)}  
	
	<hr />
	
	<c:set var="author" value="Ramesh Kumar"/>  
	<c:set var="randomString" value="pqr xyz abc PQR"/>  
	${fn:replace(author, "Ramesh", "Suresh")}  <br/>
	${fn:replace(randomString, "pqr", "hello")}  
	


</body>
</html>