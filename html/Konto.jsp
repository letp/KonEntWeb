<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="html/nav.css">
<style>
ul {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    overflow: hidden;
		    background-color: #333;
		}
		
		li {
		    float: left;
		}
		
		li a, .drop {
		    display: block;
		    color: white;
		    text-align: center;
		    padding: 14px 16px;
		    text-decoration: none;
		}
		
		li a:hover, .kategorie:hover .drop {
		    background-color: grey;
		}
		
		li.kategorie {
	    	display: inline-block;
		}
	
		.dropdown_kategorie {
		    display: none;
		    position: absolute;
		    background-color: #f9f9f9;
		    min-width: 160px;
		    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		    z-index: 1;
		}
		.dropdown_kategorie a {
			color: black;
			padding: 12px 16px;
			text-decoration: none;
		    display: block;
		    text-align: left;
		}
		
		.dropdown_kategorie a:hover {background-colo:#f1f1f1}
	
		.kategorie:hover .dropdown_kategorie {
		    display: block;
		}
		.nav > li.right {
		float: right;
		}
		
		
		
		button {
	    background-color: gray;
	    color: white;
	    width: 300px;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}
	.konto{
	border-style: solid;
	border-width: 2px;
	width: 700px;
	height: 400px;
	margin: 10px auto;
	padding: 16px;
	}
	.bestellung{
	border-style: solid;
	border-width: 2px;
	width: 700px;
	height: 400px;
	margin: 10px auto;
	padding: 16px;
	}

	input[type=text], input[type=password] {
	    padding: 12px;
	    width: 300px;
	    margin: 8px 0;
	    box-sizing: border-box;
	}	
	
	
	

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    border: 3px solid #f1f1f1;
  	padding: 0px 16px 16px;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	padding-left: 50px;
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 350px; /* Could be more or less, depending on screen size */
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

</style>
</head>
<body>
<ul class="nav">   
        <li><a href="outputaccount.jsp"><img src="Buch.png" width="20" height="20"> </a></li>
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
        
        <li class="right"><a href="#" >Logout</a></li>
        <li class="right"><a href="#" >Einkaufswagen</a></li>
        <li class="right"><a href="#">Mein Konto</a></li>
        <li class="right"><a href="Verkaufen.html">Verkaufen</a></li>
        <li class="right"><a href="#">Kaufen</a></li>
	</ul>
	
	<br>
	<div class="konto">
	<h2>Mein Account</h2>
	<br><b>Name: </b>${form.name}
	<br><b>Vorname: </b>${form.vorname}
	<br><b>Adresse: </b>${form.strasse} ${form.hnr} ${form.plz} ${form.stadt}
	<br><b>Email: </b>${form.email}
	<br>
	
	<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Account bearbeiten</button>
	<div id="id01" class="modal">
		<form method="post" class="modal-content animate" action="UpdateServlet">
			<h1>Account bearbeiten</h1>
		    <label>Name <br></label>
		    <input type="text" name="name" id="name" value="${form.name}" required autofocus>
		    <br>
		    <label>Vorname</label> <br>
		    <input type="text" name="vorname" value="${form.vorname}" required>
		    <br>
		    <label>Email</label> <br>
		    <input type="text"  name="email" value="${form.email}" required>
		    <br>
		    <label>Straße </label> <br>
		    <input type="text" name="strasse" value="${form.strasse}" required>
		    <br>
		    <label>Hausnummer</label>
		    <br>
		    <input type="text" name="hausnummer" value="${form.hnr}" required>
		    <br>
		    <label>Stadt </label><br>
		    <input type="text" name="stadt" value="${form.stadt}" required>
		    <br>
		    <label>Postleitzahl </label>
		    <br>
		    <input type="text" name="postleitzahl" value="${form.plz}" required>
			<br>
		    <label>Passwort </label>
		    <br>
		    <input type="password" name="passwort" value="${form.passwort}" onkeyup="check()" required>
			<br>
		    <label>Wiederhole Passwort</label> <br>
		    <input type="password" name="passwort2" value="${form.passwort2}" onkeyup="check()" required>
		    <span id="message"></span>
			<br>
			<br>
		    
		    <button type="submit" id="account">Aktualisieren!</button> 
		    <br>
		</form>
	</div>
	<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Account löschen</button>
	<div id="id02" class="modal">
		
		<form method="post" class="modal-content animate" action="DeleteServlet">
			<a>Account wirklich löschen?</a><br>
			<button type="submit" id="delete" >Ja</button>
			<button  onclick="close()" style="width:auto;">Nein</button>
		</form>
		
	</div>
	
	</div>
	<div class="bestellung">
	<a>Meine Bestellungen</a>
	</div>
	
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function close(){
	modal.style.display = "none";
}

</script>
</body>
</html>
