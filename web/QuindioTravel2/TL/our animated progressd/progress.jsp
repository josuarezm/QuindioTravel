<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Historia</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <style>
        body {
            background: url(imagen1.jpg);
            margin: 0;
            font-family: 'Roboto Condensed', sans-serif;
        }
        
        h1 {
            color: rgb(0, 0, 0);
            font-weight: 700;
            margin-top: 125px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 4px;
            line-height: 30px;
        }
        /* --- Start progress bar --- */
        
        .process-wrapper {
            margin: auto;
            max-width: 1080px;
        }
        
        #progress-bar-container {
            position: relative;
            width: 90%;
            margin: auto;
            height: 100px;
            margin-top: 65px;
        }
        
        #progress-bar-container ul {
            padding: 0;
            margin: 0;
            padding-top: 15px;
            z-index: 9999;
            position: absolute;
            width: 100%;
            margin-top: -40px
        }
        
        #progress-bar-container li:before {
            content: " ";
            display: block;
            margin: auto;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            border: solid 2px rgb(255, 255, 255);
            transition: all ease 0.3s;
        }
        
        #progress-bar-container li.active:before,
        #progress-bar-container li:hover:before {
            border: solid 2px rgb(255, 255, 255);
            background: linear-gradient(to right, #be57d3 0%, rgb(93, 84, 224) 100%);
        }
        
        #progress-bar-container li {
            list-style: none;
            float: left;
            width: 20%;
            text-align: center;
            color: rgb(56, 24, 116);
            text-transform: uppercase;
            font-size: 11px;
            cursor: pointer;
            font-weight: 700;
            transition: all ease 0.2s;
            vertical-align: bottom;
            height: 60px;
            position: relative;
        }
        
        #progress-bar-container li .step-inner {
            position: absolute;
            width: 100%;
            bottom: 0;
            font-size: 14px;
        }
        
        #progress-bar-container li.active,
        #progress-bar-container li:hover {
            color: rgb(8, 4, 48);
        }
        
        #progress-bar-container li:after {
            content: " ";
            display: block;
            width: 6px;
            height: 6px;
            background: rgb(0, 0, 0);
            margin: auto;
            border: solid 7px rgb(255, 255, 255);
            border-radius: 50%;
            margin-top: 40px;
            box-shadow: 0 2px 13px -1px rgba(0, 0, 0, 0.3);
            transition: all ease 0.2s;
        }
        
        #progress-bar-container li:hover:after {
            background: rgb(8, 8, 8);
        }
        
        #progress-bar-container li.active:after {
            background: #48209375;
        }
        
        #progress-bar-container #line {
            width: 80%;
            margin: auto;
            background: rgba(81, 10, 148, 0.507);
            height: 6px;
            position: absolute;
            left: 10%;
            top: 57px;
            z-index: 1;
            border-radius: 50px;
            transition: all ease 0.9s;
        }
        
        #progress-bar-container #line-progress {
            content: " ";
            width: 3%;
            height: 100%;
            background: #56209380;
            background: linear-gradient(to right, #207893 0%, #2ea3b7 100%);
            position: absolute;
            z-index: 2;
            border-radius: 50px;
            transition: all ease 0.9s;
        }
        
        #progress-content-section {
            width: 90%;
            margin: auto;
            background: #f3f3f3;
            border-radius: 4px;
        }
        
        #progress-content-section .section-content {
            padding: 30px 40px;
            text-align: center;
        }
        
        #progress-content-section .section-content h2 {
            font-size: 17px;
            text-transform: uppercase;
            color: #333;
            letter-spacing: 1px;
        }
        
        #progress-content-section .section-content p {
            font-size: 16px;
            line-height: 1.8em;
            color: #777;
        }
        
        #progress-content-section .section-content {
            display: none;
            animation: FadeInUp 700ms ease 1;
            animation-fill-mode: forwards;
            transform: translateY(15px);
            opacity: 0;
        }
        
        #progress-content-section .section-content.active {
            display: block;
        }
        
        @keyframes FadeInUp {
            0% {
                transform: translateY(15px);
                opacity: 0;
            }
            100% {
                transform: translateY(0px);
                opacity: 1;
            }
        }
    </style>
</head>

