-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 03:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_products`
--

CREATE TABLE `history_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtyChange` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_products`
--

INSERT INTO `history_products` (`id`, `product_id`, `user_id`, `qty`, `qtyChange`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '50', '0', 'created product', '2022-06-01 22:08:46', '2022-06-01 22:08:46'),
(2, 1, 1, '50', '-20', 'change product qty from admin', '2022-06-01 22:19:53', '2022-06-01 22:19:53'),
(3, 1, 1, '30', '-1', 'decrease from transaction', '2022-06-03 20:50:45', '2022-06-03 20:50:45'),
(4, 2, 2, '50', '0', 'created product', '2022-06-04 23:22:53', '2022-06-04 23:22:53'),
(5, 3, 2, '50', '0', 'created product', '2022-06-04 23:27:19', '2022-06-04 23:27:19'),
(6, 4, 2, '50', '0', 'created product', '2022-06-04 23:33:02', '2022-06-04 23:33:02'),
(7, 3, 2, '50', '-1', 'decrease from transaction', '2022-06-04 23:37:27', '2022-06-04 23:37:27'),
(8, 4, 2, '50', '-1', 'decrease from transaction', '2022-06-04 23:37:27', '2022-06-04 23:37:27'),
(9, 3, 2, '49', '-1', 'decrease from transaction', '2022-06-05 03:31:52', '2022-06-05 03:31:52'),
(10, 2, 2, '50', '-1', 'decrease from transaction', '2022-06-05 03:31:52', '2022-06-05 03:31:52'),
(11, 4, 2, '49', '-1', 'decrease from transaction', '2022-06-05 03:31:52', '2022-06-05 03:31:52');

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
(4, '2020_05_16_070107_create_products_table', 1),
(5, '2020_05_16_072227_create_transcations_table', 1),
(6, '2020_05_16_072533_create_product_transation_table', 1),
(7, '2020_05_16_120622_create_history_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `qty`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BUKU TULIS SIDU', 58000, 'uploads/images/1654146526bukusidu58.jpg', 29, 'Buku Tulis SINAR DUNIA / SIDU\r\nisi : 58\r\nKondisi : Baru\r\nBerat : 1.500 Gram', 1, '2022-06-01 22:08:46', '2022-06-04 23:30:38'),
(2, 'BUKU TULIS CAMPUS', 53000, 'uploads/images/1654410172campus.jpg', 49, 'Buku Tulis Big Boss Campus / Buku Maxi\r\n1 Buku Isi 36 Lembar\r\nSize: 18 X 25 CM\r\n1 Pak = 10 Pcs', 2, '2022-06-04 23:22:52', '2022-06-05 03:31:52'),
(3, 'Pulpen Standard AE7', 20000, 'uploads/images/1654410439standard.jpg', 48, 'Pulpen Standard AE7-1 pack isi 12 pcs - Hitam\r\nKondisi: Baru\r\nBerat: 85 Gram', 2, '2022-06-04 23:27:19', '2022-06-05 03:31:52'),
(4, 'Kertas HVS A3', 80000, 'uploads/images/1654410782HVS 1RIM.jpg', 48, 'Kertas HVS A3 75 gram Paper One\r\n1 Rim isi 500 lembar', 2, '2022-06-04 23:33:02', '2022-06-05 03:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_transation`
--

CREATE TABLE `product_transation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transation`
--

INSERT INTO `product_transation` (`id`, `product_id`, `invoices_number`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'INV-000001', 1, '2022-06-03 20:50:45', '2022-06-03 20:50:45'),
(2, 3, 'INV-000002', 1, '2022-06-04 23:37:27', '2022-06-04 23:37:27'),
(3, 4, 'INV-000002', 1, '2022-06-04 23:37:27', '2022-06-04 23:37:27'),
(4, 3, 'INV-000003', 1, '2022-06-05 03:31:52', '2022-06-05 03:31:52'),
(5, 2, 'INV-000003', 1, '2022-06-05 03:31:52', '2022-06-05 03:31:52'),
(6, 4, 'INV-000003', 1, '2022-06-05 03:31:52', '2022-06-05 03:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `transcations`
--

CREATE TABLE `transcations` (
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pay` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transcations`
--

INSERT INTO `transcations` (`invoices_number`, `user_id`, `pay`, `total`, `created_at`, `updated_at`) VALUES
('INV-000001', 1, 100000, 58000, '2022-06-03 20:50:45', '2022-06-03 20:50:45'),
('INV-000002', 2, 100000, 100000, '2022-06-04 23:37:27', '2022-06-04 23:37:27'),
('INV-000003', 2, 200000, 153000, '2022-06-05 03:31:52', '2022-06-05 03:31:52');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fadhil Darma Putera Z', 'admin@admin.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kspuBmLk5UoQma4Xuq9Baku57I8COtnWu5BRwFDYqLEGWN8RKb8zKS0jHQJ8', '2022-05-31 05:20:09', '2022-05-31 05:20:09'),
(2, 'mima', 'mima@gmail.com', NULL, '$2y$10$xKAfYwGVYNslLIGpKFeOzOVn4Ggig0qWa.Peo3hyxq4zmoykDK3Rm', NULL, '2022-06-03 21:45:17', '2022-06-03 21:45:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_products`
--
ALTER TABLE `history_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transation`
--
ALTER TABLE `product_transation`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `history_products`
--
ALTER TABLE `history_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_transation`
--
ALTER TABLE `product_transation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
