<!-- Gülsen -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<title>Neuse Buch verkaufen</title>
	<link rel="stylesheet" type="text/css" href="nav.css"> 
</head>
<style>

	label{
	
		min-width:6em;
		display: inline-block;
		text-align: left;
	}

	input {
		width: 20 em;
		
		}
		
	textarea {
		widht: 20em;
		border: 1px solid black;
		}

	input[type="checkbox"], button[type="submit"]{
		margin-left: 8em;
	}
	
	
	label {
		vertical-align: top;
	}
	
	input[type="checkbox"], button[type="submit"]{
		
		margin-left: 8em;
	
	
	}
	
	
	button {
	
		width: 10em;
	
	}
	
	
	/* Formular optisch stylen. Vorgehen von innen nach außen*/
	
	fieldset {
		widh: 30em;
		padding-top: 1.5em;
		padding-left: 1.5em;
		background: #e6eeff;
		border: 1px solid #000330;
		border-radius: 5px;
		}
	
	legend {
	
		background:white;
		padding: 0.2em;
		border: 1px solid #000330;
		border-radius: 5px;
	
	
	}
	
	
	button:hover {
	background: #c9c9c9;
	border: 2px solid #6c6c6c;
	}
	
	button:active {
		background: #8f8f8f;
	
	}
	
/*Damit Felder nicht zu dicht folgen*/
	form div {
		padding: 0.2em;
	}
	
	
</style>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
	

<form id = "myForm" method = "post" action="../../VerkaufenServlet">
	
		<fieldset><legend> Buch hochladen</legend>
		
		<label for = "isdn"> ISBN:</label>
		<input type="text" name="isbn" id="isbn" placeholder="ISDN-Nummer eingeben" required><br>
		
		<label for = "buch_name"> Titel</label>
		<input type="text" name="titel" id="titel" placeholder=" Name des Buches " required><br>
		
		<label for = "autor"> Autor:</label>
		<input type="text" name="autor" id="autor" placeholder="Name des Autors" required><br>
		
		<label for="kategorie">Kategorie: </label>
	    <input id="kategorie" name="kategorie" required><br>
		
		<label for="zustand">Zustand: </label>
	    <select id="zustand" name="zustand">
	        <option value="gut">Gut</option>
	        <option value="mas">Mäßig</option>
	        <option value="schlecht">Schlecht</option>
	    </select><br>
	    
	    <label for="preis">Preis: </label>
	    <input id="preis" name="preis" required>
		<br>
		
		<label class= "textarea" for = "beschreibung"> Kurzbeschreibung:</label>
		<textarea name="beschreibung" id="beschreibung" placeholder="Hier Kurzbeschreibung des Buches" rows="8" required></textarea><br>
		
		<button name="hochladen" type="submit">Hochladen</button>
		
		</fieldset>
	
	
	</form>
</body>
</html>
