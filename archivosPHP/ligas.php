<?php 

	require_once "conexionBD.php";

	$idPais = $_POST['id_pais'];

	$infoLigas = $conexionPDO->prepare("SELECT * FROM liga WHERE id_pais = $idPais order by liga DESC ");
    $infoLigas->execute();
    $ligas = $infoLigas->fetchAll();

    $opciones = "
          	<option value='0'>Ligas disponibles</option>";

    foreach ($ligas as $unaLiga)
	{
		$opciones .= '<option value="'. $unaLiga['id_liga'] .'">'.$unaLiga['liga'].'</option>';
	}

    echo $opciones;

 ?>