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

                    <div>

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
function mostrarEstrellasCalificar($id_sitio){
return '<fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="10" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="9" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="8" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="7" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="6" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="4" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="3" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="2" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="1" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>
<button type="button" onclick="calificar('.$id_sitio.')" id="btn-calificar" class="btn tm-light-blue-bordered-btn">Calificar</button>
';
}

function mostrarEstrellas($puntuacion){
  $puntos = round($puntuacion);
  $estrellas = '<fieldset class="rating text-xs-center">';
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

            <div class="row">
              <div id="tm-section-1" class="tm-section">
                <div class="col-md-12">
                <div class="col-md-12">
                  <div class="col-md-12">
                    <h1 class="text-xs-center blue-text tm-page-2-title">
                      <?php echo $sitios[0]["nombre"]; ?>
                    </h1>
                  </div>
                  <div class="col-md-12">
                    <p><?php echo mostrarEstrellas($sitios[0]["calificacion"]); ?></p>
                  </div>
                </div>
                <div class="col-md-12">
                    <p class="tm-page-2-p tm-page-2-subtitle">
                      <?php echo $sitios[0]["descripcion"]; ?>
                    </p>
                    <?php
		    echo '<img src="'.$sitios[0]["foto"].'" class="img-fluid" alt="Image"></br>';
                    
                    echo '<div id="googleMap" style="height:450px;" att="hola" latitud="'.$sitios[0]["latitud"].'" longitud="'.$sitios[0]["longitud"].'"></div></br>';
                    ?>
                    <?php echo mostrarEstrellasCalificar($sitios[0]["id"]); ?>
                </div>
              </div>
              </div>
            </div>

            <div class="row gray-bg">


                <!-- footer -->
                <footer class="tm-footer">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <p class="text-xs-center tm-footer-text">Copyright &copy; 2016 Eiji De Paz | Design: Lumino</p>
                    </div>
                </footer>

            </div> <!-- row -->

        </div> <!-- container-fluid -->

        <!-- load JS files -->

        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
        <script src="js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
        <script src="js/jquery.magnific-popup.min.js"></script>     <!-- Magnific pop-up (http://dimsemenov.com/plugins/magnific-popup/) -->

        <script>
          function calificar(id){
            var puntos = 0;
            if(document.getElementById("starhalf").checked) puntos = 1;
            if(document.getElementById("star1").checked) puntos = 2;
            if(document.getElementById("star1half").checked) puntos = 3;
            if(document.getElementById("star2").checked) puntos = 4;
            if(document.getElementById("star2half").checked) puntos = 5;
            if(document.getElementById("star3").checked) puntos = 6;
            if(document.getElementById("star3half").checked) puntos = 7;
            if(document.getElementById("star4").checked) puntos = 8;
            if(document.getElementById("star4half").checked) puntos = 9;
            if(document.getElementById("star5").checked) puntos = 10;
            window.location.href = "/sitio?id=" + id + "&puntos=" + puntos;
        }
        </script>

        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script>
        $(document).ready(function initialize() {
          var latitud = document.getElementById("googleMap").getAttribute("latitud");
          var longitud = document.getElementById("googleMap").getAttribute("longitud");
          var mapProp = {
            center:new google.maps.LatLng(latitud,longitud),
            zoom:16,
            mapTypeId:google.maps.MapTypeId.ROADMAP
          };
          var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
          google.maps.event.addDomListener(window, 'load', initialize);
          });
        </script>

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
