<!-- Peter -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Buch</title>
	<link rel="stylesheet" type="text/css" href="nav.css"> 
	<style>
			figure{
			  margin: 0;
			}
			
			figure.bild{
			  display: inline-block;
			  padding: 10px;
			  width: 250px;
			  hight: 250px;
			  border: 1px solid gainsboro;
			}
	
	</style>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navigation.jsp"></jsp:include>

	<h2>
        	${buchwahl.titel}
	</h2>

	<div class="produktbilder" >
    	<img src="Buch.png" style="width:200px;height:200px" >
     	<hr/>
    </div>
    
    <div class="produktbeschreibung">
		<h4>
        	${buchwahl.titel}
        </h4>
            	
        <p>
        	Autor: ${buchwahl.autor}<br>
        	Beschreibung: ${buchwahl.beschreibung} <br>
            ISBN: ${buchwahl.isbn} <br>
            Kategorie: ${buchwahl.kategorie}<br>
        </p>

        
    </div>
    
    <div>
    <h3>Exemplare</h3>
    <%
    if ((Integer)session.getAttribute("exemplarZahl")!= -1){

	%>
	<form method="post" action="../../KaufServlet">
	<select id="ex" name="ex">
	<c:forEach items="${exemplare}" var="e">
	<option >${e.id} | ${e.titel} | Zustand: ${e.zustand} | Preis: ${e.preis}</option>
	</c:forEach>
	</select>
    <button type="submit" id="account" type="button">Exemplar kaufen!</button> 
    <br>
	</form>
	<%  
    }else{
    %>
    <a>Leider sind im Moment keine Exemplare vorhanden!</a>
    <%
    }
	%>
    
    </div>
<hr>
<h2 class=beliebteArtikel role="heading">
    <span>Beliebteste Artikel</span>
   		</h2>
   		
   		<figure>
   		
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1"><br>
   			<a href="../../BuchServlet?param1=${beliebt.get(0).isbn}" >${beliebt.get(0).titel}</a> 
   		</figure>
   		
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1"><br>
   			<a href="../../BuchServlet?param1=${beliebt.get(1).isbn}" >${beliebt.get(1).titel}</a> 
   		</figure>
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1"><br>
   			<a href="../../BuchServlet?param1=${beliebt.get(2).isbn}" >${beliebt.get(2).titel}</a> 
   		</figure>
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1"><br>
   			<a href="../../BuchServlet?param1=${beliebt.get(3).isbn}" >${beliebt.get(3).titel}</a> 
   		</figure>
	</figure>
	
	<br>
    <hr />
    
    <br>

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
</body>
</html>
