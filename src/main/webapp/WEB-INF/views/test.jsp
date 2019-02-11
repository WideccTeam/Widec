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

    <!-- <div class="row h-100 justify-content-center align-items-center">
      <div class="col-md-6">-->
        
        <!-- Hay que cambiar lo del tamaño de las imágenes y tal -->
        
        <form:form id = "registerForm" method="POST" modelAttribute="userPreferences">
	        <div class="form-group align-middle">
	        	<br>
		        <div class="row" id="format">
		        	<div class="col-sm text-center">
		        		<div class="card">
		        			<h5 class="card-title">¿Qué formato quieres?</h5>
	        			 	<div class="form-group">
					        	<label>
					        		<!-- Relato 1 -->
						        	<form:radiobutton path="format" value="Relato" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/CuentoRelato1.jpg' />" width="100" height="100"alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Relato 2 -->
						        	<form:radiobutton path="format" value="Relato" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/CuentoRelato2.jpeg' />" width="100" height="100"alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Novela 1-->
						        	<form:radiobutton path="format" value="Novela" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Novela1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Novela 1-->
						        	<form:radiobutton path="format" value="Novela" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Novela2.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Mundo -->
						        	<form:radiobutton path="format" value="Mundo" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Mundo.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Juego -->
						        	<form:radiobutton path="format" value="Juego" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Juego.jpg' />" width="100" height="100" alt="">
					        	</label>
				        	</div>
			        	</div>
		        	</div>
		        </div>
		        
		        <br>
		        
		        <div class="row" id="mood">
		        	<div class="col-sm text-center">
		        		<div class="card">
		        			<h5 class="card-title">¿Qué tono quieres?</h5>
	        			 	<div class="form-group">
					        	<label>
					        		<!-- Ficcion -->
						        	<form:radiobutton path="mood" value="Ficcion" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Ficción.jpeg' />" width="100" height="100" alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Realismo -->
						        	<form:radiobutton path="mood" value="Realismo" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Realismo.jpeg' />" width="100" height="100" alt="">
					        	</label>
				        	</div>
			        	</div>
		        	</div>
		        </div>
		        
		        <br>
		        
		        <div class="row" id="audience">
	        		<div class="col-sm text-center">
		        		<div class="card">
	        				<h5 class="card-title">¿Qué público quieres?</h5>
        			 		<div class="form-group">
					        	<label>
					        		<!-- Infantil 1-->
						        	<form:radiobutton path="audience" value="Infantil" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Infantil1.jpg' />" width="100" height="100" alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Infantil 2-->
						        	<form:radiobutton path="audience" value="Infantil" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Infantil2.jpg' />" width="100" height="100" alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Juvenil 1-->
						        	<form:radiobutton path="audience" value="Juvenil" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Juvenil1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Juvenil 2-->
						        	<form:radiobutton path="audience" value="Juvenil" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Juvenil2.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Adulto 1-->
						        	<form:radiobutton path="audience" value="Adulto" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Adulto1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Adulto 2-->
						        	<form:radiobutton path="audience" value="Adulto" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Adulto2.jpeg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Adulto 3-->
						        	<form:radiobutton path="audience" value="Adulto" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Adulto3.jpeg' />" width="100" height="100" alt="">
					        	</label>
				        	</div>
			        	</div>
		        	</div>
		        </div>
		        
		        <br>
		        
		        <div class="row" id="genre">
		        	<div class="col-sm text-center">
		        		<div class="card">
	        				<h5 class="card-title">¿Qué género quieres?</h5>
        			 		<div class="form-group">
					        	<label>
					        		<!-- Fantasia 1-->
						        	<form:radiobutton path="genre" value="Fantasia" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Fantasía1.jpeg' />" width="100" height="100" alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Fantasia 2-->
						        	<form:radiobutton path="genre" value="Fantasia" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Fantasía2.jpg' />" width="100" height="100" alt="">
					        		<!-- Aquí tenemos que poner la imagen y habría que añadir lo de ocultar el radiobutton -->
					        	</label>
					        	<label>
					        		<!-- Ci-Fi 1-->
						        	<form:radiobutton path="genre" value="Ci-Fi" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/CienciaFicción1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Ci-Fi 2-->
						        	<form:radiobutton path="genre" value="Ci-Fi" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/CienciaFicción2.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Romance 1-->
						        	<form:radiobutton path="genre" value="Romance" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Romance1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Romance 2-->
						        	<form:radiobutton path="genre" value="Romance" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Romance2.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Misterio 1-->
						        	<form:radiobutton path="genre" value="Misterio" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Misterio1.jpg' />" width="100" height="100" alt="">
					        	</label>
					        	<label>
					        		<!-- Misterio 2-->
						        	<form:radiobutton path="genre" value="Misterio" style="visibility:hidden"/>
						        	<img src="<c:url value='/css/images/Misterio2.jpeg' />" width="100" height="100" alt="">
					        	</label>
				        	</div>
			        	</div>
		        	</div>
		        </div>
			    
			    <br>
			    
			    <button type="submit" class="btn btn-primary" name = "test" value="/test">Enviar</button>
	        </div>
    	</form:form>
    	
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