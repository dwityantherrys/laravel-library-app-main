-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 03:42 AM
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
-- Database: `rms_cctv`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `copies_in_circulation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `year`, `copies_in_circulation`, `created_at`, `updated_at`) VALUES
(1, 'Aut quas inventore corrupti qui at at.', 'Mr. Layne Haley', '2005', 17, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(2, 'Beatae corrupti ad totam temporibus.', 'Miss Delores Langosh', '1998', 15, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(3, 'Eum tempora nisi cumque dolor quo.', 'Randal Abshire', '1984', 2, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(4, 'Maiores accusantium est iure provident aut ut minus.', 'Amely McGlynn', '1971', 8, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(5, 'Dolorem est et dolorem soluta at porro mollitia.', 'Drake Hammes', '2000', 20, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(6, 'Et quaerat ex unde qui.', 'Mrs. Charlotte Koelpin MD', '2010', 15, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(7, 'Voluptas sint modi suscipit ipsum.', 'Ada Gleason III', '2016', 11, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(8, 'Quasi recusandae itaque quis vero.', 'Prof. Triston Stanton V', '1977', 18, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(9, 'Impedit dignissimos possimus sed a rem consectetur.', 'Rylan Romaguera', '2009', 13, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(10, 'Sit sit magni odit quos quaerat temporibus.', 'Mohamed Jacobson', '2021', 10, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(11, 'Nobis et exercitationem dolorem ut quo expedita.', 'Dr. Dedric Stanton III', '1977', 6, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(12, 'Perferendis quam maxime deleniti vel explicabo qui.', 'Gustave Abernathy Jr.', '2023', 2, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(13, 'Excepturi quo quis id minima possimus.', 'Natasha Funk', '2006', 1, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(14, 'Nihil itaque et quia consequatur qui tenetur.', 'Dr. Hal Harvey', '2000', 15, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(15, 'Ducimus dolorum nulla porro molestiae accusamus.', 'Penelope Harris', '2006', 9, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(16, 'Molestiae quis nostrum et dolores.', 'Mrs. Anissa Vandervort', '2016', 3, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(17, 'Aperiam magnam voluptate consequatur eligendi.', 'Mr. Caleb Jacobson', '2000', 13, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(18, 'Nam alias iusto excepturi et quaerat sit ad.', 'Florine O\'Connell', '1996', 10, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(19, 'Consequatur placeat aut in molestiae.', 'Stuart Breitenberg', '1975', 2, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(20, 'Nobis voluptatum iure atque.', 'Margaret Bode II', '1993', 14, '2024-08-15 18:31:16', '2024-08-15 18:31:16');

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
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `number_borrowed` varchar(255) NOT NULL,
  `return_date` datetime NOT NULL,
  `is_returned` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `user_id`, `number_borrowed`, `return_date`, `is_returned`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '4', '2024-08-17 00:00:00', 0, '2024-08-15 19:05:34', '2024-08-15 19:05:34');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_09_082631_create_books_table', 1),
(6, '2023_09_09_082643_create_loans_table', 1),
(7, '2024_08_16_020902_create_cctv', 2),
(8, '2024_08_26_014937_add_session_id_to_users_table', 3);

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

-- --------------------------------------------------------

--
-- Table structure for table `t_cctv`
--

CREATE TABLE `t_cctv` (
  `fc_id` bigint(20) UNSIGNED NOT NULL,
  `fc_id_cctv` char(10) DEFAULT NULL,
  `fv_divisi` varchar(255) DEFAULT NULL,
  `fv_sys_type` varchar(255) DEFAULT NULL,
  `fv_principle` varchar(255) DEFAULT NULL,
  `fv_branch_Name` varchar(255) DEFAULT NULL,
  `fv_anydesk` varchar(255) DEFAULT NULL,
  `fv_teamviewer` varchar(255) DEFAULT NULL,
  `fv_ultraviewer` varchar(255) DEFAULT NULL,
  `fv_link_add` varchar(255) DEFAULT NULL,
  `fv_link_temp` varchar(255) DEFAULT NULL,
  `fc_user_it` char(8) DEFAULT NULL,
  `fc_password_it` char(15) DEFAULT NULL,
  `fc_user_sysadm` char(8) DEFAULT NULL,
  `fc_password_sysadm` char(15) DEFAULT NULL,
  `fv_status_hdd_ext` varchar(255) DEFAULT NULL,
  `fc_username` char(8) DEFAULT NULL,
  `fc_serial` varchar(255) DEFAULT NULL,
  `fc_user` char(8) DEFAULT NULL,
  `fc_password` char(15) DEFAULT NULL,
  `fn_qty_cam` int(11) DEFAULT NULL,
  `fc_region` char(30) DEFAULT NULL,
  `fc_status` char(1) DEFAULT NULL,
  `fv_ket_error` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_cctv`
--

