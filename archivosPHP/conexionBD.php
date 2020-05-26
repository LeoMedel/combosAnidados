<?php 
try
{
	$conexionPDO = new PDO("mysql:host=localhost;dbname=proyecto;charset=utf8", "root", "");
	$conexionPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch (PDOException $exception)
{
die ('Failed to connect to database!');
}


?>