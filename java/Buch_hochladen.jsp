


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html> 
<html>
<head>
<title>Insert title here</title>
    
 <link rel="stylesheet" type="text/css" href="Buch_hochladen.css">
</head>



<body>




	<form method="post" action="/servlets/suchServlet">
	
	
	
		<fieldset><legend> Buch_hochladen</legend>
		
		<div>
		
		<label for = "kategorie"> Kategorie:</label>
		<select multiple name="kategorie" id="kategorie" size="3">
			<option value="geschichtswissenschaften" selected > Geschichtswissenschaften</option>
			<option value="informatik und Programmieren"> Informatik und Programmieren</option>
			<option value="sprach-und Literaturwissenschaften"> Sprach- und Literaturwissenschaften</option>
		
		</select>
		
		</div>
		
		
		<div>
		<label for = "bild">Bild:</label>
		<input type="file" name="bild" id="bild">
		</div>
		
	
		<div>
			<label for = "isdn"> ISDN:</label>
		<input type="text" name="isdn" id="isdn" placeholder="ISDN-Nummer eingeben" required>
		</div>
		
		
		<div>
		
		<label for = "buch_name"> Titel: </label>
		<input type="text" name="buch_name" id="buch_name" placeholder=" Name des Buches " required>
		
		</div>
		
		
		
		
		<div>
			<label for = "autor"> Autor:</label>
		<input type="text" name="autor" id="autor" placeholder="Name des Autors" required>
		<label for="autor"></label>
		</div>
		
		
		<div class = "form_radio">
			<label> Zustand:</label>
			<input type="radio" name="zustand" id = "neu" value="neu" required>
			<label for="neu"> Neu</label>
			<input type="radio" name="zustand" id = "gebraucht" value="gebraucht" required>
			<label for="gebraucht"> Gebraucht</label>
		</div>
		
		<div>
		<label class= "textarea" for = "beschreibung"> Kurzbeschreibung:</label>
		<textarea name="beschreibung" id="beschreibung" placeholder="Hier Kurzbeschreibung des Buches" rows="8" required></textarea>
		<label for="beschreibung"></label>
		</div>
		
		<div>
		<button type="submit" >Hochladen</button>
		</div>
		
	
		</fieldset>
	
	
	</form>

</body>
</html>
