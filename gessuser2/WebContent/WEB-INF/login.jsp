   
<%@include file="inc/header.jsp" %>
<main>
<h1>Authentification d'un utilisateur</h1>

<c:if test="${connexionFailed == true}">
	<p id="error">Login et/ou mot de passe incorrect </p>
</c:if>

	<form method="post" action="">
	<fieldset>
		
			<label for="login" >Login</label> <br>
			<input type="text" name="login" id="login" value="${login}"> <br>
			<label for="password">Password</label> <br>
			<input type="password" name="password" id="password"> <br> <br>
			<input type="submit" value="Connexion">
			 
		</fieldset>
	</form>
</main>

<%@include file="inc/footer.jsp" %>