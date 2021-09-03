<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperar Contaseña</title>
    <link rel="stylesheet" href="estilo_contrasena.css">
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
     <div id="marco" >
        
     </div>
     <div class="label_mensaje">
        Apreciado Usuario, por favor digite el correo electrónico registrado para <br>
        recuperar la contraseña. Recibirá un correo para que pueda llevar a cabo el <br>
        proceso de cambio
        <br>
    </div>
    <div class="input">
        <form class="entrada">
            <label  for="email" >Correo: &nbsp; </label>
                <input type="email" id="principal"  placeholder="Ingrese su Correo" id="email">
        </form>
    </div>
    <button type="button" class="btn btn-primary">Recuperar contraseña</button>
</body>
</html>
