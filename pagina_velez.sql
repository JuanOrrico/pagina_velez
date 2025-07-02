-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2025 a las 20:48:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pagina_velez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `descripcion` text NOT NULL,
  `nombreEstadio` varchar(35) NOT NULL,
  `locacionEstadio` varchar(35) NOT NULL,
  `capacidad` varchar(30) NOT NULL,
  `historiaEstadio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`descripcion`, `nombreEstadio`, `locacionEstadio`, `capacidad`, `historiaEstadio`) VALUES
('El Club Atlético Vélez Sarsfield es una institución deportiva, pero contempla, además, actividades culturales y educativas. Su infraestructura es ideal para el desarrollo de sus disciplinas, ya que cuenta con los espacios especializados tanto en su sede de Juan B. Justo 9200, como en el complejo Polideportivo, ubicado en Juan B. Justo al 8800, y en la majestuosa Villa Olímpica de Ituzaingó. En las instalaciones de la sede se encuentra el Estadio de Básquetbol “Víctor Barba”, con su nuevo anexo; cuatro canchas de Baby Fútbol, y el Salón “Osvaldo Di Fonzo”, donde se practica Patín Artístico. El Club dispone en su sede de variados ámbitos utilizados para las múltiples actividades de matiz social, cultural y educativo.\r\n\r\nEn el sector Polideportivo se puede realizar Atletismo, hay numerosas canchas auxiliares y de tierra, un Gimnasio Polifuncional de Hockey sobre Patines, un Patinódromo, once canchas de tenis de polvo de ladrillo y dos de cemento, un Gimnasio de Cestoball, una cancha de Hockey sobre Césped y el conocido Estadio de Vóley “Ana Petracca” con su anexo Alcides Márquez, un Gimnasio de Gimnasia Artística y Trampolín, un Gimnasio de Artes Marciales, un Gimnasio de Musculación y cinco canchas de césped sintético, Entre otras dependencias, el Polideportivo cuenta con un quincho como centro de reuniones de socios, en donde reina un ambiente familiar. Sobresale en este espacio el Complejo Acuático, con dos piletas climatizadas y un extraordinario espejo de agua, ideal como zona de esparcimiento en temporada veraniega.\r\n\r\nA 15 minutos del estadio José Amalfitani, en Mansilla y De La Guitarra (Ituzaingó) está ubicada la Villa Olímpica, con extensión de 18 hectáreas parquizadas, de las cuales hay 1712 m2 cubiertos con un estilo arquitectónico que armoniza con la naturaleza del lugar. El espacio de concentración del fútbol profesional es uno de los mejores centros de entrenamiento del país y cuenta con cuatro zonas diferenciadas: de recreación y comidas; de trabajo técnico y terapéutico; de descanso; 5 canchas de fútbol profesional, una de ellas de césped sintético y un Gimnasio de Musculación para el Fútbol Amateur. A su vez las 23 habitaciones con baño privado, el comedor y la sala de conferencias están ambientadas lujosamente y convierten a este centro en una obra impresionante, comparable a las concentraciones europeas.\r\n\r\nBajo el lema “Deporte y Cultura”, el Club Vélez Sarsfield es sin duda una institución modelo que promueve a través de sus actividades la salud, la recreación y la excelencia en la creación de los medios para el desarrollo de las mismas.', 'Estadio José Amalfitani', 'Av. Juan B. Justo 9200, Ciudad Autó', 'Cuenta con una capacidad habil', 'Con el equipo en Segunda División y sin escenario propio se logró la cesión de un pantano lindante al arroyo Maldonado por parte de las autoridades del Ferrocarril Oeste. Eran terrenos anegadizos, considerados irrecuperables por todo el mundo salvo para Amalfitani y su grupo de colaboradores. En algo más de dos años consiguieron rellenarlos. Cuando lo lograron, levantaron las tribunas con los tablones del viejo Fortín. El 11 de abril, en medio de unos festejos extraordinarios, Vélez, por fin, inauguraba su propio campo de juego en un partido amistoso contra River, el campeón, que terminó 2 a 2. Juan José Ferraro hizo el primer gol en la nueva cancha a los tres minutos, aumentó Ángel Fernández, y Pedernera, en dos ocasiones, igualó el cotejo inaugural.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(3) NOT NULL,
  `posicion_id` int(3) NOT NULL,
  `dorsal` int(3) NOT NULL,
  `imgJugadores` varchar(50) DEFAULT 'Proximamente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `apellido`, `edad`, `posicion_id`, `dorsal`, `imgJugadores`) VALUES
(1, 'Tomas', 'Marchiori', 29, 1, 1, 'tmarchiori.jpg'),
(2, 'Randall', 'Rodriguez', 21, 1, 12, 'rrodriguez.jpg'),
(3, 'Valentin', 'Gomez', 21, 2, 31, 'vgomez.jpg'),
(4, 'Emanuel', 'Mammana', 29, 2, 2, 'emammana.jpg'),
(5, 'Elías', 'Gomez', 30, 2, 3, 'egomez.jpg'),
(6, 'Joaquin', 'Garcia', 23, 2, 4, 'jgarcia.jpg'),
(7, 'Damian', 'Fernandez', 24, 2, 34, 'dfernandez.jpg'),
(8, 'Agustin', 'Bouzat', 31, 3, 26, 'abouzat.jpg'),
(9, 'Christian', 'Ordoñez', 20, 3, 32, 'cordonez.jpg'),
(10, 'Matias', 'Pellegrini', 25, 3, 11, 'mpellegrini.jpg'),
(11, 'Braian', 'Romero', 33, 4, 9, 'bromero.jpg'),
(12, 'Francisco', 'Pizzini', 31, 4, 20, 'fpizzini.jgp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palmares`
--

