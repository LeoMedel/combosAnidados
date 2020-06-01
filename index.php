<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quiz 3</title>
  <meta charset="utf-8">

  <!-- Link de los CDN de Bootstrap y Jquery para el diseño y funcionalidad -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

  <!-- CSS personal -->
  <link rel="stylesheet" href="css/main.css">

</head>
<body>

  <!-- Menu encabezado con Imagen -->
  <nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
    <img id="balon" src="resources/balonDor.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
      Electiva Profesional II - Programación Web
    </a>
  </nav>


  <div class="" style="margin-top:50px">
    <div class="row" style="margin-left: 10px; margin-right: 10px;">
      <?php

      //Aqui se carga el primer Select con los Paises de la BD
      require_once "archivosPHP/conexionBD.php";
      $paises = $conexionPDO->prepare("SELECT * FROM pais");
      $paises->execute();
      $todosPaises = $paises->fetchAll();
      ?>
      <!-- Div contenedor con los SELECT ANIDADOS-->
      <div class="col-sm-4">
        <h1>Ejercicio de combos anidados</h1>
        <form>
          <!-- SELECT No. 1: PAISES-->
          <div class="form-group">
            <label>PAISES</label>
            <select class="form-control paises" id="selectPais">
              <option value="0">Pais en el mundo</option>
              <?php
              foreach ($todosPaises as $pais)
              {
              echo '<option value="'. $pais['id_pais'] .'">'.$pais['pais'].'</option>';
              }
              ?>
            </select>
          </div>

          <!-- SELECT No. 2: LIGAS-->
          <div class="form-group">
            <label>LIGAS</label>
            <!-- Aqui se llena el combo cuando se selecciona el PAIS -->
            <select class='form-control ligas' id='selectLigas'>
          </select>

          </div>

          <!-- SELECT No. 3: EQUPOS-->
          <div class="form-group">
            <label>EQUIPOS</label>
            <!-- Aqui se llena el combo cuando se selecciona la LIGA -->
            <select class="form-control equipos" id="selectEquipos"></select>
          </div>

          <!-- SELECT No. 4: JUGADORES-->
          <div class="form-group">
            <label>JUGADORES</label>
            <!-- Aqui se llena el combo cuando se selecciona el EQUIPO -->
            <select class="form-control jugadores" id="selectJugadores"></select>
          </div>

          <!-- SELECT No. 5: INFORMACION-->
          <div class="form-group">
            <label>INFORMACIÓN</label>
            <!-- Aqui se llena el combo cuando se selecciona el JUGADOR -->
            <select class="form-control info" id="selectInfo"></select>
          </div>

          <div class="form-group">
            <label for="exampleFormControlTextarea1">Texto final:</label>
            <!-- EL TEXTO SE INCLUYE AL COMPLETAR TODOS LOS SELECT DEL FORMULARIO -->
            <textarea class="form-control texto" id="texto" disabled=""></textarea>
          </div>
        </form>
      </div>


      <!--DIV Contenedor de un Carusel de Imagenes con Bootstrap-->
      <div class="col-sm-8">
        <div class="">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

            <!--Imagenes-->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="resources/equipos.jpg" width="800" height="710" class="d-block w-100" alt="UNAM">
              </div>

              <div class="carousel-item ">
                <img src="resources/pumas.jpg" width="800" height="710" class="d-block w-100" alt="UNAM">
              </div>

              <div class="carousel-item">
                <img src="resources/realMadrid.jpg" width="800" height="710" class="d-block w-100" alt="Real Madrid">
              </div>

              <div class="carousel-item">
                <img src="resources/spurs.jpg" width="800" height="710" class="d-block w-100" alt="Tottenham">
              </div>

              <div class="carousel-item">
                <img src="resources/milanAC.jpg" width="800" height="710" class="d-block w-100" alt="AC Milan">
              </div>
            </div>

            <!-- Botones de Siguiente y Atras -->
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- PIE DE PAGINA -->
  <footer>
    <h3 align="center">Equipo</h3>
    <div class="container">
      <div class="row">
        <div class="col"><p>Leonel MEDEL ILHUICATZI </p></div>
        <div class="col"><p>Jorge CHAVEZ AGUIRRE</p></div>
        <div class="col"><p>Jonathan ACUÑA LEÓN</p></div>
      </div>
    </div>
  </footer>


  <!--jAVASCRIPT CON LAS FUNCIONES PARA LLENAR LOS COMBOS CON SUS RESPECTIVOS DATOS-->
  <script src="js/funciones.js"></script>
</body>
</html>
