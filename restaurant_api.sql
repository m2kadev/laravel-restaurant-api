-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 05:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(3, 'Uncategorized', 'uncategorized', '2022-11-19 08:14:18', '2022-11-19 08:14:18'),
(4, 'Cool Dishes', 'cool dishes', '2022-11-19 09:22:57', '2022-11-19 09:22:57'),
(7, 'Hot Dishes', 'hot dishes', '2022-11-20 03:04:52', '2022-11-20 03:04:52'),
(8, 'Sashami', 'sashami', '2022-11-20 06:56:47', '2022-11-20 06:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_14_014650_create_products_table', 1),
(14, '2022_11_18_032351_create_categories_table', 1),
(15, '2022_11_19_041138_create_orders_table', 1),
(16, '2022_11_19_041339_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_amount`, `total_discount`, `created_at`, `updated_at`) VALUES
(1, 1, 2000, 0, '2022-11-20 00:42:05', '2022-11-20 00:42:05'),
(2, 1, 24000, 2000, '2022-11-20 00:44:10', '2022-11-20 00:44:10'),
(3, 1, 8000, 0, '2022-11-20 00:53:39', '2022-11-20 00:53:39'),
(4, 1, 2000, 0, '2022-11-20 00:59:12', '2022-11-20 00:59:12'),
(5, 1, 6000, 0, '2022-11-20 00:59:30', '2022-11-20 00:59:30'),
(6, 1, 40000, 4000, '2022-11-20 01:01:12', '2022-11-20 01:01:12'),
(7, 1, 2000, 0, '2022-11-20 01:31:41', '2022-11-20 01:31:41'),
(8, 1, 40000, 4000, '2022-11-20 03:06:25', '2022-11-20 03:06:25'),
(9, 1, 20000, 2000, '2022-11-20 03:08:42', '2022-11-20 03:08:42'),
(10, 1, 2000, 0, '2022-11-20 04:57:14', '2022-11-20 04:57:14'),
(11, 1, 8000, 0, '2022-11-20 06:56:03', '2022-11-20 06:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `qty`, `price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2000, 2000, '2022-11-20 00:42:05', '2022-11-20 00:42:05'),
(2, 1, 2, 2, 2000, 4000, '2022-11-20 00:44:10', '2022-11-20 00:44:10'),
(3, 2, 2, 1, 20000, 18000, '2022-11-20 00:44:10', '2022-11-20 00:44:10'),
(4, 1, 3, 4, 2000, 8000, '2022-11-20 00:53:39', '2022-11-20 00:53:39'),
(5, 1, 4, 1, 2000, 2000, '2022-11-20 00:59:12', '2022-11-20 00:59:12'),
(6, 1, 5, 3, 2000, 6000, '2022-11-20 00:59:30', '2022-11-20 00:59:30'),
(7, 2, 6, 2, 20000, 36000, '2022-11-20 01:01:12', '2022-11-20 01:01:12'),
(8, 1, 7, 1, 2000, 2000, '2022-11-20 01:31:41', '2022-11-20 01:31:41'),
(9, 2, 8, 2, 20000, 36000, '2022-11-20 03:06:25', '2022-11-20 03:06:25'),
(10, 2, 9, 1, 20000, 18000, '2022-11-20 03:08:42', '2022-11-20 03:08:42'),
(11, 1, 10, 1, 2000, 2000, '2022-11-20 04:57:14', '2022-11-20 04:57:14'),
(12, 1, 11, 4, 2000, 8000, '2022-11-20 06:56:03', '2022-11-20 06:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', 'ed414cfc2796681d5e6457cd3cb30d35db6ccc2ea1066a0d789c5b4b7a06d9e1', '[\"*\"]', '2022-11-20 20:46:39', NULL, '2022-11-19 02:30:24', '2022-11-20 20:46:39'),
(2, 'App\\Models\\User', 1, 'myapptoken', '30a6f47647a9a15d572999a9e16c0cc9d819e5aa963465a086062c0db4793588', '[\"*\"]', NULL, NULL, '2022-11-19 02:31:43', '2022-11-19 02:31:43'),
(3, 'App\\Models\\User', 2, 'myapptoken', '9a6111fcd2912c112086f527ccdb17615dd38d71084a387a2acbe1c2a1aa7aec', '[\"*\"]', NULL, NULL, '2022-11-19 02:50:41', '2022-11-19 02:50:41'),
(4, 'App\\Models\\User', 3, 'myapptoken', '73508bb2bbc4bfd210b47e72fe9ccd821eb2e694db67e3222f7fa6b533abb2ce', '[\"*\"]', NULL, NULL, '2022-11-19 02:53:41', '2022-11-19 02:53:41'),
(5, 'App\\Models\\User', 4, 'myapptoken', '45f77efb72ee00828f6d037812ac358b67749afb65f1ba07006708e261342f44', '[\"*\"]', NULL, NULL, '2022-11-19 02:56:33', '2022-11-19 02:56:33'),
(6, 'App\\Models\\User', 3, 'myapptoken', '0beee45a67a8adc5c344fc08b7b4141e1ae9aab3e52e99fee6a63749e8bdd204', '[\"*\"]', NULL, NULL, '2022-11-19 03:04:57', '2022-11-19 03:04:57'),
(7, 'App\\Models\\User', 3, 'myapptoken', 'fe64f47d5c262cac7e9e37dc918aa82dc7c8e5b294c2a91c6679e86cf97ca1a5', '[\"*\"]', NULL, NULL, '2022-11-19 05:38:15', '2022-11-19 05:38:15'),
(8, 'App\\Models\\User', 3, 'myapptoken', '7d25ac5d0d8db13c28decabb313819a8334a04abfc476269b11d46349c913bde', '[\"*\"]', NULL, NULL, '2022-11-19 05:49:12', '2022-11-19 05:49:12'),
(9, 'App\\Models\\User', 3, 'myapptoken', 'b64968c481f416a3916abea82c5104966804abfd1bf4dc88a003aec02f5cbad9', '[\"*\"]', NULL, NULL, '2022-11-19 05:50:02', '2022-11-19 05:50:02'),
(10, 'App\\Models\\User', 3, 'myapptoken', 'bf29bcdef55f980a302bf18b0422f5d40c2863ae38811fdabb415db866f9836b', '[\"*\"]', NULL, NULL, '2022-11-19 05:52:28', '2022-11-19 05:52:28'),
(11, 'App\\Models\\User', 3, 'myapptoken', '990e6def169c5edecf6535ede767b962c6a64aa47bd9e2ffe5a5a5c12919490c', '[\"*\"]', NULL, NULL, '2022-11-19 07:30:11', '2022-11-19 07:30:11'),
(12, 'App\\Models\\User', 3, 'myapptoken', '0447d9638c0c083b0e66c6b6f53b2bce964523fb16e56ca4558812402b4e78ad', '[\"*\"]', NULL, NULL, '2022-11-19 07:32:54', '2022-11-19 07:32:54'),
(13, 'App\\Models\\User', 2, 'myapptoken', 'c75f06e470af09beca9ebcbfd8100e084992b7b1842d76de2859271b02045c21', '[\"*\"]', '2022-11-19 09:26:21', NULL, '2022-11-19 07:35:07', '2022-11-19 09:26:21'),
(14, 'App\\Models\\User', 5, 'myapptoken', '97517aaaa841c20487b15b18556453fadb20a4f516d92a396514e78094e253aa', '[\"*\"]', NULL, NULL, '2022-11-19 09:27:58', '2022-11-19 09:27:58'),
(15, 'App\\Models\\User', 5, 'myapptoken', '12ee6375c4d6605a6529d7246e39a02c7a24af2f41d3860deab52d160089a8f5', '[\"*\"]', '2022-11-19 09:29:31', NULL, '2022-11-19 09:28:08', '2022-11-19 09:29:31'),
(16, 'App\\Models\\User', 6, 'myapptoken', '22c3e6ba293667d4ae6bedd5461708d7a8a4897c315c1254a6d241b922cd6b0f', '[\"*\"]', NULL, NULL, '2022-11-19 09:32:25', '2022-11-19 09:32:25'),
(17, 'App\\Models\\User', 6, 'myapptoken', 'e1259fff0543da5b348818c351721aada9d9d7a03bff95505e73419173dff1ce', '[\"*\"]', '2022-11-19 09:35:22', NULL, '2022-11-19 09:32:34', '2022-11-19 09:35:22'),
(18, 'App\\Models\\User', 2, 'myapptoken', 'de992a19acb11133edc249313a6dc6c585cc572fa3cd89ced4d5b4acc385c523', '[\"*\"]', '2022-11-19 20:25:07', NULL, '2022-11-19 20:23:30', '2022-11-19 20:25:07'),
(19, 'App\\Models\\User', 5, 'myapptoken', 'ce1ee0926d65a68864dc12a7da92402abd92a347eea83e260621d66e5d207689', '[\"*\"]', '2022-11-19 22:02:25', NULL, '2022-11-19 21:20:45', '2022-11-19 22:02:25'),
(20, 'App\\Models\\User', 5, 'myapptoken', 'adafe979b0b043e77a2ee9d7819f5b35021ae58a7e3f7576f8bc83cb01ffaf8b', '[\"*\"]', '2022-11-20 03:05:54', NULL, '2022-11-19 22:02:46', '2022-11-20 03:05:54'),
(21, 'App\\Models\\User', 5, 'myapptoken', '3524bf8518af1d07ecd87fc6a7812efe472bd0029e1efdd4761e2dac817e5434', '[\"*\"]', '2022-11-20 03:19:52', NULL, '2022-11-20 03:06:11', '2022-11-20 03:19:52'),
(22, 'App\\Models\\User', 5, 'myapptoken', '5bbfc9b617d7b776c24f647745ab179762e43d61e9ddbf1cfa1d9558737b966f', '[\"*\"]', '2022-11-20 03:41:33', NULL, '2022-11-20 03:40:41', '2022-11-20 03:41:33'),
(23, 'App\\Models\\User', 5, 'myapptoken', 'd9a35efae92aa09ef20422ed72c324e3f5118f63b1d600f6bbebb4dd92d1e885', '[\"*\"]', '2022-11-20 03:45:47', NULL, '2022-11-20 03:41:46', '2022-11-20 03:45:47'),
(24, 'App\\Models\\User', 5, 'myapptoken', '5a47ff43cf3a3ea4b7bb59be4a62ed14132b8b3c2e19ac6da52def87529465cc', '[\"*\"]', '2022-11-20 03:59:30', NULL, '2022-11-20 03:59:27', '2022-11-20 03:59:30'),
(25, 'App\\Models\\User', 5, 'myapptoken', '43ccee0ad416a3184bb56613473e520d52a2e4adf3be5ef5f6e398ecf678bb93', '[\"*\"]', '2022-11-20 04:01:33', NULL, '2022-11-20 04:01:29', '2022-11-20 04:01:33'),
(26, 'App\\Models\\User', 5, 'myapptoken', '748e5f9ca41866e1ff167350921e28ab1a88c210656c2049c8ce2b866cafd844', '[\"*\"]', '2022-11-20 04:35:51', NULL, '2022-11-20 04:34:49', '2022-11-20 04:35:51'),
(27, 'App\\Models\\User', 5, 'myapptoken', '202f27297a7964a6e726a69ffb0f2b62b6ffd35b899fa23145945272fba8b6d3', '[\"*\"]', '2022-11-20 04:36:29', NULL, '2022-11-20 04:36:01', '2022-11-20 04:36:29'),
(28, 'App\\Models\\User', 5, 'myapptoken', '213762507864ecb16ba7adfe1adcb94072674b1c8194c42c49c904755fba8c15', '[\"*\"]', '2022-11-20 05:50:23', NULL, '2022-11-20 04:56:10', '2022-11-20 05:50:23'),
(29, 'App\\Models\\User', 5, 'myapptoken', '63612f56a0df9681913dda32944081008ad2fbeb76c2330426ed1d2081dc5e06', '[\"*\"]', '2022-11-20 05:50:41', NULL, '2022-11-20 05:50:36', '2022-11-20 05:50:41'),
(30, 'App\\Models\\User', 5, 'myapptoken', '313d07a7a90ffe212cfe24323d60d20b784448596731a9a167c410d871a7782f', '[\"*\"]', '2022-11-20 06:57:27', NULL, '2022-11-20 06:49:28', '2022-11-20 06:57:27'),
(31, 'App\\Models\\User', 5, 'myapptoken', '974fc38938b2b637fb5125b2b5c1a2d2b3f1c11c95885e425e2c56cebb4620d4', '[\"*\"]', '2022-11-20 20:58:52', NULL, '2022-11-20 20:12:01', '2022-11-20 20:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `img`, `category`, `price`, `stock`, `discount`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Test Product', 'dishes_images/maMUEaGCmEurEloSoAgZbE4qGCPYdrierc1xHn5P.png', 'uncategorized', 2000, 10, 0, 1, '2022-11-19 08:01:20', '2022-11-20 06:56:03'),
(2, 'Title 2', 'dishes_images/KY1XROAJkzNuyJwwd5dLuddTPBQkpnesisn7Uv1y.png', 'cool dishes', 20000, 16, 2000, 1, '2022-11-19 09:23:59', '2022-11-20 03:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'myatkoko', '$2y$10$erqf5HdGocjyVBFyyW24GeYgFjA30L7ib8Z8JrP.kQbn21vUYijlq', NULL, '2022-11-19 02:30:24', '2022-11-19 02:30:24'),
(2, 'Kagura', '$2y$10$w8bOUvW/mfsNImwncPd0f.//6OMSear1cDb2XOMOIcITLApiVHOMG', NULL, '2022-11-19 02:50:41', '2022-11-19 02:50:41'),
(3, 'Kadita', '$2y$10$uuBCEmsJzEMBWvtiwuDAZumDR6k3cXf9/fDl2USq5DlHYfit2I/fa', NULL, '2022-11-19 02:53:41', '2022-11-19 02:53:41'),
(4, 'Myat Noe Wai', '$2y$10$OzN7OfW/YGlhTnPfSJUIteMmykQk/SE1C053mXKkdq.fVzAoHQM4G', NULL, '2022-11-19 02:56:33', '2022-11-19 02:56:33'),
(5, 'Franco', '$2y$10$9jQct0XWFVn.HNoG5PkleuPO5ttZLEuyHtpwHiWKeN9EcOaRbxbNC', NULL, '2022-11-19 09:27:58', '2022-11-19 09:27:58'),
(6, 'Htoo Eain Tin', '$2y$10$zex3ED1tqUy9.Y9XSkSmCOJ8Fmys4fPqB/7YP6gJkp1p27NMP6C.2', NULL, '2022-11-19 09:32:25', '2022-11-19 09:32:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
