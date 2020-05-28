-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2020 a las 22:43:48
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(30) NOT NULL,
  `id_liga` int(30) NOT NULL,
  `equipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `id_liga`, `equipo`) VALUES
(1, 1, 'Pumas UNAM'),
(2, 1, 'Puebla FC'),
(3, 1, 'America'),
(7, 2, 'Atlante'),
(10, 2, 'Coras Tepic'),
(11, 3, 'AC Milan'),
(12, 3, 'Juventus'),
(13, 4, 'Empoli'),
(14, 4, 'Chievo Verona'),
(15, 5, ' Tottenham Hotspur'),
(16, 5, 'Manchester United'),
(17, 6, 'Liverpool'),
(18, 6, 'Wolverhampton'),
(19, 7, 'Real Madrid'),
(20, 7, 'Barcelona'),
(21, 7, 'Atletico de Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `id_informacion` int(30) NOT NULL,
  `id_jugador` int(30) NOT NULL,
  `nacionalidad` varchar(40) NOT NULL,
  `debut` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`id_informacion`, `id_jugador`, `nacionalidad`, `debut`) VALUES
(1, 1, 'Mexicana', 2018),
(2, 3, 'Paraguaya', 1999),
(3, 2, 'Mexicana', 2005),
(4, 4, 'Mexicana', 2007),
(5, 5, 'Mexicana', 2018),
(6, 6, 'Uruguaya', 2001),
(7, 7, 'Uruguaya', 2014),
(8, 8, 'Uruguaya', 2010),
(9, 9, 'Uruguaya', 2011),
(10, 10, 'Mexicana', 2015),
(11, 11, 'Mexicana', 2013),
(12, 12, 'Mexicana', 2004),
(13, 13, 'Mexicana', 2007),
(14, 14, 'Chilena', 2010),
(15, 15, 'Sueca', 1999),
(16, 16, 'Italiana', 2015),
(17, 17, 'Portuguesa', 2002),
(18, 18, 'Italiana', 2005),
(19, 19, 'Italiana', 2004),
(20, 20, 'Italiana', 2015),
(21, 21, 'Escocesa', 2014),
(22, 22, 'Italiana', 2012),
(23, 23, 'Francesa', 2005),
(24, 24, 'Sur Coreana', 2010),
(25, 25, 'Española', 2009),
(26, 26, 'Francesa', 2011),
(27, 27, 'Mexicana', 2011),
(28, 28, 'Maliense', 2013),
(29, 30, 'Holandesa', 2011),
(30, 29, 'Egipcia', 2010),
(31, 31, 'Española', 2004),
(32, 32, 'Brasileña', 2005),
(33, 33, 'Argentina', 2004),
(34, 34, 'Francesa', 2009),
(35, 35, 'Mexicana', 2010),
(36, 36, 'Eslovena', 2009);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(30) NOT NULL,
  `id_equipo` int(30) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `id_equipo`, `nombre`) VALUES
(1, 1, 'Alan Mozo'),
(2, 1, 'Pablo Barrera'),
(3, 1, 'Carlos Gonzalez'),
(4, 2, 'Eduardo Herrera'),
(5, 2, 'Santiago Ormeño'),
(6, 2, 'Nicolas Vikonis'),
(7, 7, 'Kevin Ramirez'),
(8, 7, 'Nicolas Albarracin'),
(9, 7, 'Santiago Silva G'),
(10, 10, 'Carlos Arreola'),
(11, 10, 'Jesus Antonio Leal'),
(12, 3, 'Guillermo Ochoa'),
(13, 3, 'Giovani dos Santos'),
(14, 3, 'Nicolas Castillo'),
(15, 11, 'Zlatan Ibrahimovic'),
(16, 11, 'Gianluigi Donnarumma'),
(17, 12, 'Cristiano Ronaldo'),
(18, 12, 'Leonardo Bonucci'),
(19, 14, 'Emanuele Giaccherini'),
(20, 14, 'Emanuel Vignato'),
(21, 13, 'Liam Henderson'),
(22, 13, 'Amato Ciciretti'),
(23, 15, 'Hugo Lloris'),
(24, 15, 'Son Heung-min'),
(25, 16, 'David de Gea'),
(26, 16, 'Paul Pogba'),
(27, 18, 'Raul Jimenez'),
(28, 18, 'Adama Traoré '),
(29, 17, 'Mohamed Salah'),
(30, 17, 'Virgil van Dijk'),
(31, 19, 'Sergio Ramos'),
(32, 19, 'Marcelo'),
(33, 20, 'Lionel Messi'),
(34, 20, 'Antoine Griezmann'),
(35, 21, 'Hector Herrera'),
(36, 21, 'Jan Oblak');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liga`
--

CREATE TABLE `liga` (
  `id_liga` int(30) NOT NULL,
  `id_pais` int(30) NOT NULL,
  `liga` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `liga`
--

INSERT INTO `liga` (`id_liga`, `id_pais`, `liga`) VALUES
(1, 1, 'Liga MX'),
(2, 1, 'Ascenso MX'),
(3, 2, 'Serie A'),
(4, 2, 'Serie B'),
(5, 3, 'Premier League'),
(6, 3, 'FA Cup'),
(7, 4, 'La Liga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(30) NOT NULL,
  `pais` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `pais`) VALUES
(1, 'Mexico'),
(2, 'Italia'),
(3, 'Inglaterra'),
(4, 'España');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_liga` (`id_liga`);

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD PRIMARY KEY (`id_informacion`),
  ADD KEY `id_jugador` (`id_jugador`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id_liga`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `informacion`
--
ALTER TABLE `informacion`
  MODIFY `id_informacion` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `liga`
--
ALTER TABLE `liga`
  MODIFY `id_liga` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`id_liga`) REFERENCES `liga` (`id_liga`);

--
-- Filtros para la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD CONSTRAINT `informacion_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`);

--
-- Filtros para la tabla `liga`
--
ALTER TABLE `liga`
  ADD CONSTRAINT `liga_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
