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
    <title>Document</title>
    <link rel="stylesheet" href="estilo_portafolios.css">
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
            <form action="/action_page.php">
                <label  for="email" >Nombre: &nbsp; </label>
                <input type="text" id="principal"  placeholder="Ingrese su Nombre" id="email">
                <label  for="email" >Lugar:&nbsp;</label>
                <input type="text" id="principal"  placeholder="Ingrese el lugar" id="pwd">
                <label  for="email" >Precio:&nbsp;</label>
                <input type="text" id="principal" placeholder="Ingrese el Precio" id="pwd">
                <br>
                <label  for="email" class="label_hospedaje"  >Hospedaje:&nbsp;&nbsp; </label>
                <label  for="email" class="label_alimentacion" >Alimentación:&nbsp;</label>
                <div id="input_big">
                    <textarea type="text" class="input_hospedaje" placeholder="Hospedaje" id="email"></textarea>
                    <textarea type="text" class="input_alimentacion"  placeholder="Alimentación" id="pwd"></textarea>
                    
                </div>
                <br>
                <label  for="email" class="label_atracciones"  >Atracciones:&nbsp;&nbsp; </label>
                <label  for="email" class="label_otros" >Otros:&nbsp;</label>
                <div id="input_big2">
                        <textarea type="text" class="input_atracciones" placeholder="Atracciones" id="email"></textarea>
                        <textarea type="text" class="input_otros"  placeholder="Otros" id="pwd"></textarea>
                </div>

                <button type="button" id="Eliminar" class="btn btn-primary">Eliminar Oferta</button>
                <button type="button" id="Crear" class="btn btn-primary">Crear Oferta</button>
            
        </form>
     </div>
     <div id="final">

     </div>
    
</body>
</html>