<body>


    <h1>Un poco de Historia</h1>
    <br>
    <div class="process-wrapper">
        <div id="progress-bar-container">
            <ul>
                <li class="step step01 active">
                    <div class="step-inner">1</div>
                </li>
                <li class="step step02">
                    <div class="step-inner">2</div>
                </li>
                <li class="step step03">
                    <div class="step-inner">3</div>
                </li>
                <li class="step step04">
                    <div class="step-inner">4</div>
                </li>
                <li class="step step05">
                    <div class="step-inner">5</div>
                </li>
            </ul>

            <div id="line">
                <div id="line-progress"></div>
            </div>
        </div>

        <div id="progress-content-section">
            <div class="section-content discovery active">
                <h2>Para Colombia...</h2>
                <p>En Colombia, exactamente en la cordillera de los Andes, se encuentra el Eje Cafetero. Allí se erigen montañas, nevados, pueblos con herencia colonial y, entre otros productos agrícolas, se cultiva café, el cual ha forjado la identidad
                    de la región. Históricamente, la caficultura se ha consolidado como la base del desarrollo del Eje Cafetero. Aunque en la actualidad, su participación no es la misma de hace unas décadas, la zona continúa siendo un referente en la
                    industria del café por sus grandes avances en la tecnificación de sus procesos y su papel en el mercado del café de especialidad. </p>
            </div>

            <div class="section-content strategy">
                <h2>Historia</h2>
                <p>En el siglo XIX la colonización antioqueña, llega a lo que se denominaba el antiguo Caldas y otros sectores como Tolima y norte del Valle del Cauca, donde establece varios caseríos que con el paso del tiempo se convirtieron en grandes
                    ciudades, tal fue el caso de la ciudad de Armenia, fundada el 14 de octubre de 1889. En este proceso de colonización se funda la mayoría de los municipios de nuestro departamento donde surge una evolución de hábitos y costumbres socioeconómicos
                    que caracterizan una idiosincrasia social. </p>
            </div>

            <div class="section-content creative">

                <p>Paradójicamente, en el año 1890, el caserío de Armenia fue erigido corregimiento por parte del concejo municipal de Salento, de donde dependía administrativamente. En 1897 obtiene la categoría de distrito, otorgada por el gobierno de Cauca,
                    pero las presiones por parte de los vecinos de Salento, quienes se sentían degradados ante esa decisión lograron hacer anular dicha ordenanza. Posteriormente debido a la Guerra de los Mil Días, Salento se constituyó en un sitio vulnerable
                    a los ataques guerrilleros y Armenia fue promovida distrito en el año 1903, ante las reiteradas solicitudes de las gentes del poblado, el gobierno nacional procede mediante decreto número 340 de abril 16 de 1910 a llevar la localidad
                    a la categoría de municipio</p>
            </div>

            <div class="section-content production">
                <h2>El Colono antioqueño</h2>
                <p>Durante todo el siglo XIX llegaron al territorio del actual departamento, miles de familias que tumbaron el bosque, organizaron fincas, levantaron poblaciones, trazaron caminos, construyeron puentes y desarrollaron relaciones económicas,
                    sociales y culturales, en un proceso que recibió el nombre de colonización antioqueña. Los descendientes de estos colonos constituyen el mayor porcentaje de la población quindiana, gente emprendedora, con gran capacidad de trabajo
                    y vocación agrícola. Indígena Se sabe que aparte de los Quimbayas propiamente dichos, la región estuvo habitada por Ansermas, Carrapas, Paucuras, Pijaos y Pozos. Los datos históricos sugieren que en este territorio había más de 80
                    caciques importantes. </p>
            </div>

            <div class="section-content analysis">
                <h2>Creación del departamento del Quindío</h2>
                <p>Después de varios intentos cuyas luchas se remontan a la década de los años 20 del siglo pasado, hace 43 años el Congreso de la República aprobó la creación del Quindío. Uno de los principales personajes para que esa creación llegara a
                    feliz término fue el líder liberal Ancízar López López, quien murió a manos del Ejército de Liberación Nacional, Eln, en cautiverio. El 1 de julio de 1966, el departamento del Quindío inició su vida administrativa</p>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
        $(".step").click(function() {
            $(this).addClass("active").prevAll().addClass("active");
            $(this).nextAll().removeClass("active");
        });

        $(".step01").click(function() {
            $("#line-progress").css("width", "3%");
            $(".discovery").addClass("active").siblings().removeClass("active");
        });

        $(".step02").click(function() {
            $("#line-progress").css("width", "25%");
            $(".strategy").addClass("active").siblings().removeClass("active");
        });

        $(".step03").click(function() {
            $("#line-progress").css("width", "50%");
            $(".creative").addClass("active").siblings().removeClass("active");
        });

        $(".step04").click(function() {
            $("#line-progress").css("width", "75%");
            $(".production").addClass("active").siblings().removeClass("active");
        });

        $(".step05").click(function() {
            $("#line-progress").css("width", "100%");
            $(".analysis").addClass("active").siblings().removeClass("active");
        });
    </script>
</body>

</html>