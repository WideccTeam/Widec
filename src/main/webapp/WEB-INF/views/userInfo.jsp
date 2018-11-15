<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">

    <link rel="stylesheet" href="styles/style.css">

    <title>Widec</title>
</head>

<body>

    <div class="container h-100">
        <nav class="nav">
            <img src="img/LogoWIDEC.png" alt="">
        </nav>

        <div class="row h-100 justify-content-center align-items-center">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <h2>${user.name}</h2>
                    </div>
                    <div class="col-md-6">
                        <img id="perfil" src="img/Perfil_hexagono.png" alt="">
                    </div>
                </div>

                <div class="card" style="width: 18rem;">
                    <div class="card-header font-weight-bold">
                        Ficha de autor
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Tono
                            <h5><span class="badge badge-primary">${userPreferences.mood}</span></h5>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Genero
                            <h5><span class="badge badge-primary">${userPreferences.genre}</span></h5>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Formato
                            <h5><span class="badge badge-primary">${userPreferences.format}</span></h5>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Público
                            <h5><span class="badge badge-primary">${userPreferences.audience}</span></h5>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Nivel
                            <h5>${userPreferences.level}</h5>
                        </li>
                    </ul>
                </div>
            </div>
            <a href="<c:url value='/list.html' />">Amigos</a>
            <div class="col-md-6">
                <img id="jugar" src="img/Jugar.png" alt="" class="mx-auto d-block">
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