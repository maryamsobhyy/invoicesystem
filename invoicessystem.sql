-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 07:10 PM
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
-- Database: `invoicessystem`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, '54376', '2024-02-04', '2024-02-19', 'البطاقات', 1, 1000.00, 100.00, 0.00, 5.00, '5%', 105.00, 'غير مدفوعة', 2, NULL, NULL, '2024-02-06 10:49:54', '2024-02-04 11:57:41', '2024-02-06 10:49:54'),
(14, 'e65yvvb', '2024-02-04', '2024-02-12', 'القروض البنكيه', 2, 20000.00, 200.00, 0.00, 10.00, '5%', 210.00, 'مدفوعة جزئيا', 3, NULL, '2024-02-06', NULL, '2024-02-04 12:06:15', '2024-02-07 15:40:27'),
(15, 'e7uhg', '2024-02-04', '2024-02-18', 'البطاقات', 1, 4000.00, 400.00, 0.00, 40.00, '10%', 440.00, 'غير مدفوعه', 2, NULL, NULL, '2024-02-07 15:40:51', '2024-02-04 12:29:15', '2024-02-07 15:40:51'),
(16, '7fe5', '2024-02-04', '2024-02-18', 'البطاقات', 1, 5000.00, 500.00, 0.00, 25.00, '5%', 525.00, 'مدفوعة', 1, NULL, '2024-02-12', NULL, '2024-02-04 12:33:53', '2024-02-07 15:39:55'),
(17, '7fe5', '2024-02-04', '2024-02-18', 'البطاقات', 1, 5000.00, 500.00, 0.00, 25.00, '5%', 525.00, 'مدفوعة', 1, NULL, '2024-02-14', NULL, '2024-02-04 12:34:26', '2024-02-07 07:32:58'),
(18, 'enki676', '2024-02-04', '2024-02-20', 'البطاقات', 1, 1000.00, 111.00, 0.00, 5.55, '5%', 116.55, 'مدفوعة', 1, NULL, '2024-02-19', NULL, '2024-02-04 17:46:42', '2024-02-07 07:33:21'),
(19, 'hfjs7d', '2024-02-04', '2024-02-12', 'البطاقات', 1, 2944.00, 4.00, 0.00, 0.40, '10%', 4.40, 'مدفوعة جزئيا', 3, NULL, '2024-02-12', NULL, '2024-02-04 17:48:04', '2024-02-07 15:34:18'),
(21, 'e5ybj', '2024-02-04', '2024-02-12', 'البطاقات', 1, 66.00, 7.00, 0.00, 0.35, '5%', 7.35, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-04 19:52:41', '2024-02-04 19:52:41'),
(22, '6mnjh', '2024-02-04', '2024-02-13', 'البطاقات', 1, 6.00, 1.00, 0.00, 0.05, '5%', 1.05, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-04 19:55:49', '2024-02-04 19:55:49'),
(25, '66fr', '2024-02-05', '2024-02-12', 'البطاقات', 1, 6564.00, 654.00, 0.00, 32.70, '5%', 686.70, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:04:29', '2024-02-05 11:04:29'),
(26, '756fd', '2024-02-05', '2024-02-12', 'البطاقات', 1, 1000.00, 100.00, 0.00, 10.00, '10%', 110.00, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:05:17', '2024-02-05 11:05:17'),
(27, '675', '2024-02-05', '2024-02-06', 'البطاقات', 1, 1000.00, 10.00, 0.00, 1.00, '10%', 11.00, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:09:15', '2024-02-05 11:09:15'),
(28, 'f', '2024-02-05', '2024-02-11', 'البطاقات', 1, 1000.00, 10.00, 0.00, 0.50, '5%', 10.50, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:22:12', '2024-02-05 11:22:12'),
(29, 'jj', '2024-02-05', '2024-02-12', 'البطاقات', 1, 2000.00, 20.00, 0.00, 2.00, '10%', 22.00, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:23:47', '2024-02-05 11:23:47'),
(30, '6f', '2024-02-05', '2024-02-12', 'البطاقات', 1, 5000.00, 500.00, 0.00, 25.00, '5%', 525.00, 'غير مدفوعة', 2, NULL, NULL, '2024-02-07 15:35:15', '2024-02-05 11:24:51', '2024-02-07 15:35:15'),
(31, '444', '2024-02-05', '2024-02-11', 'البطاقات', 1, 77.00, 7.00, 0.00, 0.35, '5%', 7.35, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-05 11:32:10', '2024-02-06 07:57:25'),
(32, 'bb', '2024-02-05', '2024-02-12', 'البطاقات', 1, 44.00, 4.00, 0.00, 0.40, '10%', 4.40, 'غير مدفوعه', 2, NULL, NULL, NULL, '2024-02-05 20:17:56', '2024-02-06 12:12:29'),
(33, '76ujhh', '2024-02-06', '2024-02-14', 'البطاقات', 1, 55.00, 6.00, 0.00, 0.60, '10%', 6.60, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-06 07:24:47', '2024-02-06 07:24:47'),
(34, '5fdxv', '2024-02-06', '2024-02-13', 'البطاقات', 1, 666.00, 55.00, 0.00, 5.50, '10%', 60.50, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-06 10:05:19', '2024-02-06 10:05:19'),
(35, '5fdcc', '2024-02-06', '2024-02-07', 'البطاقات', 1, 555.00, 55.00, 0.00, 5.50, '10%', 60.50, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-06 10:35:23', '2024-02-06 10:35:23'),
(36, '7', '2024-02-06', '2024-02-18', 'البطاقات', 1, 555.00, 55.00, 0.00, 5.50, '10%', 60.50, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-06 20:45:36', '2024-02-06 20:45:36'),
(37, '6fb5', '2024-02-07', '2024-02-13', 'القروض البنكيه', 2, 10000.00, 100.00, 0.00, 10.00, '10%', 110.00, 'غير مدفوعة', 2, NULL, NULL, NULL, '2024-02-07 15:32:58', '2024-02-07 15:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_attachments`
--

CREATE TABLE `invoices_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `Created_by` varchar(999) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_attachments`
--

INSERT INTO `invoices_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(12, 'images (1).jpg', '444', 'maryam', 31, '2024-02-05 11:42:44', '2024-02-06 07:57:25'),
(13, 'images.jpg', '5fdxv', 'maryam', 34, '2024-02-06 10:05:19', '2024-02-06 10:05:19'),
(14, 'Screenshot (1).png', 'e65yvvb', 'maaaryam@gmail.com', 14, '2024-02-07 15:34:49', '2024-02-07 15:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `Section` varchar(999) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(10, 12, '54376', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'Maryam', '2024-02-04 11:57:41', '2024-02-04 11:57:41'),
(12, 14, 'e65yvvb', 'القروض البنكيه', '2', 'مدفوعه جزئيا', 3, NULL, NULL, 'maryam', '2024-02-04 12:06:15', '2024-02-07 15:38:59'),
(13, 15, 'e7uhg', 'البطاقات', '1', 'غير مدفوعه', 2, NULL, NULL, 'Maryam', '2024-02-04 12:29:15', '2024-02-06 20:50:03'),
(14, 16, '7fe5', 'البطاقات', '1', ' مدفوعه', 1, NULL, NULL, 'Maryam', '2024-02-04 12:33:53', '2024-02-07 15:37:02'),
(15, 17, '7fe5', 'البطاقات', '1', ' مدفوعه', 1, NULL, NULL, 'Maryam', '2024-02-04 12:34:26', '2024-02-06 20:47:32'),
(16, 18, 'enki676', 'البطاقات', '1', ' مدفوعه', 1, NULL, NULL, 'maryam', '2024-02-04 17:46:42', '2024-02-06 12:35:37'),
(17, 19, 'hfjs7d', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'Menna', '2024-02-04 17:48:04', '2024-02-04 17:48:04'),
(20, 21, 'e5ybj', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'Menna', '2024-02-04 19:52:41', '2024-02-04 19:52:41'),
(21, 22, '6mnjh', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'Menna', '2024-02-04 19:55:49', '2024-02-04 19:55:49'),
(24, 25, '66fr', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:04:29', '2024-02-05 11:04:29'),
(25, 26, '756fd', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:05:17', '2024-02-05 11:05:17'),
(26, 27, '675', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:09:15', '2024-02-05 11:09:15'),
(27, 28, 'f', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:22:12', '2024-02-05 11:22:12'),
(28, 29, 'jj', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:23:47', '2024-02-05 11:23:47'),
(29, 30, '6f', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:24:51', '2024-02-05 11:24:51'),
(30, 31, '444', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-05 11:32:10', '2024-02-06 07:57:25'),
(32, 32, 'bb', 'البطاقات', '1', 'غير مدفوعه', 2, NULL, NULL, 'maryam', '2024-02-05 20:17:56', '2024-02-06 12:12:29'),
(33, 33, '76ujhh', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-06 07:24:48', '2024-02-06 07:24:48'),
(34, 34, '5fdxv', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-06 10:05:19', '2024-02-06 10:05:19'),
(38, 35, '5fdcc', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-06 10:35:23', '2024-02-06 10:35:23'),
(45, 14, 'e65yvv', 'البطاقات', '1', 'مدفوعة جزئيا', 3, '2024-02-05', NULL, 'maryam', '2024-02-06 12:03:14', '2024-02-06 12:03:14'),
(46, 18, 'enki6', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-05', NULL, 'maryam', '2024-02-06 12:22:43', '2024-02-06 12:22:43'),
(47, 17, '7fe5', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-05', NULL, 'maryam', '2024-02-06 12:42:58', '2024-02-06 12:42:58'),
(48, 36, '7', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'maryam', '2024-02-06 20:45:37', '2024-02-06 20:45:37'),
(49, 16, '7fe5', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-18', NULL, 'maaaryam@gmail.com', '2024-02-07 07:32:09', '2024-02-07 07:32:09'),
(50, 17, '7fe5', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-14', NULL, 'maaaryam@gmail.com', '2024-02-07 07:32:58', '2024-02-07 07:32:58'),
(51, 18, 'enki676', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-19', NULL, 'maaaryam@gmail.com', '2024-02-07 07:33:21', '2024-02-07 07:33:21'),
(52, 14, 'e65yvvb', 'البطاقات', '1', 'مدفوعة جزئيا', 3, '2024-02-13', NULL, 'maaaryam@gmail.com', '2024-02-07 07:33:37', '2024-02-07 07:33:37'),
(53, 37, '6fb5', 'القروض البنكيه', '2', 'غير مدفوعة', 2, NULL, NULL, 'maaaryam@gmail.com', '2024-02-07 15:32:58', '2024-02-07 15:32:58'),
(54, 19, 'hfjs7d', 'البطاقات', '1', 'مدفوعة جزئيا', 3, '2024-02-12', NULL, 'maaaryam@gmail.com', '2024-02-07 15:34:18', '2024-02-07 15:34:18'),
(55, 16, '7fe5', 'البطاقات', '1', 'مدفوعة', 1, '2024-02-12', NULL, 'maaaryam@gmail.com', '2024-02-07 15:39:55', '2024-02-07 15:39:55'),
(56, 14, 'e65yvvb', 'القروض البنكيه', '2', 'مدفوعة جزئيا', 3, '2024-02-06', NULL, 'maaaryam@gmail.com', '2024-02-07 15:40:27', '2024-02-07 15:40:27');

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
(10, '2023_12_23_190838_create_permission_tables', 1),
(29, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(30, '2019_08_19_000000_create_failed_jobs_table', 2),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(32, '2023_10_12_093636_create_users_table', 2),
(33, '2023_11_26_185228_create_sections_table', 2),
(34, '2023_11_28_153306_create_invoices_table', 2),
(35, '2023_12_08_221905_create_products_table', 2),
(36, '2023_12_09_181511_create_invoices_details_table', 2),
(37, '2023_12_09_182937_create_invoices_attachments_table', 2),
(38, '2023_12_31_132542_create_permission_tables', 2),
(39, '2024_02_03_185027_create_notifications_table', 2),
(40, '2024_02_03_202415_update_users_table', 3);

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
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00d5b08b-1f24-4226-859f-e0e2269bcf46', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:57:51', '2024-02-07 15:35:05'),
('015b7371-8ec2-400f-b219-a5300dca4ebf', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:18:37', '2024-02-07 15:35:05'),
('02188bdd-cf67-4c74-b2ff-ecdff48f9f45', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-06 11:05:56', '2024-02-06 12:36:37'),
('021a6fac-b1e2-4342-aa21-0ff20cecf8a4', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:20:04', '2024-02-07 15:35:05'),
('027e1bb2-d65e-4707-9e60-ebd60d0e050d', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645  \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:25:46', '2024-02-06 21:25:46'),
('02fd5025-0231-474d-b83c-9f7cddfcb819', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-04 19:23:01', '2024-02-04 17:48:09', '2024-02-04 19:23:01'),
('032ecc37-5b33-436d-8338-f72c781b1783', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:26:29', '2024-02-06 21:26:29'),
('03d18484-c64f-4afe-a090-7977b6f3fa54', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-04 17:46:49', '2024-02-06 12:36:37'),
('046f9169-45ad-4f68-9c77-0df355e18278', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:19:07', '2024-02-07 15:35:05'),
('049122e5-6528-4bdc-92c9-5a9580a84259', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-06 12:33:30', '2024-02-06 12:36:37'),
('049ac32b-1074-49b2-a6ad-d3c2b8351e84', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:16:57', '2024-02-07 15:35:05'),
('058fa573-d57f-4bd8-be01-98df56e82e52', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 12:03:16', '2024-02-07 15:35:05'),
('06254fb5-6f58-4875-a9ef-a0e7615a04b2', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-06 12:22:44', '2024-02-06 12:36:37'),
('06fe5ed0-f192-4578-b3f1-57ed4b09499c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:47:19', '2024-02-07 15:35:05'),
('092a085f-679e-4cfe-b860-de71ac6f6e4f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-06 11:07:21', '2024-02-06 12:36:37'),
('0a9f1744-809c-4fe4-847c-e774d4dcebbb', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:41:45', '2024-02-07 15:35:05'),
('0bc0e878-cbad-4029-87ec-56feb1c6bdbd', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:11:49', '2024-02-06 11:11:49'),
('0d2345ad-665a-4654-bfc8-fb877f2667bc', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:43:04', '2024-02-06 12:42:58', '2024-02-06 12:43:04'),
('0d9775a9-056c-4a9c-a6f5-a7f9ae00c709', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:42:43', '2024-02-06 12:35:58'),
('0df57ea7-566d-41a9-b892-e2fe7612c9ad', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:45', '2024-02-06 20:29:45'),
('0f37de14-0b03-4b50-89eb-40fcf1710be8', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:17:36', '2024-02-07 15:35:05'),
('10ba92e3-97d5-4068-b2a5-66db7805c70c', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:37', '2024-02-07 15:35:37'),
('1154cc43-7fc2-4edd-9d74-bc5b63822ec7', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:49:22', '2024-02-06 12:35:57'),
('1228ddc9-6870-4fcd-9f0a-45704352c028', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:42:39', '2024-02-06 12:41:55', '2024-02-06 12:42:39'),
('127912f3-3fd8-4350-8577-97c25d9aa2dd', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:27', '2024-02-07 15:35:27'),
('12995fe0-326c-4a9d-b9e1-e486893cbd60', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:34:18', '2024-02-07 15:34:18'),
('12b41811-82cc-494f-80b7-f54e7d63addc', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 20:12:32', '2024-02-07 15:35:05'),
('12d6faec-b379-495f-a85e-ad3e937e8c5b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:41:44', '2024-02-07 15:35:05'),
('137e8859-57d0-43e2-9fa7-f27e106c8afd', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:27', '2024-02-07 15:40:27'),
('1401b9bc-a9cd-49a8-8319-5c0c63838906', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:50:23', '2024-02-07 15:35:05'),
('141ee0b0-945b-459b-ae46-fd167dc90542', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:50:18', '2024-02-07 15:35:05'),
('146596d0-cfaf-4fa9-8be5-c3c26fc3d43f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:44:36', '2024-02-07 15:35:05'),
('14a8ead4-aced-4346-a984-3b9c3e266b88', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:05', '2024-02-06 19:58:03', '2024-02-07 15:35:05'),
('165b9e44-9c1a-4b42-a31d-9a975ea5fb9a', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:19:21', '2024-02-06 21:19:21'),
('16d0a301-7e79-47ab-a8b2-89efef396d83', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:17:38', '2024-02-07 15:35:06'),
('16d65748-70f6-4275-a8dc-c4b428721d20', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:32:12', '2024-02-07 07:32:12'),
('176b90a0-7b24-4072-9953-7d33320a3a67', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:11:48', '2024-02-06 12:35:58'),
('17e8bbc3-f4b0-40c0-b99d-c366cea16447', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:24:07', '2024-02-06 21:24:07'),
('188e5490-09a5-419a-83fc-ea9753bdbaf6', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:26:29', '2024-02-06 21:26:29'),
('19914209-7ae0-4d74-bda9-85d9077134ba', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:37', '2024-02-06 12:35:37', '2024-02-06 12:36:37'),
('19d591fb-7373-4c0d-a506-371de58501fe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:57:49', '2024-02-07 15:35:06'),
('19d82042-3f09-4402-9c03-422aa1754498', 'App\\Notifications\\changepayment', 'App\\Models\\User', 6, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:28', '2024-02-07 15:40:28'),
('1b0a7753-7af9-4bec-b43f-8ba47ae5b4d8', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:19:20', '2024-02-06 21:19:20'),
('1b2f59e7-4770-4bb8-a4e7-9f30b98cbe9e', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:31', '2024-02-06 21:20:31'),
('1b6e366c-da02-4adf-a83b-f5c2a25ef933', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:20:44', '2024-02-07 15:35:06'),
('1c051a2a-5f67-41c2-b9bc-fa110020af2c', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:21', '2024-02-07 15:38:21'),
('1cbb8838-ba48-434a-8e35-b6b7b9fe3573', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:11:51', '2024-02-06 11:11:51'),
('1cc7b656-8608-4c7e-906a-48c1590ef7ec', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:35', '2024-02-07 15:36:35'),
('1d13b439-163e-4db5-8813-4916980153de', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:46:55', '2024-02-07 15:35:06'),
('1da85f4b-d1d4-465e-ae58-ed1807cbca65', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:12:00', '2024-02-06 12:35:58'),
('1e702610-01cb-4728-83a9-a4e07d6b3a4f', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 07:55:22', '2024-02-05 11:04:32', '2024-02-06 07:55:22'),
('1efbb9da-5fdd-40dd-a7e5-f9d93563ed00', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:47:01', '2024-02-07 15:35:06'),
('1efd9f59-6090-48a1-88e3-ff2f546e7b86', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:48', '2024-02-06 12:36:38'),
('1f5b14f4-5966-4d75-be27-75a9af2acd79', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:12', '2024-02-06 12:36:38'),
('1fcc50c9-b7e5-4c48-b78d-609de787b99c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:55', '2024-02-06 12:36:38'),
('2382e12b-4aec-4526-afc0-ca4d89abd925', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:04:39', '2024-02-06 20:04:39'),
('23931d05-986a-47bd-acf3-016c10e0d0f5', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:06:16', '2024-02-06 20:06:16'),
('23956974-0e5c-415d-b7b9-de40fa661bba', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:58:28', '2024-02-07 15:35:06'),
('23eb596f-427d-43d0-8f1f-0d2d5833b6de', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:42:08', '2024-02-07 15:42:08'),
('2504e2a4-0705-44dc-85c1-835a9c338842', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:06:22', NULL),
('25a49929-9259-4490-9a18-c9c779d2b9f0', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 12:31:21', '2024-02-06 12:36:38'),
('264f212a-ffe7-4541-befc-f6f80150eb56', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:33:22', '2024-02-07 07:33:22'),
('268d9b59-b15b-450d-87e7-b5b83a873485', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:33:53', '2024-02-07 15:35:06'),
('2805edc3-ed21-4b28-90ae-3a4b41895caf', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:24:05', '2024-02-06 21:24:05'),
('28100bfc-2a58-4cf6-8658-a2aa0f651e53', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:52:29', '2024-02-06 11:52:29'),
('285b3287-98c8-43a1-8bcc-b4f43f70183e', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:28', '2024-02-07 15:35:28'),
('286835f2-7924-40aa-8423-68cc83110e6f', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:48', '2024-02-06 20:29:48'),
('28784594-cf4b-48f0-82ee-dd4d3571e11f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:51:50', '2024-02-07 15:35:06'),
('28f4a172-4346-478f-9c37-1f31c557d9a0', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:20:13', '2024-02-07 15:35:06'),
('2967d558-6c7a-4caa-8f75-a303aa2ef3f3', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:29', '2024-02-07 15:41:29'),
('2981b4da-11d9-4fcd-867f-ce2d36addcf7', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:34:12', '2024-02-07 15:35:06'),
('2ae042d1-45c2-4878-af5c-b40e95fe1ecd', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":36,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 20:45:51', '2024-02-06 20:45:51'),
('2ae9d567-8397-41c2-831b-52f92589c349', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:04:53', '2024-02-06 12:36:38'),
('2afa2026-7e31-48dc-830e-313ac2e4f295', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:12:02', '2024-02-06 11:12:02'),
('2afec0f2-7ace-4835-95f5-406e230b8fd8', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:39:00', '2024-02-07 15:39:00'),
('2b4887bf-4424-43b4-b3da-b55f2e0a3c94', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:46:43', '2024-02-07 15:35:06'),
('2c3420b4-12ab-4763-9f43-e00f7dae64d1', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:42:09', '2024-02-07 15:42:09'),
('2c5693b0-62cc-4690-9be9-5b0156760506', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:32:10', '2024-02-07 07:32:10'),
('2c6dd639-274f-4b17-8eba-01488bbedc90', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":36,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 20:45:52', '2024-02-06 20:45:52'),
('2cb2f5fd-8e65-4e19-9bd5-cce1b8da6a0d', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:37', '2024-02-07 15:35:37'),
('2cb35bdf-2f87-469b-9352-71a95d2096cb', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:18:16', '2024-02-06 12:11:57', '2024-02-06 12:18:16'),
('2db42065-f269-41e3-97ba-ce3cfb899dbe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:06:10', '2024-02-06 12:36:38'),
('2edf1c71-69b3-430a-b147-1f70a73149cd', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:26:06', '2024-02-06 11:26:06'),
('2f089e78-4ba8-4aa8-9596-5b4620b4da65', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 12:35:22', '2024-02-06 12:36:38'),
('2f228bd5-1f27-4526-bf15-0cb436a2e3b1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:12:40', '2024-02-07 15:35:06'),
('3110b184-14b9-4248-b3fd-e831467c9343', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:50:21', '2024-02-07 15:35:06'),
('320b3e87-7fa3-4183-bac6-4c03202ee860', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:50:17', '2024-02-06 20:50:17'),
('321137f7-faf0-4380-88fd-11725e2d85bb', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 20:55:29', '2024-02-06 20:55:29'),
('33393c95-9863-4da7-9c0c-49fda1325f47', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:12:34', '2024-02-07 15:35:06'),
('33587101-380b-4154-abfd-6c06b428210b', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 10:35:52', '2024-02-06 10:35:52'),
('344ae4a6-ec89-4537-a177-c13977539bb9', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:33:23', '2024-02-07 07:33:23'),
('364e78e8-2066-4929-bd26-e1d32b8a83e8', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:55:06', '2024-02-07 15:35:06'),
('366cda50-86f8-4213-9512-70b870c5d667', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:02:17', '2024-02-06 10:35:51', '2024-02-06 11:02:17'),
('379115e0-2314-4ea9-8fd7-6bca8a646a54', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:04:47', '2024-02-06 12:36:38'),
('3b33e270-321f-45c2-8960-e716b2e7a40f', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:45', '2024-02-06 21:20:45'),
('3d2b1fbf-e92b-4f39-abf8-d7462cb24488', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:15:52', '2024-02-06 12:35:58'),
('3f2c2d12-3bc3-4120-b36e-fee49f8287ad', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:34:06', '2024-02-07 15:35:06'),
('3f721fc4-8366-495a-8239-e9bb5a76388b', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 20:55:30', '2024-02-06 20:55:30'),
('3fc9f7cb-024d-48d8-bcec-bb1d6fa79300', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:11', '2024-02-06 12:36:38'),
('3fd7d5cb-c2ae-4a97-b3fb-6613b282130c', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:44', '2024-02-06 21:20:44'),
('40192b6b-f5d2-43a9-b5ec-47a6f9bfa66a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:46:53', '2024-02-07 15:35:06'),
('417afbbc-9905-487d-8366-c5d5fde306a6', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:38', '2024-02-07 15:41:38'),
('4209c2b9-f2e4-4ce3-a656-29f88e8b8334', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:58:29', '2024-02-07 15:35:06'),
('42c0a578-d5ae-45d2-8eef-c60b3cd55f7c', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 6, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:50', '2024-02-07 15:40:50'),
('42e3fe35-121c-41a7-9c04-20f1e915677a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:15:53', '2024-02-06 11:15:53'),
('436351c2-d0e1-4825-ac9d-80b5cb8fede9', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:23:23', '2024-02-06 21:23:23'),
('44263dfb-39d4-4e1b-b0b8-2bf198ae4901', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 07:55:30', '2024-02-04 19:55:54', '2024-02-06 07:55:30'),
('44c117a3-2f45-41f7-a30a-b940cf0ccaef', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:44:42', '2024-02-07 15:35:06'),
('464c3eb0-667f-41dd-b974-c99ad4d1cac4', 'App\\Notifications\\changepayment', 'App\\Models\\User', 7, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', '2024-02-07 15:35:06', '2024-02-07 07:33:39', '2024-02-07 15:35:06'),
('471e6c81-e673-4a6b-bd22-a34770941c9c', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:33:00', '2024-02-07 07:33:00'),
('473d4a05-abfe-4dd3-9eb8-f3ecb262c339', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 19:58:27', '2024-02-07 15:35:06'),
('47f3234d-ef2e-466a-8eb7-016f0ba186e5', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:45:06', '2024-02-06 12:35:58'),
('48028582-cf6b-43b5-a7b3-e75557a8248a', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:59', '2024-02-06 11:11:36', '2024-02-06 12:35:59'),
('48ec393b-a536-4e3c-8621-f10b123254fe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', NULL, '2024-02-07 15:35:06'),
('496b9780-99a9-48ee-8531-731fe8007abc', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:23:23', '2024-02-06 21:23:23'),
('4a5c8cab-8206-4f2f-a494-b40c759fc675', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:04:52', '2024-02-06 12:36:38'),
('4a740b33-eb83-4af6-8229-9d210de43be0', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:08:20', '2024-02-06 21:08:20'),
('4a988993-2458-4405-b33b-957eaf42b818', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:06', '2024-02-06 20:12:37', '2024-02-07 15:35:06'),
('4a9b719d-62d3-4715-bc19-9a2e7b2726a6', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:37', '2024-02-07 15:36:37'),
('4a9ba81c-9c76-4398-a4c8-70bcce4dfdb2', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:23:08', '2024-02-06 11:23:08'),
('4ae36276-f51f-4d58-b923-11c8ad89dc14', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:34:35', '2024-02-07 15:35:07'),
('4c816faa-8a90-4fed-83d7-9dc7b5399ab5', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:36', '2024-02-07 15:36:36'),
('4d2631d4-a36a-4303-ac6d-44eec1345c44', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:18', '2024-02-06 12:36:38'),
('4d75ddc2-f4f3-499d-bc40-7657f1678f38', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:44', '2024-02-06 20:29:44'),
('4dad8f42-c139-49ac-94c8-ba5e5fe04f2a', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:33', '2024-02-07 15:35:33'),
('4ea5dd6e-8682-4439-b89c-c9af48dbb768', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-04 19:23:01', '2024-02-04 17:48:09', '2024-02-04 19:23:01'),
('50a561fd-a2c1-4df3-8c37-031ce675170d', 'App\\Notifications\\changepayment', 'App\\Models\\User', 7, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:34:19', '2024-02-07 15:34:19'),
('50d0b294-9f90-4b39-8757-e64144651927', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:32:58', '2024-02-07 07:32:58'),
('512fba70-122d-4f2c-a6f6-3ac06db59c1e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:50:24', '2024-02-07 15:35:07'),
('5252a38d-733b-4673-a200-e9a97cdc7e08', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:50:40', '2024-02-06 12:35:57'),
('52cc4bcb-4eb5-4d4d-9236-6fe157c00b09', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:46:40', '2024-02-07 15:35:07'),
('52e43192-3839-4622-a08c-00b095ea8c3a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:44:44', '2024-02-07 15:35:07'),
('52e84dec-2e8a-4dd1-8b41-1f0240a7a20d', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:32', '2024-02-07 15:36:32'),
('5312feda-2573-49b3-8e53-b195718ad9c9', 'App\\Notifications\\changepayment', 'App\\Models\\User', 6, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', '2024-02-07 15:35:07', '2024-02-07 07:33:39', '2024-02-07 15:35:07'),
('532d5a0c-d3b9-4da5-9c94-10db9b986dc5', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:11:37', '2024-02-06 11:11:37'),
('53c84050-d886-4cf3-8174-4abebcaebded', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:58:23', '2024-02-07 15:35:07'),
('54d1e216-c19c-46f9-b390-fce17c99b2ae', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:31:37', '2024-02-07 15:35:07'),
('54f0226a-3db1-4728-82fb-6fa4496dfffc', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:38', '2024-02-06 11:07:12', '2024-02-06 12:36:38'),
('55594d86-8507-45a9-9dba-df1859f38d5b', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:18:16', '2024-02-06 12:11:59', '2024-02-06 12:18:16'),
('557faa91-58a6-4690-9541-5d42af481293', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:18:16', '2024-02-06 12:12:29', '2024-02-06 12:18:16'),
('56286401-b324-46c1-a164-ec21b9903a5b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:50:16', '2024-02-07 15:35:07'),
('56609eef-c4b0-4b0d-aaba-dcb82f3c4c8f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:53:49', '2024-02-07 15:35:07');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('56fe3c4a-dae2-449e-9b7c-a98a17573ab7', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:49:01', '2024-02-06 11:49:01'),
('573a7006-8c9e-47ed-a9be-489e39e25534', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 12:35:39', '2024-02-06 12:36:39'),
('592dbf6f-6b96-4607-b68f-d3427bbe2352', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:39:01', '2024-02-07 15:39:01'),
('593bb43e-a4b6-45a4-86f0-e715f1f8ac5b', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 07:55:26', '2024-02-04 19:58:03', '2024-02-06 07:55:26'),
('594a9ef0-3554-4c43-9843-17300599967b', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:11:01', '2024-02-06 21:11:01'),
('59ab0004-b268-4ddd-ac9f-529b415189f1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:34:33', '2024-02-07 15:35:07'),
('59bdcd0f-188c-4310-8f36-bdb121b7e55a', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:37:02', '2024-02-07 15:37:02'),
('59bdefe6-9108-453a-b855-ad11f0c03081', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:45:44', '2024-02-06 12:35:57'),
('59c7f65b-c5b3-49ee-b24e-ef1c70051b27', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 20:52:17', '2024-02-07 15:35:07'),
('59dffb20-af26-479d-91a3-e29b553ecdc4', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:50:41', '2024-02-07 15:35:07'),
('5b6cd9d5-224e-4a2f-aefa-e1cbb04f16b8', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:46:57', '2024-02-07 15:35:07'),
('5b8e852d-6bb3-44cd-92d2-9c308b4aa54c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 20:17:02', '2024-02-07 15:35:07'),
('5c71f8fc-669d-497b-877c-362008bedb8b', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 12:35:21', '2024-02-06 12:36:39'),
('5d344eb3-5794-431b-8258-846287424453', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:01:50', '2024-02-06 10:59:14', '2024-02-06 11:01:50'),
('5dabb651-8a0c-4d55-bf2c-9ad6b3d300ee', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:50:36', '2024-02-06 20:50:36'),
('5df1be2c-492c-48ce-be07-81aa9a01c35b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:07', '2024-02-06 19:53:44', '2024-02-07 15:35:07'),
('5e45950a-46af-4d44-9462-17910e07a254', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:06:11', '2024-02-06 12:36:39'),
('5e4dbdeb-f155-46fc-bb2a-21e6e9bf855a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:20:10', '2024-02-07 15:35:08'),
('5f907655-6b7b-4e2a-a2c6-8ec7ed925dfe', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:41', '2024-02-06 20:29:41'),
('5fc24411-3ad1-479d-8a59-5bf557474162', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:12:41', '2024-02-07 15:35:08'),
('5fc59098-f273-4e2c-8fb5-d43f4470cf1a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:34:11', '2024-02-07 15:35:08'),
('6001e819-eb43-403c-8c35-b44120c37549', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:46:42', '2024-02-07 15:35:08'),
('610a6bea-23f0-4a30-a937-c953b68ccfc5', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:11:52', '2024-02-06 11:11:52'),
('61a6b8af-edd4-4eab-90ae-ad1799b03f0e', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 07:55:22', '2024-02-05 11:04:32', '2024-02-06 07:55:22'),
('61ada7ac-56fc-4b22-b6c1-12f579c12e85', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:33:57', '2024-02-07 15:35:08'),
('626bcd89-352c-4e5e-a655-67398bca7018', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:06:07', '2024-02-06 12:36:39'),
('62bd6255-7be3-4bf2-8027-f42c2737bddc', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:02:17', '2024-02-06 10:37:10', '2024-02-06 11:02:17'),
('62ff84cc-47fe-4af1-9a4d-a1061618e163', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:24:07', '2024-02-06 21:24:07'),
('6345a642-a7bf-4b36-970d-0324a21990d7', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:01:50', '2024-02-06 10:59:15', '2024-02-06 11:01:50'),
('637f262f-7f7a-4d76-8dfc-2bcc57c3de27', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:46:09', '2024-02-06 12:35:57'),
('641552b4-79ba-4c8c-8d95-920b72f399c3', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:07:57', '2024-02-06 12:36:39'),
('641e6b07-3a35-4592-8a57-bde00bf40bb4', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:36', '2024-02-07 15:36:36'),
('644c0642-8428-4901-ae42-80f60cfdcde7', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:32:12', '2024-02-07 07:32:12'),
('646bcc40-a810-4bc2-8a2d-1dc4e6b039ac', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:07:47', '2024-02-06 12:36:39'),
('647f0d70-2e2e-42b1-92e8-d7fb1a113ed1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:20:08', '2024-02-07 15:35:08'),
('64cb51ed-05f6-43b0-bf9c-33c69ad460b2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:06:08', '2024-02-06 12:36:39'),
('64df9172-c514-40b1-a3e6-4d40e622dd42', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:02:17', '2024-02-06 10:42:13', '2024-02-06 11:02:17'),
('66740d02-22dd-46b0-8194-ffa0e5cd3c16', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:46:44', '2024-02-07 15:35:08'),
('6717a4e9-ede2-4bb0-aef4-efb209e46d99', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:43:22', '2024-02-07 15:43:22'),
('67b38e50-12c4-49d5-a871-d03ddd7ef7a5', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:17:04', '2024-02-07 15:35:08'),
('69cf3cf3-cad2-4c3d-9929-6d56eaa14a0d', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:12:01', '2024-02-06 12:35:58'),
('6a1e7236-97cc-4ef8-881e-eaa37336ed5e', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:35', '2024-02-07 15:35:35'),
('6a2cb384-32d6-402a-83a9-e812d7fc4b82', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 07:55:30', '2024-02-04 19:55:54', '2024-02-06 07:55:30'),
('6a44c698-1cff-42f9-afad-7d78ab925282', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:37:03', '2024-02-07 15:37:03'),
('6af3c5d1-5bdb-4b8f-81a4-7bd23259b230', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 11:02:17', '2024-02-04 19:23:52', '2024-02-06 11:02:17'),
('6b0ec97b-506a-4df3-9efa-50afa36a3354', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:34', '2024-02-07 15:35:34'),
('6baa4999-58c1-4315-86df-471c90d8ad46', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', NULL, '2024-02-04 19:52:46', '2024-02-04 19:52:46'),
('6bf338dc-0fe1-4af8-a7b0-5d06f65b7cb0', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:11:09', '2024-02-06 21:11:09'),
('6c65bb0e-28b7-4314-85c0-40e857833130', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:47:17', '2024-02-07 15:35:08'),
('6d970892-be81-4131-a701-f5aed40db1fc', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:44:01', '2024-02-07 15:35:08'),
('6ea00d32-3336-4060-a200-0075969f25ce', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:31:31', '2024-02-07 15:35:08'),
('6fa4844b-718f-42ba-8b5b-2de439f5d346', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 6, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:15', '2024-02-07 15:35:15'),
('7117d600-58ca-4b11-bda9-536a49274c48', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:05:04', '2024-02-06 12:36:39'),
('71511d56-3a61-42ad-af3b-7685dc90cbc5', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:01:50', '2024-02-06 11:01:32', '2024-02-06 11:01:50'),
('7240b789-be63-401e-ae39-718e584b80f9', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:52:18', '2024-02-07 15:35:08'),
('73256da7-e280-4d6e-b843-9cc45c030a8b', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:50:16', '2024-02-06 20:50:16'),
('73e81ef1-a17b-44dd-9987-3853139c75f2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:07:54', '2024-02-06 12:36:39'),
('743cd3ae-ed8e-435c-9f74-3d6062bfe28f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:47:15', '2024-02-07 15:35:08'),
('74eaa8be-1c79-4891-96ea-2a1638c27f06', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:54', '2024-02-07 15:33:54'),
('7602ecaf-be79-496e-acc1-76c7c32fdaf4', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:39:55', '2024-02-07 15:39:55'),
('76cf2255-b4e6-4972-92f0-914907fa9198', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:15:51', '2024-02-06 11:15:51'),
('7748d9ba-b439-41fb-abf2-04bfddcdcc8c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 20:17:32', '2024-02-07 15:35:08'),
('77773454-c1f3-43da-bc54-dca3f2f099fd', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:43:59', '2024-02-07 15:35:08'),
('78a0217d-7303-49e0-9ee3-5aae13a7bb4a', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:33:24', '2024-02-07 07:33:24'),
('78b1f82a-4e33-45df-8893-ec21ba448a69', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 12:03:15', '2024-02-07 15:35:08'),
('78dc4cee-698a-4914-9f08-b79cba6e11a5', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:11:51', '2024-02-06 12:35:58'),
('7901f97c-f1a6-477d-ad96-9e612b6a3dfa', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:47:05', '2024-02-06 12:35:57'),
('79f4634f-a5c1-4b8a-8d22-085a6b24a567', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 12:03:33', '2024-02-07 15:35:08'),
('7a421c14-a09a-49b4-881e-7b0256a058ab', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:53:42', '2024-02-07 15:35:08'),
('7a637767-df9f-4428-b9d1-4faf154723f8', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:08', '2024-02-06 19:31:28', '2024-02-07 15:35:08'),
('7ba7182b-e978-4403-89d2-a15af343601b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:33:58', '2024-02-07 15:35:09'),
('7bd1f21d-0c6d-4d05-b639-13b8b078118a', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-04 17:46:49', '2024-02-06 12:36:39'),
('7c60e0f5-c242-494a-a36e-19b775337107', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:12:01', '2024-02-06 11:12:01'),
('7caa6d86-8515-457a-88c7-0b98ce7d2e63', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 07:55:26', '2024-02-04 19:58:03', '2024-02-06 07:55:26'),
('7d443291-1dcc-4410-a41a-122e8e6c971c', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 10:42:14', '2024-02-06 10:42:14'),
('7f1ae413-910f-4352-b1e5-47bd6d13dbe1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:34:31', '2024-02-07 15:35:09'),
('7fdda6b4-f160-4de4-bf8d-8ffd9ddf90c3', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:17', '2024-02-07 15:33:17'),
('806f5404-0c78-4572-9073-1254b82800fe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:39', '2024-02-06 11:05:51', '2024-02-06 12:36:39'),
('80e96541-2d4a-4e46-90d6-5d35a63ae242', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:22', '2024-02-07 15:38:22'),
('81b4ace8-49c0-4e29-a745-a7a1ac969fde', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:04:52', '2024-02-06 12:36:40'),
('81c1f1d0-eee6-49f0-9d05-459c0f8aceab', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:33', '2024-02-07 15:36:33'),
('82b710ea-8fb0-4347-9d95-7bcc9b10de58', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:33', '2024-02-07 15:36:33'),
('8312a338-762e-404d-9ba3-d2fe45eac0a8', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:47:06', '2024-02-06 11:47:06'),
('838ba5ca-59c7-4fc5-af63-93cef1d1c1fe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:46', '2024-02-06 12:36:40'),
('84c3289c-46eb-435c-b1be-2ebc79314b0b', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:46:16', '2024-02-06 20:46:16'),
('85070989-6fdd-468e-be42-11647075e1e4', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:34:07', '2024-02-07 15:35:09'),
('85cfdae9-26e3-49e3-a9bc-d733b4f515ba', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:49', '2024-02-06 21:20:49'),
('872ed59b-64f6-4d3b-bd16-556f63a63522', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645  \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:25:45', '2024-02-06 21:25:45'),
('87d3da8c-970a-4fe5-b29f-b72291566c76', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:25', '2024-02-07 15:35:25'),
('884f51a0-6855-4c7e-a458-917502067cae', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:25:54', '2024-02-06 11:25:54'),
('893de19b-cca5-4ef0-8807-37b4a141b1eb', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:03', '2024-02-06 12:36:40'),
('8b41f22f-0bdc-4f47-a0e1-c53ada298afe', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:17', '2024-02-06 12:36:40'),
('8b58ff81-e38c-441b-aea6-b73bab6fa076', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:30', '2024-02-06 21:20:30'),
('8bba9b1d-39e6-4d98-9b98-8d2c35b0df65', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:50:46', '2024-02-07 15:35:09'),
('8c87a7f4-8d94-4123-a84a-b724671dc8ba', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 20:18:43', '2024-02-07 15:35:09'),
('8d395abe-c4cd-4ea8-bf06-b5dbc3e3ad9a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 20:19:53', '2024-02-07 15:35:09'),
('8d735b63-21d3-4a11-995e-23e9aa858525', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:44', '2024-02-06 12:36:40'),
('8daac733-a6d5-4697-b4e0-35d811fc801c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:04', '2024-02-06 12:36:40'),
('8f2d2084-2d62-4519-89c0-36ce0c95b573', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:24:43', '2024-02-06 12:35:58'),
('91211117-701e-4d1e-b99f-3acb4fb9ba0e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:46:59', '2024-02-07 15:35:09'),
('9225894a-7eab-4156-89fd-d5be5d2b0847', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-05 11:03:30', '2024-02-05 11:02:57', '2024-02-05 11:03:30'),
('928f34e7-211e-45f0-9dda-6d2349aa95d2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:50:25', '2024-02-07 15:35:09'),
('930d8581-25a5-4d79-a276-0ea5994e88c9', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:34:27', '2024-02-07 15:35:09'),
('933770c8-9620-4f35-9049-3ac22cd900ee', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:52:14', '2024-02-06 11:52:14'),
('9360fb74-61bc-468f-bcc4-8f064e586f8d', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:38', '2024-02-07 15:41:38'),
('939532ce-e7f7-42d0-acf6-493d214d9a2d', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', '2024-02-07 15:35:09', '2024-02-07 07:33:37', '2024-02-07 15:35:09'),
('94221fe8-5711-4e7b-90a1-06ba95ebc558', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:02:05', '2024-02-06 20:02:05'),
('94487888-4c02-4abc-84c5-506a8ab73d83', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:26:29', '2024-02-06 21:26:29'),
('947222e5-8781-4de1-ab0b-c1ad65011823', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:39:57', '2024-02-07 15:39:57'),
('960a1ecd-46ec-4df3-b316-2306a91ca58f', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 5, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:13', '2024-02-07 15:35:13'),
('960eaaff-6cf6-4699-acc1-67a9fafddc40', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:49', '2024-02-07 15:40:49'),
('96391d1a-bb13-4a68-9784-dd3a793d82b7', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:22', '2024-02-07 15:35:22'),
('96783888-fb61-4447-a01e-52d8381fb209', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:59', '2024-02-07 15:38:59'),
('96b1dedc-c2f6-4146-a129-45ca336a44ac', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:33:59', '2024-02-07 15:35:09'),
('97cd26e0-7e00-461f-a3db-13b9c759d483', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:52', '2024-02-06 12:36:40'),
('97d47b02-7c9c-4391-8789-ea0d4fe2fe62', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 12:22:45', '2024-02-06 12:36:40'),
('98343004-d6a3-45bf-97cf-e2f7b322a06a', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:30', '2024-02-07 15:41:30'),
('98e7a86e-6935-4b02-8955-1d8d8709a352', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645  \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:25:44', '2024-02-06 21:25:44'),
('9921fb28-f92f-47f5-96f1-15dc1e25754e', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:04:46', '2024-02-06 20:04:46'),
('9931f804-2b56-462f-ad30-5933f7407b82', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 10:53:14', '2024-02-06 10:35:26', '2024-02-06 10:53:14'),
('9a59a425-e146-4fcb-9ffb-372946f0a79d', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:24:44', '2024-02-06 11:24:44'),
('9aaa7aea-4467-47a4-9f79-04dd7bf324b8', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:18:16', '2024-02-06 12:12:31', '2024-02-06 12:18:16'),
('9b5fa2c0-0c8a-4848-9ab7-1e8eaa509866', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 10:53:14', '2024-02-06 10:35:28', '2024-02-06 10:53:14'),
('9b994f74-3504-4ced-be0f-bcd433eb9ee4', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:26:05', '2024-02-06 12:35:58'),
('9c2df2cf-ec95-4a20-8a48-3b3931e18944', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:15:54', '2024-02-06 12:35:58'),
('9c64adf2-1948-4ec9-a546-23d05ef72f80', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:47:00', '2024-02-07 15:35:09'),
('9c9cb387-d574-4fe2-a74b-84f7026bf5e9', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:46:37', '2024-02-07 15:35:09'),
('9e569fc9-652e-45cc-86b5-813d1e85b9b2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:57:57', '2024-02-07 15:35:09'),
('9e7ff80a-c4b0-4cd9-8fb3-50f95b66b758', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 10:37:11', '2024-02-06 10:37:11'),
('a08b04c3-1cb9-49af-bc7a-b45b5a34e1b5', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:51:48', '2024-02-07 15:35:09'),
('a0b660ab-64de-466d-9cbe-0e4da0161610', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:53:47', '2024-02-07 15:35:09'),
('a0dec74b-a083-4dbb-a0fe-d904fe884244', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:01:50', '2024-02-06 11:01:30', '2024-02-06 11:01:50'),
('a1183e22-0ebf-42d5-aca6-38a131596db9', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 20:20:50', '2024-02-07 15:35:09'),
('a14fc80d-707a-4d12-be52-85be814e9436', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:44:05', '2024-02-07 15:35:09'),
('a1ab6a88-ecd0-4f21-8c78-f585c59a614a', 'App\\Notifications\\changepayment', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 12:43:00', '2024-02-06 12:43:00'),
('a1cac949-4887-49a1-a55c-5e4a9f3519a0', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:54', '2024-02-06 12:36:40'),
('a2445381-37a3-4d3a-a8e5-2dc6ad26d864', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:10', '2024-02-06 12:36:40'),
('a2e8d81c-8904-41a4-9d3c-0490bfb05bc9', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:31:48', '2024-02-07 07:31:48'),
('a33d7cec-c702-41cf-b206-7983b6d222d1', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:26', '2024-02-07 15:35:26'),
('a36e6b76-c53f-4b64-b043-5e6af86bad15', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:11:50', '2024-02-06 12:35:58'),
('a3f03c2c-11c4-4521-a7a2-508308519c3d', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:08:21', '2024-02-06 21:08:21');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('a477f839-040a-4c3e-9efc-4dbcd0cfcced', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:09', '2024-02-06 12:36:40'),
('a5572a1b-8ad5-4347-953c-d8ea8b610222', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:33:55', '2024-02-07 15:35:09'),
('a598a9df-75b7-41c0-a625-f8e359008742', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 12:41:57', '2024-02-06 12:41:57'),
('a5b05c03-62e2-4cf3-a48e-bccf0db4e9b4', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:09', '2024-02-06 19:44:37', '2024-02-07 15:35:09'),
('a6aed98e-bcdb-4cb6-bf11-c136aef97eab', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:55:08', '2024-02-07 15:35:10'),
('a6e3314c-a0c1-45a4-93d7-6f454df196b6', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:50:35', '2024-02-06 20:50:35'),
('a9d30a1b-cb5b-4c40-a2e9-02d7a040db2f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:15:50', '2024-02-06 12:35:58'),
('aa6f3862-a561-4d86-a9f7-2c77cac3204d', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645  \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:25:46', '2024-02-06 21:25:46'),
('aaa24bba-3d74-47f7-8312-c0716ca47bb0', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:11:59', '2024-02-06 11:11:59'),
('ab101248-90b5-4a3a-8c43-be59038de51c', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:45:45', '2024-02-06 11:45:45'),
('ab42c01d-90d5-4e50-9c12-f21d032be70e', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:23', '2024-02-07 15:38:23'),
('ab9ae94f-fb3f-4926-9c63-d8fa3baf7037', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:55', '2024-02-06 12:36:40'),
('aceae32d-961c-4ee9-bdaa-8f3eb8cd63f2', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 12:03:32', '2024-02-07 15:35:10'),
('ae62d43c-dedb-485f-8ab5-9f440a471e77', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:44:06', '2024-02-07 15:35:10'),
('ae763368-9728-4052-b6d3-f2fe3c6edd59', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:12:39', '2024-02-07 15:35:10'),
('b0c28277-5838-42ca-b66f-76ffdbee41f2', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:07:42', '2024-02-06 21:07:42'),
('b2155add-b128-4c5a-910f-70693345b138', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:58:00', '2024-02-07 15:35:10'),
('b2cccbec-32ae-4c18-b817-58eabdc5d6e4', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:24', '2024-02-07 15:35:24'),
('b3130508-62c7-42e5-8ac0-0c9c57f9c149', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:20:48', '2024-02-07 15:35:10'),
('b38e9783-7233-44ec-a9ef-ddd9ddd342f7', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:49:00', '2024-02-06 12:35:57'),
('b43a60b1-49b4-453f-ae22-a82f00611e7e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:44:43', '2024-02-07 15:35:10'),
('b4bd3f17-9cbe-4c4b-aee2-4db0113bb5a1', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:13', '2024-02-07 15:33:13'),
('b5006c5b-5523-4a1e-86a4-e5b745fab19f', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:31:33', '2024-02-07 15:35:10'),
('b5aea524-2a63-4eff-bdf7-c9b5a291e838', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:52:28', '2024-02-06 12:35:57'),
('b6968f18-3479-4b02-ad1e-7c564b189c02', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:26', '2024-02-07 15:35:26'),
('b74bdba4-7f95-468a-a3fd-6f0121217572', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:33', '2024-02-07 15:35:33'),
('b7657fd9-a7be-477f-a4de-eed3dc289d83', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:05:55', '2024-02-06 12:36:40'),
('b8301bad-fcaf-4d44-8edd-c65a3041364e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:40', '2024-02-06 11:07:20', '2024-02-06 12:36:40'),
('b83274c3-de75-4eaf-8fef-fe9a4a483b8d', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:51:56', '2024-02-07 15:35:10'),
('b854d008-cf0b-4c38-9e6f-f5f960c8c07b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:31:35', '2024-02-07 15:35:10'),
('b87ca597-3e5c-49e1-bdf9-685eac13b5a0', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:07:47', '2024-02-06 12:36:41'),
('ba4d6578-8d79-4a15-a37c-8a7ae556b9d3', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:31:34', '2024-02-07 15:35:10'),
('bb0e95ed-5e46-43a3-98f5-054b034c5d79', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:46:36', '2024-02-07 15:35:10'),
('bb5d6b7c-b619-41e5-8d39-6e407eb11771', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:50:47', '2024-02-07 15:35:10'),
('bb7b66fb-7c60-4597-a4df-ac4b69d7cc51', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:23:05', '2024-02-06 12:35:58'),
('bba42510-b338-47e5-b919-00d53c3b3936', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:18:41', '2024-02-07 15:35:10'),
('bc05bfa1-d493-4082-9016-67ea15fb5d5b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:44:40', '2024-02-07 15:35:10'),
('bc5d6c21-8965-4821-bda5-291343afe924', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:19:56', '2024-02-07 15:35:10'),
('bd531268-4a2f-41f2-a7e5-c5f49d9a2d79', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:02', '2024-02-07 15:38:02'),
('be51879f-f038-49e0-aec7-0fe557dfb744', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:23:21', '2024-02-06 21:23:21'),
('be8efae6-0f77-43d6-8b2d-c8c5aebdbf8a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:07:53', '2024-02-06 12:36:41'),
('bf640c62-578d-419a-b8c3-439cf0d44c69', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:32', '2024-02-07 15:35:32'),
('c0f1fce0-7ea6-4d86-a59c-6f5b2327df48', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:19:04', '2024-02-07 15:35:10'),
('c24180d4-7bab-4e1a-bcc2-77a5298da085', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:19:50', '2024-02-07 15:35:10'),
('c2c9ad07-61bc-42a3-a5ee-4e769adac062', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:34:32', '2024-02-07 15:35:10'),
('c31a420d-5af6-4d50-9257-ae3d0acba909', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:20:50', '2024-02-06 21:20:50'),
('c3381729-c15c-469c-857b-a2a376331d87', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:07:19', '2024-02-06 12:36:41'),
('c36b37b7-d0e8-4668-8f29-70eefde8477c', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:24:07', '2024-02-06 21:24:07'),
('c3707f77-bc8d-47b3-9603-4391d6f14ca1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:58:01', '2024-02-07 15:35:10'),
('c4a23973-0fbf-411c-908b-6974b9b3830f', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', '2024-02-06 11:02:17', '2024-02-04 19:52:46', '2024-02-06 11:02:17'),
('c51c997c-08e7-464b-9586-963665543a09', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:39', '2024-02-06 20:29:39'),
('c562a897-8f92-4f0a-936c-ca5496f0d1f2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:07:56', '2024-02-06 12:36:41'),
('c64acae2-ec95-45fe-aa7d-f9d4a2569f5e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:53:50', '2024-02-07 15:35:10'),
('c6ae3e6b-c660-4437-bf6b-5c51da378cf6', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:45:07', '2024-02-06 11:45:07'),
('c84f2578-a3fe-46aa-8288-4d0b5755b553', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"this is from print function\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:29:46', '2024-02-06 20:29:46'),
('c889cce3-fe1a-4d34-9115-c4bac18bef40', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 20:20:16', '2024-02-07 15:35:10'),
('cb1c034b-1966-4f73-9053-453494ffb914', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:38', '2024-02-07 15:36:38'),
('cb3ed95b-9c9f-4852-9d31-1fb6d1e5601d', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:37:03', '2024-02-07 15:37:03'),
('cb803799-53f1-4ce8-80ea-7990e9549d99', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 5, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 10:49:54', '2024-02-06 10:49:54'),
('cbf8669e-d8ff-4f1c-933c-bc3a9056d31f', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:02', '2024-02-07 15:38:02'),
('cc08dd77-052f-48f8-a02b-7200e23c23c6', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 19:46:06', '2024-02-06 19:46:06'),
('ccd5ec30-3f5c-486d-b47a-f641bb2cae19', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:49:32', '2024-02-06 20:49:32'),
('cd7a116a-5233-45ca-9e48-d125d384d24e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:34:14', '2024-02-07 15:35:10'),
('ce0d7a96-5e9f-4b52-8b4a-602a33ab3550', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:10', '2024-02-06 19:41:42', '2024-02-07 15:35:10'),
('ce276dcd-27b6-4c86-bfed-797ea43f70eb', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:11:58', '2024-02-06 12:35:58'),
('ce3f01eb-0bda-484b-9df2-343f07b82993', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:07:41', '2024-02-06 21:07:41'),
('cef1c7ed-0080-403b-89b9-1c166b624a1d', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:31:42', '2024-02-07 07:31:42'),
('cf5e0670-3753-47d1-9146-a55e8bfb3d97', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 4, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 11:02:17', '2024-02-06 10:49:53', '2024-02-06 11:02:17'),
('cf5f9e3e-6911-4989-a2e8-6035c173b0fa', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:46:10', '2024-02-06 11:46:10'),
('cf74796b-a0ad-4c11-838a-c4d3912fdc04', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:44:11', '2024-02-06 12:35:58'),
('d01f4dfa-a3ed-43ac-ab1f-341d70f4db17', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:06:11', '2024-02-06 12:36:41'),
('d0e4eb49-a446-4cc5-ac65-4a4d0cc6070b', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:33:00', '2024-02-07 07:33:00'),
('d136bd64-f93a-4988-ad48-e1cb99ae6df8', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:50:40', '2024-02-07 15:35:11'),
('d1b6bba1-c0bd-4585-a232-fd5a0aa7a8ef', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 12:33:28', '2024-02-06 12:36:41'),
('d34dbe2f-63a1-46d9-b922-fcd37a2ed508', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:37', '2024-02-07 15:41:37'),
('d35fa9de-7ea6-44a8-9528-f75d09053830', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:36:36', '2024-02-07 15:36:36'),
('d3f0c412-7706-4a34-9d18-d659752631fd', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:53:51', '2024-02-07 15:35:11'),
('d3f2d62e-b062-4988-9640-38fdcd6d5be2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:44:04', '2024-02-07 15:35:11'),
('d542b2be-7873-4d89-9b58-63dbbc9b4fef', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:50:44', '2024-02-07 15:35:11'),
('d62df9b8-4d07-4a9f-8dec-22a08e12de47', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:05:02', '2024-02-06 12:36:41'),
('d7018846-b07d-4a7c-bfe7-d002511e59fb', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 20:19:00', '2024-02-07 15:35:11'),
('d727ce55-d33a-4a41-a084-8eabd0d30878', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:49:22', '2024-02-06 11:49:22'),
('d7c84e88-c2b4-4f3b-9064-2a3d56c12787', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:50:45', '2024-02-07 15:35:11'),
('d812bf2d-9c45-4ea3-a83b-5ac187ea2b5a', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:43:21', '2024-02-07 15:43:21'),
('d8330da6-9182-4c5c-b5a4-9dce6dde0eb8', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:44:12', '2024-02-06 11:44:12'),
('da0f3562-6547-4cc6-93ce-0107cebea5fa', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:23', '2024-02-07 15:35:23'),
('da20a2a3-47c3-4311-aace-334f74eb0391', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:43:22', '2024-02-07 15:43:22'),
('daecc186-8c48-4c43-9f1d-c28594e6942e', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:34:29', '2024-02-07 15:35:11'),
('dc84d485-4b3c-486b-8bcb-70b599c4d861', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:36', '2024-02-07 15:35:36'),
('dd2c129f-1b22-4e80-a412-5bbba196ba5a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:47:12', '2024-02-07 15:35:11'),
('ddb8a70f-1c7a-47aa-891c-a439f3b94655', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":35,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 19:46:23', '2024-02-06 19:46:23'),
('de86d375-d135-4aa1-9837-bf1622152eaa', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:11:02', '2024-02-06 21:11:02'),
('df05bc4d-27db-469f-a3e8-8fc6a0f922fc', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:51:54', '2024-02-07 15:35:11'),
('e1298eae-b50b-4012-a751-cef6ed98051d', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:58:30', '2024-02-07 15:35:11'),
('e1a46ee8-5266-4ac0-92fa-61467304c37c', 'App\\Notifications\\changepayment', 'App\\Models\\User', 6, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:34:19', '2024-02-07 15:34:19'),
('e2173ec1-0a9d-4346-b040-c30620921447', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:51:55', '2024-02-07 15:35:11'),
('e27cd34d-d11b-4132-b5ff-bf3b830b4cc9', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:04:51', '2024-02-06 12:36:41'),
('e36b2957-503d-41f2-a7d4-5b5b6656d226', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:47:11', '2024-02-07 15:35:11'),
('e3a2bb90-5bcf-46f0-b84e-1de7260c383d', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:38:01', '2024-02-07 15:38:01'),
('e3bfb066-6681-4faa-95a2-bba49e6f8405', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:05:05', '2024-02-06 12:36:41'),
('e4356c56-718e-4d66-bd1f-84eb94a48af1', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:34:01', '2024-02-07 15:35:11'),
('e499d4e7-85b6-48b9-8fe3-2c8d57021fdd', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:17', '2024-02-07 15:33:17'),
('e54ea06c-74ed-4406-8685-ab99f8786367', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0642\\u0633\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:11:08', '2024-02-06 21:11:08'),
('e6430253-cfce-4e6b-afee-bc2a565dd5aa', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:05:01', '2024-02-06 12:36:41'),
('e6635b66-45d6-4e69-94d7-675461c2bfd7', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:49:30', '2024-02-06 20:49:30'),
('e83ba954-6b55-427f-878e-f5f5093f8ab4', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:34:10', '2024-02-07 15:35:11'),
('e8aa9efd-10b3-4c9c-b78e-d6bf9ac7d62a', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 11:04:49', '2024-02-06 12:36:41'),
('e8c6deb3-ec91-44b6-b592-e884d9e7746c', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:36:41', '2024-02-06 12:31:23', '2024-02-06 12:36:41'),
('e970a4c5-7f29-4735-a47b-80cccbfcb83e', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:26', '2024-02-07 15:35:26'),
('eb3f43bb-3534-4a48-a5f3-1f95bfce7050', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 7, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:55', '2024-02-07 15:33:55'),
('ebbc60cf-2727-4431-9de5-30b73abfa763', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Menna\"}', NULL, '2024-02-04 19:23:53', '2024-02-04 19:23:53'),
('ebc25887-4fc1-4183-92b1-20bd25987aeb', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:41:30', '2024-02-07 15:41:30'),
('edd91176-a595-4ef7-bb0c-790f342be2e2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:42', '2024-02-06 11:06:09', '2024-02-06 12:36:42'),
('edfab458-7e3b-46bb-8fd7-3c1cabc2fdc7', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 7, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:15', '2024-02-07 15:35:15'),
('ee736645-99c3-4a07-806d-ee433bc6f1ff', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:42', '2024-02-06 11:07:45', '2024-02-06 12:36:42'),
('f008c925-cd48-4ac1-8a75-d1a9ca25321c', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 20:46:15', '2024-02-06 20:46:15'),
('f02a44ba-cded-490a-8584-179b10d06017', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:42:44', '2024-02-06 11:42:44'),
('f07d90e4-0193-49c2-829b-00ae2bfb8ce0', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:57', '2024-02-06 11:52:13', '2024-02-06 12:35:57'),
('f0ce88fc-d44a-48f5-84c2-159cf81a7214', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maryam\"}', NULL, '2024-02-06 21:26:28', '2024-02-06 21:26:28'),
('f24e626c-e882-4e38-a590-5136a6a791c3', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:41:41', '2024-02-07 15:35:11'),
('f37217df-5b6d-4eb5-9bf5-481dc0486f7d', 'App\\Notifications\\invoice', 'App\\Models\\User', 7, '{\"id\":37,\"title\":\"this is from print function\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:35:35', '2024-02-07 15:35:35'),
('f4dc96d5-ce17-4f79-b03b-86d046dff3f2', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:47:17', '2024-02-07 15:35:11'),
('f547fabf-f407-440d-90f7-145bbc232c71', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:51:53', '2024-02-07 15:35:11'),
('f60b12cf-e203-4be2-803e-c01b8b7779c0', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:11', '2024-02-06 19:44:08', '2024-02-07 15:35:11'),
('f6248d85-16e6-4723-905c-d8f0448d774f', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:33:55', '2024-02-07 15:33:55'),
('f65b805f-897a-479b-bc5e-e2cf10db5a6b', 'App\\Notifications\\changepayment', 'App\\Models\\User', 7, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:29', '2024-02-07 15:40:29'),
('f7fc87cd-e39b-450a-8378-734baa07c107', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062d\\u0627\\u0644\\u0647 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:39:56', '2024-02-07 15:39:56'),
('f8a01f9a-7a28-407b-993a-a077bd9a44a6', 'App\\Notifications\\invoice', 'App\\Models\\User', 4, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-05 11:06:08', '2024-02-05 11:05:20', '2024-02-05 11:06:08'),
('f9915e24-0028-4ec5-bc57-d6d98dda0d44', 'App\\Notifications\\archieveinvoice', 'App\\Models\\User', 7, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0631\\u0634\\u0641\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:40:51', '2024-02-07 15:40:51'),
('fab8a7a5-94a3-4c68-91e0-42ff67e3ff1c', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:12', '2024-02-06 19:41:39', '2024-02-07 15:35:12'),
('fb0005a5-9491-4848-b307-2320259e84d9', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:50:41', '2024-02-06 11:50:41'),
('fbdbca1a-3698-467c-a095-e6ef88272425', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:42', '2024-02-06 11:07:13', '2024-02-06 12:36:42'),
('fbe70dd7-0ddc-4663-8edb-1c5c8a99566b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:42', '2024-02-06 11:07:52', '2024-02-06 12:36:42'),
('fc22eab4-13c5-4ccf-b865-d56cee24672b', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-06 12:36:42', '2024-02-06 11:07:20', '2024-02-06 12:36:42'),
('fd2421a7-e581-456d-9703-7098efff7464', 'App\\Notifications\\changepayment', 'App\\Models\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u062d\\u0627\\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-06 12:35:58', '2024-02-06 11:25:52', '2024-02-06 12:35:58'),
('fd4ca481-2e08-433b-8c23-81aaf6cbd757', 'App\\Notifications\\invoice', 'App\\Models\\User', 5, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maryam\"}', '2024-02-05 11:03:30', '2024-02-05 11:02:57', '2024-02-05 11:03:30'),
('fe2b6f2a-5c29-4739-a946-745e159d087d', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:12', '2024-02-06 20:20:18', '2024-02-07 15:35:12'),
('fe4b9ff6-6f2d-4af4-ad1f-c86fc32e4550', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', '2024-02-07 15:35:12', '2024-02-06 19:58:22', '2024-02-07 15:35:12'),
('ff11d324-f479-4b86-a020-88a107e4b758', 'App\\Notifications\\updateinvoice', 'App\\Models\\User', 6, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 07:31:48', '2024-02-07 07:31:48'),
('ff4647df-3961-406d-bbf0-01a54fe59d58', 'App\\Notifications\\invoice', 'App\\Models\\User', 6, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0647 \\u0645\\u0646\\u062a\\u062c \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647 \",\"user\":\"maaaryam@gmail.com\"}', NULL, '2024-02-07 15:42:09', '2024-02-07 15:42:09'),
('ff811a88-d39a-420f-b951-c1efe5ba91d9', 'App\\Notifications\\printinvoice', 'App\\Models\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0647 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0647  :\",\"user\":\"maryam\"}', NULL, '2024-02-06 11:15:55', '2024-02-06 11:15:55');

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
(1, 'الفواتير', 'web', NULL, NULL),
(2, 'قائمة الفواتير', 'web', NULL, NULL),
(3, 'الفواتير المدفوعة', 'web', NULL, NULL),
(4, 'الفواتير المدفوعة جزئيا', 'web', NULL, NULL),
(5, 'الفواتير الغير مدفوعة', 'web', NULL, NULL),
(6, 'ارشيف الفواتير', 'web', NULL, NULL),
(7, 'التقارير', 'web', NULL, NULL),
(8, 'تقرير الفواتير', 'web', NULL, NULL),
(9, 'تقرير العملاء', 'web', NULL, NULL),
(10, 'المستخدمين', 'web', NULL, NULL),
(11, 'قائمة المستخدمين', 'web', NULL, NULL),
(12, 'صلاحيات المستخدمين', 'web', NULL, NULL),
(13, 'الاعدادات', 'web', NULL, NULL),
(14, 'المنتجات', 'web', NULL, NULL),
(15, 'الاقسام', 'web', NULL, NULL),
(16, 'اضافة فاتورة', 'web', NULL, NULL),
(17, 'حذف الفاتورة', 'web', NULL, NULL),
(18, 'تصدير EXCEL', 'web', NULL, NULL),
(19, 'تغير حالة الدفع', 'web', NULL, NULL),
(20, 'تعديل الفاتورة', 'web', NULL, NULL),
(21, 'ارشفة الفاتورة', 'web', NULL, NULL),
(22, 'طباعةالفاتورة', 'web', NULL, NULL),
(23, 'اضافة مرفق', 'web', NULL, NULL),
(24, 'حذف المرفق', 'web', NULL, NULL),
(25, 'اضافة مستخدم', 'web', NULL, NULL),
(26, 'تعديل مستخدم', 'web', NULL, NULL),
(27, 'حذف مستخدم', 'web', NULL, NULL),
(28, 'عرض صلاحية', 'web', NULL, NULL),
(29, 'اضافة صلاحية', 'web', NULL, NULL),
(30, 'تعديل صلاحية', 'web', NULL, NULL),
(31, 'حذف صلاحية', 'web', NULL, NULL),
(32, 'اضافة منتج', 'web', NULL, NULL),
(33, 'تعديل منتج', 'web', NULL, NULL),
(34, 'حذف منتج', 'web', NULL, NULL),
(35, 'اضافة قسم', 'web', NULL, NULL),
(36, 'تعديل قسم', 'web', NULL, NULL),
(37, 'حذف قسم', 'web', NULL, NULL),
(38, 'الاشعارات', 'web', NULL, NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(2, 'البطاقات', 'البطاقات', 1, NULL, NULL),
(4, 'القروض البنكيه', 'القروض البنكيه', 1, '2024-02-06 21:19:20', '2024-02-07 15:43:20'),
(6, 'القيوض المتعثره', 'القيوض المتعثره', 2, '2024-02-07 15:42:08', '2024-02-07 15:42:08');

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
(1, 'superadmin', 'web', '2024-02-03 18:08:02', '2024-02-03 18:08:02');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'بنك مصر', 'بنك مصر', '', NULL, NULL),
(2, 'البنك الاهلي', 'ملاحظات البنك الاهلي', 'maryam', '2024-02-06 20:55:29', '2024-02-06 20:55:29'),
(5, 'بنك فيصل', 'بنك فيصل', 'maaaryam@gmail.com', '2024-02-07 15:41:29', '2024-02-07 15:41:29');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles_name` varchar(255) NOT NULL,
  `Status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles_name`, `Status`) VALUES
(5, 'Menna', 'menna@gmail.com', NULL, '$2y$12$0Uwdcd/Y35WTbEZBVnOy4e6JN8yFiVozhSt18icrAU7OmwlVPPWna', NULL, '2024-02-04 11:42:36', '2024-02-04 11:42:36', '[\"user\"]', 'مفعل'),
(6, 'maaaryam@gmail.com', 'maryam@m.m', NULL, '$2y$12$O3JTDr7.W4/aPQQmDsJZQuBEQzYGQAVRS5kxf0oe6Gh7bovN7X5we', NULL, '2024-02-06 21:23:21', '2024-02-06 21:23:21', '[\"superadmin\"]', 'مفعل'),
(7, 'maryaةm@gmail.com', 'hamsaehab@gmail.com', NULL, '$2y$12$ZjFuxELWv0ZuO8NhKU8/ZOC7e1AdksSWPpaL5VqRYMGVY4Y2.MKYO', NULL, '2024-02-06 21:24:05', '2024-02-06 21:25:44', '[\"user\"]', 'مفعل');

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD CONSTRAINT `invoices_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

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
