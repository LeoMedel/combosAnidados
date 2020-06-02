<?php 

	require_once "conexionBD.php";

	$idLiga = $_POST['id_liga'];

	$infoEquipos = $conexionPDO->prepare("SELECT * FROM equipos WHERE id_liga = $idLiga order by equipo ASC ");
    $infoEquipos->execute();
    $equipos = $infoEquipos->fetchAll();

    $opciones = "
          	<option value='0'>Equipos disponibles</option>";

    foreach ($equipos as $unEquipo)
	{
		$opciones .= '<option value="'. $unEquipo['id_equipo'] .'">'.$unEquipo['equipo'].'</option>';
	}

    echo $opciones;

 ?>