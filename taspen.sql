-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2020 pada 05.09
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taspen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_slot`
--

CREATE TABLE `data_slot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_slot`
--

INSERT INTO `data_slot` (`id`, `slot`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pelaksana Kepegawaian', NULL, NULL, NULL),
(2, 'Kepala Seksi Kepegawaian', NULL, NULL, NULL),
(3, 'Kepala Bidang Kepegawaian', NULL, NULL, NULL),
(4, 'Wakil Kepala Satuan Kerja', NULL, NULL, NULL),
(5, 'Kepala Satuan Kerja', NULL, NULL, NULL),
(6, 'Done', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_login`
--

CREATE TABLE `log_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `alamat_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `log_login`
--

INSERT INTO `log_login` (`id`, `username`, `role`, `last_login`, `alamat_ip`, `browser`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:34:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-24 19:34:48', '2019-11-24 19:35:37', '2019-11-24 19:35:37'),
(2, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:34:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-24 19:35:37', '2019-11-24 20:19:53', '2019-11-24 20:19:53'),
(3, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:35:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-24 20:19:53', '2019-11-25 17:47:26', '2019-11-25 17:47:26'),
(4, 'rendyreynaldy@gmail.com', '', '2019-11-25 03:19:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-25 17:47:26', '2019-11-26 02:26:39', '2019-11-26 02:26:39'),
(5, 'rendyreynaldy@gmail.com', '', '2019-11-26 00:47:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 02:26:39', '2019-11-26 18:08:35', '2019-11-26 18:08:35'),
(7, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:35:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:35:08', '2019-11-26 19:37:01', '2019-11-26 19:37:01'),
(8, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:35:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:37:01', '2019-11-26 19:52:52', '2019-11-26 19:52:52'),
(9, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:37:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:52:52', '2019-11-26 19:53:27', '2019-11-26 19:53:27'),
(10, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:52:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:53:27', '2019-11-26 19:55:23', '2019-11-26 19:55:23'),
(11, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:53:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:55:23', '2019-11-26 19:55:27', '2019-11-26 19:55:27'),
(12, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:55:27', '2019-11-26 19:55:39', '2019-11-26 19:55:39'),
(13, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:55:39', '2019-11-26 19:57:43', '2019-11-26 19:57:43'),
(14, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:57:43', '2019-11-26 19:59:30', '2019-11-26 19:59:30'),
(15, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:57:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:59:30', '2019-11-26 19:59:58', '2019-11-26 19:59:58'),
(16, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:59:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 19:59:58', '2019-11-26 20:01:02', '2019-11-26 20:01:02'),
(17, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 20:01:02', '2019-11-26 20:01:54', '2019-11-26 20:01:54'),
(18, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:01:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 20:01:54', '2019-11-26 20:02:55', '2019-11-26 20:02:55'),
(19, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:01:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 20:02:55', '2019-11-26 20:03:29', '2019-11-26 20:03:29'),
(20, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:02:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 20:03:29', '2019-11-26 21:25:34', '2019-11-26 21:25:34'),
(21, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:03:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 21:25:35', '2019-11-26 22:52:26', '2019-11-26 22:52:26'),
(22, 'rendyreynaldy@gmail.com', '', '2019-11-27 04:25:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 22:52:26', '2019-11-28 18:04:32', '2019-11-28 18:04:32'),
(23, 'kepalacabang@gmail.com', '', '2019-11-27 06:00:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 23:00:30', '2019-12-20 00:34:18', '2019-12-20 00:34:18'),
(24, 'rendyreynaldy@gmail.com', '', '2019-11-27 05:52:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-28 18:04:32', '2019-11-28 18:07:18', '2019-11-28 18:07:18'),
(25, 'rendyreynaldy@gmail.com', '', '2019-11-29 01:04:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-28 18:07:18', '2019-12-01 22:41:25', '2019-12-01 22:41:25'),
(26, 'kepalaseksi@gmail.com', '', '2019-12-02 00:47:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-01 17:47:50', '2019-12-01 17:47:50', NULL),
(27, 'kepalabidang@gmail.com', '', '2019-12-02 00:49:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-01 17:49:53', '2019-12-01 22:41:41', '2019-12-01 22:41:41'),
(28, 'rendyreynaldy@gmail.com', '', '2019-11-29 01:07:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-01 22:41:25', '2020-01-06 18:56:02', '2020-01-06 18:56:02'),
(29, 'kepalabidang@gmail.com', '', '2019-12-02 00:49:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-01 22:41:42', '2019-12-18 23:18:27', '2019-12-18 23:18:27'),
(30, 'admin@gmail.com', 'administrator', '2019-12-06 06:42:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-05 23:42:35', '2019-12-10 17:50:14', '2019-12-10 17:50:14'),
(31, 'admin@gmail.com', 'administrator', '2019-12-06 06:42:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-10 17:50:14', '2019-12-11 00:34:59', '2019-12-11 00:34:59'),
(32, 'admin@gmail.com', 'administrator', '2019-12-11 00:50:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-11 00:34:59', '2019-12-11 01:23:17', '2019-12-11 01:23:17'),
(33, 'admin@gmail.com', 'administrator', '2019-12-11 07:34:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-11 01:23:17', '2019-12-11 20:38:01', '2019-12-11 20:38:01'),
(34, 'admin@gmail.com', 'administrator', '2019-12-11 08:23:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-11 20:38:01', '2019-12-12 17:48:25', '2019-12-12 17:48:25'),
(35, 'admin@gmail.com', 'administrator', '2019-12-12 03:38:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-12 17:48:25', '2019-12-12 17:50:45', '2019-12-12 17:50:45'),
(36, 'admin@gmail.com', 'administrator', '2019-12-13 00:48:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-12 17:50:45', '2019-12-12 21:05:22', '2019-12-12 21:05:22'),
(37, 'admin@gmail.com', 'administrator', '2019-12-13 00:50:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-12 21:05:22', '2019-12-13 02:30:11', '2019-12-13 02:30:11'),
(38, 'admin@gmail.com', 'administrator', '2019-12-13 04:05:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 02:30:11', '2019-12-13 02:58:32', '2019-12-13 02:58:32'),
(39, 'admin@gmail.com', 'administrator', '2019-12-13 09:30:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 02:58:32', '2019-12-17 06:17:31', '2019-12-17 06:17:31'),
(40, 'admin@gmail.com', 'administrator', '2019-12-13 09:58:32', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 06:17:31', '2019-12-17 06:33:06', '2019-12-17 06:33:06'),
(41, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:29:38', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 06:29:38', '2019-12-17 06:35:05', '2019-12-17 06:35:05'),
(42, 'admin@gmail.com', 'administrator', '2019-12-17 13:17:31', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 06:33:06', '2019-12-18 04:28:48', '2019-12-18 04:28:48'),
(43, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:29:38', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 06:35:05', '2019-12-18 04:26:24', '2019-12-18 04:26:24'),
(44, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:35:05', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 04:26:25', '2019-12-18 04:38:17', '2019-12-18 04:38:17'),
(45, 'admin@gmail.com', 'administrator', '2019-12-17 13:33:06', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 04:28:48', '2019-12-18 04:57:28', '2019-12-18 04:57:28'),
(46, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-18 11:26:25', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 04:38:17', '2019-12-18 17:24:16', '2019-12-18 17:24:16'),
(47, 'admin@gmail.com', 'administrator', '2019-12-18 11:28:48', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 04:57:28', '2019-12-18 17:23:32', '2019-12-18 17:23:32'),
(48, 'admin@gmail.com', 'administrator', '2019-12-18 11:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 17:23:32', '2019-12-18 17:54:06', '2019-12-18 17:54:06'),
(49, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-18 11:38:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 17:24:16', '2019-12-18 17:56:37', '2019-12-18 17:56:37'),
(50, 'admin@gmail.com', 'administrator', '2019-12-19 00:23:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 17:54:06', '2019-12-18 22:22:24', '2019-12-18 22:22:24'),
(51, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 00:54:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 17:54:19', '2019-12-18 18:00:58', '2019-12-18 18:00:58'),
(52, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 00:24:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 17:56:37', '2019-12-18 19:07:17', '2019-12-18 19:07:17'),
(53, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 00:54:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 18:00:58', '2019-12-18 19:07:35', '2019-12-18 19:07:35'),
(54, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 00:56:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 19:07:17', '2019-12-18 23:20:53', '2019-12-18 23:20:53'),
(55, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 01:00:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 19:07:35', '2019-12-18 22:59:05', '2019-12-18 22:59:05'),
(56, 'admin@gmail.com', 'administrator', '2019-12-19 00:54:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 22:22:24', '2019-12-18 23:14:26', '2019-12-18 23:14:26'),
(57, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 02:07:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 22:59:05', '2019-12-20 00:49:21', '2019-12-20 00:49:21'),
(58, 'admin@gmail.com', 'administrator', '2019-12-19 05:22:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 23:14:26', '2019-12-19 19:17:11', '2019-12-19 19:17:11'),
(59, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-02 05:41:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 23:18:27', '2019-12-19 23:31:06', '2019-12-19 23:31:06'),
(60, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 02:07:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 23:20:53', '2019-12-20 00:59:47', '2019-12-20 00:59:47'),
(61, 'admin@gmail.com', 'administrator', '2019-12-19 06:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 19:17:11', '2019-12-19 19:48:43', '2019-12-19 19:48:43'),
(62, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:19:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 19:19:14', '2019-12-19 19:49:13', '2019-12-19 19:49:13'),
(63, 'admin@gmail.com', 'administrator', '2019-12-20 02:17:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 19:48:43', '2019-12-19 19:55:35', '2019-12-19 19:55:35'),
(64, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:19:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 19:49:13', '2019-12-19 21:20:06', '2019-12-19 21:20:06'),
(65, 'admin@gmail.com', 'administrator', '2019-12-20 02:48:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 19:55:35', '2019-12-20 00:33:24', '2019-12-20 00:33:24'),
(66, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:49:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 21:20:06', '2019-12-20 00:35:00', '2019-12-20 00:35:00'),
(67, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-19 06:18:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-19 23:31:06', '2019-12-20 00:34:33', '2019-12-20 00:34:33'),
(68, 'admin@gmail.com', 'administrator', '2019-12-20 02:55:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:33:24', '2019-12-25 23:22:40', '2019-12-25 23:22:40'),
(69, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-11-27 06:00:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:34:18', '2019-12-20 00:48:45', '2019-12-20 00:48:45'),
(70, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 06:31:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:34:33', '2019-12-20 00:48:52', '2019-12-20 00:48:52'),
(71, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 04:20:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:35:00', '2019-12-20 02:19:01', '2019-12-20 02:19:01'),
(72, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 07:34:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:48:45', '2019-12-20 02:20:37', '2019-12-20 02:20:37'),
(73, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:34:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:48:52', '2019-12-20 00:59:29', '2019-12-20 00:59:29'),
(74, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 05:59:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:49:21', '2019-12-20 01:00:49', '2019-12-20 01:00:49'),
(75, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:48:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:59:29', '2019-12-20 02:18:37', '2019-12-20 02:18:37'),
(76, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 06:20:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 00:59:47', '2019-12-20 01:31:15', '2019-12-20 01:31:15'),
(77, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 07:49:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 01:00:49', '2019-12-20 02:17:45', '2019-12-20 02:17:45'),
(78, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-20 07:59:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 01:31:15', '2019-12-25 17:48:28', '2019-12-25 17:48:28'),
(79, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 08:00:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:17:45', '2019-12-25 23:20:05', '2019-12-25 23:20:05'),
(80, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:59:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:18:37', '2019-12-20 02:18:37', NULL),
(81, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 07:35:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:19:01', '2020-01-28 16:25:55', '2020-01-28 16:25:55'),
(82, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 07:48:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:20:37', '2019-12-25 23:20:48', '2019-12-25 23:20:48'),
(83, 'pelaksana@gmail.com', 'pelaksana', '2019-12-23 05:52:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-22 22:52:02', '2019-12-25 17:48:11', '2019-12-25 17:48:11'),
(84, 'pelaksana@gmail.com', 'pelaksana', '2019-12-23 05:52:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 17:48:11', '2020-01-24 19:08:27', '2020-01-24 19:08:27'),
(85, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-20 08:31:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 17:48:28', '2019-12-25 20:06:39', '2019-12-25 20:06:39'),
(86, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 00:48:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-25 20:06:39', '2019-12-25 22:55:59', '2019-12-25 22:55:59'),
(87, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 03:06:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 22:55:59', '2019-12-26 18:59:43', '2019-12-26 18:59:43'),
(88, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 09:17:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 23:20:05', '2020-01-13 18:06:30', '2020-01-13 18:06:30'),
(89, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 09:20:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 23:20:48', '2020-01-28 16:26:29', '2020-01-28 16:26:29'),
(90, 'admin@gmail.com', 'administrator', '2019-12-20 07:33:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-25 23:22:40', '2019-12-26 18:14:26', '2019-12-26 18:14:26'),
(91, 'admin@gmail.com', 'administrator', '2019-12-26 06:22:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:14:26', '2019-12-26 18:21:34', '2019-12-26 18:21:34'),
(92, 'admin@gmail.com', 'administrator', '2019-12-27 01:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:21:34', '2019-12-26 18:23:11', '2019-12-26 18:23:11'),
(93, 'admin@gmail.com', 'administrator', '2019-12-27 01:21:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:23:11', '2019-12-26 18:23:18', '2019-12-26 18:23:18'),
(94, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:23:18', '2019-12-26 18:23:22', '2019-12-26 18:23:22'),
(95, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:23:22', '2019-12-26 18:26:06', '2019-12-26 18:26:06'),
(96, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:26:06', '2019-12-26 23:25:37', '2019-12-26 23:25:37'),
(97, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 05:55:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 18:59:43', '2019-12-30 19:02:03', '2019-12-30 19:02:03'),
(98, 'admin@gmail.com', 'administrator', '2019-12-27 01:26:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 23:25:37', '2019-12-30 19:00:28', '2019-12-30 19:00:28'),
(99, 'admin@gmail.com', 'administrator', '2019-12-27 06:25:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-30 19:00:28', '2019-12-30 19:01:59', '2019-12-30 19:01:59'),
(100, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-27 01:59:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-30 19:02:03', '2019-12-30 19:22:30', '2019-12-30 19:22:30'),
(101, 'admin@gmail.com', 'administrator', '2019-12-31 02:29:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-30 19:29:09', '2019-12-30 19:29:11', '2019-12-30 19:29:11'),
(102, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-31 02:45:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-30 19:45:43', '2019-12-30 19:55:26', '2019-12-30 19:55:26'),
(103, 'admin@gmail.com', 'administrator', '2019-12-31 03:27:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-30 20:27:53', '2020-01-01 20:21:52', '2020-01-01 20:21:52'),
(104, 'admin@gmail.com', 'administrator', '2019-12-31 03:27:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-01 20:21:52', '2020-01-01 20:34:38', '2020-01-01 20:34:38'),
(105, 'admin@gmail.com', 'administrator', '2020-01-02 03:21:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2020-01-01 20:34:38', '2020-01-02 00:36:20', '2020-01-02 00:36:20'),
(106, 'admin@gmail.com', 'administrator', '2020-01-02 03:34:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-02 00:36:20', '2020-01-02 00:44:04', '2020-01-02 00:44:04'),
(107, 'admin@gmail.com', 'administrator', '2020-01-02 07:47:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2020-01-02 00:47:50', '2020-01-02 00:48:14', '2020-01-02 00:48:14'),
(108, 'nindy', 'pelaksana', '2020-01-02 07:48:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2020-01-02 00:48:18', '2020-01-02 01:27:51', '2020-01-02 01:27:51'),
(109, '1234', 'pelaksana', '2020-01-02 07:48:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2020-01-02 00:48:43', '2020-01-02 00:48:43', NULL),
(110, 'nindy', 'administrator', '2020-01-02 07:48:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-02 01:27:51', '2020-01-06 18:56:09', '2020-01-06 18:56:09'),
(111, 'rendy', 'administrator', '2020-01-02 08:29:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-02 01:29:22', '2020-01-06 18:15:49', '2020-01-06 18:15:49'),
(112, 'rendy', 'administrator', '2020-01-02 08:29:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-06 18:15:49', '2020-01-07 17:50:26', '2020-01-07 17:50:26'),
(113, 'nindy', 'pelaksana', '2020-01-02 08:27:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-06 18:56:09', '2020-01-07 18:10:30', '2020-01-07 18:10:30'),
(114, 'rendy', 'administrator', '2020-01-07 01:15:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-07 17:50:26', '2020-01-08 00:05:21', '2020-01-08 00:05:21'),
(115, 'nindy', 'pelaksana', '2020-01-07 01:56:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-07 18:10:30', '2020-01-09 17:39:19', '2020-01-09 17:39:19'),
(116, 'rendy', 'administrator', '2020-01-08 00:50:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2020-01-08 00:05:21', '2020-01-10 01:20:55', '2020-01-10 01:20:55'),
(117, 'nindy', 'pelaksana', '2020-01-08 01:10:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-09 17:39:19', '2020-01-09 23:02:51', '2020-01-09 23:02:51'),
(118, 'nindy', 'pelaksana', '2020-01-10 00:39:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-09 23:02:51', '2020-01-13 17:53:57', '2020-01-13 17:53:57'),
(119, 'rendy', 'administrator', '2020-01-08 07:05:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-10 01:20:55', '2020-01-13 18:16:04', '2020-01-13 18:16:04'),
(120, 'nindy', 'pelaksana', '2020-01-10 06:02:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 17:53:57', '2020-01-13 18:06:37', '2020-01-13 18:06:37'),
(121, 'chandra', 'kepala-seksi', '2020-01-14 01:03:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 18:03:16', '2020-01-13 18:03:16', NULL),
(122, 'nindy', 'pelaksana', '2020-01-14 00:53:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 18:06:37', '2020-01-14 18:25:23', '2020-01-14 18:25:23'),
(123, 'rendy', 'administrator', '2020-01-10 08:20:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 18:16:04', '2020-01-13 20:28:31', '2020-01-13 20:28:31'),
(124, 'rendy', 'administrator', '2020-01-14 01:16:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 20:28:31', '2020-01-13 21:59:05', '2020-01-13 21:59:05'),
(125, 'rendy', 'administrator', '2020-01-14 03:28:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-13 21:59:05', '2020-01-14 17:47:30', '2020-01-14 17:47:30'),
(126, 'rendy', 'administrator', '2020-01-14 04:59:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-14 17:47:30', '2020-01-24 19:09:06', '2020-01-24 19:09:06'),
(127, 'nindy', 'pelaksana', '2020-01-14 01:06:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-14 18:25:23', '2020-01-14 23:09:22', '2020-01-14 23:09:22'),
(128, 'nindy', 'pelaksana', '2020-01-15 01:25:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-14 23:09:22', '2020-01-14 23:23:43', '2020-01-14 23:23:43'),
(129, 'nindy', 'pelaksana', '2020-01-15 06:09:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-14 23:23:43', '2020-01-24 18:42:57', '2020-01-24 18:42:57'),
(130, 'nindy', 'pelaksana', '2020-01-15 06:23:43', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-24 18:43:00', '2020-01-24 18:43:00', NULL),
(131, 'pelaksana', 'pelaksana', '2020-01-25 02:07:44', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-24 19:07:44', '2020-01-28 04:30:26', '2020-01-28 04:30:26'),
(132, 'rendy', 'administrator', '2020-01-15 00:47:30', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-24 19:09:07', '2020-01-24 19:41:41', '2020-01-24 19:41:41'),
(133, 'rendy', 'administrator', '2020-01-25 02:09:07', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2020-01-24 19:41:41', '2020-01-27 16:20:32', '2020-01-27 16:20:32'),
(134, 'rendy', 'administrator', '2020-01-25 02:41:41', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-27 16:20:33', '2020-01-28 04:08:02', '2020-01-28 04:08:02'),
(135, 'rendy', 'administrator', '2020-01-27 23:20:33', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 04:08:02', '2020-02-01 16:37:10', '2020-02-01 16:37:10'),
(136, 'pelaksana', 'pelaksana', '2020-01-25 02:07:44', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 04:30:26', '2020-01-28 16:09:57', '2020-01-28 16:09:57'),
(137, 'pelaksana', 'pelaksana', '2020-01-28 11:30:26', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:09:57', '2020-01-28 16:14:55', '2020-01-28 16:14:55'),
(138, 'kseksiumum', 'kepala-seksi', '2020-01-28 23:13:23', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:13:23', '2020-01-28 16:15:51', '2020-01-28 16:15:51'),
(139, 'pelaksana', 'pelaksana', '2020-01-28 23:09:57', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:14:55', '2020-02-01 16:51:15', '2020-02-01 16:51:15'),
(140, 'kseksiumum', 'kepala-seksi', '2020-01-28 23:13:23', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:15:52', '2020-01-28 16:19:12', '2020-01-28 16:19:12'),
(141, 'kbidangumum', 'kepala-bidang', '2020-01-28 23:16:54', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:16:54', '2020-01-28 16:21:09', '2020-01-28 16:21:09'),
(142, 'kseksiumum', 'kepala-seksi', '2020-01-28 23:15:52', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:19:12', '2020-02-01 19:55:17', '2020-02-01 19:55:17'),
(143, 'kbidangumum', 'kepala-bidang', '2020-01-28 23:16:54', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:21:09', '2020-01-28 16:26:40', '2020-01-28 16:26:40'),
(144, 'wakilkepalacabang', 'wakil-kepala-cabang', '2020-01-28 23:22:58', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:22:58', '2020-01-28 16:27:17', '2020-01-28 16:27:17'),
(145, 'kepalacabang', 'kepala-cabang', '2020-01-28 23:26:21', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:26:21', '2020-01-28 16:27:56', '2020-01-28 16:27:56'),
(146, 'kbidangumum', 'kepala-bidang', '2020-01-28 23:21:09', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:26:40', '2020-01-28 16:26:40', NULL),
(147, 'wakilkepalacabang', 'wakil-kepala-cabang', '2020-01-28 23:22:58', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:27:18', '2020-01-28 16:27:18', NULL),
(148, 'kepalacabang', 'kepala-cabang', '2020-01-28 23:26:21', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-01-28 16:27:56', '2020-01-28 16:27:56', NULL),
(149, 'rendy', 'administrator', '2020-01-28 11:08:02', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 16:37:10', '2020-02-01 16:50:14', '2020-02-01 16:50:14'),
(150, 'rendy', 'administrator', '2020-02-01 23:37:10', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 16:50:14', '2020-02-01 18:50:20', '2020-02-01 18:50:20'),
(151, 'pelaksana', 'pelaksana', '2020-01-28 23:14:55', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 16:51:15', '2020-02-01 18:50:58', '2020-02-01 18:50:58'),
(152, 'rendy', 'administrator', '2020-02-01 23:50:14', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 18:50:20', '2020-02-01 18:50:20', NULL),
(153, 'pelaksana', 'pelaksana', '2020-02-01 23:51:15', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 18:50:58', '2020-02-01 20:50:32', '2020-02-01 20:50:32'),
(154, 'kseksiumum', 'kepala-seksi-kepegawaian', '2020-01-28 23:19:12', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2020-02-01 19:55:17', '2020-02-01 21:03:31', '2020-02-01 21:03:31'),
(155, 'pelaksana', 'pelaksana', '2020-02-02 01:50:58', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2020-02-01 20:50:32', '2020-02-01 20:50:32', NULL),
(156, 'kseksiumum', 'kepala-seksi-kepegawaian', '2020-02-02 02:55:17', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2020-02-01 21:03:31', '2020-02-01 21:03:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_20_012447_initial', 1),
(4, '2019_11_25_022648_log_login', 1),
(10, '2019_11_27_020254_add_role', 2),
(11, '2019_12_04_083443_add_iduser', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_bidang`
--

CREATE TABLE `mst_bidang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_bidang`
--

INSERT INTO `mst_bidang` (`id`, `bidang`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'All', 1, '2020-01-14 01:23:40', NULL, NULL),
(1, 'Bidang Umum dan SDM', 1, '2019-11-25 04:14:54', '2019-12-17 06:22:00', NULL),
(6, 'Bidang Keuangan', 1, '2019-12-17 06:22:26', '2019-12-17 06:22:26', NULL),
(7, 'Bidang Layanan', 1, '2019-12-17 06:22:43', '2019-12-17 06:22:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_cabang`
--

CREATE TABLE `mst_cabang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_cabang`
--

INSERT INTO `mst_cabang` (`id`, `cabang`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'All', 1, '2020-01-14 01:45:29', NULL, NULL),
(1, 'Bandung', 1, '2019-11-26 04:15:06', '2019-12-12 02:26:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_employee`
--

CREATE TABLE `mst_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `kcu_id` bigint(20) UNSIGNED NOT NULL,
  `seksi_id` bigint(20) UNSIGNED NOT NULL,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_employee`
--

INSERT INTO `mst_employee` (`id`, `position_id`, `cabang_id`, `kcu_id`, `seksi_id`, `bidang_id`, `employee_name`, `nik`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 1, 1, 1, 1, 'Pelaksana', '2', 1, '2019-12-11 01:20:17', '2020-01-08 00:44:37', NULL),
(10, 1, 1, 1, 4, 6, 'Nindya Sofiana', '3', 1, '2019-12-17 06:28:56', '2020-01-15 00:17:52', NULL),
(11, 2, 1, 1, 4, 6, 'Chandra Setya Wijaya', '4', 1, '2019-12-17 06:34:41', '2020-01-08 00:45:11', NULL),
(13, 3, 1, 1, 4, 6, 'Kepala Bidang Keuangan', '5', 1, '2019-12-18 23:15:11', '2020-01-28 04:08:48', NULL),
(14, 4, 1, 1, 4, 6, 'Wakil Kepala Cabangsssss', '6', 1, '2019-12-19 19:19:01', '2019-12-26 18:21:20', NULL),
(15, 5, 1, 1, 4, 6, 'Kepala Cabang', '7', 1, '2019-12-20 00:34:09', '2019-12-20 00:34:09', NULL),
(21, 1, 1, 1, 1, 1, 'Rendy', '1', 1, '2020-01-02 01:28:45', '2020-01-02 01:28:45', NULL),
(22, 2, 1, 1, 1, 1, 'Kepala Seksi Kepegawaian', '8', 1, '2020-01-27 16:42:18', '2020-01-28 04:19:58', NULL),
(23, 3, 1, 1, 0, 1, 'Kepala Bidang Umum', '9', 1, '2020-01-28 04:23:11', '2020-01-28 04:23:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_global`
--

CREATE TABLE `mst_global` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_global`
--

INSERT INTO `mst_global` (`id`, `code`, `condition`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'StatusHeader', 'New', 1, '2019-12-18 04:31:27', '2019-12-18 04:31:27', NULL),
(2, 2, 'StatusHeader', 'Inprogress', 1, '2019-12-18 04:31:56', '2019-12-18 04:31:56', NULL),
(3, 3, 'StatusHeader', 'Approve', 1, '2019-12-18 04:32:26', '2019-12-18 04:32:26', NULL),
(4, 4, 'StatusHeader', 'Decline', 1, '2019-12-18 04:33:05', '2019-12-18 04:33:05', NULL),
(5, 1, 'StatusDetail', 'Approve', 1, '2019-12-18 04:34:53', '2019-12-18 04:34:53', NULL),
(6, 2, 'StatusDetail', 'Decline', 1, '2019-12-18 04:35:31', '2019-12-18 04:35:31', NULL),
(7, 1, 'JenisPekerjaan', 'Tunjuk Silang', 1, '2019-12-18 04:35:53', '2019-12-18 04:57:43', NULL),
(8, 2, 'JenisPekerjaan', 'Non Tunjuk Silang', 1, '2019-12-18 04:36:17', '2019-12-18 04:57:53', NULL),
(9, 1, 'ProgressDetail', 'Done', 1, '2019-12-18 04:36:41', '2019-12-18 04:58:23', NULL),
(10, 2, 'ProgressDetail', 'Pending', 1, '2019-12-18 04:37:04', '2019-12-18 04:58:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_kcu`
--

CREATE TABLE `mst_kcu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `kcu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_kcu`
--

INSERT INTO `mst_kcu` (`id`, `cabang_id`, `kcu`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 0, 'All', 1, '2020-01-14 01:45:22', NULL, NULL),
(1, 1, 'KCU Bandungs', 1, '2019-11-25 04:17:06', '2019-12-12 18:17:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_seksi`
--

CREATE TABLE `mst_seksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `seksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_seksi`
--

INSERT INTO `mst_seksi` (`id`, `bidang_id`, `seksi`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 0, 'All', 1, NULL, NULL, NULL),
(1, 1, 'Seksi Umum', 1, '2019-11-25 04:17:31', '2019-12-17 06:21:16', NULL),
(3, 1, 'Seksi SDM', 1, '2019-12-17 06:23:31', '2019-12-17 06:23:31', NULL),
(4, 6, 'Seksi Kas dan Verifikasi', 1, '2019-12-17 06:24:19', '2019-12-17 06:24:19', NULL),
(5, 6, 'Seksi Administrasi Keuangan', 1, '2019-12-17 06:24:50', '2019-12-17 06:24:50', NULL),
(6, 7, 'Seksi Data', 1, '2019-12-17 06:25:29', '2019-12-17 06:25:29', NULL),
(7, 7, 'Seksi Layanan dan Manfaat', 1, '2019-12-17 06:25:50', '2019-12-17 06:25:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nindyasofi@gmail.com', '$2y$10$MNFNgTyyicAxxHVvJGsrA.gQVHYdWIhb8pkC5yYqYj6Vmqnu8yCTq', '2019-12-30 19:22:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sirkulasi`
--

CREATE TABLE `sirkulasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_header_id` bigint(20) UNSIGNED NOT NULL,
  `slot_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_last_update_id` bigint(20) UNSIGNED NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sirkulasi`
--

INSERT INTO `sirkulasi` (`id`, `task_header_id`, `slot_id`, `status`, `user_last_update_id`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 2, '', 12, '', NULL, NULL, NULL),
(2, 9, 3, '', 13, 'a', NULL, NULL, NULL),
(4, 9, 3, '', 15, 'Teruskan', '2019-12-20 06:38:04', '2019-12-20 06:38:04', NULL),
(5, 9, 2, 'Declined', 15, 'Terusin', '2019-12-20 07:34:40', '2019-12-20 07:34:40', NULL),
(6, 9, 2, 'Declined', 13, 'Fafafafa', '2019-12-20 07:58:39', '2019-12-20 07:58:39', NULL),
(7, 9, 1, 'Declined', 13, 'T', '2019-12-20 08:00:54', '2019-12-20 08:00:54', NULL),
(8, 9, 2, '', 12, '', '2019-12-20 09:17:37', '2019-12-20 09:17:37', NULL),
(9, 9, 3, 'Approved', 13, 'FAFAFA', '2019-12-20 09:18:14', '2019-12-20 09:18:14', NULL),
(10, 9, 4, 'Approved', 15, 'FAFAFA', '2019-12-20 09:18:44', '2019-12-20 09:18:44', NULL),
(11, 9, 5, 'Approved', 16, 'fafafa', '2019-12-20 09:20:28', '2019-12-20 09:20:28', NULL),
(13, 9, 5, 'Approved', 17, 'FAFAFA', '2019-12-20 09:22:29', '2019-12-20 09:22:29', NULL),
(14, 9, 5, 'Approved', 17, 'FAFAFA', '2019-12-20 09:24:37', '2019-12-20 09:24:37', NULL),
(15, 9, 1, 'Declined', 17, 'DADADADA', '2019-12-20 09:24:45', '2019-12-20 09:24:45', NULL),
(16, 9, 1, '', 12, '', '2019-12-26 02:06:53', '2019-12-26 02:06:53', NULL),
(17, 9, 1, '', 12, '', '2019-12-26 02:21:38', '2019-12-26 02:21:38', NULL),
(18, 9, 1, 'New', 12, '', '2019-12-26 02:24:49', '2019-12-26 02:24:49', NULL),
(19, 9, 1, 'New', 12, '', '2019-12-26 02:41:57', '2019-12-26 02:41:57', NULL),
(20, 9, 1, 'New', 12, '', '2019-12-26 02:49:47', '2019-12-26 02:49:47', NULL),
(21, 9, 1, 'New', 12, '', '2019-12-26 03:05:17', '2019-12-26 03:05:17', NULL),
(22, 9, 1, 'New', 12, '', '2019-12-26 03:10:20', '2019-12-26 03:10:20', NULL),
(23, 9, 1, 'New', 12, '', '2019-12-26 03:34:30', '2019-12-26 03:34:30', NULL),
(24, 9, 2, 'New', 12, '', '2019-12-26 05:57:35', '2019-12-26 05:57:35', NULL),
(25, 17, 2, '', 12, '', '2020-01-25 02:06:54', '2020-01-25 02:06:54', NULL),
(26, 18, 2, '', 7, '', '2020-01-28 23:12:31', '2020-01-28 23:12:31', NULL),
(27, 18, 1, 'Declined', 24, 'Perbaiki time nya', '2020-01-28 23:14:28', '2020-01-28 23:14:28', NULL),
(28, 18, 2, 'New', 7, '', '2020-01-28 23:15:39', '2020-01-28 23:15:39', NULL),
(29, 18, 3, 'Approved', 24, 'Lanjutkan', '2020-01-28 23:16:17', '2020-01-28 23:16:17', NULL),
(30, 18, 2, 'Declined', 25, 'Cobaa periksa lagi yaa', '2020-01-28 23:18:56', '2020-01-28 23:18:56', NULL),
(31, 18, 3, 'Approved', 24, 'sudah pak bisa dilanjutkan', '2020-01-28 23:19:28', '2020-01-28 23:19:28', NULL),
(32, 18, 4, 'Approved', 25, 'Lanjutkan', '2020-01-28 23:22:09', '2020-01-28 23:22:09', NULL),
(33, 18, 3, 'Declined', 16, 'coba diperiksa kembali', '2020-01-28 23:25:47', '2020-01-28 23:25:47', NULL),
(34, 18, 4, 'Approved', 25, 'sudah diperiksa pak bisa dilanjutkan', '2020-01-28 23:27:00', '2020-01-28 23:27:00', NULL),
(35, 18, 5, 'Approved', 16, 'bisa di lanjutkan', '2020-01-28 23:27:38', '2020-01-28 23:27:38', NULL),
(36, 18, 6, 'Approved', 17, 'approved', '2020-01-28 23:29:05', '2020-01-28 23:29:05', NULL),
(37, 27, 2, '', 7, '', '2020-02-02 01:49:49', '2020-02-02 01:49:49', NULL),
(38, 28, 2, '', 7, '', '2020-02-02 02:50:54', '2020-02-02 02:50:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trn_task_detail`
--

CREATE TABLE `trn_task_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_header_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `detail_count` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_type` int(11) NOT NULL,
  `tanggal_pmk` date DEFAULT NULL,
  `tanggal_lapor` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `trn_task_detail`
--

INSERT INTO `trn_task_detail` (`id`, `task_header_id`, `status_id`, `detail_count`, `description`, `task_type`, `tanggal_pmk`, `tanggal_lapor`, `start_time`, `end_time`, `progress`, `remark`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 9, NULL, 1, 'Siapin dana untuk sewa alphard', 1, NULL, NULL, '05:30:00', '10:15:00', 1, 'aman', 'public/files/9/256px-Logo_of_the_Ministry_of_Research,_Technology,_and_Higher_Education_of_the_Republic_of_Indonesia.png', '2019-12-25 22:57:35', '2019-12-25 22:57:35', NULL),
(28, 9, NULL, 2, 'Siapin dana untuk suguhan makanan', 1, NULL, NULL, '00:45:00', '06:00:00', 1, 'Aman', 'public/files/9/lake.jpg', '2019-12-25 22:57:35', '2019-12-25 22:57:35', NULL),
(30, 17, NULL, 1, 'Memberi raw data file', 2, NULL, NULL, '09:15:00', '13:30:00', 1, 'Done', 'public/files/17/les private.docx', '2020-01-24 19:06:53', '2020-01-24 19:06:53', NULL),
(31, 17, NULL, 2, 'Have to convert in png', 2, NULL, NULL, '11:15:00', '22:00:00', 1, 'Done to sent', 'public/files/17/taspen4.png', '2020-01-24 19:06:53', '2020-01-24 19:06:53', NULL),
(34, 18, 1, 1, 'Meenyiapkan Hotel', 2, NULL, NULL, '00:10:00', '08:00:00', 1, 'Done', NULL, '2020-01-28 16:15:39', '2020-01-28 16:27:00', NULL),
(35, 18, 1, 2, 'Menyiapkan Makanan', 2, NULL, NULL, '00:15:00', '01:15:00', 2, 'done,\r\n\r\nsudah dipwrbaiki pak', NULL, '2020-01-28 16:15:39', '2020-01-28 16:27:00', NULL),
(36, 27, NULL, 1, 'Jiwasraya', 1, NULL, NULL, NULL, NULL, 2, 'Done', 'public/files/27/Application Form PT Multipolar Technology Tbk R3_Nindya.xls', '2020-02-01 18:49:49', '2020-02-01 18:49:49', NULL),
(37, 28, NULL, 1, 'GedungPutih', 2, NULL, NULL, NULL, NULL, 1, 'done', 'public/files/28/Bangkok.xlsx', '2020-02-01 19:50:54', '2020-02-01 19:50:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trn_task_header`
--

CREATE TABLE `trn_task_header` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `user_last_update_id` bigint(20) UNSIGNED NOT NULL,
  `user_approval_id` bigint(20) UNSIGNED NOT NULL,
  `task_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_task` date NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `trn_task_header`
--

INSERT INTO `trn_task_header` (`id`, `employee_id`, `cabang_id`, `user_last_update_id`, `user_approval_id`, `task_title`, `nip`, `description`, `date_task`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 10, 1, 12, 13, 'Menkeu kunjungan ke Bandung', '', 'Menkeu kunjungan ke Bandung', '2019-12-26', 1, '2019-12-18 06:19:35', '2019-12-25 20:10:20', NULL),
(17, 10, 1, 12, 13, 'Design logo taspen yang baru', '', 'Design logo taspen yang baru', '2020-01-31', 1, '2020-01-24 19:06:53', '2020-01-24 19:06:53', NULL),
(18, 5, 1, 7, 24, 'Menyiapkan meeting regional', '', 'Menyiapkan meeting regional', '2020-01-01', 3, '2020-01-28 16:12:29', '2020-01-28 16:29:05', NULL),
(27, 5, 1, 7, 24, 'Budiman', '', 'Jatuh Ke Jurang', '2020-02-01', 1, '2020-02-01 18:49:49', '2020-02-01 18:49:49', NULL),
(28, 5, 1, 7, 24, 'Donald Trump', '1234', 'Di Bomb', '2020-02-06', 1, '2020-02-01 19:50:52', '2020-02-01 19:50:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pelaksana',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `employee_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `nik`, `role`, `remember_token`, `created_at`, `updated_at`, `active`, `employee_id`) VALUES
(7, 'Pelaksana', 'pelaksana@gmail.com', 'pelaksana', '$2y$10$SMuzOL6Z8vQUF/T2ckO9i.OlGNS21yDf7xFFrWRUO2zyvn5WVIxlq', '2', 'pelaksana', 'BRs5M437L7qdcmvbUSwqqiaaB4LtJ2we3U0wS4pglskry05e0j6pFOedhf1U', '2019-12-11 01:20:17', '2020-01-06 18:16:25', 1, 5),
(12, 'Nindya Sofiana', 'nindyasofi@gmail.com', 'nindy', '$2y$10$6X6qgFEFQzApv9o6.wO.AuavboeGoe37RX2GxWHfG//NM2Vlw22py', '3', 'pelaksana', 'DoWqdaBIuJoCAgETPwrnsupEIx0y5hXz8oaDiQspxN822qBmvhwnYdF28Wgm', '2019-12-17 06:28:57', '2020-01-15 00:18:45', 1, 10),
(13, 'Chandra Setya Wijaya', 'chandrasetya@gmail.com', 'chandra', '$2y$10$QNFYYvyNX7q8E776s/YHr.zG4wHG3L6SvG7KjfxfeEiq9fBtborl2', '4', 'kepala-seksi', 'HLIzKTNiW3r0gCWRIXXTK5gUJYk93MZTOu2vHznw4G1yJ2IvbAglNcR3n42W', '2019-12-17 06:34:41', '2020-01-08 00:45:11', 1, 11),
(15, 'Kepala Bidang Keuangan', 'kepalabidang@gmail.com', 'kepalabidang', '$2y$10$9Q/dCOs0rMjGGvBHfn.t..QaPDcKvMMszbDCQr4FJGLi4SjYQKOQi', '5', 'kepala-bidang', NULL, '2019-12-18 23:15:11', '2020-01-28 04:08:48', 1, 13),
(16, 'Wakil Kepala Cabangsssss', 'wakilkepalacabang@gmail.com', 'wakilkepalacabang', '$2y$10$cekOXfwGFeMvExZlGMt5cejyKtJ22QOKEBRM.0P8eu85/LhE7oIoK', '6', 'wakil-kepala-cabang', 'HtpH6cDiazgXDfXweOPbpZBcji82ljRzIQmCPWXcLxhr0FmYq5UYLWlqHVqo', '2019-12-19 19:19:01', '2020-01-06 18:16:30', 1, 14),
(17, 'Kepala Cabang', 'kepalacabang@gmail.com', 'kepalacabang', '$2y$10$pLkrDdYMgbIOY.7gygjMDeMJl9Bj8ON47.ZlaFPa83TKi2djjYJM.', '7', 'kepala-cabang', 'AoGbcLKoo9lBUiwHkKwcQE0VFtoENJ6QNb8QMRETBG7qzCVOEEOGpnkV3I6y', '2019-12-20 00:34:09', '2020-01-06 18:16:15', 1, 15),
(23, 'Rendy', 'rendyreynaldy@gmail.com', 'rendy', '$2y$10$Ae0pDqtN8/rahJeJ3kskTuBoSSInrCQxqjnFereLTDWz3hlGe8n2u', '1', 'administrator', 'NSF4YWYZN3m3T3JMrlanBpBrx3hh8qNkOpk8UsHFZZSpBrjFWMPNmCPyPeUd', '2020-01-02 01:28:45', '2020-01-02 01:28:45', 1, 21),
(24, 'Kepala Seksi Kepegawaian', 'KSeksiUmum@gmail.com', 'kseksiumum', '$2y$10$J3UGFXui80bPrIJVfVG8iu5lBQXWoipG2oT4MGR6jM7qB/vTonS3C', '8', 'kepala-seksi-kepegawaian', 'kJxc69BSpELIMMbtTgB2Bj9sl6TBbWw3gJD7CAtnFSwadCyRUEVYs5HihQce', '2020-01-27 16:42:18', '2020-02-01 18:50:41', 1, 22),
(25, 'Kepala Bidang Umum', 'kbidangumum@gmail.com', 'kbidangumum', '$2y$10$0LlwqC61PhYOoU4lJCyJC.s29sAOgEy3mPeQcRJK6fGHemyxYmqiO', '9', 'kepala-bidang', 'PIrGQWsglusV5dlIZyV9dem4qUUnxUPEOIASB5J7dBrkeg3eie6Tt25suTb6', '2020-01-28 04:23:11', '2020-01-28 04:23:11', 1, 23);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_slot`
--
ALTER TABLE `data_slot`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `log_login`
--
ALTER TABLE `log_login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `mst_bidang`
--
ALTER TABLE `mst_bidang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `mst_cabang`
--
ALTER TABLE `mst_cabang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `mst_employee`
--
ALTER TABLE `mst_employee`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `mst_employee_nik_unique` (`nik`) USING BTREE,
  ADD KEY `mst_employee_kcu_id_foreign` (`kcu_id`) USING BTREE,
  ADD KEY `mst_employee_cabang_id_foreign` (`cabang_id`) USING BTREE,
  ADD KEY `mst_employee_seksi_id_foreign` (`seksi_id`) USING BTREE,
  ADD KEY `mst_employee_bidang_id_foreign` (`bidang_id`) USING BTREE,
  ADD KEY `mst_employee_position_id_foreign` (`position_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_global`
--
ALTER TABLE `mst_global`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `mst_kcu`
--
ALTER TABLE `mst_kcu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cabang_id` (`cabang_id`) USING BTREE;

--
-- Indeks untuk tabel `mst_seksi`
--
ALTER TABLE `mst_seksi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mst_seksi_bidang_id_foreign` (`bidang_id`) USING BTREE;

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indeks untuk tabel `sirkulasi`
--
ALTER TABLE `sirkulasi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sirkulasi_task_header_id_foreign` (`task_header_id`) USING BTREE,
  ADD KEY `sirkulasi_slot_id_foreign` (`slot_id`) USING BTREE,
  ADD KEY `sirkulasi_user_last_update_id_foreign` (`user_last_update_id`) USING BTREE;

--
-- Indeks untuk tabel `trn_task_detail`
--
ALTER TABLE `trn_task_detail`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trn_task_detail_task_header_id_foreign` (`task_header_id`) USING BTREE;

--
-- Indeks untuk tabel `trn_task_header`
--
ALTER TABLE `trn_task_header`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trn_task_header_employee_id_foreign` (`employee_id`) USING BTREE,
  ADD KEY `trn_task_header_cabang_id_foreign` (`cabang_id`) USING BTREE,
  ADD KEY `trn_task_header_user_approval_id_foreign` (`user_approval_id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_nik_unique` (`nik`) USING BTREE,
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  ADD KEY `employee` (`employee_id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_slot`
--
ALTER TABLE `data_slot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `log_login`
--
ALTER TABLE `log_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mst_bidang`
--
ALTER TABLE `mst_bidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mst_cabang`
--
ALTER TABLE `mst_cabang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mst_employee`
--
ALTER TABLE `mst_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `mst_global`
--
ALTER TABLE `mst_global`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `mst_kcu`
--
ALTER TABLE `mst_kcu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mst_seksi`
--
ALTER TABLE `mst_seksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sirkulasi`
--
ALTER TABLE `sirkulasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `trn_task_detail`
--
ALTER TABLE `trn_task_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `trn_task_header`
--
ALTER TABLE `trn_task_header`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mst_employee`
--
ALTER TABLE `mst_employee`
  ADD CONSTRAINT `mst_employee_bidang_id_foreign` FOREIGN KEY (`bidang_id`) REFERENCES `mst_bidang` (`id`),
  ADD CONSTRAINT `mst_employee_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`),
  ADD CONSTRAINT `mst_employee_kcu_id_foreign` FOREIGN KEY (`kcu_id`) REFERENCES `mst_kcu` (`id`),
  ADD CONSTRAINT `mst_employee_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `data_slot` (`id`),
  ADD CONSTRAINT `mst_employee_seksi_id_foreign` FOREIGN KEY (`seksi_id`) REFERENCES `mst_seksi` (`id`);

--
-- Ketidakleluasaan untuk tabel `mst_kcu`
--
ALTER TABLE `mst_kcu`
  ADD CONSTRAINT `mst_kcu_ibfk_1` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`);

--
-- Ketidakleluasaan untuk tabel `mst_seksi`
--
ALTER TABLE `mst_seksi`
  ADD CONSTRAINT `mst_seksi_bidang_id_foreign` FOREIGN KEY (`bidang_id`) REFERENCES `mst_bidang` (`id`);

--
-- Ketidakleluasaan untuk tabel `sirkulasi`
--
ALTER TABLE `sirkulasi`
  ADD CONSTRAINT `sirkulasi_slot_id_foreign` FOREIGN KEY (`slot_id`) REFERENCES `data_slot` (`id`),
  ADD CONSTRAINT `sirkulasi_task_header_id_foreign` FOREIGN KEY (`task_header_id`) REFERENCES `trn_task_header` (`id`),
  ADD CONSTRAINT `sirkulasi_user_last_update_id_foreign` FOREIGN KEY (`user_last_update_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `trn_task_detail`
--
ALTER TABLE `trn_task_detail`
  ADD CONSTRAINT `trn_task_detail_task_header_id_foreign` FOREIGN KEY (`task_header_id`) REFERENCES `trn_task_header` (`id`);

--
-- Ketidakleluasaan untuk tabel `trn_task_header`
--
ALTER TABLE `trn_task_header`
  ADD CONSTRAINT `trn_task_header_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`),
  ADD CONSTRAINT `trn_task_header_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `mst_employee` (`id`),
  ADD CONSTRAINT `trn_task_header_user_approval_id_foreign` FOREIGN KEY (`user_approval_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `employee` FOREIGN KEY (`employee_id`) REFERENCES `mst_employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
