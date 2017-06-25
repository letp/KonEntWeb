<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Suchergebnisse</title>
<link rel="stylesheet" type="text/css" href="nav.css"> 
</head>
<body>
<nav>	
	 <ul class="nav">   
        <li><a href="Startseite.html"><img src="Buch.png" width="20" height="20" alt="Logo"> </a></li>
		<li class=kategorie>
			<a href="#" class="drop">Kategorien</a> 
			<div class=dropdown_kategorie>
				<a href="#">Archäologie</a>
				<a href="#">Bauingeniieur</a>
				<a href="#">Chemie</a>
				<a href="#">Deutsch</a>
				<a href="#">Englisch</a>
			</div>
		</li>
        
        <li><label for="suche">
          	<input id="suche" name="suche" placeholder="Titel oder ISBN">
        </label></li>
   		<li><form method="post" action="../../SucheServlet"><button class="suche" type="button" type="submit">Suchen</button></form></li>
        <li class="right"><a href="#" >Einkaufswagen</a></li>
        <li class="right"><a id="konto" href="Login.html">Login</a></li>
        <li class="right"><a href="Verkaufen.html">Verkaufen</a></li>
        <li class="right"><a href="#">Kaufen</a></li>
	</ul>
</nav>


<%
int a = (Integer)session.getAttribute("i")+1;
for(int i=0;i<a;i++){
%>
	   	<form class="" action="../../BuchServlet">
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1">
   			<figcaption>${exemplare.get(i).titel}</figcaption>
   			<button type="submit" id="kauf" type="button">Kaufen!</button> 
   		</figure>
   		</form>
   		<br>
<%  
}
%>

</body>
</html>