INSERT INTO `t_cctv` (`fc_id`, `fc_id_cctv`, `fv_divisi`, `fv_sys_type`, `fv_principle`, `fv_branch_Name`, `fv_anydesk`, `fv_teamviewer`, `fv_ultraviewer`, `fv_link_add`, `fv_link_temp`, `fc_user_it`, `fc_password_it`, `fc_user_sysadm`, `fc_password_sysadm`, `fv_status_hdd_ext`, `fc_username`, `fc_serial`, `fc_user`, `fc_password`, `fn_qty_cam`, `fc_region`, `fc_status`, `fv_ket_error`, `created_at`, `updated_at`) VALUES
(1, '0.129', 'BOOM MOTORIS', 'INTEGRATED', NULL, 'BM 2 MALANG', NULL, NULL, NULL, '192.168.0.129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G10996694', 'admin', 'hik13245', 16, 'Jawa Timur', 'A', NULL, '2024-08-15 20:46:32', '2024-08-26 23:32:06'),
(2, '0.13', 'BOOM MOTORIS', 'INTEGRATED', NULL, 'BM 4 KARANGDUREN', NULL, NULL, NULL, '192.168.0.130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '838735072 838735070', 'admin', 'hik12345', 16, 'Jawa Timur', 'A', NULL, '2024-08-15 23:57:55', '2024-08-16 10:59:31'),
(10, '0,131', 'A26', 'INTEGRATED', NULL, 'TOKO A262', NULL, NULL, NULL, '192.168.0.131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 10:51:25', '2024-08-16 10:51:25'),
(12, '0,132', 'A26', 'INTEGRATED', NULL, 'TOKO A261', NULL, NULL, NULL, '192.168.0.132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K55210359', 'admin', 'hik12345', 16, 'Jawa Timur', 'A', NULL, '2024-08-16 11:56:03', '2024-08-16 12:04:23'),
(13, '0,199', 'TIGA BINTANG', 'NEW INTEGRATED', 'MERCON', 'MALANG', NULL, NULL, NULL, '192.168.0.199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'J41680801', 'admin', 'hik12345', 8, 'Jawa Timur', 'A', NULL, '2024-08-16 12:16:44', '2024-08-16 12:16:44'),
(14, '0,20', 'RMS', 'INTEGRATED', 'MIX MINOL', 'MALANG (MINOL)', NULL, NULL, NULL, '192.168.0.20:3388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '712455272', 'admin', 'admin123456', 16, 'Jawa Timur', 'A', NULL, '2024-08-16 12:20:12', '2024-08-16 12:20:12'),
(15, '0,249', 'RMS', 'ND6', 'HEAD OFFICE', 'HO NEXFIN', '198458761', NULL, NULL, 'http://192.168.0.249/nexdist/', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 12:27:09', '2024-08-16 12:27:09'),
(16, '2', 'TMIM', 'INTEGRATED', 'SPAREPART', 'MALANG', NULL, NULL, NULL, '192.168.2.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 22:08:36', '2024-08-16 22:08:36'),
(17, '3', 'BOOM MOTORIST', 'INTEGRATED', NULL, 'BM 3 BLITAR', NULL, NULL, NULL, '192.168.3.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '735646878 735646881', 'admin', 'hik12345', 16, 'Jawa Timur', 'A', NULL, '2024-08-16 22:25:06', '2024-08-16 22:25:06'),
(18, '4', 'RMS', 'ND6', 'UCI', 'PASURUAN', '1 454 800 294', NULL, '85 414 092', '192.168.4.99:8080/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'E11794226', 'admin', 'hik12345', 14, 'Jawa Timur', 'A', NULL, '2024-08-16 22:27:18', '2024-08-16 22:27:18'),
(19, '5', 'RMS', 'ND6', 'UNILEVER', 'MANADO 1', '623022447', NULL, NULL, '192.168.5.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'K96306465', 'admin', 'hik12345', 9, 'Sulawesi Utara', 'A', NULL, '2024-08-16 22:29:50', '2024-08-16 22:29:50'),
(20, '6', 'RMS', 'ND6', 'MIX', 'KOTAMOBAGU', NULL, NULL, NULL, '192.168.6.100', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'K08947144', 'admin', 'hik12345', 16, 'Sulawesi Utara', 'A', NULL, '2024-08-16 22:30:44', '2024-08-16 22:35:06'),
(22, '8', 'MURAA', 'AFFARI', NULL, 'MRDC', NULL, NULL, NULL, '192.168.8.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K05910237', 'admin', 'hik12345', 19, 'Sulawesi Utara', 'C', NULL, '2024-08-16 22:36:45', '2024-08-16 22:41:46'),
(23, '10', 'RMS', 'ND6', 'UNILEVER', 'TANGERANG 1', '834783008', NULL, NULL, '192.168.10.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986952', 'admin', 'hik12345', 24, 'Jawa Barat', 'A', NULL, '2024-08-16 22:38:29', '2024-08-16 22:38:29'),
(24, '11', 'RMS', 'NEW INTEGRATED', 'UCI', 'TANGERANG 2', NULL, NULL, NULL, '192.168.11.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K41727357', 'admin', NULL, 16, 'Jawa Barat', 'A', NULL, '2024-08-16 22:39:59', '2024-08-16 22:39:59'),
(25, '12', 'BOOM DONAT', 'INTEGRATED', 'MIX', 'TERNATE', NULL, NULL, NULL, '192.168.12.150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maluku', 'A', NULL, '2024-08-16 22:41:31', '2024-08-16 22:41:31'),
(26, '13', 'RMS', 'INTEGRATED', 'FRI', 'SIDOARJO', NULL, NULL, NULL, '192.168.13.200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 22:42:38', '2024-08-16 22:42:38'),
(27, '13', 'RMS', 'INTEGRATED', 'FRI', 'SIDOARJO', NULL, NULL, NULL, '192.168.13.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 22:43:43', '2024-08-16 22:43:43'),
(28, '14', 'RMS', 'ND6', 'UNILEVER', 'GORONTALO 2', '602141390', NULL, '704 307 732', '192.168.14.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'K53469016', 'admin', 'hik12345', 16, 'Sulawesi Tengah', 'A', NULL, '2024-08-16 22:44:47', '2024-08-17 15:00:17'),
(29, '16', 'RMS', 'ND6', 'NESTLE', 'CIMAHI', '921408576', NULL, NULL, '192.168.16.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986868', 'admin', 'hik12345', 14, 'Jawa Barat', 'E', 'KAMERA NO 12 KOTOR, UPS RUSAK & HDD COMP 1 MATIfdsafdsa fdsa fsda fdasf sdhnjkalf hdsao[ fnkdsla fdkasf kdsa', '2024-08-16 22:46:57', '2024-08-17 13:57:24'),
(30, '17', 'RMS', 'INTEGRATED', 'MIX', 'TERNATE', NULL, NULL, NULL, '192.168.17.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maluku Utara', 'A', NULL, '2024-08-16 22:47:53', '2024-08-16 22:47:53'),
(31, '18', 'BOOM MOTORIST', 'INTEGRATED', NULL, 'BM 5 KEDIRI', NULL, NULL, NULL, '192.168.18.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '222582689', 'admin', 'hik12345', 22, 'Jawa Timur', 'A', NULL, '2024-08-16 22:49:08', '2024-08-16 22:49:08'),
(32, '19', 'MURAA', 'INTEGRATED', NULL, 'MALANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, '2024-08-16 22:49:54', '2024-08-16 22:49:54'),
(33, '20', 'RMS', 'ND6', 'UCI (MIX)', 'SOLO', '925570309', NULL, NULL, '192.168.20.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986850', 'admin', 'hik12345', 18, 'Jawa Tengah', 'A', NULL, '2024-08-16 22:51:21', '2024-08-16 22:51:21'),
(34, '21', 'BSS', 'NEW INTEGRATED', NULL, 'BOJONEGORO', NULL, NULL, NULL, '192.168.21.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jawa Timur', 'A', NULL, '2024-08-16 22:52:03', '2024-08-16 22:52:03'),
(35, '22', 'RMS', 'INTEGRATED', 'MIX', 'MARISA', NULL, NULL, NULL, '192.168.22.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K61438145', 'admin', 'hik12345', 27, 'Sulawesi Utara', 'A', NULL, '2024-08-16 22:53:39', '2024-08-16 22:53:39'),
(36, '23', 'RMS', 'ND6', 'UNILEVER', 'MOJOSARI', '961008015', NULL, NULL, '192.168.23.99/nexdist', NULL, 'it-dept', NULL, 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986856', 'admin', 'hik12345', 16, 'Jawa Timur', 'A', NULL, '2024-08-17 13:40:35', '2024-08-20 01:12:40'),
(37, '24', 'RMS', 'ND6', 'NESTLE', 'SUKABUMI 1', '230373567', NULL, NULL, '192.168.24.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986849', 'admin', 'hik12345', 16, 'Jawa Barat', 'A', NULL, '2024-08-17 13:42:17', '2024-08-17 13:42:17'),
(38, '25', 'RMS', 'ND6', 'UNILEVER', 'CIBADAK (SUKABUMI 2)', '237944265', NULL, NULL, '192.168.25.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986936', 'admin', 'hik12345', 16, 'Jawa Barat', 'A', NULL, '2024-08-20 01:16:31', '2024-08-20 01:16:31'),
(39, '27', 'RMS', 'NEW INTEGRATED', 'HEINZ', 'PATI', '1744062477', NULL, NULL, '192.168.27.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'J66986872', 'admin', 'hik12345', 11, 'Jawa Tengah', 'A', NULL, '2024-08-20 01:19:16', '2024-08-20 01:19:16'),
(40, '28', 'RMS', 'ND6', 'UCI', 'JOGJAKARTA', NULL, NULL, NULL, '192.168.28.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J41680458', 'admin', 'hik12345', 16, 'Jogjakarta', 'A', NULL, '2024-08-20 01:23:28', '2024-08-20 01:23:28'),
(42, '29', 'RMS', 'ND6', 'NESTLE', 'SUMEDANG', '1973600883', NULL, NULL, '192.168.29.99:8080/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986938', 'admin', 'hik12345', 16, 'Jawa Barat', 'A', NULL, '2024-08-20 01:25:12', '2024-08-20 01:25:12'),
(43, '30', 'BCU', 'INTEGRATED', 'MIX', 'GORONTALO', NULL, NULL, NULL, '192.168.30.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sulawesi Utara', 'A', NULL, '2024-08-20 01:27:21', '2024-08-20 01:27:21'),
(44, '31', 'MDU', 'INTEGRATED', 'MIX', 'GORONTALO', NULL, NULL, NULL, '192.168.31.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sulawesi Utara', 'A', NULL, '2024-08-20 01:27:44', '2024-08-20 01:27:44'),
(45, '32', 'MDU', 'INTEGRATED', 'MIX', 'MARISA', NULL, NULL, NULL, '192.168.32.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sulawesi Utara', 'A', NULL, '2024-08-20 01:28:08', '2024-08-20 01:28:08'),
(46, '33', 'RMS', 'ND6', 'NESTLE', 'BANDUNG TOHA', '769723966', NULL, NULL, '192.168.33.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986862', 'admin', 'hik12345', 16, 'Jawa Barat', 'A', NULL, '2024-08-20 01:31:18', '2024-08-20 01:31:18'),
(47, '34', 'RMS', 'ND6', 'UNILEVER', 'WONOAYU', '178893459', NULL, NULL, '192.168.34.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J41680791', 'admin', 'hik12345', 16, 'Jawa Timur', 'A', NULL, '2024-08-20 01:32:09', '2024-08-20 01:32:16'),
(48, '35', 'SUPERKIDS', 'INTEGRATED', 'DULUX', 'JAKARTA BARAT', NULL, NULL, NULL, '192.168.35.100', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J56224224', 'admin', 'hik12345', 15, 'Jakarta', 'A', NULL, '2024-08-20 01:33:55', '2024-08-20 01:33:55'),
(49, '38', 'RMS', 'ND6', 'NESTLE', 'CIANJUR', '753903941', NULL, NULL, '192.168.38.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'J66986859', 'admin', 'hik12345', 15, 'Jawa Barat', 'A', NULL, '2024-08-20 01:35:05', '2024-08-20 01:35:05'),
(50, '39', 'RMS', 'INTEGRATED', NULL, 'BANDUNG KIRCON', NULL, NULL, NULL, '192.168.39.100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AA7074389', 'admin', 'hik12345', 13, 'Jawa Barat', 'A', NULL, '2024-08-20 01:39:10', '2024-08-20 01:39:10'),
(51, '40', 'RMS', 'ND6', 'UCI', 'SAWANGAN', '842197347', NULL, NULL, '192.168.40.99/nexdist', NULL, 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', NULL, NULL, 'K41727394', 'admin', 'hik12345', 24, 'Jawa Barat', 'A', NULL, '2024-08-20 01:41:27', '2024-08-20 01:41:27'),
(52, '41', 'RMS', 'ND6', 'UNILEVER', 'CIPUTAT', '851272077', '815 134 738', '', '192.168.41.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'G72513421', 'admin', 'hik12345', 32, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '42', 'RMS', 'INTEGRATED', 'NESTLE', 'DEPOK 1', '', '', '', '192.168.42.100', '', '', '', '', '', '', '', 'G94736696', 'admin', 'hik12345', 8, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '43', 'RMS', 'ND6', 'UNILEVER', 'LAMONGAN', '671217529', '', '', '192.168.43.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J41680798', 'admin', 'hik12345', 16, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '44', 'SUPERKIDS', 'INTEGRATED', '', 'SUPERKIDS BLITAR', '', '', '', '192.168.44.100', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '45', 'SUPERKIDS', 'INTEGRATED', '', 'SUPERKIDS PASURUAN', '', '', '', '192.168.45.100', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '46', 'RMS', 'ND6', 'UNILEVER', 'LUMAJANG', '565711749', '997 216 822', '', '192.168.46.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J41680859', 'admin', 'hik1345', 16, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '47', 'RMS', 'ND6', 'UNILEVER', 'MALANG SELATAN', '166573780', '', '', '192.168.47.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J41680761', 'admin', 'hik12345', 16, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '48', 'RMS', 'ND6', 'UNILEVER', 'BEKASI 1', '659859146', '518 604 053', '', '192.168.48.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506762', 'admin', 'hik12345', 24, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '49', 'RMS', 'ND6', 'NESTLE', 'MALANG BARAT', '283210934', '1 426 492 319', '', '192.168.49.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J41680676', 'admin', 'hik12345', 16, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '50', 'RDA', 'ND6', 'MIX', 'GORONTALO', '1 823 547 030', '', '84 963 801', '192.168.50.99:8080/nexdist', '', '', '', '', '', '', '', 'J49512759', 'admin', 'hik12345', 16, 'SULAWESI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '51', 'RMS', 'ND6', 'UCI', 'BOGOR 1', '504509012', '457 364 448', '', '192.168.51.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986943', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '52', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'MAROS', '', '', '', '192.168.52.100', '', '', '', '', '', '', '', 'AG2237400', 'admin', 'hik12345', 16, 'SULAWESI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '53', 'RDA', 'NEW INTEGRATED', 'FFI', 'MANADO', '', '', '', '192.168.53.100', '', '', '', '', '', '', '', 'AG2837365', 'admin', 'hik12345', 16, 'SULAWESI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '54', 'RMS', 'ND6', 'PERVETTI', 'DENPASAR', '1 785 404 858', '', '81 708 285', '192.168.54.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K22098236', 'admin', 'hik12345', 16, 'BALI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '55', 'RMS', 'ND6', 'NESTLE (Mix)', 'NEGARA', '730186508', '', '', '192.168.55.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506513', 'admin', 'hik12345', 10, 'BALI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '56', 'RMS', 'ND6', 'NESTLE (Mix)', 'KARANGASEM', '313229761', '', '', '192.168.56.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506500', 'admin', 'hik12345', 11, 'BALI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '57', 'RMS', 'ND6', 'UCI', 'WONOSARI', '684980514', '', '57 982 968', '192.168.57.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986874', 'admin', 'hik12345', 10, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '58', 'RMS', 'ND6', 'UNILEVER', 'MAKASAR', '480086607', '', '', '192.168.58.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K55195482', 'admin', 'hik12345', 16, 'SULAWESI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '59', 'RMS', 'ND6', 'MIX', 'SURABAYA', '917512042', '', '', '192.168.59.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J41680865', 'admin', 'hik12345', 16, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '60', 'RMS', 'ND6', 'UCI', 'DEPOK 2', '205665156', '', '', '192.168.60.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J669868969', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '61', 'RMS', 'ND6', 'UCI', 'JAKARTA TIMUR', '530907521', '', '', '192.168.61.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986860', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '62', 'RMS', 'ND6', 'UNILEVER', 'BOGOR 2', '502065734', '', '', '192.168.62.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K55210471', 'admin', 'hik12345', 24, 'JAWA BARAT', 'E', 'UPS KURANG 1 UNIT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '63', 'RMS', 'ND6', 'NESTLE', 'JAKARTA SELATAN', '921250417', ' ', '', '192.168.63.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K41727429', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '64', 'RMS', 'ND6', 'NESTLE', 'JAMBI', '998431379', '', '66551799', '192.168.64.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986893', 'admin', 'hik12345', 16, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '65', 'RMS', 'ND6', 'NESTLE', 'MUARABUNGO', '911932824', '', '', '192.168.65.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986892', 'admin', 'hik12345', 11, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '66', 'RMS', 'ND6', 'UNILEVER', 'BABELAN', '888181394', '', '56 028 757', '192.168.66.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986915', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '67', 'RMS', 'ND6', 'NESTLE', 'BEKASI 2', '912122890', '', '', '192.168.67.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J33362678', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '68', 'RMS', 'ND6', 'UNILEVER', 'LAMPUNG', '635677477', '', '', '192.168.68.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J33362715', 'admin', 'hik12345', 13, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '69', 'RMS', 'ND6', 'NESTLE', 'SINGARAJA', '689141410', '', '', '192.168.69.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506514', 'admin', 'hik12345', 13, 'BALI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '70', 'RMS', 'INTEGRATED', 'FRI', 'MALANG', '', '', '', '192.168.70.100', '', '', '', '', '', '', '', 'AD0459603', 'admin', 'hik12345', 11, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '70', 'RMS', 'NEW INTEGRATED', 'FRI', 'MALANG', '', '', '', '192.168.70.100', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '71', 'RMS', 'ND6', 'NESTLE', 'PALEMBANG', '144714589', '', '', '192.168.71.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986901', 'admin', 'hik13245', 16, 'SUMATRA', 'E', 'UPS SERVER DI TUKAR DENGAN UPS ADMIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '72', 'RMS', 'ND6', 'NESTLE', 'TULANGBAWANG', '305173690', '', '', '192.168.72.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986865', 'admin', 'hik12345', 14, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '73', 'RMS', 'ND6', 'NESTLE', 'KOTABUMI', '793621575', '', '', '192.168.73.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986853', 'admin', 'hik12345', 11, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '74', 'RMS', 'ND6', 'NESTLE', 'BATURAJA', '730932288', '', '', '192.168.74.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986922', 'admin', 'hik12345', 16, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '76', 'RMS', 'ND6', '', 'TEGAL', '1599394585', '', '84 351 825', '192.168.76.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '77', 'RMS', 'ND6', 'NESTLE', 'BATANG', '152062636', '', '54 638 423', '192.168.77.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506504', 'admin', 'hik12345', 15, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '78', 'RMS', 'ND6', 'NESTLE', 'PURBALINGGA', '308766788', '', '54 717 844', '192.168.78.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K55210401', 'admin', 'hik12345', 12, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '79', 'RMS', 'ND6', 'NESTLE', 'SUBANG', '750974226', '', '54 904 476', '192.168.79.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K55210484', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '80', 'RMS', 'ND6', 'ULI', 'PAMANUKAN 2', '503026545', '', '21 343 331', '192.168.80.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K55210476', 'admin', 'hik12345', 13, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '81', 'RMS', 'ND6', 'NESTLE', 'PAMANUKAN 1', '135769566', '', '55 987 387', '192.168.81.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K10506503', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '82', 'RMS', 'ND6', 'NESTLE', 'CICURUG', '252105225', '', '54 719 184', '192.168.82.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'AD0159628', 'admin', 'hik12345', 15, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '84', 'RMS', 'NEW INTEGRATED', 'UCI', 'BANDUNG BARAT', '', '', '', '192.168.84.100', '', '', '', '', '', '', '', 'AD0459558', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '86', 'RMS', 'ND6', 'UCI', 'BANJARNEGARA', '394960154', '', '', '192.168.86.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K41727514', 'admin', 'hik12345', 12, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '87', 'RMS', 'ND6', 'NESTLE', 'BOGOR 3 (BOGOR BARAT)', '980287297', '', '54 840 631', '192.168.87.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986913', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '89', 'RMS', 'ND6', 'NESTLE', 'SURAKARTA', '847627988', '', '55 511 438', '192.168.89.99:8080/nexdist', '', 'it-dept', 'BOOM26group', 'sysadm', 'BOOM@26group', '', '', 'K10506565', 'admin', 'hik12345', 16, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '90', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'JOGJAKARTA SELATAN', '', '', '', '192.168.90.100', '', '', '', '', '', '', '', 'K41727345', 'admin', 'hik12345', 16, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '91', 'BOOM MOTORIST', '', '', 'BM 7 SOLO', '', '', '', '', '', '', '', '', '', '', '', 'K10506470', 'admin', 'hik12345', 24, 'JAWA TENGAH', 'E', 'SERVER EXTERNAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '92', 'MURAA', 'AFARI', 'MIX', 'GORONTALO', '', '', '', '192.168.92.100', '', '', '', '', '', '', '', 'J74725105', 'admin', 'hik12345', 24, 'SULAWESI', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '93', 'RMS', 'ND6', 'NESTLE', 'LAHAT', '115043521', '', '', '192.168.93.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'AD0459645', 'admin', 'hik12345', 14, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '94', 'RMS', 'ND6', 'NESTLE', 'MEMPAWAH', '828098808', '', '', '192.168.94.99/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'AA9181340', 'admin', 'hik12345', 16, 'KALIMANTAN', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '95', 'RMS', 'NEW INTEGRATED', 'WALLS', 'MUARABUNGO 2', '', '', '', '192.168.95.100', '', '', '', '', '', '', '', '', '', '', 0, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '96', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'BALARAJA', '', '', '', '192.168.96.100', '', '', '', '', '', '', '', 'L22431180', 'admin', 'hik12345', 21, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '97', 'RDA', 'NEW INTEGRATED', 'FF', 'PEKANBARU', '', '', '', '192.168.97.100', '', '', '', '', '', '', '', 'AA7074371', 'admin', 'hik12345', 16, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '98', 'RDA', 'NEW INTEGRATED', 'FF', 'PADANG', '', '', '', '192.168.98.100', '', '', '', '', '', '', '', 'AA7074401', 'admin', 'hik12345', 16, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '99', 'RMS', 'NEW INTEGRATED', 'ULI', 'MARISA 2', '', '', '', '192.168.99.100', '', '', '', '', '', '', '', '', '', '', 0, 'GORONTALO', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '100', 'RMS', 'ND6', 'UCI', 'BLITAR', '457173009', '', '', '192.168.100.100/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'C25300430', 'admin', 'hik12345', 17, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '101', 'RMS', 'NEW INTEGRATED', 'HEINZ', 'MAGELANG', '', '', '', '192.168.101.100', '', '', '', '', '', '', '', 'AA7074367', 'admin', 'hik12345', 16, 'JAWA TENGAH', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '103', 'RDA', 'NEW INTEGRATED', 'FRI', 'GRESIK', '', '', '', '192.168.103.100', '', '', '', '', '', '', '', 'AA7074383', 'admin', 'hik12345', 11, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '104', 'RDA', 'NEW INTEGRATED', 'FRI', 'JEMBER', '', '', '', '192.168.104.100', '', '', '', '', '', '', '', 'K80583617', 'admin', 'hik12345', 13, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '105', 'RDA', 'NEW INTEGRATED', 'FRI', 'BANYUWANGI', '', '', '', '192.168.105.100', '', '', '', '', '', '', '', 'K80583539', 'admin', 'hik12345', 13, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '106', 'RDA', 'NEW INTEGRATED', 'FFI', 'KOTABUMI', '', '', '', '192.168.106.100', '', '', '', '', '', '', '', 'AD045917', 'admin', 'hik12345', 13, 'SUMATRA', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '107', 'RDA', 'ND6', 'KCSI', 'CIANJUR', '459242157', '', '70 205 434', '192.168.107.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0459552', 'admin', 'hik12345', 14, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '108', 'RDA', 'ND6', 'KCSI', 'SUKABUMI', '1455420019', '', '70 211 789', '192.168.108.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0459579', 'admin', 'hik12345', 13, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '109', 'RDA', 'ND6', 'HEINZ', 'BALARAJA', '1420160231', '', '70 145 355', '192.168.109.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0459654', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '110', 'RDA', 'ND6', 'HEINZ', 'JAKARTA BARAT 2', '1362033321', '', '70 216 199', '192.168.110.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0742143', 'admin', 'hik12345', 15, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '111', 'RDA', 'ND6', 'HEINZ', 'JAKARTA SELATAN', '1393706790', '', '70 290 705', '192.168.111.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0459601', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '112', 'RDA', 'ND6', 'HEINZ', 'SERANG', '1242306904', '', '70 293 900', '192.168.112.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'K70935140', 'admin', 'hik12345', 14, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '113', 'RDA', 'ND6', 'UCI', 'SUMEDANG', '1016168246', '', '70 519 176', '192.168.113.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0458589', 'admin', 'hik12345', 14, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '114', 'RDA', 'ND6', 'HEINZ', 'TANGERANG SELATAN', '391040125', '', '70 409 010', '192.168.114.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD0742144', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '115', 'RDA ', 'ND6', 'HEINZ', 'RANGKASBITUNG', '1599822189', '', '72 238 365', '192.168.115.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'K70935149', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '116', 'RDA', 'ND6', '', 'METRO', '646 417 800', '', '77 332 280', '192.168.116.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'rdasysad', 'Rdasa123!', '', '', 'AD1233030', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '117', 'RDA', 'ND6', '', 'TULANGBAWANG', '1 585 032 498', '', '78 059 197', '192.168.117.99:8080/nexdist', '', '', '', '', '', '', '', 'AD1233164', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '122', 'HRA', 'BOZNET', '', 'MALANG', '', '', '', 'CLOUD', '', '', '', '', '', '', '', 'AD0459610', 'admin', 'hik12345', 11, 'JAWA TIMUR', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '123', 'MURAA', 'AFARI', NULL, 'BORNEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AF3814309\r\nAF3814361\r\nAF3814527', NULL, NULL, 162316, 'JAWA TIMUR', 'A', NULL, NULL, NULL),
(127, '131', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'SERANG', '', '', '', '192.168.131.100', '', '', '', '', '', '', '', 'AD0741947', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '132', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'BANJARSARI', '', '', '', '192.168.132.100', '', '', '', '', '', '', '', 'K70935027', 'admin', 'hik12345', 16, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '133', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'INDRAMAYU', '', '', '', '192.168.133.100', '', '', '', '', '', '', '', 'AD0742698', 'admin', 'hik12345', 13, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '134', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'LEBAK', '', '', '', '192.168.134.100', '', '', '', '', '', '', '', 'J66986858', 'admin', 'hik12345', 15, 'JAWA BARAT', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '135', 'RMS', 'NEW INTEGRATED', 'NESTLE', 'SEPATAN', '', '', '', '192.168.135.100', '', '', '', '', '', '', '', 'J41680927', 'admin', 'hik12345', 16, 'BANTEN', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '136', 'RMS', 'NEW INTEGRATED', 'WALLS', 'LINGGAU', '', '', '', '192.168.136.100', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '137', 'RMS', 'ND6', '', 'CIREBON', '1 410 899 204', '', '77 329 372', '192.168.137.99:8080/nexdist', '', '', '', '', '', '', '', 'AF783049', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '138', 'RMS', 'ND6', '', 'BLORA', '426 039 444', '', '77 547 290', '192.168.138.99:8080/nexdist', '', '', '', '', '', '', '', 'AF7383053', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '139', 'RMS', 'ND6', '', 'GARUT', '1 864 438 969', '', '77 618 039', '192.168.139.99:8080/nexdist', '', '', '', '', '', '', '', 'AF7383052', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '140', 'RMS', 'ND6', '', 'TASIKMALAYA', '1 361 985 946', '', '78 048 734', '192.168.140.99:8080/nexdist', '', '', '', '', '', '', '', 'AF7383039', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '141', 'RMS', 'ND6', '', 'RANTAU PRAPAT', '1 035 657 152', '', '77 734 049', '192.168.141.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '142', 'RMS', 'ND6', '', 'ACEH 1', '1 662 762 803', '', '77 684 622', '192.168.142.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '143', 'RMS', 'ND6', '', 'DEPOK 4', '1 280 227 245', '', '78 046 727', '192.168.143.99:8080/nexdist', '', '', '', '', '', '', '', 'AF738070', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '144', 'RMS', 'ND6', '', 'TANGERANG 3', '1 832 100 886', '', '78 051 799', '192.168.144.99:8080/nexdist', '', '', '', '', '', '', '', 'AD0742138', 'admin', 'hik12345', 16, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '145', 'RMS', 'ND6', '', 'KARO', '1 720 251 644', '', '78 207 558', '192.168.145.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '146', 'RMS', 'ND6', '', 'DUMAI', '690 819 865', '', '78 139 800', '192.168.146.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '147', 'RMS', 'ND6', '', 'ROKAN HILIR', '1 250 298 066', '', '80 011 422', '192.168.147.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '148', 'RMS', 'ND6', '', 'MEDAN', '1 521 250 238', '', '80 889 641', '192.168.148.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '149', 'RMS', 'ND6', '', 'SUMBAWA', '1 611 995 915', '', '80 763 548', '192.168.149.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '150', 'RMS', 'ND6', '', 'PALEMBANG 2', '1 293 019 194', '', '81 622 416', '192.168.150.99:8080/nexdist', '', '', '', '', '', '', '', 'AD6927509', 'admin', 'hik12345', 14, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '151', 'RMS', 'ND6', '', 'PRABUMULIH', '1 576 464 514', '', '82 155 159', '192.168.151.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '152', 'RMS', 'ND6', '', 'SEKAYU', '1 238 828 051', '', '81 564 949', '192.168.152.99:8080/nexdist', '', '', '', '', '', '', '', 'K70935142', 'admin', 'hik12345', 14, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '153', 'RMS', 'ND6', '', 'TANGERANG 4', '1 210 589 300', '', '81 858 536', '192.168.153.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '154', 'RMS', 'ND6', '', 'ACEH 2', '1 224 241 059', '', '21 950 171', '192.168.154.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '155', 'RMS', 'ND6', '', 'LOMBOK', '1 290 870 794', '', '83 744 783', '192.168.155.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '156', 'RMS', 'ND6', '', 'TANAH LAUT', '1 330 095 381', '', '84 640 284', '192.168.156.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '157', 'RMS', 'ND6', '', 'MUARABUNGO 3', '1 964 148 065', '', '85 062 856', '192.168.157.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '158', 'RMS', 'ND6', '', 'SIBUHUAN', '', '', '', '192.168.158.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '159', 'RMS', 'ND6', '', 'BANJARBARU', '', '', '', '192.168.159.99:8080/nexdist', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '254', '', '', '', 'RUKO BIZZPAK PAKIS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'A', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '', 'RMS', 'ND6', 'FRI', 'JAKARTA TIMUR 2', '320286682', '', '54 839 371', '192.168.85.99:8080/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'K70935142', 'admin', 'hik12345', 11, 'JAWA BARAT', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '', 'RMS', 'NEW INTEGRATED', 'FRI + PERFETI', 'SURABAYA 2', '', '', '', '192.168.102.100', '', '', '', '', '', '', '', 'AD0459595', 'admin', 'hik12345', 16, 'JAWA TIMUR', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '', 'RDA', 'INTEGRATED', 'KLATU', 'JAKARTA BARAT 2', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA BARAT', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '', 'RMS', 'ND6', 'NESTLE', 'PAGELARAN', '', '', '54 898 107', 'vm53.nexcloud.id/nexdist', '', 'it-dept', 'BOOM26group!', 'sysadm', 'BOOM@26group', '', '', 'J66986858', 'admin', 'hik12345', 13, 'JAWA TIMUR', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '', 'RDA', 'INTEGRATED', 'COU COU', 'MALANG', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA BARAT', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '', 'RMS', 'INTEGRATED', '', 'KUPANG', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'NTT', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '', 'RMS', 'INTEGRATED', '', 'PROBOLINGGO', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA TENGAH', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '', 'RMS', 'INTEGRATED', '', 'MOJOKERTO', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'JAWA TIMUR', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '', 'RMS', 'INTEGRATED', '', 'TOMOHON', '', '', '', 'DUMMY', '', '', '', '', '', '', '', '', '', '', 0, 'SULAWESI', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '', 'RMS', 'INTEGRATED', 'MIX', 'SEMARANG', '', '', '', 'DUMMY', '', '', '', '', '', '', '', 'J41680927', 'admin', 'hik12345', 12, 'JAWA TENGAH', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '', 'RMS', 'INTEGRATED', '', 'PEMALANG', '', '', '', 'DUMMY', '', '', '', '', '', '', '', 'K41727353', 'admin', 'hik12345', 16, 'JAWA TENGAH', 'C', 'UPS SERVER DI TUKAR DENGAN UPS ADMIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '', 'RMS', 'INTEGRATED', 'MIX', 'GORONTALO 1', '', '', '', '192.168.8.100', '', '', '', '', '', '', '', 'K05910237', 'admin', 'hik12345', 19, 'SULAWESI', 'C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '', 'INDOPRIMA', 'INTEGRATED', 'MIX', 'GORONTALO', '', '', '', '192.168.50.100', '', '', '', '', '', '', '', 'J49512759', 'admin', 'hik12345', 16, 'SULAWESI', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '', 'HRA', 'BOZNET', '', 'SURABAYA', '', '', '', 'CLOUD', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '', 'BOOM MOTORIST', '', '', 'BM 6 SEMARANG', '', '', '', '', '', '', '', '', '', '', '', 'G39754236', 'admin', 'hik12345', 16, 'JAWA TENGAH', 'A', 'SERVER EXTERNAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, '', 'BOOM CAFE', '', '', 'BLITAR', '', '', '', '', '', '', '', '', '', '', '', 'J66986864', 'admin', 'hik12345', 8, 'JAWA TENGAH', 'A', 'SERVER EXTERNAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-08-15 18:31:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NdOYUUbTeQ', NULL, '2024-08-15 18:31:16', '2024-08-15 18:31:16'),
(2, 'Grover Theo', 'grovertheo@gmail.com', NULL, '$2y$10$YzvTwwolwPGRREp/5RJizO1OLV/VhpC/r8wZzg3I.4JgdGjBFoWse', 'EYNPh83amou96v4jdunCcKfE8lOxZD9YVEvnEnNuBFKqIqTAkIUFuXWWBYWW', NULL, '2024-08-15 19:05:01', '2024-08-27 01:01:02'),
(3, 'IT Vicky', 'vicky.mail@gmail.com', NULL, '$2y$10$MHnxZMA3BJ1zl1mAn04N9uAsWR0/fqmUo03DWv5gI/I0/ASwfkKDq', NULL, NULL, '2024-08-26 23:31:42', '2024-08-27 01:08:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_cctv`
--
ALTER TABLE `t_cctv`
  ADD PRIMARY KEY (`fc_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_cctv`
--
ALTER TABLE `t_cctv`
  MODIFY `fc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
