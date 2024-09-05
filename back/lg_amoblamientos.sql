-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-09-2024 a las 02:58:11
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lg_amoblamientos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'La 10 del Rey Lionel: los candidatos a usar la camiseta de Messi ante Chile', 'Por reglamento, alguien deberá lucir esa camiseta este jueves, en el Monumental. ¿Quiénes pican en punta y quién se la puso la última vez?', 'Primero, la cinta. ¿Quién llevará el brazalete del gran capitán? Y después, la 10. ¿Quién usará la camiseta de Leo contra Chile? Pues bien, la baja de Lionel Messi en la Selección no sólo pesa por sí misma. También, por lo aleatorio: es tanto lo que significa, es tanto lo que influye, es tan marcada su presencia incluso en su ausencia, que cuando no está, hay mucho por definir. Por eso, además de la cinta, también alguien deberá usar su número, su dorsal. Y defenderlo con honores es, sin dudas, una responsabilidad extra.\r\n"La 10 es de Messi y de nadie más", dijo Alexis Mac Allister al llegar al país, cuando le preguntaron si se animaría a usar la camiseta de Leo. En abstracto, eso no se discute. Pero reglamentariamente, alguien deberá usarla. Porque en las Eliminatorias la numeración va de corrido, del 1 al 23 (los 11 de campo y los 12 que van al banco). Entonces, tanto como la 10 y la cinta del capitán, alguien también deberá llevar la 11 de Di María, por caso.\r\n\r\nDe todos modos, la pregunta para Alexis no fue casual. El volante del Liverpool es, al fin de cuenta, uno de los grandes candidatos. Por disposición, por jerarquía, acaso también porque muchas veces desde su lugar (como cinco o como interno) se hizo cargo de conducir al equipo. Mac Allister en la Selección usa el número 20 y eso le permite mantenerlo tanto en Eliminatorias como en cualquier otro torneo, en los que la numeración no es correlativa hasta el 23. Pero en su club utiliza la... 10.'),
(2, 'La 10 del Rey Lionel: los candidatos a usar la camiseta de Messi ante Chile', 'Por reglamento, alguien deberá lucir esa camiseta este jueves, en el Monumental. ¿Quiénes pican en punta y quién se la puso la última vez?', 'Primero, la cinta. ¿Quién llevará el brazalete del gran capitán? Y después, la 10. ¿Quién usará la camiseta de Leo contra Chile? Pues bien, la baja de Lionel Messi en la Selección no sólo pesa por sí misma. También, por lo aleatorio: es tanto lo que significa, es tanto lo que influye, es tan marcada su presencia incluso en su ausencia, que cuando no está, hay mucho por definir. Por eso, además de la cinta, también alguien deberá usar su número, su dorsal. Y defenderlo con honores es, sin dudas, una responsabilidad extra.\r\n"La 10 es de Messi y de nadie más", dijo Alexis Mac Allister al llegar al país, cuando le preguntaron si se animaría a usar la camiseta de Leo. En abstracto, eso no se discute. Pero reglamentariamente, alguien deberá usarla. Porque en las Eliminatorias la numeración va de corrido, del 1 al 23 (los 11 de campo y los 12 que van al banco). Entonces, tanto como la 10 y la cinta del capitán, alguien también deberá llevar la 11 de Di María, por caso.\r\n\r\nDe todos modos, la pregunta para Alexis no fue casual. El volante del Liverpool es, al fin de cuenta, uno de los grandes candidatos. Por disposición, por jerarquía, acaso también porque muchas veces desde su lugar (como cinco o como interno) se hizo cargo de conducir al equipo. Mac Allister en la Selección usa el número 20 y eso le permite mantenerlo tanto en Eliminatorias como en cualquier otro torneo, en los que la numeración no es correlativa hasta el 23. Pero en su club utiliza la... 10.'),
(3, 'El 11 de la Selección que piensa Scaloni para enfrentar a Chile por Eliminatorias', 'El DT tuvo la primera práctica en Ezeiza con plantel completo, probó un equipo y ya analiza nombres para el jueves.', 'El tiempo no sobra. Un par de entrenamientos y a salir a la cancha este jueves retomando las Eliminatorias Lionel Scaloni lo tiene claro y por eso este martes aprovechó la primera práctica con plantel completo para ir probando un posible equipo para enfrentar a Chile en el Monumental. Un 11 con la mayoría de la base habitual con las excepciones lógicas de Lionel Messi y Ángel Di María.\r\nBajo la soleada tarde con práctica abierta a los medios en Ezeiza, hubo un ensayo futbolístico de los campeones del mundo y bicampeones de América. Allí, el DT de Pujato dispuso a Emiliano Martínez; Nahuel Molina, Cristian Romero, Germán Pezzella, Marcos Acuña; Rodrigo De Paul, Leandro Paredes, Enzo Fernández; Julián Álvarez, Lautaro Martínez y Nicolás González.'),
(4, 'El 11 de la Selección que piensa Scaloni para enfrentar a Chile por Eliminatorias', 'El DT tuvo la primera práctica en Ezeiza con plantel completo, probó un equipo y ya analiza nombres para el jueves.', 'El tiempo no sobra. Un par de entrenamientos y a salir a la cancha este jueves retomando las Eliminatorias Lionel Scaloni lo tiene claro y por eso este martes aprovechó la primera práctica con plantel completo para ir probando un posible equipo para enfrentar a Chile en el Monumental. Un 11 con la mayoría de la base habitual con las excepciones lógicas de Lionel Messi y Ángel Di María.\r\nBajo la soleada tarde con práctica abierta a los medios en Ezeiza, hubo un ensayo futbolístico de los campeones del mundo y bicampeones de América. Allí, el DT de Pujato dispuso a Emiliano Martínez; Nahuel Molina, Cristian Romero, Germán Pezzella, Marcos Acuña; Rodrigo De Paul, Leandro Paredes, Enzo Fernández; Julián Álvarez, Lautaro Martínez y Nicolás González.'),
(5, 'prueba1', 'prueba1', 'prueba1'),
(6, 'prueba2', 'prueba2', 'prueba2'),
(7, 'prueba3', 'prueba3', 'prueba3'),
(8, 'prueba4', 'prueba4', 'prueba4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` int(11) NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `stocks`
--

INSERT INTO `stocks` (`id`, `nombre`, `descripcion`, `precio`, `img_id`) VALUES
(1, 'Rack TV', 'Mueble moderno y funcional, ideal para el guardado de cosas y ocultar cables. Fabricado en MDF. Sus medidas son de 2m x 0,45m x 0,35m.', 120000, NULL),
(2, 'Mesa de luz', 'Mesa de luz minimalista, flotante fabricada en MDF. Medidas: 0,45m x 0,30m x 0,40m.', 55000, NULL),
(3, 'Mesa', 'Mesa de tamaño medio', 75000, NULL),
(7, 'Escritorio', 'Posee cajoneras de ambos lados. Super reforzado. Medidas: 1,5m x 0,62m x 0,50m', 90000, NULL),
(9, 'Escritorio Vikingo', 'Posee cajoneras de ambos lados. Super reforzado. Medidas: 1,7m x 0,62m x 0,50m', 100000, NULL),
(10, 'Escritorio', 'Posee cajoneras de ambos lados. Super reforzado. Medidas: 1,5m x 0,62m x 0,50m', 90000, NULL),
(11, 'Prueba 1', 'Prueba 1', 100, 'xltqjcxxhnmqbydmnwng'),
(12, 'mesa', 'adsadsa', 12, 'vuqm1apyenkm5rlwiy5p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Luciano', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Sol', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
