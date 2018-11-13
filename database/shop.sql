-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2018 a las 19:30:33
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `order_date`, `arrived_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Active', 1, '2018-11-13 05:02:00', '2018-11-13 05:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart_details`
--

INSERT INTO `cart_details` (`id`, `cart_id`, `product_id`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, '2018-11-13 05:02:00', '2018-11-13 05:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Explicabo', 'Dolorum at deserunt eius quis sit dolore exercitationem qui illum.', NULL, '2018-11-13 04:57:26', '2018-11-13 04:57:26'),
(2, 'Pariatur', 'Ut minus cum magni sint et esse dolore temporibus doloribus.', NULL, '2018-11-13 04:57:26', '2018-11-13 04:57:26'),
(3, 'Suscipit', 'Quam ut qui eveniet maiores sed nihil dolorum consequatur sint accusantium.', NULL, '2018-11-13 04:57:26', '2018-11-13 04:57:26'),
(4, 'Voluptas', 'Nostrum magnam adipisci officiis eligendi soluta molestias quia excepturi incidunt et consequatur illum doloremque.', NULL, '2018-11-13 04:57:26', '2018-11-13 04:57:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(141, '2014_10_12_000000_create_users_table', 1),
(142, '2014_10_12_100000_create_password_resets_table', 1),
(143, '2018_10_24_040252_create_categories_table', 1),
(144, '2018_10_26_010056_create_products_table', 1),
(145, '2018_10_26_013903_create_product_images_table', 1),
(146, '2018_11_09_202840_create_carts_table', 1),
(147, '2018_11_09_202933_create_cart_details_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `long_description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Joint', 'Un cañito', 'Un cañito hecho con amor para un estudiante estresado haciendo este proyecto.', 50.00, 1, '2018-11-13 04:57:26', '2018-11-13 05:09:53'),
(2, 'Doloremque doloremque aliquid sed', 'Rerum et iste earum dignissimos tempore pariatur molestiae quia sint exercitationem qui voluptatibus excepturi.', 'Consequatur optio eos doloribus sunt nulla sed suscipit. Recusandae sunt ea omnis voluptates. Et dicta omnis et harum pariatur ea. Possimus quo at cum recusandae repellendus harum sint molestiae.', 98.80, 1, '2018-11-13 04:57:26', '2018-11-13 04:57:26'),
(3, 'Voluptate nihil quos ea', 'Ut dolorum aut et magni qui sunt facere molestiae.', 'Nostrum iste adipisci qui aspernatur hic. Quia et nesciunt laborum soluta sint.', 99.44, 1, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(4, 'Earum aut quis asperiores', 'Molestiae ut itaque consequatur ducimus qui enim dolorem nesciunt id ut natus aliquid.', 'Ut assumenda odio inventore dolor qui asperiores recusandae. Numquam quia accusamus rerum minus neque et. Blanditiis dicta et amet sit ut veritatis voluptate sed. Veniam incidunt hic quidem nostrum.', 110.52, 1, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(5, 'Voluptate iure illum', 'Pariatur aut in sint exercitationem laudantium id odio debitis ut harum voluptatem.', 'Neque nostrum vitae porro aut. Accusantium asperiores et facilis velit. Vel distinctio adipisci impedit molestias velit necessitatibus. Vitae at eos blanditiis distinctio qui nulla.', 44.90, 1, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(6, 'Sed maiores consequatur', 'Aliquid incidunt provident vero voluptates laudantium hic architecto quia voluptatum quae et voluptatibus accusamus.', 'Veniam a ab qui est consequatur. Mollitia sint ea et quod. Nihil cum tempore aliquid quos consequatur illum.', 30.92, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(7, 'Blanditiis quae rerum quis est', 'Aliquid nam occaecati animi pariatur modi omnis expedita quos voluptas.', 'Sequi ipsum esse provident a sit. Impedit quaerat necessitatibus fuga pariatur voluptatem consequatur commodi. Ut in doloremque rerum velit. Ut sit qui deserunt et maiores.', 89.49, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(8, 'Iure iure', 'Mollitia consectetur numquam consequuntur harum reprehenderit temporibus a quia quidem dicta expedita.', 'Pariatur et itaque nostrum. Perspiciatis enim nisi quo aut est ut laudantium quibusdam. Provident sit omnis doloremque ut laudantium vero.', 146.61, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(9, 'Velit et deserunt aspernatur', 'Quis tempora sint distinctio occaecati sint consectetur vel et.', 'Libero est non et et. Qui ducimus qui sunt dolorum et.', 17.62, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(10, 'Iure itaque ut vel', 'Ut quis nisi ut placeat rerum pariatur aut expedita minus aliquid eveniet praesentium voluptatibus.', 'In voluptate optio exercitationem nulla corrupti. Voluptas quia aspernatur id. Quia nihil ullam officia voluptatem.', 122.42, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(11, 'Quis qui labore vero', 'Adipisci voluptas recusandae possimus asperiores est voluptates.', 'Quam illo vero at harum incidunt. Non illo incidunt et qui et accusantium laudantium. Voluptas voluptate reiciendis fugiat ratione consequatur sunt.', 42.32, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(12, 'Eos tenetur et quia', 'Blanditiis cumque labore labore minima explicabo iure.', 'Aliquam rerum qui eaque asperiores qui. Repellat veritatis repudiandae quisquam fugit natus atque minus. Molestiae occaecati minus quidem corporis eum.', 122.18, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(13, 'Autem a expedita aut error', 'Provident itaque qui repudiandae quos accusamus impedit et officiis porro saepe pariatur rerum rerum.', 'Fuga autem non voluptatem fugit omnis nulla distinctio necessitatibus. Molestiae repellendus quod laboriosam deserunt facere ducimus. Quo aspernatur distinctio dolores vel ad enim est.', 5.46, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(14, 'Id repudiandae consequatur cumque', 'Consequatur beatae at voluptas quam libero odit ut.', 'Repudiandae at aliquam et similique culpa magni ut. Molestias sed qui dolores commodi qui veritatis. Blanditiis sunt quia harum nemo molestiae nostrum.', 130.15, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(15, 'In maxime et provident nulla', 'Saepe ea dolores adipisci omnis officiis omnis aspernatur accusamus voluptas itaque ea.', 'Ut eum sunt odio placeat id. Nostrum molestias delectus quaerat pariatur vitae velit fugit beatae. Eos vero exercitationem autem non.', 29.91, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(16, 'Esse eum', 'Id nulla occaecati et aut omnis aut vel placeat sit omnis natus.', 'At necessitatibus aut non eum. Deleniti omnis optio repellendus alias. Et voluptatum cupiditate dolores rem. Eum voluptatem tempore ut qui ratione officia cupiditate.', 100.16, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(17, 'Nihil aperiam ipsam', 'Illo sit ut facilis laboriosam odit esse pariatur.', 'Ratione tenetur facere optio aut labore occaecati ut. Reprehenderit illo autem voluptas aut voluptas placeat similique fugiat. Quisquam qui minus quaerat aut optio adipisci facilis.', 17.82, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(18, 'Unde assumenda aliquam voluptatem', 'Quaerat vel in consequatur et dolor velit explicabo.', 'Tempora optio omnis tenetur nesciunt dolorum est. Illum corrupti et voluptatem saepe est molestias quam expedita. Excepturi aliquam sequi enim similique accusantium omnis laborum.', 142.87, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(19, 'Quibusdam omnis expedita est', 'Dolore corrupti ut consequuntur ea fugiat nulla provident veniam quis suscipit repellendus.', 'Quam alias sunt aut autem reprehenderit ut. Aspernatur dicta non modi voluptas soluta nostrum et.', 14.61, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(20, 'Deleniti enim', 'Omnis quibusdam nobis est quo qui eius veritatis eveniet repudiandae eum illum veritatis cupiditate omnis.', 'Accusantium ratione placeat vel et. Deleniti pariatur porro corrupti odit perspiciatis quibusdam. Totam quis nulla atque libero ea similique nostrum.', 129.54, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 'https://lorempixel.com/250/250/?58660', 0, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(5, 'https://lorempixel.com/250/250/?79262', 0, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(6, 'https://lorempixel.com/250/250/?17880', 0, 2, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(7, 'https://lorempixel.com/250/250/?70962', 0, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(8, 'https://lorempixel.com/250/250/?61923', 0, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(9, 'https://lorempixel.com/250/250/?40160', 0, 3, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(10, 'https://lorempixel.com/250/250/?32501', 0, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(11, 'https://lorempixel.com/250/250/?82619', 0, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(12, 'https://lorempixel.com/250/250/?26613', 0, 4, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(13, 'https://lorempixel.com/250/250/?70955', 0, 5, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(14, 'https://lorempixel.com/250/250/?30869', 0, 5, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(15, 'https://lorempixel.com/250/250/?50240', 0, 5, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(16, 'https://lorempixel.com/250/250/?34749', 0, 6, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(17, 'https://lorempixel.com/250/250/?90270', 0, 6, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(18, 'https://lorempixel.com/250/250/?78436', 0, 6, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(19, 'https://lorempixel.com/250/250/?24184', 0, 7, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(20, 'https://lorempixel.com/250/250/?98782', 0, 7, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(21, 'https://lorempixel.com/250/250/?41908', 0, 7, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(22, 'https://lorempixel.com/250/250/?39219', 0, 8, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(23, 'https://lorempixel.com/250/250/?25365', 0, 8, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(24, 'https://lorempixel.com/250/250/?26085', 0, 8, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(25, 'https://lorempixel.com/250/250/?33917', 0, 9, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(26, 'https://lorempixel.com/250/250/?78425', 0, 9, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(27, 'https://lorempixel.com/250/250/?88644', 0, 9, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(28, 'https://lorempixel.com/250/250/?22542', 0, 10, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(29, 'https://lorempixel.com/250/250/?63402', 0, 10, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(30, 'https://lorempixel.com/250/250/?96648', 0, 10, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(31, 'https://lorempixel.com/250/250/?69207', 0, 11, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(32, 'https://lorempixel.com/250/250/?38721', 0, 11, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(33, 'https://lorempixel.com/250/250/?95945', 0, 11, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(34, 'https://lorempixel.com/250/250/?96873', 0, 12, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(35, 'https://lorempixel.com/250/250/?73889', 0, 12, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(36, 'https://lorempixel.com/250/250/?56859', 0, 12, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(37, 'https://lorempixel.com/250/250/?51297', 0, 13, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(38, 'https://lorempixel.com/250/250/?15870', 0, 13, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(39, 'https://lorempixel.com/250/250/?96769', 0, 13, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(40, 'https://lorempixel.com/250/250/?96655', 0, 14, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(41, 'https://lorempixel.com/250/250/?37378', 0, 14, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(42, 'https://lorempixel.com/250/250/?44666', 0, 14, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(43, 'https://lorempixel.com/250/250/?42426', 0, 15, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(44, 'https://lorempixel.com/250/250/?68020', 0, 15, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(45, 'https://lorempixel.com/250/250/?59219', 0, 15, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(46, 'https://lorempixel.com/250/250/?29187', 0, 16, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(47, 'https://lorempixel.com/250/250/?56241', 0, 16, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(48, 'https://lorempixel.com/250/250/?91807', 0, 16, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(49, 'https://lorempixel.com/250/250/?18643', 0, 17, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(50, 'https://lorempixel.com/250/250/?89836', 0, 17, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(51, 'https://lorempixel.com/250/250/?22400', 0, 17, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(52, 'https://lorempixel.com/250/250/?76073', 0, 18, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(53, 'https://lorempixel.com/250/250/?43590', 0, 18, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(54, 'https://lorempixel.com/250/250/?15006', 0, 18, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(55, 'https://lorempixel.com/250/250/?45846', 0, 19, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(56, 'https://lorempixel.com/250/250/?92320', 0, 19, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(57, 'https://lorempixel.com/250/250/?22725', 0, 19, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(58, 'https://lorempixel.com/250/250/?60237', 0, 20, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(59, 'https://lorempixel.com/250/250/?87484', 0, 20, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(60, 'https://lorempixel.com/250/250/?17976', 0, 20, '2018-11-13 04:57:27', '2018-11-13 04:57:27'),
(61, '5bea32896d32dwax.jpg', 0, 1, '2018-11-13 05:10:17', '2018-11-13 05:10:31'),
(62, '5bea32957ce75joint.jpeg', 1, 1, '2018-11-13 05:10:29', '2018-11-13 05:10:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cristian', 'cristian.labadie@gmail.com', '$2y$10$8SVx1ecQ9AuP/I5za7hJZe58wHoxHsaIVBGZIA0TedxUFHMZjRCo2', 1, 'Y0bPrmUfAVzwcb5OWc3sEC1Qd1hXdB5xzjKV0X0AHZKcedGE4zt1riR6ENqP', '2018-11-13 04:57:26', '2018-11-13 04:57:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
