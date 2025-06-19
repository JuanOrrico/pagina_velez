-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2025 a las 03:41:51
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
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int(4) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `trayectoria` text NOT NULL,
  `dorsal` int(4) NOT NULL,
  `imgJugadores` varchar(50) DEFAULT 'Proximamente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `apellido`, `edad`, `posicion`, `trayectoria`, `dorsal`, `imgJugadores`) VALUES
(1, 'Tomas', 'Marchiori', 29, 'Arquero', 'Gimnasia y Esgrima Mendoza (2013-2021) - Atlético Tucumán (2020-2021) - Atlético Tucumán (2022-2023) - Vélez Sarsfield (2024-actualidad).', 1, 'Proximamente'),
(2, 'Randall', 'Rodriguez', 21, 'Arquero', 'Peñarol (URU) - Vélez Sarsfield.', 12, 'Proximamente'),
(3, 'Valentin', 'Gomez', 21, 'Defensor', 'Vélez Sarsfield', 31, 'Proximamente'),
(4, 'Emanuel', 'Mammana', 29, 'Defensor', 'River Plate- Olimpique de Lyon (FRA)- Zenit de San Petersburgo (RUS)- P.F.C Sochi (RUS)- Vélez Sarfield', 2, 'Proximamente'),
(5, 'Elías', 'Gomez', 30, 'Defensor', 'Rosario Central- Defensa y Justicia- Rosario Central- Argentinos Juniors- River Plate - Vélez Sarsfield.', 3, 'Proximamente'),
(6, 'Joaquin', 'Garcia', 23, 'Defensor', 'Vélez Sarsfield', 4, 'Proximamente'),
(7, 'Damian', 'Fernandez', 24, 'Defensor', 'Vélez Sarsfield', 34, 'Proximamente'),
(8, 'Agustin', 'Bouzat', 31, 'Mediocampista', 'Liniers BB, Boca Juniors, Defensa y Justicia, Boca Juniors, Vélez Sarsfield, Colo Colo (CHI) y Vélez Sarsfield.', 26, 'Proximamente'),
(9, 'Christian', 'Ordoñez', 20, 'Mediocampista', 'Vélez Sarsfield', 32, 'Proximamente'),
(10, 'Matias', 'Pellegrini', 25, 'Mediocampista', 'Estudiantes de La Plata- Inter de Miami (USA)- Estudiantes de La Plata- New York City (USA)- Vélez Sarsfield.', 11, 'Proximamente'),
(11, 'Braian', 'Romero', 33, 'Delantero', 'Acassuso - Colón - Argentinos Juniors - Independiente - Athletico Paranaense - Defensa y Justicia - River Plate - Inter de Porto Alegre (BRA) - Xolos Tijuana (MEX) - Vélez Sarsfield.', 9, 'Proximamente'),
(12, 'Francisco', 'Pizzini', 31, 'Delantero', 'Independiente - Olimpo BB - Defensa y Justicia - Talleres Cba - Vélez Sarsfield.', 20, 'Proximamente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palmares`
--

CREATE TABLE `palmares` (
  `id` int(11) NOT NULL,
  `torneos_locales` varchar(50) NOT NULL,
  `torneos_internacionales` varchar(50) NOT NULL,
  `imgCopas` varchar(50) DEFAULT 'Proximamente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `palmares`
--

INSERT INTO `palmares` (`id`, `torneos_locales`, `torneos_internacionales`, `imgCopas`) VALUES
(1, 'Torneo Nacional 1968', '', 'Proximamente'),
(2, 'Torneo Clausura 1993', '', 'Proximamente'),
(3, 'Torneo Apertura 1995', '', 'Proximamente'),
(4, 'Torneo Clausura 1996', '', 'Proximamente'),
(5, 'Torneo Clausura 1998', '', 'Proximamente'),
(6, 'Torneo Clausura 2005', '', 'Proximamente'),
(7, 'Torneo Clausura 2009', '', 'Proximamente'),
(8, 'Torneo Clausura 2011', '', 'Proximamente'),
(9, 'Torneo Inicial 2012', '', 'Proximamente'),
(10, 'Fútbol Argentino 2012/2013', '', 'Proximamente'),
(11, 'Supercopa Argentina 2014', '', 'Proximamente'),
(12, 'Liga Profesional 2024', '', 'Proximamente'),
(13, '', 'Copa Libertadores de América 1994', 'Proximamente'),
(14, '', 'Copa Europeo-Sudamericana 1994', 'Proximamente'),
(15, '', 'Copa Interamericana 1996', 'Proximamente'),
(16, '', 'Supercopa 1996', 'Proximamente'),
(17, '', 'Recopa Sudamericana 1997', 'Proximamente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `palmares`
--
ALTER TABLE `palmares`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `palmares`
--
ALTER TABLE `palmares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
