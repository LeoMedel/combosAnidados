<?php 

	require_once "conexionBD.php";

	$idJugador = $_POST['id_jugador'];

	$todaInformacion = $conexionPDO->prepare("SELECT * FROM informacion WHERE id_jugador = $idJugador ");
    $todaInformacion->execute();
    $informacion = $todaInformacion->fetchAll();

    $opciones = "
          	<option value='0'>Informacion disponibles</option>";

    foreach ($informacion as $unDato)
	{
		$opciones .= '<option value="'. $unDato['nacionalidad'] .'">Nacionalidad </option>';
		$opciones .= '<option value="'. $unDato['debut'] .'">Año de debut </option>';
	}

    echo $opciones;

 ?>