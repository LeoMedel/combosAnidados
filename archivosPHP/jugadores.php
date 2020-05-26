<?php 

	require_once "conexionBD.php";

	$idEquipo = $_POST['id_equipo'];

	$infoJugadores = $conexionPDO->prepare("SELECT * FROM jugadores WHERE id_equipo = $idEquipo ");
    $infoJugadores->execute();
    $jugadores = $infoJugadores->fetchAll();

    $opciones = "
          	<option value='0'>Jugadores disponibles</option>";

    foreach ($jugadores as $unJugador)
	{
		$opciones .= '<option value="'. $unJugador['id_jugador'] .'">'.$unJugador['nombre'].'</option>';
	}

    echo $opciones;

 ?>