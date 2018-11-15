<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="util"%>
 

<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous">

  <link rel="stylesheet" href="<c:url value='/css/loginStyle.css' />">

  <title>Widec</title>
</head>

<body>
	<p>Registrarse</p>
	<form:form id = "registerForm" method="POST" modelAttribute="user">
		<div class="form-group">
		 	<form:input type="hidden" path="id" id="id"/>
		 	<div class="form-group">
		 		<form:input path="name" class="form-control" id="name" placeholder="Nombre"/>
			</div>
			<div class="form-group">
		 		<form:input path="photo" class="form-control" id="photo" placeholder="Foto"/>
			</div>
			<div class="form-group">
		 		<form:input type="email" path="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Email"/>
			</div>
			<div class="form-group">
		 		<form:input type="password" path="password" class="form-control" id="password" placeholder="Contraseña"/>
			</div>
			<button type="submit" class="btn btn-primary" name = "register">Registrarse</button>
		</div>
	</form:form>
    	
 <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
</body>

</html>