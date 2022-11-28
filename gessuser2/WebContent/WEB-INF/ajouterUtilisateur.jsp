   
<%@include file="inc/header.jsp" %>
<main>
<h1>Ajouter Utilisateur</h1>

<p>${statusMessage}</p>
	<form method="post" >
	<fieldset>
		
			<label for="nom">Nom</label><br>
			<input type="text" name="nom" id="nom"> <br>
			<p >${erreurs.nom}</p>
			<label for="prenom">Prenom</label><br>
			<input type="text" name="prenom" id="prenom"> <br>
			<p >${erreurs.prenom}</p>
			<label for="login">Login</label><br>
			<input type="text" name="login" id="login"> <br>
			<p >${erreurs.login}</p>
			<label for="password">Password</label> <br>
			<input type="password" name="password" id="password"> <br>
			<p >${erreurs.password}</p>
			<label for="passwordBis">Password (Confirmation)</label> <br>
			<input type="password" name="passwordBis" id="passwordBis"> <br>
			<p >${erreurs.passwordBis}<p> <br>
			<input type="submit" value="Ajouter"> 
		</fieldset>
	</form>
</main>

	
