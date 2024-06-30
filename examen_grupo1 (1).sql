-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2024 a las 01:50:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_grupo1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido-p` varchar(50) NOT NULL,
  `apellido-m` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `fecha-nac` date NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `carnet` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido-p`, `apellido-m`, `telefono`, `direccion`, `fecha-nac`, `departamento`, `carnet`, `created_at`, `updated_at`) VALUES
(1, 'carlos', 'robles', 'aguilar', 76846687, 'B/la morita c/tajibo N/11', '2007-01-26', 'santa cruz', 6985444, '2024-06-24 01:56:08', '2024-06-24 01:56:08'),
(2, 'Rosario', 'medina', 'lopez', 68799787, 'B/El fuerte C/flamingo Nº01', '1990-09-11', 'santa cruz', 65892111, '2024-06-24 01:58:15', '2024-06-24 01:58:15'),
(3, 'Marcos', 'arevalo', 'mamani', 78652345, 'Av/Banzer Nª05', '1999-04-01', 'la paz', 35465747, '2024-06-24 02:00:12', '2024-06-24 02:00:12'),
(4, 'Ruben ', 'Ortiz', 'Camacho', 63548681, 'B/españa C/limon Nº 45', '2007-02-02', 'Cochabamba', 4568987, '2024-06-24 02:02:35', '2024-06-24 02:02:35'),
(5, 'Maria antonieta', 'Barba', 'Suarez', 65895423, 'Av/centenario C/central Nº22', '1995-06-15', 'La paz', 56684785, '2024-06-24 02:04:33', '2024-06-24 02:04:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido-p` varchar(50) NOT NULL,
  `apellido-m` varchar(50) NOT NULL,
  `sueldo` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `carnet` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` char(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido-p`, `apellido-m`, `sueldo`, `cargo`, `carnet`, `edad`, `sexo`, `created_at`, `updated_at`) VALUES
(1, 'Lucas ', 'rojas', 'Fernandez', 3500, 'supervisor', 6854342, 32, 'masculino', '2024-06-24 02:24:41', '2024-06-24 02:24:41'),
(2, 'Sofia', 'llanes', 'tapia', 2100, 'Cajera', 3467654, 25, 'femenino', '2024-06-24 02:25:25', '2024-06-24 02:25:25'),
(3, 'Hugo ', 'Sanchez', 'Gonzales', 4200, 'Administrador', 3246544, 45, 'masculino', '2024-06-24 02:27:37', '2024-06-24 02:27:37');

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
(19, '2024_06_22_162407_create_productos_table', 1),
(22, '2024_06_22_212851_add_fecha-nac_to_empleados', 1),
(23, '2014_10_12_000000_create_users_table', 2),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(25, '2019_08_19_000000_create_failed_jobs_table', 2),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(27, '2024_06_22_162728_create_empleados_table', 2),
(28, '2024_06_22_163304_create_clientes_table', 2);

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
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `precio-unidad` int(11) NOT NULL,
  `precio-mayor` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Nombre`, `precio-unidad`, `precio-mayor`, `categoria`, `marca`, `ubicacion`, `descripcion`, `stock`, `proveedor`, `created_at`, `updated_at`) VALUES
(1, 'Cemento', 50, 45, 'Material de construccion', 'Fancesa', 'Santa cruz', 'Bolsa de cemento de 50 kilosº', 200, 'La casa del albañil', '2024-06-24 02:17:30', '2024-06-24 02:17:30'),
(2, 'Cemento', 47, 42, 'Material de construccion', 'Warnes', 'Santa cruz', 'Bolsa de cemento de 50 kilosº', 80, 'La casa del albañil', '2024-06-24 02:18:13', '2024-06-24 02:18:13'),
(3, 'Martillo', 25, 20, 'Material de construccion', 'Trupper', 'Santa cruz', 'Martillo mediano ', 35, 'Costruction Master', '2024-06-24 02:19:46', '2024-06-24 02:19:46'),
(4, 'Ladrillo ', 2, 2, 'Material de construccion', 'incerpaz', 'Santa cruz', 'Ladrillo adobito rojo', 5000, 'incerpaz S.A.', '2024-06-24 02:21:14', '2024-06-24 02:21:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jefersson', 'Jefersson@gmail.com', NULL, '$2y$12$6VDK3BXEnRpWtRIUK4XY2.CdRbs082.UflVUesTHliz2W98pGAAFS', NULL, '2024-06-24 01:17:46', '2024-06-24 01:17:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
