-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2023 a las 18:30:13
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba1`
--

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_02_28_014514_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'roger', 'osorio', 'royer__97@hotmail.com', NULL, '$2y$10$C65Mi9xYE6Sk6/cMCZ2LJO/1OL4ZkNIrF50vsJ7Q1fSh5UnARd79y', NULL, '2023-01-26 02:15:13', '2023-01-26 02:15:13'),
(3, 'rogerrrr', 'osoriocc', 'dfhg@ertse', NULL, '$2y$10$JZRsPikbRIyyrlyg9qK0H./MJ8wo37Omx1gXyjt5L215WqO6kpAny', NULL, '2023-01-26 02:16:58', '2023-01-26 02:16:58'),
(4, 'roger233s', 'ubnt', 'dfhg@ertseaa', NULL, '$2y$10$/5.E51Llk4OteoiYA93eZuHvMS4UUmD8wfcKENto6ywLJaDW7FqoO', NULL, '2023-01-26 02:28:58', '2023-01-26 02:28:58'),
(5, 'rogerasasasa', 'asasasa', 'dfhg@ertseaaqqqqqqaa', NULL, '$2y$10$4tsWzgzB0JijiC3WwokV/eXDbCTTGzvsmzQaxuWcIT6jPc5pw48WG', NULL, '2023-01-26 02:35:29', '2023-01-26 02:35:29'),
(6, 'roger23323232', 'sssssssss', 'dfhg@ertseaaaaaaaa', NULL, '$2y$10$NjVowU7P9gMehYb/CaX8AuDAjbCH6eK8L8bNnJn0wGxTytv0rb90u', NULL, '2023-01-27 08:17:32', '2023-01-27 08:17:32'),
(7, 'analeticia', 'denis', 'ana__97@hotmail.com', NULL, '$2y$10$/ghUBC5p/fEoBtXpcyL66en9pb5g0Y4B/Ti/4hyHuaG758uJRve5K', NULL, '2023-01-27 08:20:45', '2023-01-27 08:20:45'),
(8, 'ana maria', 'dueñas', 'maria__97@hotmail.com', NULL, '$2y$10$9GbAUtMXLJTD/fcG8c4gTen5PUwktM6sLJqxDXZHh.VWcLQlV67yG', NULL, '2023-01-31 07:15:28', '2023-01-31 07:15:28'),
(9, 'derec iker', 'dere', 'derec__97@hotmail.com', NULL, '$2y$10$9In.YlIO16qY7DeegzFZnO.zwkMyuhe6KrhbczypuCaPiz6qJ3Ib.', NULL, '2023-01-31 07:19:35', '2023-01-31 07:19:35'),
(10, 'gabriel', 'gabi', 'gabi__97@hotmail.com', NULL, '$2y$10$6LhS1AFWSpxFT/G0j0sfI.OzuQFmj5Xf96GEpPwPBmTh6mj9WIOMy', NULL, '2023-01-31 07:20:56', '2023-01-31 07:20:56'),
(11, 'dariana', 'dari', 'dari__97@hotmail.com', NULL, '$2y$10$xCz/Bchk6gbqXlUvu/MCSOGAs6yj2zUZp8RV6KwNQoFz2VkVHkF2u', NULL, '2023-01-31 07:22:31', '2023-01-31 07:22:31'),
(12, 'roger', 'capetillo', 'capetillo__97@hotmail.com', NULL, '$2y$10$7YqN4OC1xlcMLTq7z6lUgufSbKlmm.5HucHEJhlhzgdXasDUtc2Eu', NULL, '2023-01-31 07:33:24', '2023-01-31 07:33:24'),
(14, 'Patricia', 'paty', 'paty__97@hotmail.com', NULL, '$2y$10$4UTI0cLB2BT8OgMgd6sJdeGgGIBHOBttOTyKYieGjrs2H1hSOGfZ2', NULL, '2023-01-31 12:08:18', '2023-01-31 12:08:18'),
(15, 'Gabriela', 'gaby', 'gaby__97@hotmail.com', NULL, '$2y$10$DN0pNzJ3gtkFKf5BA6ZzF.VjrNevjiaa8/Kp/DPsscfYCuRLOtqhS', NULL, '2023-01-31 12:26:44', '2023-01-31 12:26:44'),
(16, 'Lorena', 'Lore', 'lore__97@hotmail.com', NULL, '$2y$10$AqS/wuzIFbxcUMNVqZf7P.2U7sosmMOoqVzz/EtHzbQ4qCxJf7Ylu', NULL, '2023-01-31 12:43:02', '2023-01-31 12:43:02'),
(17, 'Adriana', 'Adri', 'adriana__97@hotmail.com', NULL, '$2y$10$FdglN33KqSi333dQEz7euezYHI42f6xz7m6EW7GaKN/4I3/AXfseS', NULL, '2023-02-01 12:35:47', '2023-02-01 12:35:47'),
(18, 'Roger Osorio', 'Roger', 'roy__97@hotmail.com', NULL, '$2y$10$nChnUXRG47/PYu6dplzjAeECWh/XdOjzxutcRcueT9Y/ZGqvHYdDi', NULL, '2023-02-16 13:59:41', '2023-02-16 13:59:41'),
(19, 'Lizeth', 'Liz', 'liz__99@hotmail.com', NULL, '$2y$10$I7sT6ezURAC6zMF0RZibD.cyy92oM7iABzQlb7IQhglvvVoCzSbCa', NULL, '2023-02-16 14:07:07', '2023-02-16 14:07:07'),
(20, 'Alejandra', 'Ale', 'ale__87@hotmail.com', NULL, '$2y$10$z68qJNHtMrRGVtfcjlr43OvBBQSK4Q48Hv0DJOLnr.UNsuAdXv4J.', NULL, '2023-02-16 14:13:39', '2023-02-16 14:13:39'),
(21, 'Rocio', 'Rocio', 'Rocio__88@hotmail.com', NULL, '$2y$10$.xYW81Vmjy/ySCJkzItn7uVZ.QnW4Mvx1MegTBE8llAo/VSKu1G/S', NULL, '2023-02-16 14:20:24', '2023-02-16 14:20:24'),
(22, 'aaaaa', 'aaaaaa', 'aaaaaa__97@hotmail.com', NULL, '$2y$10$ETGhykh4J4qOvFIyb2otCOMgqW13ATMaEKrP4qS5z816Wv9mfw.rG', NULL, '2023-02-16 14:21:59', '2023-02-16 14:21:59'),
(23, 'bbbbbb', 'bbbbbb', 'bbbbbb__97@hotmail.com', NULL, '$2y$10$wduinEw1Ywgi9JY3NhDAuOqvkixErGxu3Kxfz.AEOQlR1LIctrLqe', NULL, '2023-02-16 14:23:33', '2023-02-16 14:23:33'),
(24, 'Mamao', 'Mamao', 'mamao__69@hotmail.com', NULL, '$2y$10$L90BvRyxtxZHML2jn3juxeGSQsfs51hlwtk3lDWYzetVGJhM4FfQ2', NULL, '2023-02-16 14:24:35', '2023-02-16 14:24:35'),
(25, 'Emanuel', 'Emanuel', 'emanuel__97@hotmail.com', NULL, '$2y$10$6O5l6nsdAbBMV11lNzkj5ug8qOD/PuJUwgoC7u2tbEL15cMB2FXHW', NULL, '2023-03-07 14:43:19', '2023-03-07 14:43:19'),
(28, 'lauro', 'Lauro', 'lauro__97@hotmail.com', NULL, '$2y$10$mW3mc1dCOoluoP3264DVQuYSqOGoSUgVx2Kw2ywMQnBYGBHwH9.GS', NULL, '2023-03-12 10:26:31', '2023-03-12 10:26:31'),
(30, 'Laura', 'laura', 'laura__97@hotmail.com', NULL, '$2y$10$/tznI9NV9/X48HGOvbIyseVWhc8t4a8Wx8mNB0kNVyvAZrB7qtLQa', NULL, '2023-03-12 10:44:28', '2023-03-12 10:44:28'),
(31, 'osorio rogelio', 'osd', 'osorio__97@hotmail.com', NULL, '$2y$10$YxBXKp1ZhEFtoCai1pqJkOKbOgCocoleo0pzcJfsu3.hnOdSLtzF.', NULL, '2023-03-12 10:54:27', '2023-03-12 10:54:27');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
