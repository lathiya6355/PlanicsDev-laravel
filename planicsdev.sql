-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 09:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `planicsdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `herosections`
--

CREATE TABLE `herosections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `action_btn` varchar(255) NOT NULL,
  `action_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `herosections`
--

INSERT INTO `herosections` (`id`, `title`, `sub_title`, `description`, `image`, `action_btn`, `action_link`, `created_at`, `updated_at`) VALUES
(2, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:11:20', '2023-08-21 00:11:20'),
(3, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:12:39', '2023-08-21 00:12:39'),
(4, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:23:56', '2023-08-21 00:23:56'),
(5, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:25:03', '2023-08-21 00:25:03'),
(6, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:26:27', '2023-08-21 00:26:27'),
(7, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:26:45', '2023-08-21 00:26:45'),
(8, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:26:56', '2023-08-21 00:26:56'),
(9, 'rgd', 'dfg', 'dfg', 'dgd', 'dgdd', 'geetet', '2023-08-21 00:27:08', '2023-08-21 00:27:08'),
(10, 'rgd', 'dfg', 'dfg', 'images/pDtLyxZjp7MsBhuybcHcJZSWk0MF0UfVOfmbZyrM.png', 'dgdd', 'geetet', '2023-08-21 00:41:55', '2023-08-21 00:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_08_19_054044_create_herosections_table', 1),
(11, '2023_08_21_043605_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0735408681015d53d5e1c609faee05924c5e536a0f2c6ff21f74cf846818e689fdf74518fa43ab99', 1, 1, 'auth_Token', '[]', 0, '2023-08-20 23:06:42', '2023-08-20 23:06:42', '2024-08-21 04:36:42'),
('0dff1dc5f85e1916b578eb044c9b1df9ea2cc86a67f5e81574e750fb2a724239fa2c30a2c7dcf627', 1, 1, 'auth_Token', '[]', 0, '2023-08-21 00:01:30', '2023-08-21 00:01:30', '2024-08-21 05:31:30'),
('81b0bd4bcc33889250d9b2d1db1b043492ffaf88b2e78522ffee05c9686504aa67250dc6f6a8952a', 1, 1, 'auth_Token', '[]', 0, '2023-08-21 00:12:30', '2023-08-21 00:12:30', '2024-08-21 05:42:30'),
('cfb93a662b39d0d2244d070166685d50e3d5024bf3bbf4037238d02578c3c5bdc94133dbad7708f6', 2, 1, 'auth_Token', '[]', 0, '2023-08-21 00:11:31', '2023-08-21 00:11:31', '2024-08-21 05:41:31'),
('d8f1272bf0f94caeb335f45f98587eac3716ebe155bfe6d754ffefef346308113adde317988a9cce', 1, 1, 'auth_Token', '[]', 0, '2023-08-20 23:59:18', '2023-08-20 23:59:18', '2024-08-21 05:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'r1urfDXyqlWGw9UB4szaJZK0kjeg4xUggK8eXW7Q', NULL, 'http://localhost', 1, 0, 0, '2023-08-20 23:06:18', '2023-08-20 23:06:18'),
(2, NULL, 'Laravel Password Grant Client', 'gITMkAtKNg44sL4PoLisx2M5n32k3KVp5AldpNQR', 'users', 'http://localhost', 0, 1, 0, '2023-08-20 23:06:18', '2023-08-20 23:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-20 23:06:18', '2023-08-20 23:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(2, 'delete articles', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(3, 'show articles', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(4, 'create articles', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(5, 'show all articles', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyAuthApp', 'fea9a462c34c55362ae718cdd1f45b1120169928f1e58a9b2d530657b61639ab', '[\"*\"]', NULL, NULL, '2023-08-21 00:21:34', '2023-08-21 00:21:34'),
(2, 'App\\Models\\User', 1, 'MyAuthApp', '8a858d87f81be8db70abdc9b54a562bcef3542fb7734c2a852932ba6e5283e03', '[\"*\"]', NULL, NULL, '2023-08-21 00:21:57', '2023-08-21 00:21:57'),
(3, 'App\\Models\\User', 1, 'MyAuthApp', '22edc1314856d55898b6279d6f529b958fca1c5be35b5ae090fc1ea038df3a1f', '[\"*\"]', '2023-08-21 00:23:56', NULL, '2023-08-21 00:22:58', '2023-08-21 00:23:56'),
(4, 'App\\Models\\User', 3, 'MyAuthApp', '1ab29fc6a8e71d6256f300ae363e06fbcd9feb56d492ec01082b04cb7943c784', '[\"*\"]', '2023-08-21 00:24:49', NULL, '2023-08-21 00:24:09', '2023-08-21 00:24:49'),
(5, 'App\\Models\\User', 1, 'MyAuthApp', 'f47a8c20e6ef50c7b3e95cae4764e15f419da0bf1ddbbc90212d9652ca6d3100', '[\"*\"]', '2023-08-21 00:27:08', NULL, '2023-08-21 00:24:54', '2023-08-21 00:27:08'),
(6, 'App\\Models\\User', 1, 'MyAuthApp', '4ce2aac01749e89e8445dc68b9b26043cdf8050ec3c9b54a7716ae448fdd7365', '[\"*\"]', NULL, NULL, '2023-08-21 00:32:32', '2023-08-21 00:32:32'),
(7, 'App\\Models\\User', 1, 'MyAuthApp', '42f6ce64dd30d334589126d12f0501fb0b463955286fb4d52c19b65f329f909a', '[\"*\"]', '2023-08-21 01:01:51', NULL, '2023-08-21 00:40:56', '2023-08-21 01:01:51'),
(8, 'App\\Models\\User', 3, 'MyAuthApp', '5a32643ad070d553fe078ef4c5e54286f410e8368ed396f4c37a6967f562f68b', '[\"*\"]', '2023-08-21 01:09:25', NULL, '2023-08-21 01:02:10', '2023-08-21 01:09:25'),
(9, 'App\\Models\\User', 1, 'MyAuthApp', 'ba119e43ed2c799d6384bca273037ae21737826135c975157955f1b052fbb34a', '[\"*\"]', '2023-08-21 01:10:28', NULL, '2023-08-21 01:09:31', '2023-08-21 01:10:28'),
(10, 'App\\Models\\User', 3, 'MyAuthApp', '2705827b2eaef242f72b752cbf7b0cc7854b7392f9ce32b87af9d6f4deeb84b3', '[\"*\"]', '2023-08-21 01:11:02', NULL, '2023-08-21 01:10:41', '2023-08-21 01:11:02'),
(11, 'App\\Models\\User', 1, 'MyAuthApp', '33bd75dccbd6dd617cd0ca62b3e86003a39b771bac333f31f7aaa3379f047ddb', '[\"*\"]', '2023-08-21 01:11:29', NULL, '2023-08-21 01:11:08', '2023-08-21 01:11:29'),
(12, 'App\\Models\\User', 4, 'MyAuthApp', 'ef48af6b2c2ca3da4fc2dc34c5fb07f3773904ad49813a7ed914a89ae58e8ebd', '[\"*\"]', NULL, NULL, '2023-08-21 01:17:29', '2023-08-21 01:17:29'),
(13, 'App\\Models\\User', 5, 'MyAuthApp', 'e436892e848f2d73c3bb6be24541a2a6b9d82f0c036eb7b4630cb4e02a70d4b2', '[\"*\"]', NULL, NULL, '2023-08-21 01:17:55', '2023-08-21 01:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(2, 'HR', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(3, 'Employee', 'web', '2023-08-20 23:58:07', '2023-08-20 23:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2023-08-20 23:58:07', '$2y$10$QIb5s9HEGvFLS37RABdtvenBBOsHRoYMP3pu4KOeHsp9smZCg59V.', 'fVomEYjXSU', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(2, 'HR', 'hr@gmail.com', '2023-08-20 23:58:07', '$2y$10$qJ1cw3iTG623tfXfv5eAfeR7RSdqn.XXgKdR/7tfxkJ9gqpPkiUCi', 'ANrx1q02DU', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(3, 'Employee', 'employee@gmail.com', '2023-08-20 23:58:07', '$2y$10$hZolq1OZB3U8/P0o6TxWce.4uAsCAr7IeecC9Baj0L6gc0fqE3jsi', 'kxWF6lgD3d', '2023-08-20 23:58:07', '2023-08-20 23:58:07'),
(4, 'prince', 'Princcce@gmail.com', NULL, '$2y$10$fY.0xJROHjq3B4PpXX2xZe2F3JbWhdawmds6rq.Njk/n9g7r2QkbO', NULL, '2023-08-21 01:17:29', '2023-08-21 01:17:29'),
(5, 'prince', 'Prince@gmail.com', NULL, '$2y$10$bKfldLng9NL.14gLK9fI8.tUZtKH/wmouBufVq8LhOpz44GgQbu96', NULL, '2023-08-21 01:17:55', '2023-08-21 01:17:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `herosections`
--
ALTER TABLE `herosections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herosections`
--
ALTER TABLE `herosections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
