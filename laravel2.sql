-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2024 a las 00:40:19
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
-- Base de datos: `laravel2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE `datos_empresa` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `nombre_propietario` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `informacion_adicional` text DEFAULT NULL,
  `logo_empresa` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_empresa`
--

INSERT INTO `datos_empresa` (`id`, `nombre_empresa`, `nombre_propietario`, `telefono`, `correo`, `municipio`, `direccion`, `whatsapp`, `departamento`, `informacion_adicional`, `logo_empresa`, `created_at`, `updated_at`) VALUES
(1, 'Heladería Saritaa', 'Elvia Roxana Sical Hernández', NULL, NULL, 'Salamá', NULL, NULL, 'Baja Verapaz', 'aun no se llenan todos los campos', 'hc2aYdOREUQbWaLPe0fvmPJlQpj5od2shtsQlf4U.png', '2024-08-28 09:15:09', '2024-08-29 07:34:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio_unitario`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 1, 20.00, 20.00, '2024-09-03 12:25:44', '2024-09-03 12:25:44'),
(2, 3, 4, 1, 20.00, 20.00, '2024-09-03 12:27:09', '2024-09-03 12:27:09'),
(3, 3, 2, 1, 5.00, 5.00, '2024-09-03 12:27:09', '2024-09-03 12:27:09'),
(4, 3, 5, 1, 5.00, 5.00, '2024-09-03 12:27:09', '2024-09-03 12:27:09'),
(5, 4, 4, 1, 20.00, 20.00, '2024-09-03 12:32:38', '2024-09-03 12:32:38'),
(6, 4, 6, 1, 6.00, 6.00, '2024-09-03 12:32:38', '2024-09-03 12:32:38'),
(10, 8, 2, 1, 5.00, 5.00, '2024-09-03 12:44:59', '2024-09-03 12:44:59'),
(11, 9, 2, 8, 40.00, 320.00, '2024-09-03 12:54:07', '2024-09-03 12:54:07'),
(12, 10, 2, 1, 5.00, 5.00, '2024-09-03 12:54:31', '2024-09-03 12:54:31'),
(13, 11, 5, 5, 25.00, 125.00, '2024-09-03 13:00:41', '2024-09-03 13:00:41'),
(14, 12, 9, 3, 18.00, 54.00, '2024-09-03 22:35:03', '2024-09-03 22:35:03'),
(15, 13, 10, 1, 10.00, 10.00, '2024-09-03 23:37:07', '2024-09-03 23:37:07'),
(16, 13, 6, 1, 6.00, 6.00, '2024-09-03 23:37:07', '2024-09-03 23:37:07'),
(17, 14, 15, 1, 25.00, 25.00, '2024-09-04 08:17:26', '2024-09-04 08:17:26'),
(18, 15, 12, 1, 75.00, 75.00, '2024-09-04 08:59:03', '2024-09-04 08:59:03'),
(19, 16, 16, 1, 15.00, 15.00, '2024-09-04 03:10:35', '2024-09-04 03:10:35'),
(20, 17, 2, 1, 5.00, 5.00, '2024-09-04 05:26:50', '2024-09-04 05:26:50'),
(21, 18, 2, 1, 5.00, 5.00, '2024-09-04 06:23:50', '2024-09-04 06:23:50'),
(22, 19, 4, 4, 80.00, 320.00, '2024-09-04 06:40:08', '2024-09-04 06:40:08'),
(23, 20, 8, 1, 5.00, 5.00, '2024-09-04 21:04:30', '2024-09-04 21:04:30'),
(24, 21, 2, 1, 5.00, 5.00, '2024-09-04 21:22:46', '2024-09-04 21:22:46'),
(25, 24, 4, 1, 20.00, 20.00, '2024-09-04 23:06:04', '2024-09-04 23:06:04'),
(26, 26, 4, 1, 20.00, 20.00, '2024-09-04 23:18:43', '2024-09-04 23:18:43'),
(27, 27, 4, 1, 20.00, 20.00, '2024-09-04 23:21:39', '2024-09-04 23:21:39'),
(28, 28, 4, 1, 20.00, 20.00, '2024-09-04 23:22:10', '2024-09-04 23:22:10'),
(29, 29, 4, 1, 20.00, 20.00, '2024-09-04 23:27:15', '2024-09-04 23:27:15'),
(30, 30, 4, 1, 20.00, 20.00, '2024-09-04 23:32:35', '2024-09-04 23:32:35'),
(31, 31, 4, 1, 20.00, 20.00, '2024-09-04 23:35:55', '2024-09-04 23:35:55'),
(32, 32, 4, 1, 20.00, 20.00, '2024-09-04 23:37:07', '2024-09-04 23:37:07'),
(33, 33, 4, 1, 20.00, 20.00, '2024-09-04 23:37:21', '2024-09-04 23:37:21'),
(34, 34, 5, 1, 5.00, 5.00, '2024-09-04 23:41:48', '2024-09-04 23:41:48'),
(35, 35, 5, 1, 5.00, 5.00, '2024-09-04 23:47:20', '2024-09-04 23:47:20'),
(36, 36, 5, 1, 5.00, 5.00, '2024-09-04 23:48:58', '2024-09-04 23:48:58'),
(37, 37, 5, 1, 5.00, 5.00, '2024-09-04 23:49:24', '2024-09-04 23:49:24'),
(38, 38, 5, 1, 5.00, 5.00, '2024-09-04 23:53:52', '2024-09-04 23:53:52'),
(39, 39, 6, 1, 6.00, 6.00, '2024-09-05 00:03:45', '2024-09-05 00:03:45'),
(40, 40, 6, 1, 6.00, 6.00, '2024-09-05 00:07:37', '2024-09-05 00:07:37'),
(41, 41, 6, 1, 6.00, 6.00, '2024-09-05 00:14:44', '2024-09-05 00:14:44'),
(42, 42, 6, 1, 6.00, 6.00, '2024-09-05 00:16:47', '2024-09-05 00:16:47'),
(43, 43, 6, 1, 6.00, 6.00, '2024-09-05 00:18:20', '2024-09-05 00:18:20'),
(44, 44, 6, 1, 6.00, 6.00, '2024-09-05 00:19:57', '2024-09-05 00:19:57'),
(45, 45, 6, 1, 6.00, 6.00, '2024-09-05 00:26:00', '2024-09-05 00:26:00'),
(46, 46, 2, 1, 5.00, 5.00, '2024-09-05 00:28:50', '2024-09-05 00:28:50'),
(47, 47, 2, 1, 5.00, 5.00, '2024-09-05 00:31:20', '2024-09-05 00:31:20'),
(48, 48, 2, 1, 5.00, 5.00, '2024-09-05 00:34:37', '2024-09-05 00:34:37'),
(49, 49, 2, 1, 5.00, 5.00, '2024-09-05 00:35:35', '2024-09-05 00:35:35'),
(50, 50, 2, 1, 5.00, 5.00, '2024-09-05 00:37:37', '2024-09-05 00:37:37'),
(51, 51, 2, 1, 5.00, 5.00, '2024-09-05 00:38:40', '2024-09-05 00:38:40'),
(52, 52, 2, 1, 5.00, 5.00, '2024-09-05 00:39:28', '2024-09-05 00:39:28'),
(53, 53, 2, 1, 5.00, 5.00, '2024-09-05 00:53:11', '2024-09-05 00:53:11'),
(54, 54, 2, 1, 5.00, 5.00, '2024-09-05 01:00:09', '2024-09-05 01:00:09'),
(55, 55, 2, 1, 5.00, 5.00, '2024-09-05 01:07:52', '2024-09-05 01:07:52'),
(56, 56, 2, 1, 5.00, 5.00, '2024-09-05 01:10:41', '2024-09-05 01:10:41'),
(57, 57, 2, 1, 5.00, 5.00, '2024-09-05 01:13:57', '2024-09-05 01:13:57'),
(58, 58, 2, 1, 5.00, 5.00, '2024-09-05 01:20:51', '2024-09-05 01:20:51'),
(59, 59, 2, 1, 5.00, 5.00, '2024-09-05 01:31:03', '2024-09-05 01:31:03'),
(60, 60, 2, 1, 5.00, 5.00, '2024-09-05 01:34:23', '2024-09-05 01:34:23'),
(61, 61, 2, 1, 5.00, 5.00, '2024-09-05 01:45:14', '2024-09-05 01:45:14'),
(62, 62, 2, 1, 5.00, 5.00, '2024-09-05 01:46:58', '2024-09-05 01:46:58'),
(63, 63, 7, 1, 5.00, 5.00, '2024-09-05 01:50:57', '2024-09-05 01:50:57'),
(64, 64, 8, 1, 5.00, 5.00, '2024-09-05 01:53:53', '2024-09-05 01:53:53'),
(65, 65, 7, 1, 5.00, 5.00, '2024-09-05 01:58:40', '2024-09-05 01:58:40'),
(66, 66, 7, 1, 5.00, 5.00, '2024-09-05 02:05:03', '2024-09-05 02:05:03'),
(67, 67, 2, 1, 5.00, 5.00, '2024-09-05 02:18:34', '2024-09-05 02:18:34'),
(68, 67, 4, 1, 20.00, 20.00, '2024-09-05 02:18:34', '2024-09-05 02:18:34'),
(69, 67, 5, 1, 5.00, 5.00, '2024-09-05 02:18:34', '2024-09-05 02:18:34'),
(70, 67, 6, 1, 6.00, 6.00, '2024-09-05 02:18:34', '2024-09-05 02:18:34'),
(71, 68, 4, 1, 20.00, 20.00, '2024-09-05 02:21:21', '2024-09-05 02:21:21'),
(72, 69, 10, 1, 10.00, 10.00, '2024-09-05 02:29:35', '2024-09-05 02:29:35'),
(73, 70, 5, 1, 5.00, 5.00, '2024-09-05 02:31:26', '2024-09-05 02:31:26'),
(74, 71, 10, 1, 10.00, 10.00, '2024-09-05 02:35:41', '2024-09-05 02:35:41'),
(75, 72, 7, 1, 5.00, 5.00, '2024-09-05 02:38:20', '2024-09-05 02:38:20'),
(76, 72, 8, 1, 5.00, 5.00, '2024-09-05 02:38:20', '2024-09-05 02:38:20'),
(77, 72, 9, 1, 6.00, 6.00, '2024-09-05 02:38:20', '2024-09-05 02:38:20'),
(78, 72, 10, 2, 20.00, 40.00, '2024-09-05 02:38:20', '2024-09-05 02:38:20'),
(79, 73, 10, 2, 20.00, 40.00, '2024-09-05 02:51:11', '2024-09-05 02:51:11'),
(80, 74, 5, 2, 10.00, 20.00, '2024-09-05 03:03:31', '2024-09-05 03:03:31'),
(81, 77, 7, 2, 10.00, 20.00, '2024-09-05 03:52:36', '2024-09-05 03:52:36'),
(82, 77, 8, 1, 5.00, 5.00, '2024-09-05 03:52:36', '2024-09-05 03:52:36'),
(83, 88, 2, 2, 5.00, 10.00, '2024-09-05 05:34:47', '2024-09-05 05:34:47'),
(84, 89, 2, 1, 5.00, 5.00, '2024-09-05 05:35:36', '2024-09-05 05:35:36'),
(85, 89, 4, 2, 20.00, 40.00, '2024-09-05 05:35:36', '2024-09-05 05:35:36'),
(86, 90, 9, 2, 6.00, 12.00, '2024-09-05 05:37:42', '2024-09-05 05:37:42'),
(87, 91, 2, 2, 5.00, 10.00, '2024-09-05 05:40:17', '2024-09-05 05:40:17'),
(88, 91, 5, 1, 5.00, 5.00, '2024-09-05 05:40:17', '2024-09-05 05:40:17'),
(89, 91, 6, 2, 6.00, 12.00, '2024-09-05 05:40:17', '2024-09-05 05:40:17'),
(90, 92, 10, 3, 10.00, 30.00, '2024-09-05 05:45:33', '2024-09-05 05:45:33'),
(91, 93, 9, 2, 6.00, 12.00, '2024-09-05 05:50:02', '2024-09-05 05:50:02'),
(92, 93, 8, 1, 5.00, 5.00, '2024-09-05 05:50:02', '2024-09-05 05:50:02'),
(93, 94, 19, 3, 7.00, 21.00, '2024-09-05 17:12:03', '2024-09-05 17:12:03'),
(94, 95, 5, 1, 5.00, 5.00, '2024-09-05 17:17:29', '2024-09-05 17:17:29'),
(95, 96, 6, 1, 6.00, 6.00, '2024-09-05 17:25:21', '2024-09-05 17:25:21'),
(96, 97, 4, 1, 20.00, 20.00, '2024-09-05 17:27:54', '2024-09-05 17:27:54'),
(97, 98, 6, 1, 6.00, 6.00, '2024-09-05 18:16:44', '2024-09-05 18:16:44'),
(98, 99, 5, 1, 5.00, 5.00, '2024-09-06 00:20:31', '2024-09-06 00:20:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_15_155520_create_roles_table', 2),
(5, '2024_08_15_155759_add_role_id_to_users_table', 2),
(6, '2024_08_19_235503_add_estatus_to_users_table', 3),
(7, '2024_08_21_022404_create_tipos_productos_table', 4),
(8, '2024_08_21_021110_create_productos_table', 5),
(9, '2024_08_22_060755_add_precio_to_productos_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha_pedido` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha_pedido`, `total`, `descripcion`, `created_at`, `updated_at`, `estatus`) VALUES
(1, '2024-08-27', 0.00, 'Primer prueba de pedidos que se realizara', '2024-08-27 22:54:54', '2024-08-27 22:39:54', 0),
(2, '2024-08-27', 0.00, 'segunda prueba de pedido', '2024-08-28 04:43:32', '2024-08-27 22:45:15', 0),
(3, '2024-08-27', 0.00, 'tercera prueba de pedido', '2024-08-28 04:56:20', '2024-08-27 23:01:49', 0),
(4, '2024-08-27', 0.00, 'cuarta prueba xd', '2024-08-28 05:05:07', '2024-08-27 23:22:14', 0),
(5, '2024-08-27', 48.00, 'quinta prueba', '2024-08-28 05:38:09', '2024-08-27 23:38:38', 0),
(6, '2024-08-27', 104.00, 'sexta prueba', '2024-08-28 05:55:50', '2024-08-28 00:27:36', 0),
(7, '2024-08-27', 71.00, 'hola', '2024-08-28 06:29:40', '2024-08-28 00:34:47', 0),
(8, '2024-08-27', 24.00, 'hola2', '2024-08-28 06:48:15', '2024-08-28 01:05:25', 0),
(9, '2024-08-27', 27.00, 'hola3', '2024-08-28 07:06:00', '2024-08-28 01:07:00', 0),
(10, '2024-08-27', 36.00, 'pediodsadsjaodasnjnaf', '2024-08-28 07:10:34', '2024-08-28 01:10:51', 0),
(11, '2024-08-27', 32.00, 'dsfdsfsafs', '2024-08-28 07:16:45', '2024-08-28 01:17:14', 0),
(12, '2024-08-27', 0.00, 'ultima pruea', '2024-08-28 07:20:55', '2024-08-28 01:21:21', 0),
(13, '2024-08-27', 35.00, 'ultimassasasasas', '2024-08-28 07:22:31', '2024-08-28 01:24:25', 0),
(14, '2024-08-31', 72.00, 'pedido de prueba enseñada', '2024-09-01 01:59:15', '2024-08-31 20:00:13', 0),
(15, '2024-09-04', 74.00, 'Pedido de la ultima prueba', '2024-09-04 20:40:23', '2024-09-04 20:41:41', 0),
(16, '2024-09-04', 58.00, 'chgfh', '2024-09-04 21:32:16', '2024-09-04 21:34:26', 0),
(17, '2024-09-05', 12.00, 'hola', '2024-09-06 00:17:00', '2024-09-06 00:18:07', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

CREATE TABLE `pedido_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS (`cantidad` * `precio_compra`) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_productos`
--

INSERT INTO `pedido_productos` (`id`, `id_pedido`, `id_producto`, `cantidad`, `precio_compra`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 6, 12.00, '2024-08-28 00:58:23', '2024-08-28 00:58:23'),
(2, 1, 15, 2, 23.00, '2024-08-28 02:44:51', '2024-08-28 02:44:51'),
(3, 1, 14, 5, 8.00, '2024-08-28 02:57:27', '2024-08-28 02:57:27'),
(12, 7, 11, 3, 12.00, '2024-08-28 06:34:17', '2024-08-28 00:46:43'),
(13, 7, 15, 1, 23.00, '2024-08-28 06:34:28', '2024-08-28 06:34:28'),
(14, 7, 2, 1, 4.00, '2024-08-28 06:37:08', '2024-08-28 06:37:08'),
(15, 8, 11, 1, 12.00, '2024-08-28 06:48:28', '2024-08-28 00:48:54'),
(17, 8, 2, 3, 4.00, '2024-08-28 06:50:00', '2024-08-28 06:50:00'),
(18, 9, 11, 2, 12.00, '2024-08-28 07:06:36', '2024-08-28 01:06:41'),
(19, 9, 5, 1, 3.00, '2024-08-28 07:06:52', '2024-08-28 07:06:52'),
(20, 10, 11, 3, 12.00, '2024-08-28 07:10:45', '2024-08-28 07:10:45'),
(21, 11, 14, 2, 8.00, '2024-08-28 07:16:57', '2024-08-28 07:16:57'),
(22, 11, 14, 2, 8.00, '2024-08-28 07:17:06', '2024-08-28 01:17:09'),
(24, 13, 11, 1, 12.00, '2024-08-28 07:23:56', '2024-08-28 07:23:56'),
(25, 13, 15, 1, 23.00, '2024-08-28 07:24:07', '2024-08-28 07:24:07'),
(26, 14, 11, 5, 12.00, '2024-09-01 01:59:49', '2024-09-01 01:59:49'),
(27, 14, 18, 2, 6.00, '2024-09-01 02:00:04', '2024-09-01 02:00:04'),
(28, 15, 18, 11, 6.00, '2024-09-04 20:40:41', '2024-09-04 20:40:52'),
(29, 15, 5, 2, 4.00, '2024-09-04 20:41:22', '2024-09-04 20:41:22'),
(30, 16, 7, 3, 4.00, '2024-09-04 21:33:50', '2024-09-04 21:33:50'),
(31, 16, 15, 2, 23.00, '2024-09-04 21:34:14', '2024-09-04 21:34:14'),
(32, 17, 7, 3, 4.00, '2024-09-06 00:17:37', '2024-09-06 00:17:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `precio_compra` decimal(10,2) DEFAULT NULL,
  `estatus` varchar(255) NOT NULL DEFAULT 'activo',
  `imagen` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_ingreso` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `tipo_producto_id`, `cantidad`, `precio`, `precio_compra`, `estatus`, `imagen`, `usuario_id`, `fecha_ingreso`, `created_at`, `updated_at`) VALUES
(2, 'Paleta Fruta Nance', NULL, 2, 4, 5.00, 4.00, 'disponible', 'cfRVjyl8SHwSZKX6aiIFaUxfG2AGPxyxAtXQ0Xi1.png', 1, '2024-09-04 06:00:00', NULL, '2024-09-05 05:40:17'),
(4, 'Banana', NULL, 1, 5, 20.00, 15.00, 'disponible', 'loBFW1pGLlNocuUkYBmLlVcvMZZCDIjbnhnw3ITG.png', 1, '2024-09-04 06:00:00', '2024-08-23 01:25:33', '2024-09-05 17:27:54'),
(5, 'Paleta Fruta Fresa', NULL, 2, 3, 5.00, 4.00, 'disponible', 'ZjRGEAceY3l6cZoziQ5cq0IjeQbZOowBxuz50J88.png', 1, '2024-09-04 06:00:00', '2024-08-23 01:32:36', '2024-09-06 00:20:31'),
(6, 'Paleta Fruta Coco', NULL, 2, 5, 6.00, 5.00, 'disponible', 'kMPINykYp72jnaIK2LaSI5Df0TofgORaMdQjYEuV.png', 1, '2024-09-04 06:00:00', '2024-08-23 01:38:31', '2024-09-05 18:16:44'),
(7, 'Paleta Fruta Mango Verde', NULL, 2, 1, 5.00, 4.00, 'disponible', 'nVcztB3js6UVtIyJYqGSIJkoArilQzL5tC1FTIJ7.png', 1, '2024-09-02 06:00:00', '2024-08-23 01:40:45', '2024-09-05 03:52:36'),
(8, 'Paleta Fruta Mango con Chamoy', NULL, 2, 5, 5.00, 4.00, 'disponible', 'MZbphD3nq48ZHFVH6oQLl7sCQ0jNCBpAPqgbmPK3.png', 1, '2024-09-02 06:00:00', '2024-08-23 01:51:30', '2024-09-05 05:50:02'),
(9, 'Paleta Sandia', NULL, 2, 2, 6.00, 5.00, 'disponible', 'pOO0rpggWI1F9FHtMqFSiHxYk0Qiky8bwPT43zyF.png', 1, '2024-09-02 06:00:00', '2024-08-23 02:00:09', '2024-09-05 05:50:02'),
(10, 'Cinta Negra', NULL, 2, 0, 10.00, 9.00, 'agotado', '5yXpmahfMU48uoDlSGnXyQpFQbsGgGy8xcYVGsTA.png', 1, '2024-09-02 06:00:00', '2024-08-23 09:54:45', '2024-09-05 05:45:33'),
(11, 'Nevada', NULL, 6, 10, 15.00, 12.00, 'disponible', 'o7hP5BI09KXjY2MmEUhahpE93UoMc7ITSRnBKCj9.png', 1, '2024-09-08 06:00:00', '2024-08-24 03:18:23', '2024-09-08 17:41:43'),
(12, 'Pastel Grande Napolitano', NULL, 7, 9, 75.00, 70.00, 'disponible', 'E6jDNYwaahLcvHjq4Cu5lHEdjFQmaTfQaXBuyvRE.png', 1, '2024-09-08 06:00:00', '2024-08-25 02:16:54', '2024-09-08 17:44:46'),
(13, 'Pastel Mediano de Choco Toffee', NULL, 8, 5, 24.00, 20.00, 'disponible', 'HhGdyqZPBxeRScb30VXXKGp4JQu81FETHHPHJMc8.png', 1, '2024-09-08 06:00:00', '2024-08-25 03:59:04', '2024-09-08 17:56:04'),
(14, 'Porcion de Pastel de Frutos Rojos', NULL, 10, 5, 10.00, 8.00, 'disponible', 'SKFjVHlhQV3Kpr6QN960tJEU1bnBMSfTlzm1DRqh.png', 1, '2024-09-08 06:00:00', '2024-08-26 23:25:42', '2024-09-08 19:19:15'),
(15, 'Pastel pequeño de Queso y Fresa', NULL, 9, 4, 25.00, 23.00, 'disponible', 'pwC5kRkzc9UVPvoyXHtqvDE0Ht1q59BNRuEAS926.png', 1, '2024-09-08 06:00:00', '2024-08-27 08:47:10', '2024-09-08 17:52:08'),
(16, 'Blok', NULL, 2, 14, 15.00, 16.00, 'disponible', 'EimCBpCZX9rDGjCSRuY5Q5AZvyv3YQBVzrYmWUYi.png', 1, '2024-09-08 06:00:00', '2024-08-27 08:52:20', '2024-09-08 17:37:00'),
(17, 'Cremosa Fresa', NULL, 2, 20, 10.00, 9.00, 'disponible', '5KNHJeHeZ4vDeqER2iVxvpnbi1GhYmK751iNDf2K.png', 1, '2024-09-08 06:00:00', '2024-08-27 08:53:56', '2024-09-08 17:55:05'),
(18, 'Helado tipo casero nance', NULL, 2, 3, 7.00, 6.00, 'disponible', 'yfl4hNe3i4vMuJSHEcfw2tL4Ms43POcX949uM1KW.png', 1, '2024-09-08 06:00:00', '2024-08-29 06:24:03', '2024-09-08 18:15:03'),
(19, 'Helado tipo casero fresa', NULL, 2, 2, 7.00, 6.00, 'disponible', 'iEUqiVGXklfkuFIQ3vXCVQIjy3Nu4vyZXssdSxfH.png', 1, '2024-08-28 06:00:00', '2024-08-29 08:33:43', '2024-09-05 17:12:03'),
(20, 'Coca cola lata', NULL, 11, 5, 6.00, 5.00, 'disponible', 'OVnrOYGBxT8zMKH84kwDIZnGfcRIXqWiLj7tjvnP.png', 1, '2024-09-08 06:00:00', '2024-09-04 20:35:39', '2024-09-08 17:29:22'),
(21, 'Bomba Sarita', NULL, 1, 4, 5.00, 4.00, 'disponible', 'ZfB219sQTtXi2vpF6WfSGckHV9ViLxDXCty8GIcV.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:35:44', '2024-09-08 18:35:44'),
(22, 'Sundae Especial', NULL, 1, 5, 5.00, 5.00, 'disponible', '2jg2bucdmf92iuHM3XCmijswAXHYp6AS3zwFggpq.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:36:27', '2024-09-08 18:36:27'),
(23, 'Sundae Galleta', NULL, 1, 5, 5.00, 5.00, 'disponible', 'mkfLQLMET49lpomC9TGw3eoV6RjdGueZ0KhAHTmB.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:37:05', '2024-09-08 18:37:05'),
(24, 'Sundae Galleta', NULL, 1, 5, 5.00, 5.00, 'disponible', '2gEQZ7A8lmKwwHbyiNRdokLv5TN4jDPX4pVMJarr.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:38:15', '2024-09-08 18:38:15'),
(25, 'Topping Sundae', NULL, 1, 5, 5.00, 5.00, 'disponible', 'thLEon5M0R92IYS0HTgtKIVoZLv14zgaFgn1hJ3f.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:38:45', '2024-09-08 18:38:45'),
(26, 'Cono Waffle doble Capuchino', NULL, 5, 5, 5.00, 5.00, 'disponible', 'cbj5KsUVoIJV58UKdXrauDY8CQ4qF3EH6ecClDOj.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:52:00', '2024-09-08 18:52:00'),
(27, 'Cono Waffle doble', NULL, 5, 5, 5.00, 5.00, 'disponible', 'x0Uyeydocr3kxwq9Tbw8atwnQoPmDoAm1i3pV89w.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:52:56', '2024-09-08 18:52:56'),
(28, 'Cono Waffle Topping', NULL, 5, 5, 5.00, 5.00, 'disponible', 'Xhqbr8ysXt6KpYVABDOiDJKIHbOs0cwMuYkVnHcl.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:53:43', '2024-09-08 18:53:43'),
(29, 'Cono Waffle Capuchino', NULL, 5, 5, 5.00, 5.00, 'disponible', '0vsE2vkyCAJ3ZbyPMuOVe6N13iIS9kX0T2WgNlnP.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:54:34', '2024-09-08 18:55:40'),
(30, 'Cono Choco Waffle', NULL, 5, 5, 5.00, 5.00, 'disponible', 'AUIBWR07iB4SQLj86qVYVVQPlC7qGZKxVeYl3NHM.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:56:21', '2024-09-08 18:56:21'),
(31, 'Cono Waffle', NULL, 5, 5, 5.00, 5.00, 'disponible', 'V9v3GQVl9dziiu9NkBjfmtJi09l6oeZQZgTGMWWe.png', 1, '2024-09-08 06:00:00', '2024-09-08 18:56:52', '2024-09-08 18:56:52'),
(32, 'Topping Shake', NULL, 6, 5, 5.00, 5.00, 'disponible', '4hriAnEhuLLaV877gQNuPMCYOxEks64NQPZVtvJM.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:00:54', '2024-09-08 19:00:54'),
(33, 'Milk Shake', NULL, 6, 5, 5.00, 5.00, 'disponible', 'KiRiCS7gVfD02N1yRcduWCBGiIzJJOdsGGs5Sii9.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:01:27', '2024-09-08 19:01:27'),
(34, 'Pastel Grande Queso y Fresas', NULL, 7, 5, 5.00, 5.00, 'disponible', 'ez036tcTsqoP4trLhrx4AYvOIy9B6fD5fZsojjdW.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:04:35', '2024-09-08 19:04:35'),
(35, 'Pastel Grande Frutos Rojos', NULL, 7, 5, 5.00, 5.00, 'disponible', 'poz25dOR2hteaUkO1MATZssgsF6qeBnIyGjLuEh0.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:05:17', '2024-09-08 19:05:17'),
(36, 'Pastel Mediano Napolitano', NULL, 8, 5, 5.00, 5.00, 'disponible', 'eLMp2pNHdIAotSnpC5AOgkynaWQ2by7gtuwaTcvu.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:07:33', '2024-09-08 19:07:33'),
(37, 'Pastel Mediano Galleta', NULL, 8, 5, 5.00, 5.00, 'disponible', 'mKxJmxaiXkRFLazYeGbcla27PBz7HUSupWQWvJSC.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:08:17', '2024-09-08 19:08:17'),
(38, 'Pastel Mediano Queso y Fresas', NULL, 8, 5, 5.00, 5.00, 'disponible', 'NkK0A5koZNE7XKwQxQwD2a4oBLjlDJXzAWWGx5wT.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:09:05', '2024-09-08 19:09:05'),
(39, 'Pastel Mediano Frutos Rojos', NULL, 8, 5, 5.00, 5.00, 'disponible', 'yC0JcLqTShcTo0qFXSezRmznj7VpVABmywzTWuYv.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:09:52', '2024-09-08 19:09:52'),
(40, 'Patel Pequeño Napolitano', NULL, 9, 5, 5.00, 5.00, 'disponible', 'BnifGCn7eCzzZx9cC9FSjceAs8SfPc8tXI7mUFCp.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:12:18', '2024-09-08 19:12:18'),
(41, 'Pastel Pequeño Frutos Rojos', NULL, 9, 5, 5.00, 5.00, 'disponible', 'MbTQKN04KkwPERHDiPnLcDohrH0dvN9hvmWJpLGi.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:13:36', '2024-09-08 19:13:36'),
(42, 'Pastel Pequeño Galleta', NULL, 9, 5, 5.00, 5.00, 'disponible', 'OFYi8eb6w5hW337B3YGWHUeLJw7ql6UAM6qeG2F4.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:14:20', '2024-09-08 19:14:20'),
(43, 'Pastel Pequeño Choco Toffee', NULL, 9, 5, 5.00, 5.00, 'disponible', '5cnCjj68rY4bKUaEaYIbHiu6eQKxDAPUGmEBux7Q.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:14:59', '2024-09-08 19:14:59'),
(44, 'Porcion de Pastel Queso y Fresa', NULL, 10, 5, 5.00, 5.00, 'disponible', 'J3G0c39LfHEdXNDoECu8sqK357CTzLabQumXmmzC.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:15:53', '2024-09-08 19:15:53'),
(45, 'Porcion de Pastel Choco Toffee', NULL, 9, 5, 5.00, 5.00, 'disponible', 'OHmYhVKFdAGaFTIH7DfYoQ9UbxgHQRWQC8AlccEv.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:16:40', '2024-09-08 19:16:40'),
(46, 'Porcion de Pastel Napolitano', NULL, 10, 5, 5.00, 5.00, 'disponible', 'BwiS1KVsuPDIoLQPqUO6arW4htLle4ZyFTKcCxs6.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:17:19', '2024-09-08 19:17:19'),
(47, 'Porcion de Pastel Galleta', NULL, 10, 5, 5.00, 5.00, 'disponible', '9T141x5wQMib1P0F35OPAF4v3ZfR7K60Do67rJfG.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:17:50', '2024-09-08 19:17:50'),
(48, 'Cinta Negra Crispy', NULL, 2, 5, 5.00, 5.00, 'disponible', 'yUhnwkKCtbUw49aynuMUEDZB3aIQ5c4htjyMsKkK.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:33:16', '2024-09-08 19:33:16'),
(49, 'Copa Sundae Chocolate', NULL, 2, 5, 5.00, 5.00, 'disponible', '8ofWVzw7mH97P2aFT2m1F6X9gHg0iplnpKwJQ2yR.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:34:08', '2024-09-08 19:34:08'),
(50, 'Copa Sundae Fresa', NULL, 2, 5, 5.00, 5.00, 'disponible', 'mL4uLI7dL1Cw7AzuSNirczTM3c8qLC578xpbnrrp.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:34:38', '2024-09-08 19:34:38'),
(51, 'Copa Sundae Dulce de Leche', NULL, 2, 5, 5.00, 5.00, 'disponible', 'ydQsHfrZXSmyZVrX3M3nKTraNWrbz0697I9j4SEH.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:35:10', '2024-09-08 19:35:10'),
(52, 'Cremosa Naranja', NULL, 2, 5, 5.00, 5.00, 'disponible', 'ap6tNUD4Z5XARlDLcO5Sj68ur4YGMNY0dO1OWNth.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:35:40', '2024-09-08 19:35:40'),
(53, 'Giga Almendra', NULL, 2, 5, 5.00, 5.00, 'disponible', 'eSx5lrPQb7otfo7dXgwzwiXMvBUwhiHnghktKQ0N.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:36:11', '2024-09-08 19:36:11'),
(54, 'Giga Clasico', NULL, 2, 5, 5.00, 5.00, 'disponible', 'gznFyhO4Mx8RER0mWXKUT65BLgVykxDtLsjCpCXH.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:36:42', '2024-09-08 19:36:42'),
(55, 'Giga Blanco con veta de Fresa', NULL, 2, 5, 5.00, 5.00, 'disponible', 'GUHaOvzaXhXaefldrX69yHIf5nVPE7IhsgK4LBdv.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:37:21', '2024-09-08 19:37:21'),
(56, 'Paleta Yogurt Fresa', NULL, 2, 5, 5.00, 5.00, 'disponible', 'lmDOvUEkDUgyWcK6pc5VX6DXmuPaW4Pi6Z7urb02.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:38:03', '2024-09-08 19:38:03'),
(57, 'Paleta Yogurt Melocoton', NULL, 2, 5, 5.00, 5.00, 'disponible', 'ozveNp23vzDfjdmOfjjwkjNNi651lY4Y3TN6hrj9.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:38:41', '2024-09-08 19:38:41'),
(58, 'Helado tipo casero ron con pasas', NULL, 2, 5, 5.00, 5.00, 'disponible', 'bv1Iu2Vm5VQlK8dLtC6ZVSgFtCXhBoToDNDJNQMY.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:39:36', '2024-09-08 19:39:36'),
(59, 'Helado tipo casero caramelo', NULL, 2, 5, 5.00, 5.00, 'disponible', '0MBTdYkDDMf2szNRXsWw5JZW5zzfDMkROZVtUlfS.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:40:04', '2024-09-08 19:40:04'),
(60, 'Sandwich queso y fresa', NULL, 2, 5, 5.00, 5.00, 'disponible', '0LzZK4MlD2bXReM8l6RVyEyWs34qek3x9JBnPLdH.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:40:51', '2024-09-08 19:40:51'),
(61, 'Sandwich de Chocolate', NULL, 2, 5, 5.00, 5.00, 'disponible', 'zIWpevZwOZtiChnHdiGoZsEEdLG9IJjk9Oz6VLMG.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:41:33', '2024-09-08 19:41:33'),
(62, 'Sanguchito', NULL, 2, 5, 5.00, 5.00, 'disponible', 'E265algISbHOTRZOWarATecbNr9Tl3jzhwhUlnAp.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:42:09', '2024-09-08 19:42:09'),
(63, 'Paleta GUD Fresa', NULL, 2, 5, 5.00, 5.00, 'disponible', 'LE6c58wft9dwDufxqmqRud8sJ0NgUpktqSCTELKg.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 19:45:03', '2024-09-08 19:47:02'),
(64, 'Paleta GUD Mango', NULL, 2, 5, 5.00, 5.00, 'disponible', 'kRQz2GzTK2uAbQDo8iHhXoC8PRsqTEcp6h811ASp.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 19:46:05', '2024-09-08 19:46:05'),
(65, 'Sorby Twist Cremoso', NULL, 2, 5, 5.00, 5.00, 'disponible', 'IHuldB6qYHYoXkR4D40EitH3TKPsp3yGbvn0GFV9.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:49:06', '2024-09-08 19:49:06'),
(66, 'Paleta Crunchy pop', NULL, 2, 5, 5.00, 5.00, 'disponible', 'mb1BPhKg8mGOr58wWHqGs1572SnfFEmS5MPAKWXn.png', 1, '2024-09-08 06:00:00', '2024-09-08 19:49:33', '2024-09-08 19:49:33'),
(67, 'Crema de Chocolate con Leche', NULL, 3, 5, 5.00, 5.00, 'disponible', 'f3OcdvtclwKckXjPKvknsAASG2XLKZIst4lkSOAZ.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:00:12', '2024-09-08 20:00:12'),
(68, 'Cobertura de Chocolate', NULL, 3, 5, 5.00, 5.00, 'disponible', 'DFitvoVIawIlY5huHajucjQPYIhuNWpRVFglsISB.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:00:40', '2024-09-08 20:00:40'),
(69, 'Tableta de Chocolate clasico 50grs', NULL, 3, 5, 5.00, 5.00, 'disponible', 'f80apdxy2lA2lyjcF6kwkZ2XblNHH4dorQg1AZqg.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:01:26', '2024-09-08 20:01:26'),
(70, 'Tableta de Chocolate clasico 10grs', NULL, 3, 5, 5.00, 5.00, 'disponible', 'vvUt1G591LxbIHh0GztE2nOardiexoqkaFCyzOpe.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:01:49', '2024-09-08 20:01:49'),
(71, 'Tableta de Chocolate crispy 50grs', NULL, 3, 10, 10.00, 10.00, 'disponible', '8Pns5QTZVXx0AMRUS4DntXHU4Ivfgkdqh5J3omAA.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:02:47', '2024-09-08 20:02:47'),
(72, 'Tableta de Chocolate crispy 10grs', NULL, 3, 5, 5.00, 5.00, 'disponible', 'fVUYspAGXjd5TxSYJvmIBL8L0fda0rKGOayFK7U1.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:03:18', '2024-09-08 20:03:18'),
(73, 'Sarita Shake Fresa', NULL, 3, 5, 5.00, 5.00, 'disponible', 'SYODe2mliCxq2nJI0kbBjEuSt6wRKs8CByWi1OhO.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:03:50', '2024-09-08 20:03:50'),
(74, 'Sarita Shake Vainilla', NULL, 3, 5, 5.00, 5.00, 'disponible', 'WRYDEV74xSgywDD596n8zYhRg1wohaMb5hJr5TaG.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:04:40', '2024-09-08 20:04:40'),
(75, 'Sarita Shake Chocolate', NULL, 3, 5, 5.00, 5.00, 'disponible', 'IoAwM0YSqg3t3YYEVHTVquOKYarbjpHrW5aLBXd0.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:05:21', '2024-09-08 20:05:21'),
(76, 'Servilletas Impresas', NULL, 12, 5, 5.00, 5.00, 'disponible', 'QO3i6vz1Xeremi50XR86YHBjIv3y4wendSthnsui.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 20:22:17', '2024-09-08 20:22:17'),
(77, 'Pajilla Impresa', NULL, 12, 5, 5.00, 5.00, 'disponible', 'zQa1XDSFCBCJBOkkEs1EL2Ev2Pp604pVLPMFe62E.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:22:49', '2024-09-08 20:22:49'),
(78, 'Galleta Oreo en Polvo', NULL, 12, 5, 5.00, 5.00, 'disponible', 'izrkOby8sJdXJlF8lee2aE8ySqla9L8g57fr5eLH.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 20:23:22', '2024-09-08 20:23:22'),
(79, 'Guinda Frasco de 8 onzas', NULL, 12, 5, 5.00, 5.00, 'disponible', 'Xpk6oIAdtRGJgoRhSgUgVXa1PYgk5UbGf76exX6c.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 20:23:55', '2024-09-08 20:23:55'),
(80, 'Melocoton lata', NULL, 12, 5, 5.00, 5.00, 'disponible', 'ITlpZwVimiAfMHhmAkKoSVI6I11v2Tb5UWV3Rdx9.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:24:29', '2024-09-08 20:24:29'),
(81, 'Mania libra 1LB', NULL, 12, 5, 5.00, 5.00, 'disponible', 'rwBffajVYX8aN3YJBXWQVAMHphfBsTb0AopJZBxM.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:25:07', '2024-09-08 20:25:07'),
(82, 'Mostacillas bolsa 16 onzas', NULL, 12, 5, 5.00, 5.00, 'disponible', '8Tqc7vnuFC6qBw7d9ofbxSsKq2552caCfsaLjmhu.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:25:42', '2024-09-08 20:25:42'),
(83, 'Cuchara para Bomba', NULL, 12, 5, 5.00, 5.00, 'disponible', '2B5ntDqAV7Sunvv2z6R0zzZxxp5exgA02qFC8gGH.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 20:26:08', '2024-09-08 20:34:10'),
(84, 'Cuchara para Banana', NULL, 12, 5, 5.00, 5.00, 'disponible', 'xGYS9pcVs8XawfwVeqoaVAmIt932s7Kd2etiYxtK.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 20:26:37', '2024-09-08 20:34:34'),
(85, 'Whippts', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:27:02', '2024-09-08 20:27:02'),
(86, 'Galleta Waffle redonda', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:27:38', '2024-09-08 20:27:38'),
(87, 'Bolsa Sarita', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:28:00', '2024-09-08 20:28:00'),
(88, 'Canasta Waffle', NULL, 12, 5, 5.00, 5.00, 'disponible', 'C5lZsvVVtXdiMceqdEs0dnmPlga6BpKFn8pCMdJV.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:28:36', '2024-09-08 20:28:36'),
(89, 'Mezcla especial para batir', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:29:18', '2024-09-08 20:29:18'),
(90, 'Topping de fresa', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:29:46', '2024-09-08 20:29:46'),
(91, 'Topping de piña', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:30:08', '2024-09-08 20:30:08'),
(92, 'Topping de chocolate', NULL, 12, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 20:30:29', '2024-09-08 20:30:29'),
(93, 'Conos waffle grande', NULL, 12, 5, 5.00, 5.00, 'disponible', 'n4MrLcbeXwPmgVZWboNUjEvxK5hARUHWPlSjCqsm.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:30:57', '2024-09-08 20:30:57'),
(94, 'Conos waffle pequeños', NULL, 12, 5, 5.00, 5.00, 'disponible', '9eLanZTPYPsCeS1dgkWPISUb3KVzonBBVttBq6YF.png', 1, '2024-09-08 06:00:00', '2024-09-08 20:32:18', '2024-09-08 20:32:18'),
(95, 'Cubeta chocolate', NULL, 13, 5, 5.00, 5.00, 'disponible', 'JNbYNJLwRUgLWMTcV067Wag9t8OafM4F82LTqnyn.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:07:35', '2024-09-08 21:07:35'),
(96, 'Cubeta fresa', NULL, 13, 5, 5.00, 5.00, 'disponible', '0vg4ZUY7jNnYd78x47L2n7uIDJRiLkvfe2jTHYQB.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:43:28', '2024-09-08 21:43:28'),
(97, 'Cubeta vainilla', NULL, 13, 5, 5.00, 5.00, 'disponible', 'OSdiO14quMSDptlJykdg8l3uQl6Ans7OM33RNfUO.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:44:26', '2024-09-08 21:44:26'),
(98, 'Cubeta ron con pasas', NULL, 13, 5, 5.00, 5.00, 'disponible', '7fVDIwpWy52csO2RcyxR4Zea2AmgrDDB1lEHl7kE.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:45:47', '2024-09-08 21:45:47'),
(99, 'Cubeta napolitano', NULL, 13, 5, 5.00, 5.00, 'disponible', 'T5cK4QfccuPW8b3MXIUakWKAglW0VZLN99Tr5DuR.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:46:28', '2024-09-08 21:46:28'),
(100, 'Cubeta queso fresa', NULL, 13, 5, 5.00, 5.00, 'disponible', 'td3zWExHiUbPS4LTxI5tU8qdZrWHVtv3nxQ3YExG.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:48:09', '2024-09-08 21:48:09'),
(101, 'Cubeta piña colada', NULL, 13, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:48:42', '2024-09-08 21:48:42'),
(102, 'Cubeta dulce de leche', NULL, 13, 5, 5.00, 5.00, 'disponible', 'k1Y1mXVOOqJh09znFWVkBSNh4B7YuMd98TFcoXq6.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:49:21', '2024-09-08 21:49:21'),
(103, 'Cubeta veteado de mango', NULL, 13, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:49:54', '2024-09-08 21:49:54'),
(104, 'Cubeta pistacho', NULL, 13, 5, 5.00, 5.00, 'disponible', '67iyc6xx9BcOm9SgHsee1pse1v9TLhTOek9lxnHF.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:50:32', '2024-09-08 21:50:32'),
(105, 'Cubeta galleta', NULL, 13, 5, 5.00, 5.00, 'disponible', '5lIVNMmjZOpd1CwTpmeV4sroH8HoJYLzGPN2SgtA.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:51:13', '2024-09-08 21:51:13'),
(106, 'Cubeta expreso fudge', NULL, 13, 5, 5.00, 5.00, 'disponible', 'JN6OBgg1yXF0IqyS7Qx2TgjyBz8NtBYdhtGQL7Qg.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:52:02', '2024-09-08 21:52:02'),
(107, 'Cubeta leche condensada con higos', NULL, 13, 5, 5.00, 5.00, 'disponible', 'NR7637QRf9DzvaiVHUy6nW5FON09OERHJUMZolDH.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:52:58', '2024-09-08 21:52:58'),
(108, 'Cubeta algondon de azucar', NULL, 13, 5, 5.00, 5.00, 'disponible', 'llyw7mq9SvKLFVjsuTdCZv3TxD6lOiEjW3f3SFAo.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:53:34', '2024-09-08 21:53:34'),
(109, 'Cubeta choco cereza', NULL, 13, 5, 5.00, 5.00, 'disponible', 'VXr34qjISHRFK32ugRAU6APwVAK2MvyhQg2q656e.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:54:09', '2024-09-08 21:54:09'),
(110, 'Cubeta nieve de uva', NULL, 14, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:55:24', '2024-09-08 21:55:24'),
(111, 'Cubeta nieve de mandarina', NULL, 14, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:55:55', '2024-09-08 21:55:55'),
(112, 'Cubeta nieve de guanaba', NULL, 14, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:56:17', '2024-09-08 21:56:17'),
(113, 'Cubeta nieve de mango', NULL, 14, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:56:39', '2024-09-08 21:56:39'),
(114, 'Cubeta nieve de limon', NULL, 14, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 21:56:58', '2024-09-08 21:56:58'),
(115, 'Medio galon fresa', NULL, 15, 5, 5.00, 5.00, 'disponible', 'cxETrlXvurnR5gRB6A9ggcfOtcqLV3lbY01nSK5k.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:57:48', '2024-09-08 21:57:48'),
(116, 'Medio galon vainilla', NULL, 15, 5, 5.00, 5.00, 'disponible', 'f9JADYUZuYOlLw6gflAdXvdtyKHLHmT4EorkLGLC.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:58:15', '2024-09-08 21:58:15'),
(117, 'Medio galon ron con pasas', NULL, 15, 5, 5.00, 5.00, 'disponible', 'yaCsE0K1RCYo8rDFARml3D9z1N37UhywZw9ZhEod.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:59:09', '2024-09-08 21:59:09'),
(118, 'Medio galon napolitano', NULL, 15, 5, 5.00, 5.00, 'disponible', 'Nrzq1XMEt49eg6naMFxkU5CspOvySi7mRwFnBjwE.png', 1, '2024-09-08 06:00:00', '2024-09-08 21:59:52', '2024-09-08 21:59:52'),
(119, 'Medio galon queso y fresas', NULL, 15, 5, 5.00, 5.00, 'disponible', 'cPspLGrhMfL3qFfB4bIJichiN9GzvbRp2BWvD4YX.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:00:37', '2024-09-08 22:00:37'),
(120, 'Medio galon chocolate', NULL, 15, 5, 5.00, 5.00, 'disponible', 'N8Zp3orHKDBmccJoOCpzPZWLDMNqik8NroBxhiXE.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:01:25', '2024-09-08 22:01:25'),
(121, 'Medio galon choco chips', NULL, 15, 5, 5.00, 5.00, 'disponible', 'Y1U9pOoPJlRlAqSwWkd8E36dKMiVNFkzR0YthVXB.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:02:00', '2024-09-08 22:02:00'),
(122, 'Medio galon pistacho', NULL, 15, 5, 5.00, 5.00, 'disponible', 'S2WwMNeHCNDbj2F3uymgq53cpWiZ3iLuzjztHcDT.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:02:45', '2024-09-08 22:02:45'),
(123, 'Medio galon galleta', NULL, 15, 5, 5.00, 5.00, 'disponible', 'mTIaxC6wVMRowEtMt9IPipcRmVgqVRozKvLfOWSt.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:03:20', '2024-09-08 22:03:20'),
(124, 'Medio galon expreso fudge', NULL, 15, 5, 5.00, 5.00, 'disponible', 'for33beanT8a1j5W5XxmcRW1PvCtLmqAwwealdQn.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:03:57', '2024-09-08 22:03:57'),
(125, 'Medio galon algodon de azucar', NULL, 15, 5, 5.00, 5.00, 'disponible', 'hLiOH4kDpfhHCwk6wR1PrE1KktJL5ZU4jnSmToqO.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:04:32', '2024-09-08 22:04:32'),
(126, 'Medio galon choco cereza', NULL, 15, 5, 5.00, 5.00, 'disponible', 'JYhXaBVXaRh42JpIWnZwjlLAxp806M6aJ5xIIsrd.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:05:03', '2024-09-08 22:05:03'),
(127, 'Litro chocolate', NULL, 16, 5, 5.00, 5.00, 'disponible', 'NW5u0CvUR1BANeRYznC4skqvkMewDd5VkNGKH36U.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:05:51', '2024-09-08 22:05:51'),
(128, 'Litro fresa', NULL, 16, 5, 5.00, 5.00, 'disponible', 'vFLKHWg5pUwWJM8wbUj326373iolZU02EuK5vSib.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:06:21', '2024-09-08 22:06:21'),
(129, 'Litro napolitano', NULL, 16, 5, 5.00, 5.00, 'disponible', 'YTurZkTljKS75ibjgMP96ITnEOgzT6pwa1LOrEYR.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:06:52', '2024-09-08 22:06:52'),
(130, 'Litro ron con pasas', NULL, 16, 5, 5.00, 5.00, 'disponible', 'gK5yDNBWYJteqI8FNpeR01qtjy1Ed4VzKOzotKHj.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:07:46', '2024-09-08 22:07:46'),
(131, 'Litro queso y fresa', NULL, 16, 5, 5.00, 5.00, 'disponible', '4nXrBKeFblGVMMNOEZz7DQgt90YgV0xqAWu7Z0Hg.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:08:27', '2024-09-08 22:08:27'),
(132, '1/2 litro fresa', NULL, 17, 5, 5.00, 5.00, 'disponible', 'x8HkIrQ94MLV9BhaJXtkMgLDJVJ2JSdIslwTlp6N.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:09:08', '2024-09-08 22:09:08'),
(133, '1/2 litro chocolate', NULL, 17, 5, 5.00, 5.00, 'disponible', 'TrhcSWWYQEieMo1SHDxwNchVyZVYw7GPHOQiMJeB.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:09:51', '2024-09-08 22:09:51'),
(134, '1/2 litro vainilla', NULL, 17, 5, 5.00, 5.00, 'disponible', '3H08livHfG2Qs04dluGxILnkvgR4ZrGv2EunbqGT.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:10:23', '2024-09-08 22:10:23'),
(135, '1/2 litro ron con pasas', NULL, 17, 5, 5.00, 5.00, 'disponible', 's0IECp5EtfcS2CqfIq5gjf3bzyCWKt7ajH0em3wY.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:11:05', '2024-09-08 22:11:05'),
(136, 'Envase banana', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:11:41', '2024-09-08 22:11:41'),
(137, 'Envase para bomba 22 onzas', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:12:12', '2024-09-08 22:12:12'),
(138, 'Envase de canasta waffle', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:12:36', '2024-09-08 22:12:36'),
(139, 'Envase impreso sarita de carton 16 onzas', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:13:19', '2024-09-08 22:13:19'),
(140, 'Tapadera cupula para envase', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:13:45', '2024-09-08 22:13:45'),
(141, 'Envase impreso sarita 8 onzas carton', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:14:24', '2024-09-08 22:14:24'),
(142, 'Envase impreso sarita 6 onzas carton', NULL, 18, 5, 5.00, 5.00, 'disponible', NULL, 1, '2024-09-08 06:00:00', '2024-09-08 22:14:51', '2024-09-08 22:14:51'),
(143, 'Fanta Naranja', NULL, 11, 5, 5.00, 5.00, 'disponible', 'zMNmlJq2ucMh8uKqkmSfBrF2AEVrPDl1yxvh0uXf.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 22:18:46', '2024-09-08 22:18:46'),
(144, 'Sprite lata', NULL, 11, 5, 5.00, 5.00, 'disponible', 'I3naqOMqhLfTl9mbbKvJU5EOT5uAjQaA7qTXa3oO.png', 1, '2024-09-08 06:00:00', '2024-09-08 22:19:10', '2024-09-08 22:19:10'),
(145, 'Fanta Uva', NULL, 11, 5, 5.00, 5.00, 'disponible', 'GhaEdse7BjwsOPceJ7smyNwELrm97rALwZ5Y051x.jpg', 1, '2024-09-08 06:00:00', '2024-09-08 22:19:59', '2024-09-08 22:19:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', NULL, NULL),
(2, 'Usuario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Mlvh3U0xEM7SCd8hP0LyUB9CBVy4Iz6xhLaFebmw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkNIRG9qbVpnazZvSHZOYU9UMEE5cm1IV3BVTDdyb3UxMG5iRmE0NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1725835036);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

CREATE TABLE `tipos_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_productos`
--

INSERT INTO `tipos_productos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'ESPECIALIDADES', 'Clasificacion de especialidades', NULL, '2024-09-06 00:15:32'),
(2, 'PALETAS SARITA', 'apartado de mezcla de diferentes paletas', NULL, '2024-08-26 21:50:02'),
(3, 'PRODUCTOS SECOS', 'semillas', '2024-08-24 02:44:19', '2024-08-27 00:19:51'),
(5, 'CONOS', 'conos de helado', '2024-08-24 02:52:43', '2024-08-28 07:26:16'),
(6, 'BEBIDAS', 'para beber', '2024-08-24 03:03:01', '2024-08-24 03:03:01'),
(7, 'PASTEL GRANDE', 'psteles de diferentes sabores', '2024-08-24 03:16:28', '2024-08-24 03:16:28'),
(8, 'PASTEL MEDIANO', 'pasteles par ala family', '2024-08-24 03:49:53', '2024-08-24 03:49:53'),
(9, 'PASTEL PEQUEÑO', 'porciones pequelas', '2024-08-24 04:18:45', '2024-08-24 04:18:45'),
(10, 'PORCIONES DE PASTEL', 'comida', '2024-08-24 06:18:07', '2024-08-24 06:30:09'),
(11, 'GASEOSAS', 'Diferente cantidad y calidad de bebidas para helados', '2024-09-04 20:34:32', '2024-09-04 20:34:32'),
(12, 'OTROS INSUMOS', 'Productos para el negocio, cucharas etc.', '2024-09-08 20:06:47', '2024-09-08 20:06:47'),
(13, 'CUBETA SARITA', 'cubetas de ehlados', '2024-09-08 21:06:45', '2024-09-08 21:06:45'),
(14, '1 GALON DE HELADO', 'clasificacion', '2024-09-08 21:41:01', '2024-09-08 21:41:01'),
(15, '1/2 GALON DE HELADO', 'descricpion', '2024-09-08 21:41:17', '2024-09-08 21:41:17'),
(16, 'LITROS', 'descripcion', '2024-09-08 21:41:29', '2024-09-08 21:41:29'),
(17, '1/2 LITRO', 'descripcion', '2024-09-08 21:41:45', '2024-09-08 21:41:45'),
(18, 'ENVASES SARITA', 'descripcion', '2024-09-08 21:41:57', '2024-09-08 21:41:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `estatus`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Usuario', 'hsalvador@gmail.com', 1, '2024-08-10 23:53:04', '$2y$12$x37yj/EKir.JErh/R52zIe4ZguQ9/C05SV86yweZFUGfBJ4UyktKW', 'yuDaCHfjafCzKeFOkKsdTZObp8LcFOdZpsnN8vmwdAexJtz99S7SCXNuo8Az', '2024-08-10 23:53:05', '2024-08-20 10:29:04', 1),
(2, 'Bryan', 'yio@gmail.com', 0, NULL, '$2y$12$mxQybjhwcFmDde67.gT4Ku6dx7zu2x2W00waGvQSxuChG/mfxEBBm', NULL, '2024-08-20 08:30:56', '2024-08-20 12:31:23', 1),
(9, 'Carlos', 'carlos1@gmial.com', 0, NULL, '$2y$12$8mxjZkGlHl/CWOkLOkHVxe5cFFZewZaB..YFD7qSkg/jIruTXtTeC', NULL, '2024-08-20 09:03:11', '2024-08-20 09:24:19', 1),
(10, 'Carlos3', 'carlos3@gmial.com', 0, NULL, '$2y$12$f.kML2NBriTnPkbOvmfKQuEDt4UKbWfvkGnFcn9GYFBOBe9ImmD8S', NULL, '2024-08-20 09:05:24', '2024-08-20 10:26:45', 1),
(11, 'Antonio', 'lsfelipeayu@gmail.com', 0, NULL, '$2y$12$sjJ0P7uI/wSCLYbMrD9IdOrSI63MDcbAZc.3UgqBxhJDGoioAELeK', NULL, '2024-08-20 10:27:37', '2024-08-20 10:28:15', 2),
(12, 'Hiro', 'comidasss@gmail.com', 0, NULL, '$2y$12$BX7QaRCugEc8RAK.iS79WeA8KRI/Lj/8IiKGzOk5IXc4Bxq.qi6Jm', NULL, '2024-08-20 12:51:26', '2024-08-21 10:42:40', 2),
(13, 'Gomez', 'gomez@gmail.com', 1, NULL, '$2y$12$n7wmtMXg8BXS.uZGQnnJvOc6zl19qBvo.1.o77345bwza1XfqOxTC', NULL, '2024-08-21 10:41:58', '2024-08-24 05:21:02', 1),
(14, 'Mario2', 'mario@gmial.com', 0, NULL, '$2y$12$uK0wVEfhc/w7RJL/iy73iuDxYx3iQwQGYYb98HnE/h9JQVqPk9OBK', NULL, '2024-08-22 11:40:48', '2024-09-04 20:29:07', 2),
(15, 'Jairo', 'jairogom3z@gmail.com', 1, NULL, '$2y$12$thIYBnXLeCjSPULgGdStVeUdOTDMw.a8fpWh2jlqBzF.hDdkDlTTC', NULL, '2024-09-04 20:28:29', '2024-09-04 20:28:58', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `total`, `created_at`, `updated_at`) VALUES
(2, 20.00, '2024-09-03 12:25:44', '2024-09-03 12:25:44'),
(3, 30.00, '2024-09-03 12:27:09', '2024-09-03 12:27:09'),
(4, 26.00, '2024-09-03 12:32:38', '2024-09-03 12:32:38'),
(8, 5.00, '2024-09-03 12:44:59', '2024-09-03 12:44:59'),
(9, 40.00, '2024-09-03 12:54:07', '2024-09-03 12:54:07'),
(10, 5.00, '2024-09-03 12:54:31', '2024-09-03 12:54:31'),
(11, 25.00, '2024-09-03 13:00:41', '2024-09-03 13:00:41'),
(12, 18.00, '2024-09-03 22:35:03', '2024-09-03 22:35:03'),
(13, 16.00, '2024-09-03 23:37:07', '2024-09-03 23:37:07'),
(14, 25.00, '2024-09-04 08:17:26', '2024-09-04 08:17:26'),
(15, 75.00, '2024-09-04 08:59:03', '2024-09-04 08:59:03'),
(16, 15.00, '2024-09-04 03:10:35', '2024-09-04 03:10:35'),
(17, 5.00, '2024-09-04 05:26:50', '2024-09-04 05:26:50'),
(18, 5.00, '2024-09-04 06:23:50', '2024-09-04 06:23:50'),
(19, 80.00, '2024-09-04 06:40:08', '2024-09-04 06:40:08'),
(20, 5.00, '2024-09-04 21:04:30', '2024-09-04 21:04:30'),
(21, 5.00, '2024-09-04 21:22:46', '2024-09-04 21:22:46'),
(24, 20.00, '2024-09-04 23:06:04', '2024-09-04 23:06:04'),
(26, 20.00, '2024-09-04 23:18:43', '2024-09-04 23:18:43'),
(27, 20.00, '2024-09-04 23:21:39', '2024-09-04 23:21:39'),
(28, 20.00, '2024-09-04 23:22:10', '2024-09-04 23:22:10'),
(29, 20.00, '2024-09-04 23:27:15', '2024-09-04 23:27:15'),
(30, 20.00, '2024-09-04 23:32:35', '2024-09-04 23:32:35'),
(31, 20.00, '2024-09-04 23:35:55', '2024-09-04 23:35:55'),
(32, 20.00, '2024-09-04 23:37:07', '2024-09-04 23:37:07'),
(33, 20.00, '2024-09-04 23:37:21', '2024-09-04 23:37:21'),
(34, 5.00, '2024-09-04 23:41:48', '2024-09-04 23:41:48'),
(35, 5.00, '2024-09-04 23:47:20', '2024-09-04 23:47:20'),
(36, 5.00, '2024-09-04 23:48:58', '2024-09-04 23:48:58'),
(37, 5.00, '2024-09-04 23:49:23', '2024-09-04 23:49:23'),
(38, 5.00, '2024-09-04 23:53:52', '2024-09-04 23:53:52'),
(39, 6.00, '2024-09-05 00:03:45', '2024-09-05 00:03:45'),
(40, 6.00, '2024-09-05 00:07:37', '2024-09-05 00:07:37'),
(41, 6.00, '2024-09-05 00:14:44', '2024-09-05 00:14:44'),
(42, 6.00, '2024-09-05 00:16:47', '2024-09-05 00:16:47'),
(43, 6.00, '2024-09-05 00:18:20', '2024-09-05 00:18:20'),
(44, 6.00, '2024-09-05 00:19:57', '2024-09-05 00:19:57'),
(45, 6.00, '2024-09-05 00:26:00', '2024-09-05 00:26:00'),
(46, 5.00, '2024-09-05 00:28:50', '2024-09-05 00:28:50'),
(47, 5.00, '2024-09-05 00:31:20', '2024-09-05 00:31:20'),
(48, 5.00, '2024-09-05 00:34:37', '2024-09-05 00:34:37'),
(49, 5.00, '2024-09-05 00:35:35', '2024-09-05 00:35:35'),
(50, 5.00, '2024-09-05 00:37:37', '2024-09-05 00:37:37'),
(51, 5.00, '2024-09-05 00:38:40', '2024-09-05 00:38:40'),
(52, 5.00, '2024-09-05 00:39:28', '2024-09-05 00:39:28'),
(53, 5.00, '2024-09-05 00:53:11', '2024-09-05 00:53:11'),
(54, 5.00, '2024-09-05 01:00:09', '2024-09-05 01:00:09'),
(55, 5.00, '2024-09-05 01:07:52', '2024-09-05 01:07:52'),
(56, 5.00, '2024-09-05 01:10:41', '2024-09-05 01:10:41'),
(57, 5.00, '2024-09-05 01:13:57', '2024-09-05 01:13:57'),
(58, 5.00, '2024-09-05 01:20:51', '2024-09-05 01:20:51'),
(59, 5.00, '2024-09-05 01:31:03', '2024-09-05 01:31:03'),
(60, 5.00, '2024-09-05 01:34:23', '2024-09-05 01:34:23'),
(61, 5.00, '2024-09-05 01:45:14', '2024-09-05 01:45:14'),
(62, 5.00, '2024-09-05 01:46:58', '2024-09-05 01:46:58'),
(63, 5.00, '2024-09-05 01:50:57', '2024-09-05 01:50:57'),
(64, 5.00, '2024-09-05 01:53:53', '2024-09-05 01:53:53'),
(65, 5.00, '2024-09-05 01:58:40', '2024-09-05 01:58:40'),
(66, 5.00, '2024-09-05 02:05:03', '2024-09-05 02:05:03'),
(67, 36.00, '2024-09-05 02:18:34', '2024-09-05 02:18:34'),
(68, 20.00, '2024-09-05 02:21:21', '2024-09-05 02:21:21'),
(69, 10.00, '2024-09-05 02:29:35', '2024-09-05 02:29:35'),
(70, 5.00, '2024-09-05 02:31:26', '2024-09-05 02:31:26'),
(71, 10.00, '2024-09-05 02:35:41', '2024-09-05 02:35:41'),
(72, 36.00, '2024-09-05 02:38:20', '2024-09-05 02:38:20'),
(73, 40.00, '2024-09-05 02:51:11', '2024-09-05 02:51:11'),
(74, 20.00, '2024-09-05 03:03:31', '2024-09-05 03:03:31'),
(77, 25.00, '2024-09-05 03:52:36', '2024-09-05 03:52:36'),
(88, 20.00, '2024-09-05 05:34:47', '2024-09-05 05:34:47'),
(89, 85.00, '2024-09-05 05:35:36', '2024-09-05 05:35:36'),
(90, 24.00, '2024-09-05 05:37:42', '2024-09-05 05:37:42'),
(91, 49.00, '2024-09-05 05:40:17', '2024-09-05 05:40:17'),
(92, 90.00, '2024-09-05 05:45:33', '2024-09-05 05:45:33'),
(93, 29.00, '2024-09-05 05:50:02', '2024-09-05 05:50:02'),
(94, 63.00, '2024-09-05 17:12:03', '2024-09-05 17:12:03'),
(95, 5.00, '2024-09-05 17:17:29', '2024-09-05 17:17:29'),
(96, 6.00, '2024-09-05 17:25:21', '2024-09-05 17:25:21'),
(97, 20.00, '2024-09-05 17:27:54', '2024-09-05 17:27:54'),
(98, 6.00, '2024-09-05 18:16:44', '2024-09-05 18:16:44'),
(99, 5.00, '2024-09-06 00:20:31', '2024-09-06 00:20:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_tipo_producto_id_foreign` (`tipo_producto_id`),
  ADD KEY `productos_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipos_productos_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD CONSTRAINT `pedido_productos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_tipo_producto_id_foreign` FOREIGN KEY (`tipo_producto_id`) REFERENCES `tipos_productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
