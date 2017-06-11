<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="nav.css">
</head>
<body>
<ul>   
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
          	<input id="suche" name="suche" size="40">
        </label></li>
   
		<li><a href="#">Kaufen</a></li>
		<li><a href="Verkaufen.html">Verkaufen</a></li>
	    <li><a href="Login.html">Login</a></li>
        <li><a href="#" >Einkaufswagen</a></li>
	</ul>
	
	<h2>Mein Konto</h2>
	<br><b>Wilkommen </b>${name}
	
</body>
</html>
