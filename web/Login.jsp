<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilo_contrasena.css">
        <link rel="stylesheet" href="Estilos.css">
    </head>
    <body>
        <div class="barra">
            &nbsp;
            <img src="https://cdn.pixabay.com/photo/2013/04/01/21/29/binoculars-99115_960_720.png" width="80px"/>
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" href="#">Descubre Quindío</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Personas y Cultura</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Actividades</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Historia</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contactenos</a>
                </li>
            </ul>
        </div>
        <div id="marcoInicio">
            <form action="Login.jsp" method="post">
                <div class="form-group">
                    <label>Usuario:</label>
                    <input type="email" class="form-control" name="usuario">
                </div>
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" class="form-control" name="pwd">
                </div>
                <div class="form-row">
                    <div class="col">
                        <button type="submit" class="btn btn-primary" name="registrarse">Registrarse</button>
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary" name="ingresar"">Ingresar</button>
                    </div>
                </div>
                <center><a href="Contrasena.jsp" style="font-size: 14px">Olvidé mi contraseña</a></center>
            </form>
        </div>
        <%
            if (request.getParameter("registrarse") != null) {
                response.setHeader("refresh", "2; url=Registro.jsp");
            } else if (request.getParameter("ingresar") != null) {
                response.setHeader("refresh", "2; url=index.jsp");
            }
        %>
    </body>
</html>

