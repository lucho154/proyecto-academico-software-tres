-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2026 a las 17:25:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mathsolver_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ecuaciones_historial`
--

CREATE TABLE `ecuaciones_historial` (
  `id` bigint(20) NOT NULL,
  `ecuacion` varchar(500) DEFAULT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `soluciones` varchar(2000) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ecuaciones_historial`
--

INSERT INTO `ecuaciones_historial` (`id`, `ecuacion`, `fecha`, `soluciones`, `tipo`) VALUES
(1, '3.0x² + 5.0x + 7.0 = 0', '2026-11-08 10:22:16.000000', '', 'Ecuación cuadrática'),
(2, '3.0x + (6.0) = 0', '2026-11-08 10:23:51.000000', 'x = -2.0', 'Ecuación lineal'),
(3, '2.0x² + 4.0x + -6.0 = 0', '2026-11-08 10:47:19.000000', 'x₁ = 1.0 | x₂ = -3.0', 'Ecuación cuadrática'),
(4, '3.0x + (6.0) = 0', '2026-11-08 10:47:58.000000', 'x = -2.0', 'Ecuación lineal'),
(5, '3.0x + (6.0) = 0', '2026-11-08 10:51:54.000000', 'x = -2.0', 'Ecuación lineal'),
(6, '2.0x² + 4.0x + -6.0 = 0', '2026-11-08 10:52:39.000000', 'x₁ = 1.0 | x₂ = -3.0', 'Ecuación cuadrática'),
(7, '1.0x² + 0.0x + -9.0 = 0', '2026-11-08 10:53:07.000000', 'x₁ = 3.0 | x₂ = -3.0', 'Ecuación cuadrática'),
(8, '-1.0x² + 2.0x + 5.0 = 0', '2026-11-08 10:53:35.000000', 'x₁ = -1.4494897427831779 | x₂ = 3.449489742783178', 'Ecuación cuadrática'),
(9, 'x³ + 1.0x² + -6.0x + -6.0 = 0', '2026-11-08 10:53:57.000000', 'x = -1', 'Polinomio cúbico'),
(10, 'x³ + 2.0x² + 3.0x + 1.0 = 0', '2026-11-08 10:54:17.000000', '', 'Polinomio cúbico'),
(11, 'Sistema de dos ecuaciones con dos incógnitas', '2026-11-08 10:54:57.000000', 'x = 0.5714285714285714 | y = 1.2857142857142858', 'Sistema de ecuaciones'),
(12, 'x³ + 2.0x² + 3.0x + 1.0 = 0', '2026-11-08 10:55:50.000000', '', 'Polinomio cúbico'),
(13, '2.0x² + 4.0x + -6.0 = 0', '2026-11-08 11:09:08.000000', 'x₁ = 1.0 | x₂ = -3.0', 'Ecuación cuadrática'),
(14, '3.0x + (6.0) = 0', '2026-11-08 11:09:30.000000', 'x = -2.0', 'Ecuación lineal'),
(15, 'Sistema de dos ecuaciones con dos incógnitas', '2026-11-08 11:10:07.000000', 'x = 0.5714285714285714 | y = 1.2857142857142858', 'Sistema de ecuaciones'),
(16, '1.0x³ + (-6.0)x² + (11.0)x + (-6.0) = 0', '2026-11-08 11:10:32.000000', 'x = 1 | x = 2 | x = 3', 'Polinomio cúbico (Grado 3)'),
(17, '2.0x² + (4.0)x + (-6.0) = 0', '2026-11-08 11:10:59.000000', 'x1 = 1,0000 | x2 = -3,0000', 'Polinomio Cuadrático (Grado 2)'),
(18, '3.0x + (6.0) = 0', '2026-11-08 11:11:29.000000', 'x = -2,0000', 'Polinomio Lineal (Grado 1)'),
(19, '3.0x + (6.0) = 0', '2026-11-08 11:15:53.000000', 'x = -2.0', 'Ecuación lineal'),
(20, '-2.0x + (-8.0) = 0', '2026-11-08 11:16:12.000000', 'x = -4.0', 'Ecuación lineal'),
(21, '2.0x + (-5.0) = 0', '2026-11-08 11:16:54.000000', 'x = 2.5', 'Ecuación lineal'),
(22, '2.0x² + 4.0x + -6.0 = 0', '2026-11-08 11:17:10.000000', 'x₁ = 1.0 | x₂ = -3.0', 'Ecuación cuadrática'),
(23, '2.0x³ + (3.0)x² + (-5.0)x + (1.0) = 0', '2026-11-08 11:21:34.000000', '', 'Polinomio cúbico (Grado 3)'),
(24, '1.0x³ + (-6.0)x² + (11.0)x + (-6.0) = 0', '2026-11-08 11:21:48.000000', 'x = 1 | x = 2 | x = 3', 'Polinomio cúbico (Grado 3)'),
(25, 'Sistema de dos ecuaciones con dos incógnitas', '2026-11-08 11:22:06.000000', 'x = 0.5714285714285714 | y = 1.2857142857142858', 'Sistema de ecuaciones');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ecuaciones_historial`
--
ALTER TABLE `ecuaciones_historial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ecuaciones_historial`
--
ALTER TABLE `ecuaciones_historial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
