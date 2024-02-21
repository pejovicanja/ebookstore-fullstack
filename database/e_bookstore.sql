-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 11:13 PM
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
-- Database: `e_bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`

CREATE DATABASE IF NOT EXISTS e_bookstore;
USE e_bookstore;
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lelah Schimmel', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'Annamae Schumm', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(3, 'Deon Keeling', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(4, 'Alta Langworth', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(5, 'Marilie Considine', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(6, 'Miss Bethany Schultz I', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(7, 'Fausto Rice', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(8, 'Prof. Alia Douglas V', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(9, 'Ms. Marge Barton Sr.', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(10, 'Nettie Wiza', '2023-02-16 15:23:32', '2023-02-16 15:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `image`, `author_id`, `category_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'sed', 'Voluptatem unde eos praesentium ad. Ratione ullam rerum sed at nihil sequi.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 1, 1, 76.77, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'eveniet', 'Minima ut blanditiis nobis id amet a quas et. Non natus aut animi. Officia ratione magnam voluptas est optio aliquam. Amet maxime ea quia doloribus.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 2, 1, 62.67, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(3, 'iusto', 'Illum ex molestiae tenetur iste. Ut voluptatem sint et laudantium magnam consequuntur. Tempore ut et et maiores libero sit.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 3, 1, 96.26, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(4, 'dicta', 'Earum non non dignissimos reiciendis perferendis. Animi ea ut harum modi nisi. Eum omnis voluptatem accusantium architecto aut itaque ut. Sint numquam ut quae amet repellat quo quia.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 4, 1, 65.96, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(5, 'veniam', 'Harum aut qui quo. Facilis perferendis ut asperiores commodi. Quia maiores explicabo quaerat tenetur facere quidem.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 5, 1, 7.54, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(6, 'ut', 'Recusandae aut labore eveniet ducimus non. Aspernatur totam modi ratione earum. Veniam quos suscipit eum dignissimos non fugit. Totam eum ut dolorum nam maiores officia consequatur. Veniam deserunt voluptas maxime omnis harum doloribus.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 6, 2, 7.02, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(7, 'velit', 'Dolores unde nihil reprehenderit omnis unde. Incidunt facilis iusto laboriosam dolor quaerat ad.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 7, 2, 58.38, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(8, 'consequuntur', 'Sint quod et facilis commodi nostrum est qui voluptates. Aut consequuntur numquam labore eum voluptatum dolores dolor. Reprehenderit delectus qui molestiae sequi eius consequatur omnis perspiciatis. Vel deleniti perspiciatis est voluptatem. Sunt a qui inventore quia.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 8, 2, 60.95, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(9, 'libero', 'Praesentium omnis omnis ad rem mollitia consequatur ut. Sit est nesciunt cupiditate quas aut. Molestias numquam quia maiores quidem molestiae nam.', 'https://www.laguna.rs/_img/korice/5591/pad_nemani-dzejms_s_a_kori_v.jpg', 9, 1, 63.55, '2023-02-16 15:23:32', '2023-02-16 15:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ut', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'dolorem', '2023-02-16 15:23:32', '2023-02-16 15:23:32');

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
-- Table structure for table `fav_books`
--

CREATE TABLE `fav_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_books`
--

INSERT INTO `fav_books` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 6, 9, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(3, 8, 1, '2023-02-22 09:34:20', '2023-02-22 09:34:20'),
(4, 8, 2, '2023-02-22 09:34:21', '2023-02-22 09:34:21'),
(6, 7, 1, '2023-02-22 13:27:51', '2023-02-22 13:27:51');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_10_103134_create_books_table', 1),
(6, '2023_02_10_103252_create_orders_table', 1),
(7, '2023_02_10_103529_create_categories_table', 1),
(8, '2023_02_10_103724_create_authors_table', 1),
(9, '2023_02_10_104026_create_fav_books_table', 1),
(10, '2023_02_10_120946_create_order_items_table', 1),
(11, '2023_02_10_121804_create_user_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `user_data_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `status`, `price_total`, `item_count`, `is_paid`, `payment_method`, `user_data_id`, `created_at`, `updated_at`) VALUES
(1, 'A327B', 'pending', 200.00, 3, 0, 'cash_on_delivery', 1, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'KtXCf6jB0E', 'pending', 537.39, 3, 0, 'cash_on_delivery', 2, '2023-02-22 08:43:38', '2023-02-22 08:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `book_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 2, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 1, 10, 1, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(3, 2, 1, 1, '2023-02-22 08:43:39', '2023-02-22 08:43:39'),
(4, 2, 1, 3, '2023-02-22 08:43:39', '2023-02-22 08:43:39'),
(5, 2, 1, 3, '2023-02-22 08:43:39', '2023-02-22 08:43:39');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\User', 6, 'auth_token', '324f1d145283dbcf9c301cf9b834de5fd47258be2b1f64f3471fc1199a4de62b', '[\"*\"]', '2023-02-22 13:28:05', '2023-02-22 13:28:01', '2023-02-22 13:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Evert O\'Reilly', 'usauer@example.com', '2023-02-16 15:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'RDizJxFtCC', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'Ms. Ressie Conn I', 'owehner@example.net', '2023-02-16 15:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'FpEznahrGG', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(3, 'Destin Donnelly', 'gutkowski.lillian@example.org', '2023-02-16 15:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'xYKgf0CSYY', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(4, 'Fannie Bernhard', 'felicita.gusikowski@example.org', '2023-02-16 15:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'XwKTyJzGIL', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(5, 'Miss Tess Powlowski II', 'zbatz@example.com', '2023-02-16 15:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '7blkYszyVv', '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(6, 'Admin', 'admin@example.com', NULL, '$2y$10$VnDftmDt6yBbQsBApWke.uDW.3fn3f5OdcGo9nFd.3OnuwLrzWqE6', 1, NULL, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(7, 'User', 'user@example.com', NULL, '$2y$10$mmSCFvmIsB5Zo1/BPr4hxeEmHVfnwi8Oby6JnGj8AV5L5CnjQX9hu', 0, NULL, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(8, 'Jovana Jovanovic', 'jovana@gmail.com', NULL, '$2y$10$hqHj2IRCoPHbveDjQ0OoxerOhg83WXZR3IIt7UY9QcfoJ0bkloJR2', 0, NULL, '2023-02-22 09:33:43', '2023-02-22 09:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `surname`, `email`, `adress`, `city`, `postal_code`, `phone_number`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@example.com', 'Jasenička 9', 'Beograd', '11000', '0690203955', 6, '2023-02-16 15:23:32', '2023-02-16 15:23:32'),
(2, 'Đorđe', 'Ivanović', 'djoksile@gmail.com', 'Majora Tepića 5/11 16000 Leskovac', 'Leskovac', '16000', '631644959', NULL, '2023-02-22 08:38:07', '2023-02-22 08:38:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fav_books`
--
ALTER TABLE `fav_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fav_books_user_id_book_id_unique` (`user_id`,`book_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_items_id_order_id_unique` (`id`,`order_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fav_books`
--
ALTER TABLE `fav_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
