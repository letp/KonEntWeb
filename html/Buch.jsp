<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
 <ul>   
        <li><a href="Startseite.html"><img src="Buch.png" width="20" height="20" > </a></li>
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
        	Beschreibung: ${buchwahl.beschreibung} <br>
            ISBN: ${buchwahl.isbn} <br>
            Zustand: ${buchwahl.zustand}<br>
            Preis: ${buchwahl.preis}<br>
        </p>

        
    </div>
    
    <div>
    <h3>Exemplare</h3>
    <%
	int a = (Integer)session.getAttribute("exemplarZahl")+1;
	for(int i=0;i<a;i++){
	%>
	<a href="#">${exemplare.get(i).titel}</a><br>
	<%  
	}
	%>
    
    </div>

<form method="post" action="KaufServlet">
    <button type="submit" id="account" type="button">Jetzt kaufen!</button> 
    <br>
</form>

    <div class="anderekunden">
        <h3>
        	Auch interessant
        </h3>
        <hr/>
        <figure class=BeliebteArtikel>
   		<figure class="bild" >
   			<a href="Buch.html"><img src="Buch.png" width="200" height="200" alt="Buch1"></a>
   			<figcaption>Buch 1</figcaption>
   		</figure>
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1">
   			<figcaption>Buch 2</figcaption>
   		</figure>
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1">
   			<figcaption>Buch 3</figcaption>
   		</figure>
   		<figure class="bild">
   			<img src="Buch.png" width="200" height="200" alt="Buch1">
   			<figcaption>Buch 4</figcaption>
   		</figure>
	</figure>
        
    </div>
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
