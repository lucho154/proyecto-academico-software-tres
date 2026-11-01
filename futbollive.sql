-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2026 a las 18:06:34
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
-- Base de datos: `futbollive`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` bigint(20) NOT NULL,
  `usuario` varchar(80) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_api` bigint(20) NOT NULL,
  `nombre` varchar(180) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario`, `tipo`, `id_api`, `nombre`, `creado_en`) VALUES
(2, 'prueba12', 'equipo', 33, 'Manchester United', '2026-10-25 14:36:30'),
(3, 'prueba12', 'liga', 1001, 'CONCACAF Women U20', '2026-10-25 14:36:40'),
(6, 'rock', 'liga', 882, 'Olympics Women - Qualification Asia', '2026-10-25 14:48:58'),
(7, 'dor', 'liga', 882, 'Olympics Women - Qualification Asia', '2026-10-25 15:39:36'),
(8, 'dor', 'equipo', 33, 'Manchester United', '2026-10-25 15:39:46'),
(9, 'dor', 'equipo', 36, 'Fulham', '2026-10-25 15:39:56'),
(10, 'dor', 'liga', 764, 'Premier League', '2026-10-25 15:40:06'),
(11, 'wel', 'equipo', 33, 'Manchester United', '2026-10-25 15:48:06'),
(12, 'wel', 'liga', 886, 'UEFA U17 Championship - Qualification', '2026-10-25 15:48:11'),
(13, 'wel', 'equipo', 39, 'Wolves', '2026-10-25 15:48:20'),
(14, 'wel', 'liga', 764, 'Premier League', '2026-10-25 15:48:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `apodo` varchar(30) NOT NULL,
  `password_hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `apodo`, `password_hash`) VALUES
(5, 'prueba12', '$2a$10$c81Z1xD9t9LEZfjohC7TZ.zkhADieNcT5/rD4U8T9mbL4DG.lkQC6'),
(10, 'rock', '$2a$10$3MCo23yG3sPtT3uL9tXnhO5h/d5UvIsUIJHOOsTFj5JXNOjdn/c1q'),
(11, 'dor', '$2a$10$dHPBSXk70xGaF3vXdzhC.eEeUUwC5CN8Mhn3bD5VwPclUtmN2IzlS'),
(12, 'wel', '$2a$10$R.Lw.UFLtvA/2qq4lCdQu.fqEbXmuYhHurrxEnnoRwgT1C4ukGYX2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorito_unico` (`usuario`,`tipo`,`id_api`),
  ADD UNIQUE KEY `UKrjwvvu4iplnfjo9lu40lknje3` (`usuario`,`tipo`,`id_api`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKdvhrim3j4foc5alxaos3riwaw` (`apodo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
