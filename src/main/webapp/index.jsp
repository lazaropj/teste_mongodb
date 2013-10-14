<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Linkout TI</title>
</head>
<body>
	<nav>
		<h4>Escolha o banco NoSQL</h4>
		<ul>
			<li><a href="<c:url value="/principal/index/mongo"/>">Mongo</a></li>
			<li>CouchDB</li>
			<li>Redis</li>
		</ul>
	</nav>
	<article>
		<header>
			<h1>Teste de CRUD com NoSQL</h1>
		</header>
		<h3>Aplica��o para testar v�rios cruds com diferentes bancos.</h3>
	</article>

</body>
</html>