<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="util"%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Widec</title>
  <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
  <!-- <link rel="stylesheet" href="fonts.css"> -->
  <link rel="stylesheet" href="<c:url value='/css/style.css' />">
</head>

<body>
	<div class="grid">
		<header>
			<span></span>
			<a class="logo" href="#"><img src="<c:url value='/css/images/LogoWIDEC.png' />" alt="widec"></a>
		</header>
		<main>
			<img src="<c:url value='/css/images/IntroWIDEC.png' />" alt="widec">
			<div class="form">
				<form:form id = "loginForm" method="POST" modelAttribute="user">
					<form:input type="hidden" path="id" id="id"/>
					<div>
						<form:input type="email" path="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Email"/>
					</div>
					<div>
						<form:input type="password" path="password" class="form-control" id="password" placeholder="Contraseña"/>
					</div>
					<a class="pass" href="#">¿Has olvidado tu contraseña?</a>
					<div class="botones">
						<ul>
							<li><a href="#"><img src="<c:url value='/css/images/inicio.png' />" alt=""></a>
								<button type="submit" name = "login" value="/login" class="texto">Iniciar Sesión</button>
							</li>
							<li>
								<p class="cuenta">¿No tienes una cuenta?</p>
							</li>
							<li><a href="#"><img src="<c:url value='/css/images/registro.png' />" alt=""></a>
								<a href="register.html" class="texto texto2">Registrarse</a>
							</li>
						</ul>
					</div>
				</form:form>
			</div>
			</section>
		</main>
		<footer>
			<p>Escribe y desarrolla historias a través del juego, colaborando con Widec y otros escritores.</p>
		</footer>
	</div>


</body>

</html>