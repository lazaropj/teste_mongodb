<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
		<meta charset="UTF-8">
		<title>Linkout TI</title>
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">

    	<!-- Custom styles for this template -->
    	<link href="/crudNosql//resources/css/starter-template.css" rel="stylesheet">
	</head>

<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">CrudNoSQL</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="<c:url value="/principal/index/mongo"/>">Mongo</a></li>
            <li><a href="#about">CouchDB</a></li>
            <li><a href="#contact">Redis</a></li>
          </ul>
        </div>
      </div>
</div>