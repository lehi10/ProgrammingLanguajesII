<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="WEB-INF/libreria.tld" prefix="poke" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>
		<poke:pokemonTag pokemonNumber="${param.pokeId}" />
	</h2>
	
</body>
</html>