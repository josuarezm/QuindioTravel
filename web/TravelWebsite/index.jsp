<!DOCTYPE html>
<html lang="es">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== REMIXICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="Web/css/swiper-bundle.min.css">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="Web/css/styles.css">

    <title>Quindío Travel</title>
</head>

<body>
    <header class="header" id="header">
        <nav class="nav container">
            <a href="#" class="nav__logo">Quindío Travel</a>

            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item">
                        <a href="#home" class="nav__link active-link">Home</a>
                    </li>
                    <li class="nav__item">
                        <a href="#about" class="nav__link">Historia</a>
                    </li>
                    <li class="nav__item">
                        <a href="#discover" class="nav__link">Descubre Quindío</a>
                    </li>
                    <li class="nav__item">
                        <a href="#place" class="nav__link">Actividades</a>
                    </li>
                    <li class="nav__item">
                        <a href="http://localhost:8080/QuindioTravel/CRUD/CRUD/index.jsp" class="nav__link active-link">Admin</a>
                    </li>
                </ul>

                <div class="nav__dark">

        </nav>

    </header>

    <main class="main">

        <section class="home" id="home">
            <img src="Web/img/1.jpg" alt="" class="home__img">

            <div class="home__container container grid">
                <div class="home__data">
                    <span class="home__data-subtitle">Quindío</span>
                    <h1 class="home__data-title">El mejor <b>café <br> de Colombia</b></h1>
                    <a href="http://localhost:8080/QuindioTravel/Login/login%20responsive/loginvista.jsp" class="button">Login</a>

                </div>

                <div class="home__social">

                    <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                        <i class="ri-facebook-box-fill"></i>
                    </a>
                    <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                        <i class="ri-instagram-fill"></i>
                    </a>
                    <a href="https://twitter.com/" target="_blank" class="home__social-link">
                        <i class="ri-twitter-fill"></i>
                    </a>
                </div>

                <div class="home__info">
                    <div>
                        <span class="home__info-title">Los 5 mejores lugares para visitar</span>
                        <a href="#place" class="button button--flex button--link home__info-button">
                                Más <i class="ri-arrow-right-line"></i>
                            </a>
                    </div>

                    <div class="home__info-overlay">
                        <img src="Web/img/2.jpg" alt="" class="home__info-img">
                    </div>
                </div>
            </div>
        </section>


        <section class="about section" id="about">
            <div class="about__container container grid">
                <div class="about__data">
                    <h2 class="section__title about__title">Los Cafetales, Quindío <br> Y un poco de historia</h2>
                    <p class="about__description">Quindio es una región con agradables casas que recuerdan la colonización antioqueña y el aroma viajero de una taza de café. </p>
                    <p>Es la diversión manifiesta en Panaca y el Parque Nacional del Café; el paisaje y la fertilidad de Génova, Buenavista y Pijao.</p>
                    <br>
                    <a href="http://localhost:8080/QuindioTravel/TL/our%20animated%20progressd/progress.jsp" class="button">Explora más</a>
                </div>

                <div class="about__img">
                    <div class="about__img-overlay">
                        <img src="Web/img/3.jpg" alt="" class="about__img-one">
                    </div>

                    <div class="about__img-overlay">
                        <img src="Web/img/4.jpg" alt="" class="about__img-two">
                    </div>
                </div>
            </div>
        </section>


        <section class="discover section" id="discover">
            <h2 class="section__title">Descubre los lugares <br> más atractivos</h2>

            <div class="discover__container container swiper-container">
                <div class="swiper-wrapper">

                    <div class="discover__card swiper-slide">
                        <img src="Web/img/5.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">Valle del Cocora</h2>

                        </div>
                    </div>


                    <div class="discover__card swiper-slide">
                        <img src="Web/img/6.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">Finlandia</h2>

                        </div>
                    </div>


                    <div class="discover__card swiper-slide">
                        <img src="Web/img/8.jpg" alt="" class="discover__img">
                        <div class="discover__data">
                            <h2 class="discover__title">Santa Rosa de Cabal</h2>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="experience section">
            <h2 class="section__title">Un lugar mágico <br> te aguarda</h2>

            <div class="experience__container container grid">
                <div class="experience__content grid">
                    <div class="experience__data">
                        <h2 class="experience__number">52+</h2>
                        <span class="experience__description">Años <br>De historia</span>
                    </div>

                    <div class="experience__data">
                        <h2 class="experience__number">25+</h2>
                        <span class="experience__description">Sitios <br> turisticos</span>
                    </div>

                    <div class="experience__data">
                        <h2 class="experience__number">40+</h2>
                        <span class="experience__description">Millones de <br>turistas</span>
                    </div>
                </div>

                <div class="experience__img grid">
                    <div class="experience__overlay">
                        <img src="Web/img/9.jpg" alt="" class="experience__img-one">
                    </div>

                    <div class="experience__overlay">
                        <img src="Web/img/10.jpg" alt="" class="experience__img-two">
                    </div>
                </div>
            </div>
        </section>

        <section class="place section" id="place">
            <h2 class="section__title">Escoge tu sitio favorito</h2>

            <div class="place__container container grid">

                <div class="place__card">
                    <img src="Web/img/about1.jpg" alt="" class="place__img">

                    <div class="place__content">

                        <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4,8</span>
                        </span>

                        <div class="place__data">
                            <h3 class="place__title">Salento</h3>
                            <span class="place__subtitle">Quindío</span>

                        </div>
                    </div>



                </div>
                <h2 class="section__title">Es <br>Patrimonio <br>Cultural<b> Del <br> Mundo</b> <br><i class="ri-heart-2-fill"></i>
                </h2>

                <div class="place__card">
                    <img src="Web/img/about2.jpg" alt="" class="place__img">

                    <div class="place__content">
                        <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">5,0</span>
                        </span>

                        <div class="place__data">
                            <h3 class="place__title">Parque del cafÃ©</h3>
                            <span class="place__subtitle">Quindío</span>

                        </div>
                    </div>



                </div>


                <div class="place__card">
                    <img src="Web/img/place3.jpg" alt="" class="place__img">

                    <div class="place__content">
                        <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4,9</span>
                        </span>

                        <div class="place__data">
                            <h3 class="place__title">Nevado Santa Isabel</h3>
                            <span class="place__subtitle">Quindío</span>

                        </div>
                    </div>



                </div>

                <div class="place__card">
                    <img src="Web/img/place5.jpg" alt="" class="place__img">

                    <div class="place__content">
                        <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4,8</span>
                        </span>

                        <div class="place__data">
                            <h3 class="place__title">Valle del Cocora</h3>
                            <span class="place__subtitle">Salento</span>

                        </div>

                    </div>



                </div>


                <div class="place__card">
                    <img src="Web/img/place4.jpg" alt="" class="place__img">

                    <div class="place__content">
                        <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <span class="place__rating-number">4,8</span>
                        </span>

                        <div class="place__data">
                            <h3 class="place__title">Finlandia</h3>
                            <span class="place__subtitle">Quindío</span>

                        </div>
                    </div>


                </div>

            </div>
        </section>


        <!--========== SCROLL UP ==========-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line scrollup__icon"></i>
        </a>

        <!--=============== SCROLL REVEAL===============-->
        <script src="Web/js/scrollreveal.min.js"></script>

        <!--=============== SWIPER JS ===============-->
        <script src="Web/js/swiper-bundle.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="Web/js/main.js"></script>
</body>

</html>