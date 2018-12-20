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
  <link rel="stylesheet", href="<c:url value='/css/bootstrap.min.css' />">

  <link rel="stylesheet" href="<c:url value='/css/loginStyle.css' />">

  <title>Widec</title>
</head>

<body>

  <div class="container h-100">
    <nav class="nav">
      <img src="<c:url value='/css/images/LogoWIDEC.png' />" alt="Logo">
    </nav>

    <div class="row h-100 justify-content-center align-items-center">
      <img src="<c:url value='/css/images/IntroWIDEC.png' />" alt="">
      <div class="col-md-6">
        <!--<form>
          <div class="form-group">
            <label for="inputEmail">Email address</label>
            <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="inputPassword">Password</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>-->
        
        <form:form id = "loginForm" method="POST" modelAttribute="user">
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