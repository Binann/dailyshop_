-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 11, 2023 lúc 09:49 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dailyshop2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-08-01 08:36:41'),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-08-01 08:36:41'),
(3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-08-01 08:36:41'),
(4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-08-01 08:36:41'),
(5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-08-01 08:36:41'),
(6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-08-01 08:36:41'),
(7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-08-01 08:36:41'),
(8, 0, 1, 'Customer', 'fa-user', 'demo/users', 'auth.login', '2023-08-01 08:36:29', '2023-08-01 08:37:20'),
(9, 0, 0, 'Products', 'fa-product-hunt', 'demo/products', 'auth.login', '2023-08-01 09:00:56', '2023-08-01 09:00:56'),
(10, 0, 0, 'Categories', 'fa-dedent', 'demo/categories', NULL, '2023-08-03 22:20:00', '2023-08-03 22:20:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 04:59:16', '2023-08-01 04:59:16'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 04:59:43', '2023-08-01 04:59:43'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 05:36:21', '2023-08-01 05:36:21'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:36:24', '2023-08-01 05:36:24'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-08-01 05:36:34', '2023-08-01 05:36:34'),
(6, 1, 'admin/demo/users', 'GET', '127.0.0.1', '[]', '2023-08-01 05:37:15', '2023-08-01 05:37:15'),
(7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:37:22', '2023-08-01 05:37:22'),
(8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:37:29', '2023-08-01 05:37:29'),
(9, 1, 'admin/demo/users', 'GET', '127.0.0.1', '[]', '2023-08-01 05:37:40', '2023-08-01 05:37:40'),
(10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:37:45', '2023-08-01 05:37:45'),
(11, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:37:58', '2023-08-01 05:37:58'),
(12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:38:03', '2023-08-01 05:38:03'),
(13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:38:07', '2023-08-01 05:38:07'),
(14, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:39:45', '2023-08-01 05:39:45'),
(15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:39:57', '2023-08-01 05:39:57'),
(16, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:40:00', '2023-08-01 05:40:00'),
(17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:40:03', '2023-08-01 05:40:03'),
(18, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:40:07', '2023-08-01 05:40:07'),
(19, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:58:42', '2023-08-01 05:58:42'),
(20, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 05:58:51', '2023-08-01 05:58:51'),
(21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:58:55', '2023-08-01 05:58:55'),
(22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:59:04', '2023-08-01 05:59:04'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:59:08', '2023-08-01 05:59:08'),
(24, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:59:16', '2023-08-01 05:59:16'),
(25, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 05:59:28', '2023-08-01 05:59:28'),
(26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 08:33:31', '2023-08-01 08:33:31'),
(27, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:33:40', '2023-08-01 08:33:40'),
(28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 08:33:51', '2023-08-01 08:33:51'),
(29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:33:54', '2023-08-01 08:33:54'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:33:59', '2023-08-01 08:33:59'),
(31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:34:04', '2023-08-01 08:34:04'),
(32, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:34:32', '2023-08-01 08:34:32'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:34:50', '2023-08-01 08:34:50'),
(34, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:35:08', '2023-08-01 08:35:08'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:35:31', '2023-08-01 08:35:31'),
(36, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-user\",\"uri\":\"demo\\/user\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 08:36:19', '2023-08-01 08:36:19'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:36:19', '2023-08-01 08:36:19'),
(38, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Customer\",\"icon\":\"fa-user\",\"uri\":\"demo\\/user\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 08:36:29', '2023-08-01 08:36:29'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:36:29', '2023-08-01 08:36:29'),
(40, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-08-01 08:36:41', '2023-08-01 08:36:41'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:36:41', '2023-08-01 08:36:41'),
(42, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:36:46', '2023-08-01 08:36:46'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:36:50', '2023-08-01 08:36:50'),
(44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:37:00', '2023-08-01 08:37:00'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:05', '2023-08-01 08:37:05'),
(46, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-08-01 08:37:10', '2023-08-01 08:37:10'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:13', '2023-08-01 08:37:13'),
(48, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:16', '2023-08-01 08:37:16'),
(49, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Customer\",\"icon\":\"fa-user\",\"uri\":\"demo\\/users\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-08-01 08:37:20', '2023-08-01 08:37:20'),
(50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:37:20', '2023-08-01 08:37:20'),
(51, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-08-01 08:37:23', '2023-08-01 08:37:23'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:23', '2023-08-01 08:37:23'),
(53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:37:27', '2023-08-01 08:37:27'),
(54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 08:37:31', '2023-08-01 08:37:31'),
(55, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:33', '2023-08-01 08:37:33'),
(56, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:37:54', '2023-08-01 08:37:54'),
(57, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-08-01 08:38:05', '2023-08-01 08:38:05'),
(58, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:38:20', '2023-08-01 08:38:20'),
(59, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:38:22', '2023-08-01 08:38:22'),
(60, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:38:52', '2023-08-01 08:38:52'),
(61, 1, 'admin/demo/product', 'GET', '127.0.0.1', '[]', '2023-08-01 08:48:51', '2023-08-01 08:48:51'),
(62, 1, 'admin/demo/product', 'GET', '127.0.0.1', '{\"id\":null,\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:49:05', '2023-08-01 08:49:05'),
(63, 1, 'admin/demo/product', 'GET', '127.0.0.1', '{\"id\":null,\"_columns_\":\"created_at,email,email_verified_at,id,password,remember_token,updated_at\",\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:49:13', '2023-08-01 08:49:13'),
(64, 1, 'admin/demo/product', 'GET', '127.0.0.1', '{\"id\":null,\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:49:16', '2023-08-01 08:49:16'),
(65, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:53:16', '2023-08-01 08:53:16'),
(66, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:53:17', '2023-08-01 08:53:17'),
(67, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:54:27', '2023-08-01 08:54:27'),
(68, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:54:31', '2023-08-01 08:54:31'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 08:58:59', '2023-08-01 08:58:59'),
(70, 1, 'admin/demo/users', 'GET', '127.0.0.1', '[]', '2023-08-01 08:59:04', '2023-08-01 08:59:04'),
(71, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 08:59:12', '2023-08-01 08:59:12'),
(72, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:24', '2023-08-01 08:59:24'),
(73, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:28', '2023-08-01 08:59:28'),
(74, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:36', '2023-08-01 08:59:36'),
(75, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:42', '2023-08-01 08:59:42'),
(76, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:44', '2023-08-01 08:59:44'),
(77, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:49', '2023-08-01 08:59:49'),
(78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:51', '2023-08-01 08:59:51'),
(79, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:54', '2023-08-01 08:59:54'),
(80, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:57', '2023-08-01 08:59:57'),
(81, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 08:59:59', '2023-08-01 08:59:59'),
(82, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:00:01', '2023-08-01 09:00:01'),
(83, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:00:04', '2023-08-01 09:00:04'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:00:24', '2023-08-01 09:00:24'),
(85, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-product-hunt\",\"uri\":\"demo\\/products\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 09:00:56', '2023-08-01 09:00:56'),
(86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 09:00:56', '2023-08-01 09:00:56'),
(87, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-01 09:01:00', '2023-08-01 09:01:00'),
(88, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:01:03', '2023-08-01 09:01:03'),
(89, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:01:10', '2023-08-01 09:01:10'),
(90, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"20\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 09:02:41', '2023-08-01 09:02:41'),
(91, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:02:43', '2023-08-01 09:02:43'),
(92, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:05:56', '2023-08-01 09:05:56'),
(93, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"20\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 09:06:19', '2023-08-01 09:06:19'),
(94, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:06:20', '2023-08-01 09:06:20'),
(95, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 09:08:41', '2023-08-01 09:08:41'),
(96, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:08:58', '2023-08-01 09:08:58'),
(97, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:09:00', '2023-08-01 09:09:00'),
(98, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"20\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 09:09:17', '2023-08-01 09:09:17'),
(99, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 09:09:17', '2023-08-01 09:09:17'),
(100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 09:26:09', '2023-08-01 09:26:09'),
(101, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:26:11', '2023-08-01 09:26:11'),
(102, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:26:16', '2023-08-01 09:26:16'),
(103, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":null,\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 09:44:36', '2023-08-01 09:44:36'),
(104, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:44:37', '2023-08-01 09:44:37'),
(105, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":null,\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 09:44:57', '2023-08-01 09:44:57'),
(106, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:44:57', '2023-08-01 09:44:57'),
(107, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 09:45:01', '2023-08-01 09:45:01'),
(108, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":null,\"sold\":\"2\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\"}', '2023-08-01 09:45:41', '2023-08-01 09:45:41'),
(109, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 09:45:41', '2023-08-01 09:45:41'),
(110, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:49:50', '2023-08-01 09:49:50'),
(111, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"20\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"2\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 09:51:01', '2023-08-01 09:51:01'),
(112, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 09:51:01', '2023-08-01 09:51:01'),
(113, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:51:20', '2023-08-01 09:51:20'),
(114, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Romper Caro\",\"price\":\"19\",\"description\":\"Summer Baby Boy Romper With Monogram or Name. Linen Like or - Etsy\",\"catgoryID\":\"2\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 09:53:14', '2023-08-01 09:53:14'),
(115, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 09:53:14', '2023-08-01 09:53:14'),
(116, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:53:23', '2023-08-01 09:53:23'),
(117, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:53:25', '2023-08-01 09:53:25'),
(118, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Dieper Bag\",\"price\":\"26\",\"description\":\"Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black\",\"catgoryID\":\"2\",\"sex\":\"women\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:54:48', '2023-08-01 09:54:48'),
(119, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:54:48', '2023-08-01 09:54:48'),
(120, 1, 'admin/demo/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:54:53', '2023-08-01 09:54:53'),
(121, 1, 'admin/demo/products/2', 'PUT', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"3\",\"sex\":null,\"sold\":\"2\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:54:56', '2023-08-01 09:54:56'),
(122, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:54:57', '2023-08-01 09:54:57'),
(123, 1, 'admin/demo/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:05', '2023-08-01 09:55:05'),
(124, 1, 'admin/demo/products/2', 'PUT', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":null,\"sold\":\"2\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:55:08', '2023-08-01 09:55:08'),
(125, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:55:08', '2023-08-01 09:55:08'),
(126, 1, 'admin/demo/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:12', '2023-08-01 09:55:12'),
(127, 1, 'admin/demo/products/3', 'PUT', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"20\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:55:17', '2023-08-01 09:55:17'),
(128, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:55:17', '2023-08-01 09:55:17'),
(129, 1, 'admin/demo/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:21', '2023-08-01 09:55:21'),
(130, 1, 'admin/demo/products/4', 'PUT', '127.0.0.1', '{\"name\":\"Romper Caro\",\"price\":\"19\",\"description\":\"Summer Baby Boy Romper With Monogram or Name. Linen Like or - Etsy\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:55:26', '2023-08-01 09:55:26'),
(131, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:55:26', '2023-08-01 09:55:26'),
(132, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:30', '2023-08-01 09:55:30'),
(133, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:34', '2023-08-01 09:55:34'),
(134, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:55:58', '2023-08-01 09:55:58'),
(135, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Avocado Romper\",\"price\":\"25\",\"description\":\"Avocado Baby Romper \\u2013 Juniorhaul\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:57:20', '2023-08-01 09:57:20'),
(136, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:57:21', '2023-08-01 09:57:21'),
(137, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:57:30', '2023-08-01 09:57:30'),
(138, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Leopard Jeans Set\",\"price\":\"30\",\"description\":\"Girls Fall Fierce Leopard Top & Jeans Set - Mia Belle Girls\",\"catgoryID\":\"4\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 09:59:10', '2023-08-01 09:59:10'),
(139, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-01 09:59:11', '2023-08-01 09:59:11'),
(140, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 09:59:13', '2023-08-01 09:59:13'),
(141, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Floral Summer Baby Girl Romper\",\"price\":null,\"description\":\"Western Girls Rompers | Cattle Floral Cactus Prints | Summer Western Overalls for Toddlers |\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-01 10:00:37', '2023-08-01 10:00:37'),
(142, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-01 10:00:38', '2023-08-01 10:00:38'),
(143, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 10:00:50', '2023-08-01 10:00:50'),
(144, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 10:01:10', '2023-08-01 10:01:10'),
(145, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Floral Summer Baby Girl Romper\",\"price\":\"25\",\"description\":\"Western Girls Rompers | Cattle Floral Cactus Prints | Summer Western Overalls for Toddlers |\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 10:01:41', '2023-08-01 10:01:41'),
(146, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 10:01:41', '2023-08-01 10:01:41'),
(147, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 10:01:45', '2023-08-01 10:01:45'),
(148, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Mesh Breathable Baby Sneakers\",\"price\":\"14\",\"description\":\"Mesh Breathable Baby Sneakers\",\"catgoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 10:02:28', '2023-08-01 10:02:28'),
(149, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 10:02:28', '2023-08-01 10:02:28'),
(150, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 10:02:35', '2023-08-01 10:02:35'),
(151, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Cute Baby Shoes\",\"price\":\"16\",\"description\":\"Cute Baby Shoes\",\"catgoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 10:02:54', '2023-08-01 10:02:54'),
(152, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 10:02:54', '2023-08-01 10:02:54'),
(153, 1, 'admin/demo/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 10:03:11', '2023-08-01 10:03:11'),
(154, 1, 'admin/demo/products/2', 'PUT', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":\"women\",\"sold\":\"2\",\"_token\":\"twt4H7ejdaCPk4Rueidj0BjdH3RVC4wpSzLgfYob\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 10:03:15', '2023-08-01 10:03:15'),
(155, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 10:03:15', '2023-08-01 10:03:15'),
(156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 19:38:29', '2023-08-01 19:38:29'),
(157, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:38:35', '2023-08-01 19:38:35'),
(158, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:38:53', '2023-08-01 19:38:53'),
(159, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:38:54', '2023-08-01 19:38:54'),
(160, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:38:57', '2023-08-01 19:38:57'),
(161, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:39:00', '2023-08-01 19:39:00'),
(162, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 19:39:37', '2023-08-01 19:39:37'),
(163, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 21:18:14', '2023-08-01 21:18:14'),
(164, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 22:25:51', '2023-08-01 22:25:51'),
(165, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 22:25:53', '2023-08-01 22:25:53'),
(166, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:26:05', '2023-08-01 22:26:05'),
(167, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:26:13', '2023-08-01 22:26:13'),
(168, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:26:19', '2023-08-01 22:26:19'),
(169, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 22:26:24', '2023-08-01 22:26:24'),
(170, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 22:26:48', '2023-08-01 22:26:48'),
(171, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 22:26:52', '2023-08-01 22:26:52'),
(172, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ed3 Vi\\u1ebft An\",\"price\":\"15\",\"description\":\"binn\",\"catgoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"wb7fuAQo4rM8FvRDIinqa9EaENtK7R6R7DHOeMPj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 22:27:21', '2023-08-01 22:27:21'),
(173, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:27:22', '2023-08-01 22:27:22'),
(174, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:29:05', '2023-08-01 22:29:05'),
(175, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 22:29:20', '2023-08-01 22:29:20'),
(176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 23:21:36', '2023-08-01 23:21:36'),
(177, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:21:38', '2023-08-01 23:21:38'),
(178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 23:23:48', '2023-08-01 23:23:48'),
(179, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:23:50', '2023-08-01 23:23:50'),
(180, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:23:56', '2023-08-01 23:23:56'),
(181, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ed3 Vi\\u1ebft An\",\"price\":\"15\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"wb7fuAQo4rM8FvRDIinqa9EaENtK7R6R7DHOeMPj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 23:24:14', '2023-08-01 23:24:14'),
(182, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 23:24:14', '2023-08-01 23:24:14'),
(183, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 23:25:29', '2023-08-01 23:25:29'),
(184, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"12\",\"_model\":\"App_Models_Product\",\"_token\":\"wb7fuAQo4rM8FvRDIinqa9EaENtK7R6R7DHOeMPj\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-08-01 23:25:35', '2023-08-01 23:25:35'),
(185, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:25:36', '2023-08-01 23:25:36'),
(186, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-01 23:44:53', '2023-08-01 23:44:53'),
(187, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:44:57', '2023-08-01 23:44:57'),
(188, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:45:01', '2023-08-01 23:45:01'),
(189, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"binan\",\"price\":\"2\",\"description\":\"\\u00e1dasdadsdad\",\"catgoryID\":\"5\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"wb7fuAQo4rM8FvRDIinqa9EaENtK7R6R7DHOeMPj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-01 23:45:20', '2023-08-01 23:45:20'),
(190, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 23:45:21', '2023-08-01 23:45:21'),
(191, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-01 23:48:35', '2023-08-01 23:48:35'),
(192, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"13\",\"_model\":\"App_Models_Product\",\"_token\":\"wb7fuAQo4rM8FvRDIinqa9EaENtK7R6R7DHOeMPj\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-08-01 23:51:01', '2023-08-01 23:51:01'),
(193, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-01 23:51:01', '2023-08-01 23:51:01'),
(194, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:04:08', '2023-08-02 03:04:08'),
(195, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:04:14', '2023-08-02 03:04:14'),
(196, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"wome\",\"sold\":\"20\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:05:21', '2023-08-02 03:05:21'),
(197, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:05:21', '2023-08-02 03:05:21'),
(198, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:05:27', '2023-08-02 03:05:27'),
(199, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"women\",\"sold\":\"20\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:05:31', '2023-08-02 03:05:31'),
(200, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:05:31', '2023-08-02 03:05:31'),
(201, 1, 'admin/demo/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:05:41', '2023-08-02 03:05:41'),
(202, 1, 'admin/demo/products/2', 'PUT', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":\"women\",\"sold\":\"2\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:05:49', '2023-08-02 03:05:49'),
(203, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:05:49', '2023-08-02 03:05:49'),
(204, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:06:57', '2023-08-02 03:06:57'),
(205, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"women\",\"sold\":\"20\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:07:04', '2023-08-02 03:07:04'),
(206, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:07:04', '2023-08-02 03:07:04'),
(207, 1, 'admin/demo/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:07:36', '2023-08-02 03:07:36'),
(208, 1, 'admin/demo/products/3', 'PUT', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"20\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:07:43', '2023-08-02 03:07:43'),
(209, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:07:44', '2023-08-02 03:07:44'),
(210, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:08:38', '2023-08-02 03:08:38'),
(211, 1, 'admin/demo/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:08:46', '2023-08-02 03:08:46'),
(212, 1, 'admin/demo/products/2', 'PUT', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"25\",\"description\":\"Quality imported high school student pair and worth buying\",\"catgoryID\":\"2\",\"sex\":\"women\",\"sold\":\"2\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:08:56', '2023-08-02 03:08:56'),
(213, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:08:56', '2023-08-02 03:08:56'),
(214, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:09:17', '2023-08-02 03:09:17'),
(215, 1, 'admin/demo/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:09:24', '2023-08-02 03:09:24'),
(216, 1, 'admin/demo/products/3', 'PUT', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"20\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:09:32', '2023-08-02 03:09:32'),
(217, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:09:32', '2023-08-02 03:09:32'),
(218, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:09:37', '2023-08-02 03:09:37'),
(219, 1, 'admin/demo/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:09:41', '2023-08-02 03:09:41'),
(220, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:10:13', '2023-08-02 03:10:13'),
(221, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:10:15', '2023-08-02 03:10:15'),
(222, 1, 'admin/demo/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:10:18', '2023-08-02 03:10:18'),
(223, 1, 'admin/demo/products/3', 'PUT', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"20\",\"description\":\"Baby Bear Infant Romper\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:10:33', '2023-08-02 03:10:33'),
(224, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:10:34', '2023-08-02 03:10:34'),
(225, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:23:11', '2023-08-02 03:23:11'),
(226, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:24:06', '2023-08-02 03:24:06'),
(227, 1, 'admin/demo/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:24:10', '2023-08-02 03:24:10'),
(228, 1, 'admin/demo/products/4', 'PUT', '127.0.0.1', '{\"name\":\"Romper Caro\",\"price\":\"19\",\"description\":\"Summer Baby Boy Romper With Monogram or Name. Linen Like or - Etsy\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:24:17', '2023-08-02 03:24:17'),
(229, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:24:17', '2023-08-02 03:24:17'),
(230, 1, 'admin/demo/products/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:24:21', '2023-08-02 03:24:21'),
(231, 1, 'admin/demo/products/5', 'PUT', '127.0.0.1', '{\"name\":\"Dieper Bag\",\"price\":\"26\",\"description\":\"Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black\",\"catgoryID\":\"2\",\"sex\":\"women\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:24:27', '2023-08-02 03:24:27'),
(232, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:24:27', '2023-08-02 03:24:27'),
(233, 1, 'admin/demo/products/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:24:32', '2023-08-02 03:24:32'),
(234, 1, 'admin/demo/products/6', 'PUT', '127.0.0.1', '{\"name\":\"Avocado Romper\",\"price\":\"25\",\"description\":\"Avocado Baby Romper \\u2013 Juniorhaul\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:24:40', '2023-08-02 03:24:40'),
(235, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:24:40', '2023-08-02 03:24:40'),
(236, 1, 'admin/demo/products/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:24:44', '2023-08-02 03:24:44'),
(237, 1, 'admin/demo/products/7', 'PUT', '127.0.0.1', '{\"name\":\"Leopard Jeans Set\",\"price\":\"30\",\"description\":\"Girls Fall Fierce Leopard Top & Jeans Set - Mia Belle Girls\",\"catgoryID\":\"4\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:24:53', '2023-08-02 03:24:53'),
(238, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:24:53', '2023-08-02 03:24:53'),
(239, 1, 'admin/demo/products/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:24:58', '2023-08-02 03:24:58'),
(240, 1, 'admin/demo/products/8', 'PUT', '127.0.0.1', '{\"name\":\"Floral Summer Baby Girl Romper\",\"price\":\"25\",\"description\":\"Western Girls Rompers | Cattle Floral Cactus Prints | Summer Western Overalls for Toddlers |\",\"catgoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:25:08', '2023-08-02 03:25:08'),
(241, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:25:09', '2023-08-02 03:25:09'),
(242, 1, 'admin/demo/products/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:25:13', '2023-08-02 03:25:13'),
(243, 1, 'admin/demo/products/9', 'PUT', '127.0.0.1', '{\"name\":\"Mesh Breathable Baby Sneakers\",\"price\":\"14\",\"description\":\"Mesh Breathable Baby Sneakers\",\"catgoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:25:21', '2023-08-02 03:25:21'),
(244, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:25:21', '2023-08-02 03:25:21'),
(245, 1, 'admin/demo/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 03:25:26', '2023-08-02 03:25:26'),
(246, 1, 'admin/demo/products/10', 'PUT', '127.0.0.1', '{\"name\":\"Cute Baby Shoes\",\"price\":\"16\",\"description\":\"Cute Baby Shoes\",\"catgoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"rAfeVYdInywvLeUCaOO8ZRgVUTAAskR9lq1LeAms\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 03:25:32', '2023-08-02 03:25:32'),
(247, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 03:25:32', '2023-08-02 03:25:32'),
(248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-02 08:00:39', '2023-08-02 08:00:39'),
(249, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:00:45', '2023-08-02 08:00:45'),
(250, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:00:51', '2023-08-02 08:00:51'),
(251, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Men\'s short-sleeved polo shirt with standard men\'s sleeves\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"20\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 08:00:56', '2023-08-02 08:00:56'),
(252, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:00:57', '2023-08-02 08:00:57'),
(253, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:01:02', '2023-08-02 08:01:02'),
(254, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:01:16', '2023-08-02 08:01:16'),
(255, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:02:16', '2023-08-02 08:02:16'),
(256, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:02:25', '2023-08-02 08:02:25'),
(257, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:02:27', '2023-08-02 08:02:27'),
(258, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-02 08:03:06', '2023-08-02 08:03:06'),
(259, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:03:08', '2023-08-02 08:03:08'),
(260, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:03:10', '2023-08-02 08:03:10'),
(261, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:03:16', '2023-08-02 08:03:16'),
(262, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:03:56', '2023-08-02 08:03:56'),
(263, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:03:56', '2023-08-02 08:03:56'),
(264, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:04:08', '2023-08-02 08:04:08'),
(265, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:04:08', '2023-08-02 08:04:08'),
(266, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:04:32', '2023-08-02 08:04:32'),
(267, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:04:34', '2023-08-02 08:04:34'),
(268, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-02 08:04:41', '2023-08-02 08:04:41'),
(269, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:04:43', '2023-08-02 08:04:43'),
(270, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:04:44', '2023-08-02 08:04:44'),
(271, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ed3 Vi\\u1ebft An\",\"price\":\"15\",\"description\":\"Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black\",\"catgoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 08:05:13', '2023-08-02 08:05:13'),
(272, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:05:14', '2023-08-02 08:05:14'),
(273, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:07:21', '2023-08-02 08:07:21'),
(274, 1, 'admin/demo/products/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:07:25', '2023-08-02 08:07:25'),
(275, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:07:27', '2023-08-02 08:07:27'),
(276, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"14\",\"_model\":\"App_Models_Product\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-08-02 08:07:30', '2023-08-02 08:07:30'),
(277, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:07:30', '2023-08-02 08:07:30'),
(278, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 08:08:57', '2023-08-02 08:08:57'),
(279, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-02 08:09:33', '2023-08-02 08:09:33'),
(280, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:36', '2023-08-02 08:09:36'),
(281, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:40', '2023-08-02 08:09:40'),
(282, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:42', '2023-08-02 08:09:42'),
(283, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:43', '2023-08-02 08:09:43'),
(284, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:46', '2023-08-02 08:09:46'),
(285, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:49', '2023-08-02 08:09:49'),
(286, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:55', '2023-08-02 08:09:55'),
(287, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:09:58', '2023-08-02 08:09:58'),
(288, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:10:02', '2023-08-02 08:10:02'),
(289, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:10:04', '2023-08-02 08:10:04'),
(290, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 08:22:36', '2023-08-02 08:22:36'),
(291, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-02 10:02:44', '2023-08-02 10:02:44'),
(292, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:02:46', '2023-08-02 10:02:46'),
(293, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:03:12', '2023-08-02 10:03:12'),
(294, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Trouser\",\"price\":\"15\",\"description\":null,\"catgoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:04:19', '2023-08-02 10:04:19'),
(295, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-02 10:04:20', '2023-08-02 10:04:20'),
(296, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:04:31', '2023-08-02 10:04:31'),
(297, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:04:32', '2023-08-02 10:04:32'),
(298, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:04:45', '2023-08-02 10:04:45'),
(299, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Trouser\",\"price\":\"15\",\"description\":\"Trouser\",\"catgoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:05:02', '2023-08-02 10:05:02'),
(300, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:05:02', '2023-08-02 10:05:02'),
(301, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:05:46', '2023-08-02 10:05:46'),
(302, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Teeworld\",\"price\":\"20\",\"description\":\"Best Seller \\u2013 Teeworld - T-shirt World\",\"catgoryID\":\"7\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:06:31', '2023-08-02 10:06:31');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(303, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:06:31', '2023-08-02 10:06:31'),
(304, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:09:05', '2023-08-02 10:09:05'),
(305, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Varsity jacket  Green Bomber\",\"price\":\"29\",\"description\":\"Green Bomber - Limited DAVIES BRAND \\u00ae . varsity jacket local brand blue\",\"catgoryID\":\"8\",\"sex\":null,\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:10:33', '2023-08-02 10:10:33'),
(306, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:10:34', '2023-08-02 10:10:34'),
(307, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-02 10:13:19', '2023-08-02 10:13:19'),
(308, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:13:21', '2023-08-02 10:13:21'),
(309, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:13:59', '2023-08-02 10:13:59'),
(310, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo 231APL20\",\"price\":\"17\",\"description\":\"Men\'s polo shirt without embroidery with collar + sleeves 231APL20\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:15:05', '2023-08-02 10:15:05'),
(311, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:15:06', '2023-08-02 10:15:06'),
(312, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:15:12', '2023-08-02 10:15:12'),
(313, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo  231APL21\",\"price\":\"16\",\"description\":\"Men\'s polo shirt without embroidery with collar + sleeves 231APL21\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:15:42', '2023-08-02 10:15:42'),
(314, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:15:43', '2023-08-02 10:15:43'),
(315, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:15:50', '2023-08-02 10:15:50'),
(316, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Oversize The Face\",\"price\":\"17\",\"description\":\"The Face ODIN CLUB Oversize Polo Shirt, Men\'s and Women\'s Collar T-shirt ODIN, Local Brand ODIN CLUB\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:16:25', '2023-08-02 10:16:25'),
(317, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:16:25', '2023-08-02 10:16:25'),
(318, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:16:28', '2023-08-02 10:16:28'),
(319, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo oversize Sean\",\"price\":\"20\",\"description\":\"Polo oversize Sean Odin Club\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:16:57', '2023-08-02 10:16:57'),
(320, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:16:57', '2023-08-02 10:16:57'),
(321, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:16:59', '2023-08-02 10:16:59'),
(322, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Oversize Rose\",\"price\":\"22\",\"description\":\"Polo Oversize Rose - El Rico Store\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:17:21', '2023-08-02 10:17:21'),
(323, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:17:21', '2023-08-02 10:17:21'),
(324, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:17:22', '2023-08-02 10:17:22'),
(325, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt Oversize - Black\",\"price\":\"21\",\"description\":\"Polo Shirt Oversize - Black - Datino Streetwear\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:17:48', '2023-08-02 10:17:48'),
(326, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:17:48', '2023-08-02 10:17:48'),
(327, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:17:51', '2023-08-02 10:17:51'),
(328, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Loha\",\"price\":\"17\",\"description\":\"Loha Loha Polo T-Shirt Men Women\'s Loose Wide Form Local Brand \\/ Oversize Polo Shirt With Crocodile Cotton\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:18:22', '2023-08-02 10:18:22'),
(329, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:18:22', '2023-08-02 10:18:22'),
(330, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:18:26', '2023-08-02 10:18:26'),
(331, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Short Cotton\",\"price\":\"15\",\"description\":\"Men\'s Cotton Shorts MNA\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-02 10:18:59', '2023-08-02 10:18:59'),
(332, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-02 10:18:59', '2023-08-02 10:18:59'),
(333, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:19:04', '2023-08-02 10:19:04'),
(334, 1, 'admin/demo/products/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-02 10:19:07', '2023-08-02 10:19:07'),
(335, 1, 'admin/demo/products/25', 'PUT', '127.0.0.1', '{\"name\":\"Short Cotton\",\"price\":\"15\",\"description\":\"Men\'s Cotton Shorts MNA\",\"catgoryID\":\"8\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"M7Fl9ubyAmSI8YpPxHgwGhErdSscRJa2OkQ9SNXG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?page=2\"}', '2023-08-02 10:19:21', '2023-08-02 10:19:21'),
(336, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-08-02 10:19:22', '2023-08-02 10:19:22'),
(337, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-03 02:00:47', '2023-08-03 02:00:47'),
(338, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 02:00:55', '2023-08-03 02:00:55'),
(339, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 02:06:53', '2023-08-03 02:06:53'),
(340, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 02:07:09', '2023-08-03 02:07:09'),
(341, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-03 22:05:19', '2023-08-03 22:05:19'),
(342, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:05:22', '2023-08-03 22:05:22'),
(343, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-03 22:10:17', '2023-08-03 22:10:17'),
(344, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:10:23', '2023-08-03 22:10:23'),
(345, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:10:26', '2023-08-03 22:10:26'),
(346, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Polo\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:10:58', '2023-08-03 22:10:58'),
(347, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:10:59', '2023-08-03 22:10:59'),
(348, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:14:07', '2023-08-03 22:14:07'),
(349, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Bag\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:14:14', '2023-08-03 22:14:14'),
(350, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:14:15', '2023-08-03 22:14:15'),
(351, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:14:16', '2023-08-03 22:14:16'),
(352, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Romber\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:14:27', '2023-08-03 22:14:27'),
(353, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:14:28', '2023-08-03 22:14:28'),
(354, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:14:30', '2023-08-03 22:14:30'),
(355, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Jean\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:14:42', '2023-08-03 22:14:42'),
(356, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:14:42', '2023-08-03 22:14:42'),
(357, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:14:44', '2023-08-03 22:14:44'),
(358, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Sneaker\",\"warehouse\":\"B\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:14:52', '2023-08-03 22:14:52'),
(359, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:14:52', '2023-08-03 22:14:52'),
(360, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:14:54', '2023-08-03 22:14:54'),
(361, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Trouser\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:15:00', '2023-08-03 22:15:00'),
(362, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:15:01', '2023-08-03 22:15:01'),
(363, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:15:02', '2023-08-03 22:15:02'),
(364, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Shirt\",\"warehouse\":null,\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:15:07', '2023-08-03 22:15:07'),
(365, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '[]', '2023-08-03 22:15:08', '2023-08-03 22:15:08'),
(366, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:15:14', '2023-08-03 22:15:14'),
(367, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Shirt\",\"warehouse\":\"A\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\"}', '2023-08-03 22:15:32', '2023-08-03 22:15:32'),
(368, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:15:32', '2023-08-03 22:15:32'),
(369, 1, 'admin/demo/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:15:34', '2023-08-03 22:15:34'),
(370, 1, 'admin/demo/category', 'POST', '127.0.0.1', '{\"category_name\":\"Short\",\"warehouse\":\"B\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/category\"}', '2023-08-03 22:15:39', '2023-08-03 22:15:39'),
(371, 1, 'admin/demo/category', 'GET', '127.0.0.1', '[]', '2023-08-03 22:15:40', '2023-08-03 22:15:40'),
(372, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:18:27', '2023-08-03 22:18:27'),
(373, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:18:30', '2023-08-03 22:18:30'),
(374, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Categories\",\"icon\":\"fa-dedent\",\"uri\":\"demo\\/categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\"}', '2023-08-03 22:20:00', '2023-08-03 22:20:00'),
(375, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-03 22:20:00', '2023-08-03 22:20:00'),
(376, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-08-03 22:20:04', '2023-08-03 22:20:04'),
(377, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-03 22:20:11', '2023-08-03 22:20:11'),
(378, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-03 22:24:06', '2023-08-03 22:24:06'),
(379, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-04 01:06:14', '2023-08-04 01:06:14'),
(380, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:06:23', '2023-08-04 01:06:23'),
(381, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:06:33', '2023-08-04 01:06:33'),
(382, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ed3 Vi\\u1ebft An\",\"price\":\"10\",\"description\":\"vo dich btec\",\"catgoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-04 01:07:05', '2023-08-04 01:07:05'),
(383, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-04 01:07:05', '2023-08-04 01:07:05'),
(384, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:07:11', '2023-08-04 01:07:11'),
(385, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"26\",\"_model\":\"App_Models_Product\",\"_token\":\"UZndShwuoUBtHpLR9EFT1vS3WYXSiYnada0DEIxq\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-08-04 01:07:30', '2023-08-04 01:07:30'),
(386, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:07:30', '2023-08-04 01:07:30'),
(387, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:07:37', '2023-08-04 01:07:37'),
(388, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:07:44', '2023-08-04 01:07:44'),
(389, 1, 'admin/demo/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:07:53', '2023-08-04 01:07:53'),
(390, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:03', '2023-08-04 01:08:03'),
(391, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:17', '2023-08-04 01:08:17'),
(392, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:26', '2023-08-04 01:08:26'),
(393, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:37', '2023-08-04 01:08:37'),
(394, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:37', '2023-08-04 01:08:37'),
(395, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-04 01:08:47', '2023-08-04 01:08:47'),
(396, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 00:03:33', '2023-08-09 00:03:33'),
(397, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:03:36', '2023-08-09 00:03:36'),
(398, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 00:03:54', '2023-08-09 00:03:54'),
(399, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 00:19:24', '2023-08-09 00:19:24'),
(400, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:19:26', '2023-08-09 00:19:26'),
(401, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:19:27', '2023-08-09 00:19:27'),
(402, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Women\'s Tops Long Sleeve Shrink Form Loose - 10F22SHLW003\",\"price\":\"15\",\"description\":\"a\",\"description_long\":\"a\",\"catgoryID\":\"7\",\"sex\":\"women\",\"sold\":\"20\",\"_token\":\"d7MBXgDjdFeIh8nfttpZUVdRq543coJ8SLwQ0acM\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 00:20:43', '2023-08-09 00:20:43'),
(403, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 00:20:45', '2023-08-09 00:20:45'),
(404, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 00:22:22', '2023-08-09 00:22:22'),
(405, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Women\'s Tops Long Sleeve Shrink Form Loose - 10F22SHLW003\",\"price\":\"20\",\"description\":\"a\",\"description_long\":\"a\",\"catgoryID\":\"7\",\"sex\":\"women\",\"sold\":\"20\",\"_token\":\"d7MBXgDjdFeIh8nfttpZUVdRq543coJ8SLwQ0acM\"}', '2023-08-09 00:22:41', '2023-08-09 00:22:41'),
(406, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 00:22:41', '2023-08-09 00:22:41'),
(407, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:22:46', '2023-08-09 00:22:46'),
(408, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:22:55', '2023-08-09 00:22:55'),
(409, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Cow pattern women\'s shirt\",\"price\":\"25\",\"description\":\"a\",\"description_long\":\"a\",\"catgoryID\":\"9\",\"sex\":\"women\",\"sold\":\"10\",\"_token\":\"d7MBXgDjdFeIh8nfttpZUVdRq543coJ8SLwQ0acM\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?page=2\"}', '2023-08-09 00:23:42', '2023-08-09 00:23:42'),
(410, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-08-09 00:23:42', '2023-08-09 00:23:42'),
(411, 1, 'admin/demo/products/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 00:24:19', '2023-08-09 00:24:19'),
(412, 1, 'admin/demo/products/27', 'PUT', '127.0.0.1', '{\"name\":\"Women\'s Long Sleeve Tops\",\"price\":\"20\",\"description\":\"a\",\"description_long\":\"a\",\"catgoryID\":\"7\",\"sex\":\"women\",\"sold\":\"20\",\"_token\":\"d7MBXgDjdFeIh8nfttpZUVdRq543coJ8SLwQ0acM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?page=2\"}', '2023-08-09 00:24:42', '2023-08-09 00:24:42'),
(413, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-08-09 00:24:42', '2023-08-09 00:24:42'),
(414, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 01:23:13', '2023-08-09 01:23:13'),
(415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 01:23:17', '2023-08-09 01:23:17'),
(416, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 01:23:20', '2023-08-09 01:23:20'),
(417, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 01:24:27', '2023-08-09 01:24:27'),
(418, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 10:27:37', '2023-08-09 10:27:37'),
(419, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:27:42', '2023-08-09 10:27:42'),
(420, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:27:46', '2023-08-09 10:27:46'),
(421, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:29:33', '2023-08-09 10:29:33'),
(422, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:29:35', '2023-08-09 10:29:35'),
(423, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Shirt\",\"warehouse\":\"A\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:29:40', '2023-08-09 10:29:40'),
(424, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:29:40', '2023-08-09 10:29:40'),
(425, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:29:42', '2023-08-09 10:29:42'),
(426, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Trouser\",\"warehouse\":\"B\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:29:58', '2023-08-09 10:29:58'),
(427, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:29:58', '2023-08-09 10:29:58'),
(428, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:29:59', '2023-08-09 10:29:59'),
(429, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Sneaker\",\"warehouse\":\"C\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:05', '2023-08-09 10:30:05'),
(430, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:05', '2023-08-09 10:30:05'),
(431, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:30:07', '2023-08-09 10:30:07'),
(432, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Short\",\"warehouse\":\"a\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:12', '2023-08-09 10:30:12'),
(433, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:13', '2023-08-09 10:30:13'),
(434, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:30:14', '2023-08-09 10:30:14'),
(435, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Romber\",\"warehouse\":\"D\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:26', '2023-08-09 10:30:26'),
(436, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:26', '2023-08-09 10:30:26'),
(437, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:30:29', '2023-08-09 10:30:29'),
(438, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Polo\",\"warehouse\":\"A\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:39', '2023-08-09 10:30:39'),
(439, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:39', '2023-08-09 10:30:39'),
(440, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:30:40', '2023-08-09 10:30:40'),
(441, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Jean\",\"warehouse\":\"A\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:48', '2023-08-09 10:30:48'),
(442, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:48', '2023-08-09 10:30:48'),
(443, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:30:50', '2023-08-09 10:30:50'),
(444, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Bag\",\"warehouse\":\"A\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:30:55', '2023-08-09 10:30:55'),
(445, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:30:55', '2023-08-09 10:30:55'),
(446, 1, 'admin/demo/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:31:05', '2023-08-09 10:31:05'),
(447, 1, 'admin/demo/categories', 'POST', '127.0.0.1', '{\"category_name\":\"Jacket\",\"warehouse\":\"C\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/categories\"}', '2023-08-09 10:31:11', '2023-08-09 10:31:11'),
(448, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '[]', '2023-08-09 10:31:11', '2023-08-09 10:31:11'),
(449, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:31:12', '2023-08-09 10:31:12'),
(450, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:31:14', '2023-08-09 10:31:14'),
(451, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"de sau\",\"catgoryID\":\"2\",\"sex\":\"men\",\"sold\":\"50\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 10:31:59', '2023-08-09 10:31:59'),
(452, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 10:32:01', '2023-08-09 10:32:01'),
(453, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"15\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"aasasdasd\",\"catgoryID\":\"2\",\"sex\":\"men\",\"sold\":\"50\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\"}', '2023-08-09 10:33:13', '2023-08-09 10:33:13'),
(454, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 10:33:14', '2023-08-09 10:33:14'),
(455, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 10:33:59', '2023-08-09 10:33:59'),
(456, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"20\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"de sau\",\"catgoryID\":\"2\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\"}', '2023-08-09 10:34:29', '2023-08-09 10:34:29'),
(457, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 10:34:30', '2023-08-09 10:34:30'),
(458, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 10:34:57', '2023-08-09 10:34:57'),
(459, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"20\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"de su\",\"categoryID\":\"1\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\"}', '2023-08-09 10:35:20', '2023-08-09 10:35:20'),
(460, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 10:35:20', '2023-08-09 10:35:20'),
(461, 1, 'admin/demo/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:35:23', '2023-08-09 10:35:23'),
(462, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:35:26', '2023-08-09 10:35:26'),
(463, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 10:35:33', '2023-08-09 10:35:33'),
(464, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"20\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"de su\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"tPkcQmJkRKvaBrAKj2nnmcCZT2m06aQiMI25SkYz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 10:35:37', '2023-08-09 10:35:37'),
(465, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 10:35:38', '2023-08-09 10:35:38'),
(466, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-09 21:25:06', '2023-08-09 21:25:06'),
(467, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:25:12', '2023-08-09 21:25:12'),
(468, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:26:38', '2023-08-09 21:26:38'),
(469, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"20\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"Teenage men are spacious, comfortable, casual, versatile, fashionable and cool  Very cool fashion and gentleman design.  Super soft touch feeling.  This is a must-have wardrobe.  You can wear it every day.  Street fashion style.    Asian Size: M L XL 2XL 3XL  M: Shoulder Width 48 Bust 100 Sleeve Length 22 Length 66  L: Shoulder Width 50 Bust 104 Sleeve Length 23 Length 68  XL: Shoulder Width 52 Bust 108 Sleeve Length 24 Length 70  2xl: Shoulder Width 54 Bust 112 Sleeve Length 25 Length 72  3xl: Shoulder Width 56 Bust 116 Sleeve Length 26 Length 74    Recommended size: (height and weight)  M: approx suitable for weight 45-50KG. Height 155-160CM  L: approx suitable for weight 50-55KG. Height 160-165CM  XL: approx suitable for weight 60-70KG. Height 170-175CM  2xl: approx suitable for weight 70-80KG. Height 175-180CM  3xl: Approximately suitable for weight 80-85KG. Height 175-180CM\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"0\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 21:28:40', '2023-08-09 21:28:40'),
(470, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:28:40', '2023-08-09 21:28:40'),
(471, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:29:59', '2023-08-09 21:29:59'),
(472, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:30:04', '2023-08-09 21:30:04'),
(473, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:30:20', '2023-08-09 21:30:20'),
(474, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:30:31', '2023-08-09 21:30:31'),
(475, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Bag BB\",\"price\":\"21\",\"description\":\"New style large size baby backpacks convenient for breastfeeding moms\",\"description_long\":\"Estimated delivery time for this product is 7-9 days  Dear customers, welcome to happyweenkeed store! The store mainly sells men\'s bags, cute children\'s bags, ... cheap prices. Stores often update new and beautiful designs. Please add store tracking for our convenience to serve you!\",\"categoryID\":\"8\",\"sex\":\"women\",\"sold\":\"50\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 21:34:11', '2023-08-09 21:34:11'),
(476, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:34:12', '2023-08-09 21:34:12'),
(477, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:34:39', '2023-08-09 21:34:39'),
(478, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:34:43', '2023-08-09 21:34:43'),
(479, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"16\",\"description\":\"Plush Bear Overall Romper | Peculiarly You - Baby Romper\",\"description_long\":\"Newborn Baby Fleece Winter Infant Warm Baby Suit One-Pieces Style: FashionClothing Length: REGULARMaterial Composition: COTTONDepartment Name: BabyWeight: 500gOuterwear Type: Down & ParkasFit: Fits smaller than usual. Please check this store\'s sizing infoPattern Type: CartoonGender: UnisexSleeve Style: REGULARCollar: HoodedModel Number: CL2092Fabric Type: Woven\",\"categoryID\":null,\"sex\":null,\"sold\":null,\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 21:36:27', '2023-08-09 21:36:27'),
(480, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:36:30', '2023-08-09 21:36:30'),
(481, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"BearRomper\",\"price\":\"16\",\"description\":\"Plush Bear Overall Romper | Peculiarly You - Baby Romper\",\"description_long\":\"Newborn Baby Fleece Winter Infant Warm Baby Suit One-Pieces Style: FashionClothing Length: REGULARMaterial Composition: COTTONDepartment Name: BabyWeight: 500gOuterwear Type: Down & ParkasFit: Fits smaller than usual. Please check this store\'s sizing infoPattern Type: CartoonGender: UnisexSleeve Style: REGULARCollar: HoodedModel Number: CL2092Fabric Type: Woven\",\"categoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"1\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 21:36:49', '2023-08-09 21:36:49'),
(482, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:36:49', '2023-08-09 21:36:49'),
(483, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:38:30', '2023-08-09 21:38:30'),
(484, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:38:33', '2023-08-09 21:38:33'),
(485, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:38:56', '2023-08-09 21:38:56'),
(486, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:39:07', '2023-08-09 21:39:07'),
(487, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Romper Caro\",\"price\":\"15\",\"description\":\"Romper Caro\",\"description_long\":\"Teenage men are spacious, comfortable, casual, versatile, fashionable and cool  Very cool fashion and gentleman design.  Super soft touch feeling.  This is a must-have wardrobe.  You can wear it every day.  Street fashion style.    Asian Size: M L XL 2XL 3XL  M: Shoulder Width 48 Bust 100 Sleeve Length 22 Length 66  L: Shoulder Width 50 Bust 104 Sleeve Length 23 Length 68  XL: Shoulder Width 52 Bust 108 Sleeve Length 24 Length 70  2xl: Shoulder Width 54 Bust 112 Sleeve Length 25 Length 72  3xl: Shoulder Width 56 Bust 116 Sleeve Length 26 Length 74    Recommended size: (height and weight)  M: approx suitable for weight 45-50KG. Height 155-160CM  L: approx suitable for weight 50-55KG. Height 160-165CM  XL: approx suitable for weight 60-70KG. Height 170-175CM  2xl: approx suitable for weight 70-80KG. Height 175-180CM  3xl: Approximately suitable for weight 80-85KG. Height 175-180CM\",\"categoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 21:40:37', '2023-08-09 21:40:37'),
(488, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:40:37', '2023-08-09 21:40:37'),
(489, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:40:41', '2023-08-09 21:40:41'),
(490, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Dieper Bag\",\"price\":\"19\",\"description\":\"Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black\",\"description_long\":\"Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black\",\"categoryID\":\"8\",\"sex\":\"women\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 21:41:23', '2023-08-09 21:41:23'),
(491, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:41:23', '2023-08-09 21:41:23'),
(492, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_columns_\":\"categoryID,created_at,description,id,img,name,price,sex,sold,updated_at\",\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:41:31', '2023-08-09 21:41:31'),
(493, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:41:34', '2023-08-09 21:41:34'),
(494, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:41:39', '2023-08-09 21:41:39'),
(495, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2023-08-09 21:41:42', '2023-08-09 21:41:42'),
(496, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2023-08-09 21:42:01', '2023-08-09 21:42:01'),
(497, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2023-08-09 21:42:14', '2023-08-09 21:42:14'),
(498, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:42:15', '2023-08-09 21:42:15'),
(499, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Avocado Romper\",\"price\":\"21\",\"description\":\"Avocado Baby Romper \\u2013 Juniorhaul\",\"description_long\":\"Avocado Baby Romper \\u2013 Juniorhaul\",\"categoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:43:16', '2023-08-09 21:43:16'),
(500, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:43:16', '2023-08-09 21:43:16'),
(501, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:43:17', '2023-08-09 21:43:17'),
(502, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Set jean\",\"price\":\"21\",\"description\":\"Children\'s Jeans Kids Ripped Hole Denim Pants Baby Girl Clothes Spring\",\"description_long\":\"Children\'s Jeans Kids Ripped Hole Denim Pants Baby Girl Clothes Spring\",\"categoryID\":\"7\",\"sex\":\"kid\",\"sold\":\"5\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:45:48', '2023-08-09 21:45:48'),
(503, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:45:48', '2023-08-09 21:45:48'),
(504, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:45:50', '2023-08-09 21:45:50'),
(505, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Romper\",\"price\":\"16\",\"description\":\"Baby Flower Infant Romper\",\"description_long\":\"Baby Flower Infant Romper\",\"categoryID\":\"5\",\"sex\":\"kid\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:46:25', '2023-08-09 21:46:25'),
(506, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:46:25', '2023-08-09 21:46:25'),
(507, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:46:27', '2023-08-09 21:46:27'),
(508, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Shoes Ping\",\"price\":\"15\",\"description\":\"Shoes Ping\",\"description_long\":\"Shoes Ping\",\"categoryID\":\"3\",\"sex\":\"kid\",\"sold\":\"2\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:47:25', '2023-08-09 21:47:25'),
(509, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:47:25', '2023-08-09 21:47:25'),
(510, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:47:27', '2023-08-09 21:47:27'),
(511, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Teeworld\",\"price\":\"19\",\"description\":\"Teeworld Men\'s T-shirt\",\"description_long\":\"Teeworld Men\'s T-shirt\",\"categoryID\":\"1\",\"sex\":\"men\",\"sold\":\"5\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:52:07', '2023-08-09 21:52:07'),
(512, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:52:07', '2023-08-09 21:52:07'),
(513, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:52:08', '2023-08-09 21:52:08'),
(514, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Green Bomber\",\"price\":\"25\",\"description\":\"Green Bomber blue local brand varsity jacket\",\"description_long\":\"Green Bomber blue local brand varsity jacket\",\"categoryID\":\"9\",\"sex\":\"men\",\"sold\":\"7\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:53:54', '2023-08-09 21:53:54'),
(515, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:53:54', '2023-08-09 21:53:54'),
(516, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:53:56', '2023-08-09 21:53:56'),
(517, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"21\",\"description\":\"Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish\",\"description_long\":\"Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"5\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:55:42', '2023-08-09 21:55:42'),
(518, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 21:55:42', '2023-08-09 21:55:42'),
(519, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:55:43', '2023-08-09 21:55:43'),
(520, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Black\",\"price\":null,\"description\":\"Polo Shirt Oversize - Black - Datino Streetwear\",\"description_long\":\"Polo Shirt Oversize - Black - Datino Streetwear\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?&per_page=10\"}', '2023-08-09 21:56:17', '2023-08-09 21:56:17'),
(521, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 21:56:18', '2023-08-09 21:56:18'),
(522, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Black\",\"price\":\"19\",\"description\":\"Polo Shirt Oversize - Black - Datino Streetwear\",\"description_long\":\"Polo Shirt Oversize - Black - Datino Streetwear\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 21:56:28', '2023-08-09 21:56:28'),
(523, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 21:56:28', '2023-08-09 21:56:28'),
(524, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 21:56:29', '2023-08-09 21:56:29'),
(525, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Black Odin\",\"price\":\"19\",\"description\":\"Polo oversize Sean Odin Club\",\"description_long\":\"Polo oversize Sean Odin Club\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:05:51', '2023-08-09 22:05:51'),
(526, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:05:51', '2023-08-09 22:05:51'),
(527, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:05:53', '2023-08-09 22:05:53'),
(528, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Odin\",\"price\":null,\"description\":\"Polo oversize Sean Odin Club\",\"description_long\":\"Polo oversize Sean Odin Club\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"3\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:06:55', '2023-08-09 22:06:55'),
(529, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 22:06:55', '2023-08-09 22:06:55'),
(530, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Odin\",\"price\":\"16\",\"description\":\"Polo oversize Sean Odin Club\",\"description_long\":\"Polo oversize Sean Odin Club\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"3\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 22:07:06', '2023-08-09 22:07:06'),
(531, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:07:06', '2023-08-09 22:07:06'),
(532, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:07:07', '2023-08-09 22:07:07'),
(533, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Oversize Rose\",\"price\":null,\"description\":\"Polo Oversize Rose - El Rico Store\",\"description_long\":\"Polo Oversize Rose - El Rico Store\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"3\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:07:37', '2023-08-09 22:07:37'),
(534, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 22:07:37', '2023-08-09 22:07:37'),
(535, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Polo Oversize Rose\",\"price\":\"17\",\"description\":\"Polo Oversize Rose - El Rico Store\",\"description_long\":\"Polo Oversize Rose - El Rico Store\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"3\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 22:07:47', '2023-08-09 22:07:47'),
(536, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:07:47', '2023-08-09 22:07:47'),
(537, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:07:49', '2023-08-09 22:07:49'),
(538, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Tee Shirt Black\",\"price\":\"20\",\"description\":\"Teeworld Men\'s Polo-shirt\",\"description_long\":\"Teeworld Men\'s Polo-shirt - Black Oversize - 100% Cotton\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:08:48', '2023-08-09 22:08:48'),
(539, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:08:48', '2023-08-09 22:08:48'),
(540, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:08:53', '2023-08-09 22:08:53'),
(541, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:08:59', '2023-08-09 22:08:59'),
(542, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Trouser Black\",\"price\":\"21\",\"description\":\"Trouser Black\",\"description_long\":\"Trouser Black\",\"categoryID\":\"2\",\"sex\":\"men\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-09 22:19:11', '2023-08-09 22:19:11'),
(543, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 22:19:11', '2023-08-09 22:19:11'),
(544, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:19:13', '2023-08-09 22:19:13'),
(545, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Women\'s T-shirt\",\"price\":\"16\",\"description\":\"Women\'s T-shirt with embroidered cat face on the sleeves\",\"description_long\":\"Women\'s T-shirt with embroidered cat face on the sleeves\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-09 22:28:31', '2023-08-09 22:28:31'),
(546, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2023-08-09 22:28:32', '2023-08-09 22:28:32'),
(547, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:28:34', '2023-08-09 22:28:34'),
(548, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose\",\"price\":null,\"description\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"description_long\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products?per_page=10\"}', '2023-08-09 22:29:35', '2023-08-09 22:29:35'),
(549, 1, 'admin/demo/products/create', 'GET', '127.0.0.1', '[]', '2023-08-09 22:29:36', '2023-08-09 22:29:36'),
(550, 1, 'admin/demo/products', 'POST', '127.0.0.1', '{\"name\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose\",\"price\":\"17\",\"description\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"description_long\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\"}', '2023-08-09 22:29:43', '2023-08-09 22:29:43'),
(551, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:29:43', '2023-08-09 22:29:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(552, 1, 'admin/demo/products/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:30:20', '2023-08-09 22:30:20'),
(553, 1, 'admin/demo/products/20', 'PUT', '127.0.0.1', '{\"name\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose\",\"price\":\"17\",\"description\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"description_long\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:30:34', '2023-08-09 22:30:34'),
(554, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:30:34', '2023-08-09 22:30:34'),
(555, 1, 'admin/demo/products/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:31:08', '2023-08-09 22:31:08'),
(556, 1, 'admin/demo/products/20', 'PUT', '127.0.0.1', '{\"name\":\"Women\'s Tops Long\",\"price\":\"17\",\"description\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"description_long\":\"Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"6\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:31:16', '2023-08-09 22:31:16'),
(557, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:31:16', '2023-08-09 22:31:16'),
(558, 1, 'admin/demo/products/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-09 22:31:24', '2023-08-09 22:31:24'),
(559, 1, 'admin/demo/products/19', 'PUT', '127.0.0.1', '{\"name\":\"Women\'s T-shirt\",\"price\":\"16\",\"description\":\"Women\'s T-shirt with embroidered cat face on the sleeves\",\"description_long\":\"Women\'s T-shirt with embroidered cat face on the sleeves\",\"categoryID\":\"1\",\"sex\":\"women\",\"sold\":\"4\",\"_token\":\"Rq8czr6005njSqEE4aZ3EWGjNOfpJshd2a4ZZAdc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-09 22:33:04', '2023-08-09 22:33:04'),
(560, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-09 22:33:04', '2023-08-09 22:33:04'),
(561, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-08-10 00:29:05', '2023-08-10 00:29:05'),
(562, 1, 'admin/demo/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:29:09', '2023-08-10 00:29:09'),
(563, 1, 'admin/demo/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:29:15', '2023-08-10 00:29:15'),
(564, 1, 'admin/demo/products/1', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"20\",\"description\":\"Polo Shirt Oversize - White- Datino Streetwear\",\"description_long\":\"Teenage men are spacious, comfortable, casual, versatile, fashionable and cool  Very cool fashion and gentleman design.  Super soft touch feeling.  This is a must-have wardrobe.  You can wear it every day.  Street fashion style.    Asian Size: M L XL 2XL 3XL  M: Shoulder Width 48 Bust 100 Sleeve Length 22 Length 66  L: Shoulder Width 50 Bust 104 Sleeve Length 23 Length 68  XL: Shoulder Width 52 Bust 108 Sleeve Length 24 Length 70  2xl: Shoulder Width 54 Bust 112 Sleeve Length 25 Length 72  3xl: Shoulder Width 56 Bust 116 Sleeve Length 26 Length 74    Recommended size: (height and weight)  M: approx suitable for weight 45-50KG. Height 155-160CM  L: approx suitable for weight 50-55KG. Height 160-165CM  XL: approx suitable for weight 60-70KG. Height 170-175CM  2xl: approx suitable for weight 70-80KG. Height 175-180CM  3xl: Approximately suitable for weight 80-85KG. Height 175-180CM\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"20\",\"_token\":\"6DAyAgEuOCtR4dyocDSkxzJKo1H0pvdQvaPRPDp8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-10 00:29:32', '2023-08-10 00:29:32'),
(565, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-10 00:29:32', '2023-08-10 00:29:32'),
(566, 1, 'admin/demo/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:29:51', '2023-08-10 00:29:51'),
(567, 1, 'admin/demo/products/10', 'PUT', '127.0.0.1', '{\"name\":\"Teeworld\",\"price\":\"19\",\"description\":\"Teeworld Men\'s T-shirt\",\"description_long\":\"Teeworld Men\'s T-shirt\",\"categoryID\":\"1\",\"sex\":\"men\",\"sold\":\"25\",\"_token\":\"6DAyAgEuOCtR4dyocDSkxzJKo1H0pvdQvaPRPDp8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-10 00:30:03', '2023-08-10 00:30:03'),
(568, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-10 00:30:04', '2023-08-10 00:30:04'),
(569, 1, 'admin/demo/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:30:12', '2023-08-10 00:30:12'),
(570, 1, 'admin/demo/products/12', 'PUT', '127.0.0.1', '{\"name\":\"Polo Shirt\",\"price\":\"21\",\"description\":\"Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish\",\"description_long\":\"Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"031\",\"_token\":\"6DAyAgEuOCtR4dyocDSkxzJKo1H0pvdQvaPRPDp8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-10 00:30:20', '2023-08-10 00:30:20'),
(571, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-10 00:30:21', '2023-08-10 00:30:21'),
(572, 1, 'admin/demo/products/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:30:27', '2023-08-10 00:30:27'),
(573, 1, 'admin/demo/products/16', 'PUT', '127.0.0.1', '{\"name\":\"Polo Oversize Rose\",\"price\":\"17\",\"description\":\"Polo Oversize Rose - El Rico Store\",\"description_long\":\"Polo Oversize Rose - El Rico Store\",\"categoryID\":\"6\",\"sex\":\"men\",\"sold\":\"70\",\"_token\":\"6DAyAgEuOCtR4dyocDSkxzJKo1H0pvdQvaPRPDp8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-10 00:30:34', '2023-08-10 00:30:34'),
(574, 1, 'admin/demo/products', 'GET', '127.0.0.1', '[]', '2023-08-10 00:30:34', '2023-08-10 00:30:34'),
(575, 1, 'admin/demo/products/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-10 00:31:20', '2023-08-10 00:31:20'),
(576, 1, 'admin/demo/products/14', 'PUT', '127.0.0.1', '{\"name\":\"Polo Black Odin\",\"price\":\"19\",\"description\":\"Polo oversize Sean Odin Club\",\"description_long\":\"Polo oversize Sean Odin Club\",\"categoryID\":\"031\",\"sex\":\"men\",\"sold\":\"4\",\"_token\":\"6DAyAgEuOCtR4dyocDSkxzJKo1H0pvdQvaPRPDp8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/demo\\/products\"}', '2023-08-10 00:31:30', '2023-08-10 00:31:30'),
(577, 1, 'admin/demo/products/14/edit', 'GET', '127.0.0.1', '[]', '2023-08-10 00:31:32', '2023-08-10 00:31:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-08-01 04:58:25', '2023-08-01 04:58:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Nru3Z7iwWSaWxc61t9ogq.5Ba4MYbin8YPArC9tV23EXxKodZxpDu', 'Administrator', NULL, 'BxkK7VZs86DjpCw2sTp6hhTVhuPH4aVziM06WqlllEOtuE9Lps1bBGzIqBa3', '2023-08-01 04:58:25', '2023-08-01 04:58:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `warehouse` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `warehouse`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 'A', '2023-08-09 10:29:40', '2023-08-09 10:29:40'),
(2, 'Trouser', 'B', '2023-08-09 10:29:58', '2023-08-09 10:29:58'),
(3, 'Sneaker', 'C', '2023-08-09 10:30:05', '2023-08-09 10:30:05'),
(4, 'Short', 'a', '2023-08-09 10:30:12', '2023-08-09 10:30:12'),
(5, 'Romber', 'D', '2023-08-09 10:30:26', '2023-08-09 10:30:26'),
(6, 'Polo', 'A', '2023-08-09 10:30:39', '2023-08-09 10:30:39'),
(7, 'Jean', 'A', '2023-08-09 10:30:48', '2023-08-09 10:30:48'),
(8, 'Bag', 'A', '2023-08-09 10:30:55', '2023-08-09 10:30:55'),
(9, 'Jacket', 'C', '2023-08-09 10:31:11', '2023-08-09 10:31:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2023_08_01_121845_create_products_table', 3),
(7, '2023_08_04_045605_create_categories_table', 4),
(8, '2023_08_09_170343_create_categories_table', 5),
(9, '2023_08_09_170948_create_categories_table', 6),
(10, '2023_08_09_171230_create_categories_table', 7),
(11, '2023_08_09_172021_create_categories_table', 8),
(12, '2023_08_09_172055_create_products_table', 9),
(13, '2023_08_09_172551_add_fk_to_product', 10),
(14, '2023_08_10_104614_create_orders_table', 11),
(15, '2023_08_10_110302_create_order_details_table', 12),
(16, '2023_08_10_112854_add_column_to_users', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `total` double(8,2) NOT NULL,
  `pay_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userID`, `name`, `email`, `address`, `phone_number`, `total`, `pay_method`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tuan', 'tuan123@gmail.com', 'Address*', '0123456789', 27.90, 'Via Paypal', 'Waiting for confirm', '2023-08-10 11:06:47', '2023-08-10 11:06:47'),
(2, 2, 'Tuan', 'tuan123@gmail.com', 'Address*', '0123456789', 27.90, 'Via Paypal', 'Waiting for confirm', '2023-08-10 11:07:10', '2023-08-10 11:07:10'),
(3, 2, 'Tuan', 'tuan123@gmail.com', 'Ha Huy Tap, Da Nang', '0123456789', 27.90, 'Via Paypal', 'Waiting for confirm', '2023-08-10 11:37:45', '2023-08-10 11:37:45'),
(4, 2, 'Tuan', 'tuan123@gmail.com', 'Quang Nam', '0123456789', 51.70, 'Via Paypal', 'Waiting for confirm', '2023-08-10 23:36:01', '2023-08-10 23:36:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderID` bigint(20) UNSIGNED NOT NULL,
  `productID` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `orderID`, `productID`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, '2023-08-10 11:06:47', '2023-08-10 11:06:47'),
(2, 1, 4, 1, '2023-08-10 11:06:47', '2023-08-10 11:06:47'),
(3, 2, 3, 1, '2023-08-10 11:07:11', '2023-08-10 11:07:11'),
(4, 2, 4, 1, '2023-08-10 11:07:11', '2023-08-10 11:07:11'),
(5, 3, 3, 1, '2023-08-10 11:37:45', '2023-08-10 11:37:45'),
(6, 3, 4, 1, '2023-08-10 11:37:45', '2023-08-10 11:37:45'),
(7, 4, 3, 2, '2023-08-10 23:36:01', '2023-08-10 23:36:01'),
(8, 4, 4, 1, '2023-08-10 23:36:01', '2023-08-10 23:36:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `categoryID` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `description_long` text NOT NULL,
  `sex` varchar(255) NOT NULL,
  `sold` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `img`, `categoryID`, `description`, `description_long`, `sex`, `sold`, `created_at`, `updated_at`) VALUES
(1, 'Polo Shirt', 20.00, 'images/a7a46650a32a3bf065d1bf3b05040650.png', 6, 'Polo Shirt Oversize - White- Datino Streetwear', 'Teenage men are spacious, comfortable, casual, versatile, fashionable and cool  Very cool fashion and gentleman design.  Super soft touch feeling.  This is a must-have wardrobe.  You can wear it every day.  Street fashion style.    Asian Size: M L XL 2XL 3XL  M: Shoulder Width 48 Bust 100 Sleeve Length 22 Length 66  L: Shoulder Width 50 Bust 104 Sleeve Length 23 Length 68  XL: Shoulder Width 52 Bust 108 Sleeve Length 24 Length 70  2xl: Shoulder Width 54 Bust 112 Sleeve Length 25 Length 72  3xl: Shoulder Width 56 Bust 116 Sleeve Length 26 Length 74    Recommended size: (height and weight)  M: approx suitable for weight 45-50KG. Height 155-160CM  L: approx suitable for weight 50-55KG. Height 160-165CM  XL: approx suitable for weight 60-70KG. Height 170-175CM  2xl: approx suitable for weight 70-80KG. Height 175-180CM  3xl: Approximately suitable for weight 80-85KG. Height 175-180CM', 'men', 20, '2023-08-09 10:35:20', '2023-08-10 00:29:32'),
(2, 'Bag BB', 21.00, 'images/996df6dbc9342d262ed5bc303f94b4b4.png', 8, 'New style large size baby backpacks convenient for breastfeeding moms', 'Estimated delivery time for this product is 7-9 days  Dear customers, welcome to happyweenkeed store! The store mainly sells men\'s bags, cute children\'s bags, ... cheap prices. Stores often update new and beautiful designs. Please add store tracking for our convenience to serve you!', 'women', 50, '2023-08-09 21:34:12', '2023-08-09 21:34:12'),
(3, 'BearRomper', 16.00, 'images/69c39206cd34fc426ca295b21ab98e9a.png', 5, 'Plush Bear Overall Romper | Peculiarly You - Baby Romper', 'Newborn Baby Fleece Winter Infant Warm Baby Suit One-Pieces Style: FashionClothing Length: REGULARMaterial Composition: COTTONDepartment Name: BabyWeight: 500gOuterwear Type: Down & ParkasFit: Fits smaller than usual. Please check this store\'s sizing infoPattern Type: CartoonGender: UnisexSleeve Style: REGULARCollar: HoodedModel Number: CL2092Fabric Type: Woven', 'kid', 1, '2023-08-09 21:36:49', '2023-08-09 21:36:49'),
(4, 'Romper Caro', 15.00, 'images/f4b1923e06a78570a967f924e8d672a4.png', 5, 'Romper Caro', 'Teenage men are spacious, comfortable, casual, versatile, fashionable and cool  Very cool fashion and gentleman design.  Super soft touch feeling.  This is a must-have wardrobe.  You can wear it every day.  Street fashion style.    Asian Size: M L XL 2XL 3XL  M: Shoulder Width 48 Bust 100 Sleeve Length 22 Length 66  L: Shoulder Width 50 Bust 104 Sleeve Length 23 Length 68  XL: Shoulder Width 52 Bust 108 Sleeve Length 24 Length 70  2xl: Shoulder Width 54 Bust 112 Sleeve Length 25 Length 72  3xl: Shoulder Width 56 Bust 116 Sleeve Length 26 Length 74    Recommended size: (height and weight)  M: approx suitable for weight 45-50KG. Height 155-160CM  L: approx suitable for weight 50-55KG. Height 160-165CM  XL: approx suitable for weight 60-70KG. Height 170-175CM  2xl: approx suitable for weight 70-80KG. Height 175-180CM  3xl: Approximately suitable for weight 80-85KG. Height 175-180CM', 'kid', 4, '2023-08-09 21:40:37', '2023-08-09 21:40:37'),
(5, 'Dieper Bag', 19.00, 'images/0a46f3251f5f7b995d6a865ffd263f8a.png', 8, 'Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black', 'Baby Boom Tote Diaper Bag with Adjustable Shoulder Strap, Black', 'women', 4, '2023-08-09 21:41:23', '2023-08-09 21:41:23'),
(6, 'Avocado Romper', 21.00, 'images/4705b26732eb1b274b52ae48a3c6597d.png', 5, 'Avocado Baby Romper – Juniorhaul', 'Avocado Baby Romper – Juniorhaul', 'kid', 6, '2023-08-09 21:43:16', '2023-08-09 21:43:16'),
(7, 'Set jean', 21.00, 'images/63081941d017b0568cba8c7b5461f137.png', 7, 'Children\'s Jeans Kids Ripped Hole Denim Pants Baby Girl Clothes Spring', 'Children\'s Jeans Kids Ripped Hole Denim Pants Baby Girl Clothes Spring', 'kid', 5, '2023-08-09 21:45:48', '2023-08-09 21:45:48'),
(8, 'Romper', 16.00, 'images/db75b1b6ca10c5dc92e506c78b881d1a.png', 5, 'Baby Flower Infant Romper', 'Baby Flower Infant Romper', 'kid', 4, '2023-08-09 21:46:25', '2023-08-09 21:46:25'),
(9, 'Shoes Ping', 15.00, 'images/6d03068d627be3c2d9cf90aeb6beb2f5.png', 3, 'Shoes Ping', 'Shoes Ping', 'kid', 2, '2023-08-09 21:47:25', '2023-08-09 21:47:25'),
(10, 'Teeworld', 19.00, 'images/bf8efa0a47185b82ebc64e685a8657ce.png', 1, 'Teeworld Men\'s T-shirt', 'Teeworld Men\'s T-shirt', 'men', 25, '2023-08-09 21:52:07', '2023-08-10 00:30:03'),
(11, 'Green Bomber', 25.00, 'images/a2239312dbf190f7e5a15889fcfeff14.png', 9, 'Green Bomber blue local brand varsity jacket', 'Green Bomber blue local brand varsity jacket', 'men', 7, '2023-08-09 21:53:54', '2023-08-09 21:53:54'),
(12, 'Polo Shirt', 21.00, 'images/f906cbe009c448b39f19378877394d78.png', 6, 'Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish', 'Men\'s Polo Shirt with White Split Collar with Blue Boobs Black Cotton Fabric Ugly Fish', 'men', 31, '2023-08-09 21:55:42', '2023-08-10 00:30:20'),
(13, 'Polo Black', 19.00, 'images/236e6781b8d72432dc91bb69ac9a1f30.png', 6, 'Polo Shirt Oversize - Black - Datino Streetwear', 'Polo Shirt Oversize - Black - Datino Streetwear', 'men', 4, '2023-08-09 21:56:28', '2023-08-09 21:56:28'),
(14, 'Polo Black Odin', 19.00, 'images/5062b782dccfd1c081455a672eef991a.png', 6, 'Polo oversize Sean Odin Club', 'Polo oversize Sean Odin Club', 'men', 4, '2023-08-09 22:05:51', '2023-08-09 22:05:51'),
(15, 'Polo Odin', 16.00, 'images/5034c0ba09ee88cc63658b17a4414eca.png', 6, 'Polo oversize Sean Odin Club', 'Polo oversize Sean Odin Club', 'men', 3, '2023-08-09 22:07:06', '2023-08-09 22:07:06'),
(16, 'Polo Oversize Rose', 17.00, 'images/0b15457179401ead1849a847c8dd4696.png', 6, 'Polo Oversize Rose - El Rico Store', 'Polo Oversize Rose - El Rico Store', 'men', 70, '2023-08-09 22:07:47', '2023-08-10 00:30:34'),
(17, 'Tee Shirt Black', 20.00, 'images/4db72ff9acd45a7fcef0d6df42b5846d.png', 6, 'Teeworld Men\'s Polo-shirt', 'Teeworld Men\'s Polo-shirt - Black Oversize - 100% Cotton', 'men', 4, '2023-08-09 22:08:48', '2023-08-09 22:08:48'),
(18, 'Trouser Black', 21.00, 'images/7a0c9a0ebefd91e171d9cdaffbe9e786.png', 2, 'Trouser Black', 'Trouser Black', 'men', 6, '2023-08-09 22:19:11', '2023-08-09 22:19:11'),
(19, 'Women\'s T-shirt', 16.00, 'images/Thiết kế chưa có tên (1).png', 1, 'Women\'s T-shirt with embroidered cat face on the sleeves', 'Women\'s T-shirt with embroidered cat face on the sleeves', 'women', 4, '2023-08-09 22:28:31', '2023-08-09 22:33:04'),
(20, 'Women\'s Tops Long', 17.00, 'images/bca91ed0d4aaf60403d31fba9ef14cf7.png', 1, 'Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003', 'Women\'s Tops Long Sleeve Shrink Sleeve Form Loose - 10F22SHLW003', 'women', 6, '2023-08-09 22:29:43', '2023-08-09 22:31:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_number`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Viết An', 'binan1155@gmail.com', NULL, '$2y$10$FQQFKmkpR4ybZ5caJLBAFuJWMjPI.8icdrIJxF.dIjK96loyHrr6q', '', '', NULL, '2023-07-31 22:37:32', '2023-07-31 22:37:32'),
(2, 'Tuan', 'tuan123@gmail.com', NULL, '$2y$10$yhHStEGcm76M2bTzN8jZYueyZ.h1DTLB3H37U7DocP9GeSQfMnbeG', '0123456789', 'Quang Nam', NULL, '2023-07-31 23:34:11', '2023-08-10 23:13:40'),
(3, 'thayVu', 'thayvu12@gmail.com', NULL, '$2y$10$DdfzM0U9uXp2hFHNpnGapuioc/yU9x3AKdC3HoxR0JlN.lajSvQXa', '', '', NULL, '2023-08-04 01:10:21', '2023-08-04 01:10:21'),
(4, 'Hồ Viết An', 'qssert1155@gmail.com', NULL, '$2y$10$PdPLbX5.kiQjgNdQxDpFxO0AofTs4xBVSFf8wQzf4z49Ci/K.t.DS', NULL, NULL, NULL, '2023-08-11 00:02:37', '2023-08-11 00:02:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_orderid_foreign` (`orderID`),
  ADD KEY `order_details_productid_foreign` (`productID`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categoryid_foreign` (`categoryID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orderid_foreign` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_productid_foreign` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