CREATE TABLE `palmares` (
  `torneos_locales` varchar(50) NOT NULL,
  `torneos_internacionales` varchar(50) NOT NULL,
  `imgCopas` varchar(50) DEFAULT 'Proximamente',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `palmares`
--

INSERT INTO `palmares` (`torneos_locales`, `torneos_internacionales`, `imgCopas`, `id`) VALUES
('Torneo Nacional 1968', '', 'Proximamente', 1),
('Torneo Clausura\r\n1993', '', 'Proximamente', 2),
('Torneo Apertura\r\n1995', '', 'Proximamente', 3),
('Torneo Clausura\r\n1996', '', 'Proximamente', 4),
('Torneo Clausura\r\n1998', '', 'Proximamente', 5),
('Torneo Clausura\r\n2005', '', 'Proximamente', 6),
('Torneo Clausura\r\n2009', '', 'Proximamente', 7),
('Torneo Clausura\r\n2011', '', 'Proximamente', 8),
('Torneo Inicial\r\n2012', '', 'Proximamente', 9),
('Fútbol Argentino 2012/\r\n2013', '', 'Proximamente', 10),
('Supercopa Argentina\r\n2014', '', 'Proximamente', 11),
('Liga Profesional\r\n2024', '', 'Proximamente', 12),
('', 'Copa Libertadores de América\r\n1994', 'Proximamente', 13),
('', 'Copa Europeo-Sudamericana\r\n1994', 'Proximamente', 14),
('', 'Copa Interamericana\r\n1996', 'Proximamente', 15),
('', 'Supercopa\r\n1996', 'Proximamente', 16),
('', 'Recopa Sudamericana\r\n1997', 'Proximamente', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciones`
--

CREATE TABLE `posiciones` (
  `id` int(5) NOT NULL,
  `nombre_posicion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posiciones`
--

INSERT INTO `posiciones` (`id`, `nombre_posicion`) VALUES
(1, 'Arquero'),
(2, 'Defensor'),
(3, 'Mediocampista'),
(4, 'Delantero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayectorias`
--

CREATE TABLE `trayectorias` (
  `id` int(11) NOT NULL,
  `jugador_id` int(11) NOT NULL,
  `club` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trayectorias`
--

INSERT INTO `trayectorias` (`id`, `jugador_id`, `club`) VALUES
(1, 1, 'Gimnasia y Esgrima Mendoza (2013-2021)'),
(2, 1, 'Atlético Tucumán (2020-2021)'),
(3, 1, 'Atlético Tucumán (2022-2023)'),
(4, 1, 'Vélez Sarsfield (2024-actualidad)'),
(5, 2, 'Peñarol (URU)'),
(6, 2, 'Vélez Sarsfield'),
(7, 3, 'Vélez Sarsfield'),
(8, 4, 'River Plate'),
(9, 4, 'Olimpique de Lyon (FRA)'),
(10, 4, 'Zenit de San Petersburgo (RUS)'),
(11, 4, 'P.F.C Sochi (RUS)'),
(12, 4, 'Vélez Sarfield'),
(13, 5, 'Rosario Central'),
(14, 5, 'Defensa y Justicia'),
(15, 5, 'Rosario Central'),
(16, 5, 'Argentinos Juniors'),
(17, 5, 'River Plate'),
(18, 5, 'Vélez Sarsfield'),
(19, 6, 'Vélez Sarsfield'),
(20, 7, 'Vélez Sarsfield'),
(21, 8, 'Liniers BB'),
(22, 8, 'Boca Juniors'),
(23, 8, 'Defensa y Justicia'),
(24, 8, 'Boca Juniors'),
(25, 8, 'Vélez Sarsfield'),
(26, 8, 'Colo Colo (CHI)'),
(27, 8, 'Vélez Sarsfield'),
(28, 9, 'Vélez Sarsfield'),
(29, 10, 'Estudiantes de La Plata'),
(30, 10, 'Inter de Miami (USA)'),
(31, 10, 'Estudiantes de La Plata'),
(32, 10, 'New York City (USA)'),
(33, 10, 'Vélez Sarsfield'),
(34, 11, 'Acassuso'),
(35, 11, 'Colón'),
(36, 11, 'Argentinos Juniors'),
(37, 11, 'Independiente'),
(38, 11, 'Athletico Paranaense'),
(39, 11, 'Defensa y Justicia'),
(40, 11, 'River Plate'),
(41, 11, 'Inter de Porto Alegre (BRA)'),
(42, 11, 'Xolos Tijuana (MEX)'),
(43, 11, 'Vélez Sarsfield'),
(44, 12, 'Independiente'),
(45, 12, 'Olimpo BB'),
(46, 12, 'Defensa y Justicia'),
(47, 12, 'Talleres Cba'),
(48, 12, 'Vélez Sarsfield');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posicion_id` (`posicion_id`);

--
-- Indices de la tabla `palmares`
--
ALTER TABLE `palmares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trayectorias`
--
ALTER TABLE `trayectorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jugador_id` (`jugador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `palmares`
--
ALTER TABLE `palmares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `trayectorias`
--
ALTER TABLE `trayectorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`posicion_id`) REFERENCES `posiciones` (`id`);

--
-- Filtros para la tabla `trayectorias`
--
ALTER TABLE `trayectorias`
  ADD CONSTRAINT `trayectorias_ibfk_1` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
