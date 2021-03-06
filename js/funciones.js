$( document ).ready(function() {
    console.log( "Javascript cargado!" );

    /*_____________________________________ PRIMER SELECT DE PAISES_________________________________________________*/
    //Evento cuando cambia el valor del SELECT PAIS
	$( "#selectPais" ).change(function() {

		//Guardamos el id del pais seleccionado
		var pais = $(this).val();
		
		//Limpiar los demas campos
		$( "#selectEquipos" ).empty();
		$( "#selectJugadores" ).empty();
		$( "#selectInfo" ).empty();
		$("#texto").empty();

		//Enviamos la informacion con POST al archivo para cargar el siguiente SELECT
		$.post( "archivosPHP/ligas.php", { id_pais: pais })
			.done(function( data ) {

			//Se carga la informacion de acuerdo a la seleccion
			$( "#selectLigas" ).html( data );
		});
	});
	

	/*_____________________________________ SEGUNDO SELECT DE LIGAS _________________________________________________*/
    //Evento cuando cambia el valor del SELECT LIGAS
	$( "#selectLigas" ).change(function() {
		//Guardamos el id de la Liga seleccionada
		var liga = $(this).val();

		//Limpiar los demas campos
		$( "#selectJugadores" ).empty();
		$( "#selectInfo" ).empty();
		$("#texto").empty();

		//Enviamos la informacion con POST al archivo para cargar el siguiente SELECT
		$.post( "archivosPHP/equipos.php", { id_liga: liga })
			.done(function( data ) {
			//Se carga la informacion de acuerdo a la seleccion
			$( "#selectEquipos" ).html( data );
		});
	});


	/*_____________________________________ TERCER SELECT DE EQUIPOS _________________________________________________*/
    //Evento cuando cambia el valor del SELECT EQUIPOS
	$( "#selectEquipos" ).change(function() {
		//Guardamos el id del Equipo seleccionado
		var equipo = $(this).val();

		//Limpiar los demas campos
		$( "#selectInfo" ).empty();
		$("#texto").empty();
		
		//Enviamos la informacion con POST al archivo para cargar el siguiente SELECT
		$.post( "archivosPHP/jugadores.php", { id_equipo: equipo })
			.done(function( data ) {
			//Se carga la informacion de acuerdo a la seleccion
			$( "#selectJugadores" ).html( data );
		});
	});

	/*_____________________________________ CUARTO SELECT DE JUGADORES _________________________________________________*/
    //Evento cuando cambia el valor del SELECT JUGADORES
	$( "#selectJugadores" ).change(function() {
		//Guardamos el id del Jugador seleccionado
		var jugador = $(this).val();

		//Enviamos la informacion con POST al archivo para cargar el siguiente SELECT
		$.post( "archivosPHP/informacion.php", { id_jugador: jugador })
			.done(function( data ) {
			//Se carga la informacion de acuerdo a la seleccion
			$( "#selectInfo" ).html( data );
		});
	});


	/*_____________________________________ QUINTO SELECT DE INFORMACION _________________________________________________*/
    //Evento cuando cambia el valor del SELECT INFORMACION
	$( "#selectInfo" ).change(function() {

		//Este change es solo para crear un texto con todas las opciones seleccionadas
		//Primero se obtiene todos los datos de los select
		var pais = $( ".paises option:selected" ).text();
		var liga = $( ".ligas option:selected" ).text();
		var equipo = $( ".equipos option:selected" ).text();
		var jugador = $( ".jugadores option:selected" ).text();
		var datoTexto = $( ".info option:selected" ).text();
		var dato = $(this).val();

		//Limpiar texto escrito si exite
		$("#texto").empty();
		
		//Crear un texto con la informacion de todo el formulario
		var textoFinal = jugador + " (" +datoTexto+": " +dato+") es jugador del " + equipo + ", en el actual torneo de " + liga + " en " + pais;

		//Añadir el texto que resulta de completar el formulario
		$("#texto").append(document.createTextNode(textoFinal));
		
	});

});