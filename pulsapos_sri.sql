-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 06:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pulsapos_sri`
--

-- --------------------------------------------------------

--
-- Table structure for table `detiltransaksis`
--

CREATE TABLE `detiltransaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detiltransaksis`
--

INSERT INTO `detiltransaksis` (`id`, `transaksi_id`, `produk_id`, `qty`, `harga`, `created_at`, `updated_at`) VALUES
(20, 14, 7, 1, 100000, '2024-06-02 21:06:25', '2024-06-02 21:06:25'),
(21, 17, 7, 1, 100000, '2024-06-04 17:53:32', '2024-06-04 17:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `hp`, `created_at`, `updated_at`) VALUES
(1, 'Sri', '08342864837', '2024-05-12 09:21:58', '2024-05-12 09:23:41'),
(2, 'bunga azza', '08342864837', '2024-05-14 18:31:31', '2024-05-14 18:31:44'),
(3, 'Sri Ariyani', '08342864837', '2024-05-26 21:34:34', '2024-05-26 21:34:34'),
(4, 'ahmadi muslim', '08342864837', '2024-06-05 09:57:01', '2024-06-05 09:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `stock` varchar(200) DEFAULT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama`, `description`, `stock`, `harga`, `created_at`, `updated_at`) VALUES
(7, 'pulsa', 'mingguan dan bulanan', '9998', 100000, '2024-06-02 21:05:27', '2024-06-04 17:53:40'),
(8, 'pulsa laptop', 'mingguan dan bulanan', '10000', 200000, '2024-06-02 21:06:02', '2024-06-02 21:06:02'),
(9, 'pulsa1', 'mingguan', '10000', 100000, '2024-06-05 09:54:21', '2024-06-05 09:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `invoice`, `pelanggan_id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 'INV-1', 1, 1, 0, '2024-05-26 20:33:24', '2024-05-26 20:33:24'),
(2, 'INV-2', 3, 1, 0, '2024-05-26 21:35:06', '2024-05-26 21:54:03'),
(3, 'INV-3', 3, 1, 0, '2024-05-26 22:02:18', '2024-05-26 23:29:58'),
(4, 'INV-4', 3, 1, 0, '2024-06-02 17:59:40', '2024-06-02 18:43:55'),
(5, 'INV-5', 3, 1, 0, '2024-06-02 18:47:34', '2024-06-02 18:47:41'),
(6, 'INV-6', 1, 1, 0, '2024-06-02 18:50:29', '2024-06-02 18:50:36'),
(7, 'INV-7', 3, 1, 0, '2024-06-02 18:57:35', '2024-06-02 18:57:41'),
(8, 'INV-8', 3, 1, 0, '2024-06-02 20:33:08', '2024-06-02 20:33:16'),
(9, 'INV-9', 3, 1, 500000, '2024-06-02 20:39:26', '2024-06-02 20:42:31'),
(10, 'INV-10', 3, 1, 200000, '2024-06-02 20:43:00', '2024-06-02 20:43:12'),
(11, 'INV-11', 2, 1, 200000, '2024-06-02 20:45:05', '2024-06-02 20:45:12'),
(12, 'INV-12', 3, 1, 200000, '2024-06-02 20:47:02', '2024-06-02 20:47:08'),
(13, 'INV-13', 3, 1, 100000, '2024-06-02 21:03:43', '2024-06-02 21:03:53'),
(14, 'INV-14', 3, 1, 100000, '2024-06-02 21:06:17', '2024-06-02 21:06:25'),
(15, 'INV-15', 3, 1, 0, '2024-06-02 21:29:40', '2024-06-02 21:29:40'),
(16, 'INV-16', 3, 1, 0, '2024-06-03 18:30:26', '2024-06-03 18:30:26'),
(17, 'INV-17', 1, 1, 100000, '2024-06-04 17:53:25', '2024-06-04 17:53:32');

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
(1, 'ahmadi', 'ahmadi@ahmadi.com', NULL, '$2y$12$BkK1stem3h1c5dSoLnJXAuGKWKJEF6bkdECNQDNrUleHD0pADCStu', NULL, '2024-05-14 22:28:11', '2024-05-14 22:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detiltransaksis_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detiltransaksis_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_pelanggan_id_foreign` (`pelanggan_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD CONSTRAINT `detiltransaksis_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiltransaksis_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
