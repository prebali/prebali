<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>GESTION  DES UTILISATEURS</title>
	<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
	<script src="<c:url value='/js/script.js'/>"></script>
</head>
<body>
	<header>
		<nav>
			<ul>
			 <c:choose> 
			 	<c:when test="${ sessionScope.isConnected }">
			 		
				<li><a href="<c:url value='/list'/>">Lister</a></li>
				<li><a href="<c:url value='/Ajouter'/>">Ajouter</a></li>
				<li><a href="<c:url value='/logout'/>">Deconnexion</a></li>
			
			 	</c:when>
			 	<c:otherwise>
			 	<li><a href="<c:url value='/login'/>">Connexion</a></li>
			 	</c:otherwise>
			 </c:choose> 
				</ul>
		</nav>
	</header>