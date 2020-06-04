<?php 
try
{
	$usuario = "root";
	$password = "";
	$bd = "proyectoCombos";
	$host = "localhost:3307";

	$conexionPDO = new PDO("mysql:host=".$host.";dbname=".$bd.";charset=utf8", $usuario, $password);
	$conexionPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch (PDOException $exception)
{
die ('Error al conectar con la Base de datos Proyecto!');
}


?>