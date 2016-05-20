<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>City Tour Xela</title>
<!--
Lumino Theme
http://www.templatemo.com/tm-483-lumino
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:100,300,400">   <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css">                <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                     <!-- Magnific pop up style -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body id="top" class="home">

        <div class="container-fluid">
            <div class="row">

                <div class="tm-navbar-container">

                <!-- navbar   -->
                <nav class="navbar navbar-full navbar-fixed-top">

                    <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                      &#9776;
                    </button>

                    <div >

                        <ul class="nav navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="/">Top</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tm-section-2">Acerca de</a>
                            </li>
                        </ul>

                    </div>

                </nav>

              </div>

           </div>

           <div class="row">
                <div class="tm-intro">

                    <section id="tm-section-1">
                        <div class="tm-container text-xs-center tm-section-1-inner">
                            <h1 class="tm-site-name">City Tour Xela</h1>
                        </div>
                   </section>

                </div>
            </div>

<?php
function mostrarEstrellasCalificar(){
return '<fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>';
}

function mostrarEstrellas($puntuacion){
  $puntos = round($puntuacion);
  $estrellas = '<fieldset class="rating">';
  for ($i = 10; $i > $puntos; $i--) {
    $class = 'full';
    $id = "star" . $i;
    if($i%2==1){
      $id = $id . 'half';
      $class = 'half';
    }
    $estrellas = $estrellas . '<input disabled type="radio" id="'.$id.'" name="rating" /><label class = "'.$class.'" for="'.$id.'"></label>';
  }
  for ($i = $puntos; $i > 0; $i--) {
    $id = "star" . $i;
    $class = 'full';
    if($i%2==1){
      $class = 'half';
      $id = $id . 'half';
    }
    $estrellas = $estrellas . '<input disabled type="radio" id="'.$id.'" name="rating" /><label style="color: #FFD700;" for="'.$id.'" class = "'.$class.'"></label>';
  }

  $estrellas = $estrellas . '</fieldset>';
return $estrellas;
}

?>

            <div class="row gray-bg">
                 <div id="tm-section-2" class="tm-section">
                    <div class="tm-container tm-container-wide">
                      <?php
                      $div_imagen = '';
                      $div_sitio = '';
                      $i = 0;
                      foreach ($sitios as $sitio) {
                        if($i%2==1){
                          $div_imagen = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 flex-order-2 tm-news-item-img-container">';
                          $div_sitio = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-news-container flex-order-1">';
                        }
                        else{
                          $div_imagen = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-news-item-img-container">';
                          $div_sitio = '<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-news-container">';
                        }
                        $i = $i+1;
                        echo '<div class="tm-news-item">
                          ' . $div_imagen . '
                            <img src="' . $sitio["foto"] . '" alt="Image" class="img-fluid tm-news-item-img">
                        </div>
                      ' . $div_sitio . '
                            <h2 class="tm-news-title dark-gray-text">' . $sitio["nombre"] . ' - ' . $sitio["calificacion"] . '</h2>
                            ' . mostrarEstrellas($sitio["calificacion"]) . '
                            <p class="tm-news-text">' . $sitio["resumen"] . '</p>
                            <a href="/sitio?id='.$sitio["id"].'" class="btn tm-light-blue-bordered-btn tm-news-link">Ver más</a>
                            </div>
                        </div>
                        ';
                      }

                      ?>





                    </div>
               </div>

           </div> <!-- row -->


        </div> <!-- container-fluid -->

        <!-- load JS files -->

        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
        <script src="js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
        <script src="js/jquery.magnific-popup.min.js"></script>     <!-- Magnific pop-up (http://dimsemenov.com/plugins/magnific-popup/) -->


        <!-- Templatemo scripts -->
        <script>

            $(document).ready(function(){

                var mobileTopOffset = 54;
                var desktopTopOffset = 80;
                var topOffset = desktopTopOffset;

                if($(window).width() <= 767) {
                    topOffset = mobileTopOffset;
                }

                /* Single page nav
                -----------------------------------------*/
                $('#tmNavbar').singlePageNav({
                   'currentClass' : "active",
                    offset : topOffset,
                    'filter': ':not(.external)'
                });

                /* Handle nav offset upon window resize
                -----------------------------------------*/
                $(window).resize(function(){
                    if($(window).width() <= 767) {
                        topOffset = mobileTopOffset;
                    }
                    else {
                        topOffset = desktopTopOffset;
                    }

                    $('#tmNavbar').singlePageNav({
                        'currentClass' : "active",
                        offset : topOffset,
                        'filter': ':not(.external)'
                    });
                });


                /* Collapse menu after click
                -----------------------------------------*/
                $('#tmNavbar a').click(function(){
                    $('#tmNavbar').collapse('hide');
                });

                /* Turn navbar background to solid color starting at section 2
                ---------------------------------------------------------------*/
                var target = $("#tm-section-2").offset().top - topOffset;

                if($(window).scrollTop() >= target) {
                    $(".tm-navbar-container").addClass("bg-inverse");
                }
                else {
                    $(".tm-navbar-container").removeClass("bg-inverse");
                }

                $(window).scroll(function(){

                    if($(this).scrollTop() >= target) {
                        $(".tm-navbar-container").addClass("bg-inverse");
                    }
                    else {
                        $(".tm-navbar-container").removeClass("bg-inverse");
                    }
                });


                /* Smooth Scrolling
                 * https://css-tricks.com/snippets/jquery/smooth-scrolling/
                --------------------------------------------------------------*/
                $('a[href*="#"]:not([href="#"])').click(function() {
                    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
                        && location.hostname == this.hostname) {

                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');

                        if (target.length) {

                            $('html, body').animate({
                                scrollTop: target.offset().top - topOffset
                            }, 1000);
                            return false;
                        }
                    }
                });


                /* Magnific pop up
                ------------------------- */
                $('.tm-img-grid').magnificPopup({
                    delegate: 'a', // child items selector, by clicking on it popup will open
                    type: 'image',
                    gallery: {enabled:true}
                });
            });

        </script>

</body>
</html>
