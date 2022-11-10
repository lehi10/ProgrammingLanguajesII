<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<c:set var="Amount" value="786.970" />  
<fmt:parseNumber var="j" type="number" value="${Amount}" />  
<p><i>Amount is:</i>  <c:out value="${j}" /></p>  

<fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
<p><i>Amount is:</i>  <c:out value="${j}" /></p>  


    <c:set var="str" value="<%=new java.util.Date()%>" />  
    <table border="2" width="100%">  
      <tr>  
        <td width="100%" colspan="2" bgcolor="#FF7F50">  
          <p align="center">  
            <b>  
              <font color="#000000" size="6">Formatting:  
              <fmt:formatDate value="${str}" type="both"  
              timeStyle="long" dateStyle="long" />  
              </font>  
            </b>  
          </p>  
        </td>  
      </tr>  
   <!-- 
      <c:forEach var="zone"  
      items="<%=java.util.TimeZone.getAvailableIDs()%>">  
        <tr>  
          <td width="50%"  bgcolor="#C0C0C0">  
            <c:out value="${zone}" />  
          </td>  
          <td width="50%" bgcolor="#FFEBCD">  
            <fmt:timeZone value="${zone}">  
              <fmt:formatDate value="${str}" timeZone="${zn}"  
              type="both"/>  
            </fmt:timeZone>  
          </td>  
        </tr>  
      </c:forEach>  
    </table>

 -->


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
	<x:parse xml="${vegetable}" var="output" />
	<b>Name of the vegetable is</b>:
	<x:out select="$output/vegetables/vegetable[1]/name" />
	<br>
	<b>Price of the Potato is</b>:
	<x:out select="$output/vegetables/vegetable[2]/price" />


</body>
</html>