<!-- Peter -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kategorien</title>
<link rel="stylesheet" type="text/css" href="nav.css"> 
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navigation.jsp"></jsp:include>

<h2>Alle Bücher der Kategorie</h2><hr/>

	<c:forEach items="${kategorienex}" var="k">
		<br>
		<img src="Buch.png" width="75" height="75" alt="${k}">
	   	<a>${k.titel}</a>
	   	<a>ISBN: ${k.isbn}</a>
		<br>
		<br>
		<form method="post" action="../../BuchServlet?param1=${k}">
		    <button type="submit" id="zahlen" type="button">Kaufen!</button> 
		    <br>
		</form>
		<hr/>
	</c:forEach>

</body>
	<footer>
	<br>
	Student Book Store 2017
	<br>
	<a href="#">Buch verkaufen</a>
	<br>
	<a href="#">Buch kaufen</a>
	<br>
	<a href="Login.html">Login</a>
	<br>
	<a href="#">Registrieren</a>
	<br>
	</footer>
</html>
