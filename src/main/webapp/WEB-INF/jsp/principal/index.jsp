<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br" ng-app>
	<jsp:include page="../../../menu.jsp" />
	<script src="${pageContext.request.contextPath}/resources/js/controller/principalController.js"  ></script>
	<body ng-controller="principalController">
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
		
		<table border="1">
			<thead>
				<tr>
					<td>Nome:</td>
					<td>URL:</td>
				</tr>
			</thead>
			<c:forEach items="${listaDeRecados}" var="recado">
				<tr>
					<td>${recado.nome}</td>
					<td>${recado.url}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="#" ng-click="testandoAngular()"> Testando o ANgular </a>
		{{teste}}
	</body>
</html>