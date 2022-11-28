<%@page import="beans.Utilisateur"%>
<%@ include file="inc/header.jsp" %> 

<main>
<h1>Modification d'un Utilisateur</h1>
<form method="post" action="">
	<fieldset>
	<legend>Modifier un Utilisateur</legend>
		
			<label for="nom">Nom</label><br>
			<input type="text" name="nom" id="nom" value="${utilisateur.nom }"> <br>
			<label for="prenom" >Prenom</label><br>
			<input type="text" name="prenom" id="prenom" value="${utilisateur.prenom }"> <br>
			<label for="login">Login</label><br>
			<input type="text" name="login" id="login" value="${utilisateur.login }"> <br>
			<label for="password">Password</label> <br>
			<input type="password" name="password" id="password" value="${utilisateur.password }%>"> <br> <br>
			<input type="submit" value="Modifier"> 
		</fieldset>
	</form>

