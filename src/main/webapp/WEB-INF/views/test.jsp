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
  <!-- <link rel="stylesheet" href="/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous"> -->
  <link rel="stylesheet", href="<c:url value='/css/bootstrap.min.css' />">

  <link rel="stylesheet" href="<c:url value='/css/loginStyle.css' />">

  <title>Widec</title>
</head>

<body>

  <div class="container h-100">

    <div class="row h-100 justify-content-center align-items-center">
      <img src="<c:url value='/css/images/IntroWIDEC.png' />" alt="">
      <div class="col-md-6">
        
        <form:form id = "registerForm" method="POST" modelAttribute="userPreferences">
	        <div class="form-group">
		        <div class="form-group" id="format">
		        	<label>
		        		<!-- Relato -->
			        	<form:radiobutton path="format" value="Relato"/>
		        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
		        	</label>
		        	<label>
		        		<!-- Novela -->
			        	<form:radiobutton path="format" value="Novela"/>
		        	</label>
		        	<label>
		        		<!-- Mundo -->
			        	<form:radiobutton path="format" value="Mundo"/>
		        	</label>
		        	<label>
		        		<!-- Juego -->
			        	<form:radiobutton path="format" value="Juego"/>
		        	</label>
		        </div>
		        
		        <div class="form-group" id="mood">
		        	<label>
		        		<!-- Ficcion -->
			        	<form:radiobutton path="mood" value="Ficcion"/>
		        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
		        	</label>
		        	<label>
		        		<!-- Realismo -->
			        	<form:radiobutton path="mood" value="Realismo"/>
		        	</label>
		        </div>
		        
		        <div class="form-group" id="audience">
		        	<label>
		        		<!-- Infantil -->
			        	<form:radiobutton path="audience" value="Infantil"/>
		        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
		        	</label>
		        	<label>
		        		<!-- Juvenil -->
			        	<form:radiobutton path="audience" value="Juvenil"/>
		        	</label>
		        	<label>
		        		<!-- Adulto -->
			        	<form:radiobutton path="audience" value="Adulto"/>
		        	</label>
		        </div>
		        
		        <div class="form-group" id="genre">
		        	<label>
		        		<!-- Fantasia -->
			        	<form:radiobutton path="genre" value="Fantasia"/>
		        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
		        	</label>
		        	<label>
		        		<!-- Ci-Fi -->
			        	<form:radiobutton path="genre" value="Ci-Fi"/>
		        	</label>
		        	<label>
		        		<!-- Romance -->
			        	<form:radiobutton path="genre" value="Romance"/>
		        	</label>
		        	<label>
		        		<!-- Misterio -->
			        	<form:radiobutton path="genre" value="Misterio"/>
		        	</label>
		        </div>
			    <button type="submit" class="btn btn-primary" name = "test" value="/test">Login</button>
			    <a href="register.html" class="btn btn-primary">Register</a>
	        </div>
    	</form:form>
    	
    	<!-- <form:form id = "registerForm" method="POST" modelAttribute="userPreferences">
	        <div class="form-group">
		        <form:input type="hidden" path="id" id="id"/>
		        <div class="form-group">
			        <form:input type="email" path="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Email"/>
		        </div>
		        <div class="form-group">
			        <form:input type="password" path="password" class="form-control" id="password" placeholder="Contraseña"/>
			    </div>
			    <button type="submit" class="btn btn-primary" name = "login" value="/login">Login</button>
			    <a href="register.html" class="btn btn-primary">Register</a>
	        </div>
    	</form:form> -->
    	
      </div>
    </div>
  </div>

  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
</body>

</html>