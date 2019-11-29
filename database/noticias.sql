-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2019 a las 17:59:43
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `noticias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Redactor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `Titulo`, `Fecha`, `Descripcion`, `Redactor`, `created_at`, `updated_at`) VALUES
(1, 'Primer noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Alejandro', '2019-11-28 00:51:10', '2019-11-28 00:51:10'),
(2, 'Segunda noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Juan', '2019-11-28 00:52:49', '2019-11-28 00:52:49'),
(3, 'Tercer noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Pedro', '2019-11-28 00:53:53', '2019-11-28 00:53:53'),
(4, 'Cuarta noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Marcos', '2019-11-28 00:58:10', '2019-11-28 00:58:10'),
(5, 'Quinta noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Luis', '2019-11-28 00:58:40', '2019-11-28 00:58:40'),
(6, 'Sexta noticia', '27/Noviembre/2019', 'Descripcion de la noticia', 'Antonio', '2019-11-28 01:00:49', '2019-11-28 01:00:49'),
(8, 'Septima Noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Juan jose', '2019-11-28 20:28:49', '2019-11-28 20:46:04'),
(9, 'Octava Noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Pedro', '2019-11-28 20:32:55', '2019-11-28 20:55:41'),
(10, 'Novena Noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Carlos', '2019-11-28 20:36:07', '2019-11-28 20:58:48'),
(11, 'Decima Noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Pedro', '2019-11-28 20:40:44', '2019-11-28 21:34:46'),
(12, 'Onceava noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Andrea', '2019-11-28 20:41:38', '2019-11-29 21:16:17'),
(14, 'Doceava noticia Udg', '28/Noviembre/2019', 'Descripcion de la noticia', 'Roberto', '2019-11-28 20:44:24', '2019-11-29 21:19:54'),
(18, 'Treceava noticiaUdg', '29/Noviembre/2019', 'Contenido de la noticia', 'Maria', '2019-11-29 21:56:09', '2019-11-29 22:57:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
