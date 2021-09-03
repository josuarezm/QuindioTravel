<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Municipio</title>
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
        <link rel="stylesheet" href="Municipio.css">
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
            <div class="usuario">
                <p>Nombre de Usuario</p>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/OOjs_UI_icon_userAvatar.svg/1200px-OOjs_UI_icon_userAvatar.svg.png" width="50px"/>
                <a href="Ingreso.jsp"><img src="https://cdn.iconscout.com/icon/premium/png-512-thumb/exit-1511227-1279287.png" width="50px" /></a>
            </div>
        </div>

        <div class = "container">
            <ul class="slider">
                <li id=slide1>
                    <img src="https://www.cronicadelquindio.com/files/noticias/120200527083602.jpg"/>
                </li>
                <li id=slide2>
                    <img src="https://d1bvpoagx8hqbg.cloudfront.net/originals/experiencia-armenia-colombia-ivan-c367915f027a3c583ae6f943c5cb0990.jpg"/>
                </li>
                <li id=slide3>
                    <img src="https://encolombia.com/wp-content/uploads/2012/12/Armenia.jpg"/>
                </li>
                <li id=slide4>
                    <img src="https://www.fincasturisticasdelquindio.com/wp-content/uploads/2016/10/parque-de-la-vida-armenia-quindio-colombia.jpg"/>
                </li>
            </ul>

            <ul class="menu">
                <li>
                    <a href="#slide1">1</a>
                </li>
                <li>
                    <a href="#slide2">2</a>
                </li>
                <li>
                    <a href="#slide3">3</a>
                </li>
                <li>
                    <a href="#slide4">4</a>
                </li>
            </ul>

        </div>
        <div id="marco" >

            <p class = "parrafo">  Armenia es un municipio colombiano, 
                capital del departamento del Quindío, es
                una de las principales ciudades del eje cafetero
                colombiano, de la llamada región paisa y del paisaje cultural del 
                cafetero. La ciudad está situada en las coordenadas 4,5170 * de latitud norte,
                75.6830* oeste a 290 kilómetros al oeste de Bogotá.
                Armenia se fundó en 1889 y basó su economía en la agricultura, lo que permitió un desarrollo considerable entre los años 1920 y 1980,
                gracias a la bonanza cafetera, de donde surgió el apodo de "Ciudad Milagro". Esta población esta ubicada en el triángulo de oro, y es uno de los principales
                centros comerciales y turísticos del occidente colombiano. Es también el núcleo del área metropolitana de Armenia </p>

        </div>
        <br>
        <div class="buscar">
            <form action="Municipio.jsp" method="post">
                <div class="form-row">
                    <input type="text" class="col" name="buscarTxt">
                    <button type="submit" name="buscar">Buscar</button>      
                </div>
            </form>
        </div>

        <table style="width: 80%; margin-left: 10%; margin-top: 3%;">
            <tr>
                <th>
                    Nombre
                </th>
                <th>
                    Lugar
                </th>
                <th>
                    Precio
                </th>
                <th>
                    Hospedaje
                </th>
                <th>
                    Alimentación 
                </th>
                <th>
                    Atracciones
                </th>
                <th>
                    Otros
                </th>
                <th>
                    Información de Contacto
                </th>
                <th>
                    Administrar
                </th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <button>Eliminar</button>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <button>Eliminar</button>
                </td>
            </tr>
        </table>
        <div id="final">

        </div>
    </body>
</html>
