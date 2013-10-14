<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Linkout</title>
</head>
<body>

	<fieldset>
		<legend>Deixe seu recado</legend>
		<form action="<c:url value="/principal/salvar"/>" method="post">
			<label for="nome">Nome:</label>
				<input id="nome" name="mural.nome" type="text"><br>
			<label for="url">URL:</label>
				<input id="url" name="mural.url" type="text"><br>
			<label for="dtNascimento">Dt Nasc:</label>
				<input id="dtNascimento" name="mural.dtNascimento" type="date"><br>
			<input type="submit" value="Enviar"> <input type="reset" value="Limpar">		
		</form>
	</fieldset>
	

</body>
</html>