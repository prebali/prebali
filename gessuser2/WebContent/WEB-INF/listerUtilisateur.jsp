<%@page import="beans.Utilisateur"%>       
<%@page import="java.util.ArrayList"%>
<%@ include file="inc/header.jsp" %> 			
	<main>
	<h1>Liste des Utilisateurs</h1>
	<c:choose>
		<c:when test="${empty utilisateurs }">
			<p>La liste des utilisateurs est vide!</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellspacing="0" cellpadding="10">
				<tr>
					<th>ID</th>
					<th>Nom</th>
					<th>Prenom</th>
					<th>Login</th>
					<th>Password</th>
					<th colspan="2">Actions</th> 
				</tr>
				<c:forEach var="utilisateur" items="${utilisateurs }"> 
					<tr>
						<td><c:out value="${utilisateur.id}"/>
						<td><c:out value="${utilisateur.nom}"/>
						<td><c:out value="${utilisateur.prenom}"/>
						<td><c:out value="${utilisateur.login}"/>
						<td><c:out value="${utilisateur.password}"/>
						<td><a href="update?id=${utilisateur.id }">Modifier</a> </td>
						<td><a href="delete?id=${utilisateur.id }" onclick="return confirmerSuppression()">Supprimer</a> </td>	
					</tr>
				</c:forEach>	
			</table>
		</c:otherwise>
	</c:choose>
	</main>
	
<%@include file="inc/footer.jsp" %>