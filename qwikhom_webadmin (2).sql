-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2025 at 06:52 AM
-- Server version: 8.0.44
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qwikhom_webadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `contact_details` text COLLATE utf8mb4_unicode_ci,
  `address_details` text COLLATE utf8mb4_unicode_ci,
  `type` enum('home','work','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `contact_details`, `address_details`, `type`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 11, '\"mayur, 9172593150\"', '\"near business bay\"', NULL, 0, '2025-10-09 05:57:35', '2025-10-16 13:07:29'),
(3, 11, '\"mmm, 234567876\"', '\"near business cpmex\"', 'home', 0, '2025-10-15 04:36:42', '2025-11-10 10:13:36'),
(4, 11, '\"mmm, 21344\"', '\"near sadfbv cpmex\"', 'home', 0, '2025-10-15 04:37:06', '2025-10-16 13:07:29'),
(5, 11, '\"mmm, 21344\"', '\"near sadfbv cpmex\"', 'home', 0, '2025-10-15 04:38:23', '2025-10-16 13:07:29'),
(6, 11, '\"mmm, 21344\"', '\"near sadfbv cpmexcvfev\"', 'home', 0, '2025-10-15 04:38:41', '2025-11-10 10:13:36'),
(7, 11, '\"mmm, 21344\"', '\"near cvmfoqnefwrj cpmexcvfev\"', 'home', 0, '2025-10-15 04:39:35', '2025-10-16 13:07:29'),
(8, 11, '\"mmm, 234567876\"', '\"near business cpmex\"', 'home', 0, '2025-10-15 06:32:05', '2025-10-16 13:07:29'),
(33, 11, '\"cdhfb , 21344\"', '\"near cvmfoqnefwrj cpmexcvfev\"', 'home', 0, '2025-10-16 04:13:45', '2025-10-16 13:07:29'),
(35, 11, '\"mmm, 234567876\"', '\"near business cpmex\"', 'home', 0, '2025-10-16 11:08:44', '2025-10-16 13:07:29'),
(36, 11, '\"mmm, 234567876\"', '\"near business cpmex\"', 'other', 0, '2025-10-16 11:08:55', '2025-10-16 13:07:29'),
(43, 18, '\"ffff\"', '\"etesting, Google Building 40, Mountain View, California\"', 'home', 0, '2025-10-18 13:09:23', '2025-11-13 13:42:58'),
(44, 18, '\"vivek\"', '\"gggghggggggg, 129, Tidke Colony, Nashik, Maharashtra\"', 'home', 0, '2025-10-20 09:58:03', '2025-11-13 13:42:58'),
(45, 19, '\"vg ybyb7h7\"', '\"yvy yv, Shop no 19, Tidke Colony, Nashik, Maharashtra\"', 'home', 1, '2025-10-28 07:59:15', '2025-10-28 07:59:15'),
(46, 18, '\"ek\"', '\"chatttttgpt, Shop no 19, Tidke Colony, Nashik, Maharashtra\"', 'home', 0, '2025-10-28 10:30:05', '2025-11-13 13:42:58'),
(47, 18, '\"de\"', '\"yeh, Shop no 19, Tidke Colony, Nashik, Maharashtra\"', 'home', 0, '2025-10-28 10:32:24', '2025-11-13 13:42:58'),
(48, 18, '\"gvhj\"', '\"ghhop, Shop no 19, Tidke Colony, Nashik, Maharashtra\"', 'home', 0, '2025-10-31 09:14:05', '2025-11-13 13:42:58'),
(49, 18, '\"Pritesh Pawar\"', '\"Buisness bay, matoshree nagar, Shop no 19, Tidke Colony, Nashik, Maharashtra\"', 'home', 1, '2025-11-04 14:42:09', '2025-11-13 13:42:58'),
(50, 11, '\"mmm, 234567876\"', '\"near business cpmex\"', 'home', 1, '2025-11-10 10:13:36', '2025-11-10 10:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(17, NULL, NULL, 'active', '1761971446_.png', '2025-10-08 08:38:50', '2025-11-01 08:30:46'),
(18, NULL, NULL, 'active', '1760501051_.jpg', '2025-10-08 08:38:50', '2025-10-15 04:04:11'),
(19, NULL, NULL, 'active', '1760501062_.jpg', '2025-10-08 08:38:50', '2025-10-15 04:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `service_provider_id` bigint UNSIGNED DEFAULT NULL,
  `vendor_id` bigint UNSIGNED DEFAULT NULL,
  `booking_reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date` date NOT NULL,
  `preferred_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` enum('pending','accepted','assigned','ongoing','completed','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` enum('unpaid','paid','partially_paid','refunded','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `price` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `refund_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AED',
  `payment_due_date` date DEFAULT NULL,
  `booking_type` enum('onetime','subscription','recurring') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `customer_notes` text COLLATE utf8mb4_unicode_ci,
  `vendor_notes` text COLLATE utf8mb4_unicode_ci,
  `cancellation_reason` text COLLATE utf8mb4_unicode_ci,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancellation_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cancelled_by` bigint UNSIGNED DEFAULT NULL,
  `cancellation_type` enum('user','serviceprovider','system') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `subscription_id` bigint UNSIGNED DEFAULT NULL,
  `parent_booking_id` bigint UNSIGNED DEFAULT NULL,
  `next_booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `service_id`, `customer_id`, `service_provider_id`, `vendor_id`, `booking_reference`, `scheduled_date`, `preferred_time`, `start_time`, `end_time`, `status`, `payment_status`, `price`, `discount_amount`, `tax_amount`, `total_amount`, `paid_amount`, `refund_amount`, `currency`, `payment_due_date`, `booking_type`, `customer_notes`, `vendor_notes`, `cancellation_reason`, `cancelled_at`, `cancellation_fee`, `cancelled_by`, `cancellation_type`, `completed_at`, `created_at`, `updated_at`, `payment_method_id`, `subscription_id`, `parent_booking_id`, `next_booking_date`) VALUES
(1, 2, 3, 9, 2, 'BK68F3661B19E5F', '2025-10-20', NULL, '14:30:00', '15:30:00', 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-18 14:04:11', '2025-11-05 14:43:23', NULL, NULL, NULL, NULL),
(2, 2, 18, 9, 2, 'BK68F377648786E', '2025-11-12', '15:34:00', '14:30:00', '15:30:00', 'ongoing', 'unpaid', 1550.00, 0.00, 0.00, 1550.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-18 15:17:56', '2025-11-12 14:14:45', NULL, 82, NULL, NULL),
(3, 49, 18, 9, 1, 'BK68F5CA5BA0157', '2025-11-13', '14:55:00', '14:30:00', '15:30:00', 'ongoing', 'unpaid', 460.00, 0.00, 0.00, 460.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-20 09:36:27', '2025-11-12 14:02:59', NULL, NULL, NULL, NULL),
(5, 2, 18, NULL, 2, 'BK68FF321772E32', '2025-10-27', '14:30:00', NULL, NULL, 'completed', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-27 12:49:27', '2025-10-27 12:49:27', NULL, NULL, NULL, NULL),
(6, 49, 18, NULL, 1, 'BK68FF333747BBD', '2025-10-28', '14:30:00', NULL, NULL, 'cancelled', 'unpaid', 240.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-27 12:54:15', '2025-10-27 12:54:15', NULL, NULL, NULL, NULL),
(7, 49, 18, 9, 1, 'BK68FF3FDF46ECF', '2025-11-12', '15:00:00', NULL, NULL, 'ongoing', 'unpaid', 340.00, 0.00, 0.00, 340.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-27 13:48:15', '2025-11-12 13:02:40', NULL, NULL, NULL, NULL),
(8, 2, 18, 9, 2, 'BK690068148C5A2', '2025-10-29', '14:30:00', NULL, NULL, 'accepted', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-28 10:52:04', '2025-11-05 14:38:01', NULL, NULL, NULL, NULL),
(9, 2, 18, 9, 2, 'BK69006F7CBC10C', '2025-10-29', '14:30:00', NULL, NULL, 'accepted', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-28 11:23:40', '2025-11-05 14:54:59', NULL, NULL, NULL, NULL),
(10, 2, 18, 9, 1, 'BK69006F94D7C1B', '2025-10-29', '14:30:00', NULL, NULL, 'accepted', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-28 11:24:04', '2025-11-05 14:55:59', NULL, NULL, NULL, NULL),
(11, 2, 18, NULL, 1, 'BK690070BEDB14D', '2025-10-29', '14:30:00', NULL, NULL, 'cancelled', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 15:13:26', 0.00, 9, 'serviceprovider', NULL, '2025-10-28 11:29:02', '2025-11-05 15:13:26', NULL, NULL, NULL, NULL),
(12, 49, 18, 9, 1, 'BK690094BD8BDBF', '2025-10-29', '14:30:00', NULL, NULL, 'accepted', 'unpaid', 84.00, 28.00, 0.00, 112.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-28 14:02:37', '2025-11-05 14:54:22', NULL, NULL, NULL, NULL),
(13, 2, 18, 9, 2, 'BK69009D265D3D2', '2025-11-11', '14:30:00', NULL, NULL, 'ongoing', 'unpaid', 120.00, 40.00, 0.00, 160.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-28 14:38:30', '2025-11-11 12:41:30', NULL, NULL, NULL, NULL),
(14, 49, 18, NULL, 2, 'BK6900A20057521', '2025-10-30', '14:30:00', NULL, NULL, 'cancelled', 'unpaid', 72.00, 24.00, 0.00, 96.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-10-31 12:39:42', 0.00, 9, 'serviceprovider', NULL, '2025-10-28 14:59:12', '2025-10-31 12:39:42', NULL, NULL, NULL, NULL),
(15, 49, 18, 9, 2, 'BK6901C30445DC2', '2025-11-11', '14:30:00', NULL, NULL, 'ongoing', 'unpaid', 320.00, 0.00, 0.00, 320.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-29 11:32:20', '2025-10-29 15:59:04', NULL, NULL, NULL, NULL),
(16, 2, 18, 9, 2, 'BK6901D4B3E6BFF', '2025-11-11', '18:30:00', NULL, NULL, 'ongoing', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-29 12:47:47', '2025-10-29 12:47:47', NULL, NULL, NULL, NULL),
(17, 2, 11, 9, 2, 'BK6901DA70A1BC9', '2025-11-10', '18:30:00', NULL, NULL, 'accepted', 'unpaid', 200.00, 0.00, 0.00, 200.00, 0.00, 0.00, 'AED', NULL, 'subscription', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-29 13:12:16', '2025-11-10 16:05:19', NULL, NULL, NULL, NULL),
(18, 2, 11, 9, 1, 'BK6901FA0D447AF', '2025-11-10', '14:30:00', NULL, NULL, 'ongoing', 'unpaid', 139.20, 30.40, 0.00, 169.60, 0.00, 0.00, 'AED', NULL, 'subscription', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-29 15:27:09', '2025-11-10 15:20:33', NULL, NULL, NULL, NULL),
(19, 2, 18, 9, 1, 'BK6901FFBB71B6D', '2025-11-10', '14:30:00', NULL, NULL, 'ongoing', 'unpaid', 80.00, 60.00, 0.00, 140.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-29 15:51:23', '2025-11-10 15:25:20', NULL, NULL, NULL, NULL),
(20, 2, 18, 9, 1, 'BK69031074F0935', '2025-11-10', '14:30:00', NULL, NULL, 'accepted', 'unpaid', 240.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 11:15:00', '2025-10-30 11:15:00', NULL, NULL, NULL, NULL),
(21, 2, 18, NULL, 2, 'BK69031F7E6FB6F', '2025-10-30', '18:00:00', NULL, NULL, 'cancelled', 'unpaid', 240.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 14:54:53', 0.00, 9, 'serviceprovider', NULL, '2025-10-30 12:19:10', '2025-11-05 14:54:53', NULL, NULL, NULL, NULL),
(22, 2, 18, 9, 2, 'BK690326989764B', '2025-11-10', '12:00:00', NULL, NULL, 'accepted', 'unpaid', 240.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 12:49:28', '2025-11-04 10:16:23', NULL, NULL, NULL, NULL),
(23, 2, 18, NULL, 2, 'BK69032B0FA395F', '2025-11-04', '12:00:00', NULL, NULL, 'cancelled', 'unpaid', 168.32, 35.84, 0.00, 204.16, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 14:05:24', 0.00, 9, 'serviceprovider', NULL, '2025-10-30 13:08:31', '2025-11-05 14:05:24', NULL, NULL, NULL, NULL),
(24, 2, 11, NULL, 2, 'BK69032D299EAC5', '2025-11-05', '12:00:00', NULL, NULL, 'cancelled', 'unpaid', 240.00, 0.00, 0.00, 240.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 16:06:24', 0.00, 9, 'serviceprovider', NULL, '2025-10-30 13:17:29', '2025-11-05 16:06:24', NULL, NULL, NULL, NULL),
(25, 2, 12, NULL, 2, 'BK6903320D73B7D', '2025-11-05', '13:00:00', NULL, NULL, 'cancelled', 'unpaid', 96.00, 72.00, 0.00, 168.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 16:05:00', 0.00, 9, 'serviceprovider', NULL, '2025-10-30 13:38:21', '2025-11-05 16:05:00', NULL, NULL, NULL, NULL),
(26, 2, 13, NULL, 2, 'BK690332C59E53C', '2025-11-06', '15:00:00', NULL, NULL, 'cancelled', 'unpaid', 96.00, 72.00, 0.00, 168.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 16:06:53', 0.00, 8, 'serviceprovider', NULL, '2025-10-30 13:41:25', '2025-11-05 16:06:53', NULL, NULL, NULL, NULL),
(27, 2, 18, 9, 2, 'BK69033674D785A', '2025-10-30', '09:00:00', NULL, NULL, 'accepted', 'unpaid', 96.00, 72.00, 0.00, 168.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 13:57:08', '2025-11-05 14:54:02', NULL, NULL, NULL, NULL),
(28, 2, 18, 9, NULL, 'BK69034965EDFA0', '2025-10-30', '15:00:00', NULL, NULL, 'accepted', 'unpaid', 170.00, 0.00, 0.00, 170.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 15:17:57', '2025-11-05 14:31:35', NULL, NULL, NULL, NULL),
(29, 2, 18, 9, NULL, 'BK69034DF5E7019', '2025-10-30', '18:00:00', NULL, NULL, 'accepted', 'unpaid', 96.00, 72.00, 0.00, 168.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 15:37:25', '2025-11-05 14:13:12', NULL, NULL, NULL, NULL),
(30, 2, 18, 9, NULL, 'BK69034EBAC835B', '2025-10-30', '09:00:00', NULL, NULL, 'accepted', 'unpaid', 96.00, 72.00, 0.00, 168.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-10-30 15:40:42', '2025-11-05 14:54:13', NULL, NULL, NULL, NULL),
(31, 2, 18, NULL, NULL, 'BK6909DBCB999CA', '2025-11-05', '16:00:00', NULL, NULL, 'cancelled', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 13:02:49', 0.00, 9, 'serviceprovider', NULL, '2025-11-04 14:56:11', '2025-11-05 13:02:49', NULL, NULL, NULL, NULL),
(32, 2, 18, NULL, NULL, 'BK6909DC08B0D88', '2025-11-05', '12:00:00', NULL, NULL, 'cancelled', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 13:36:57', 0.00, 9, 'serviceprovider', NULL, '2025-11-04 14:57:12', '2025-11-05 13:36:57', NULL, NULL, NULL, NULL),
(33, 2, 18, NULL, NULL, 'BK6909DC4A267E4', '2025-11-05', '12:00:00', NULL, NULL, 'cancelled', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 13:24:59', 0.00, 9, 'serviceprovider', NULL, '2025-11-04 14:58:18', '2025-11-05 13:24:59', NULL, NULL, NULL, NULL),
(34, 2, 18, 9, NULL, 'BK6909DCBB69D31', '2025-11-05', '17:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-04 15:00:11', '2025-11-05 14:33:55', NULL, NULL, NULL, NULL),
(35, 2, 18, 9, NULL, 'BK6909E432A22EA', '2025-11-05', '10:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-04 15:32:02', '2025-11-05 14:36:11', NULL, NULL, NULL, NULL),
(36, 49, 18, 9, NULL, 'BK690AD315D35FF', '2025-11-05', '10:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-05 08:31:17', '2025-11-05 14:37:24', NULL, NULL, NULL, NULL),
(37, 2, 18, NULL, NULL, 'BK690B240062679', '2025-11-05', '18:00:00', NULL, NULL, 'cancelled', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, '2025-11-05 14:54:29', 0.00, 9, 'serviceprovider', NULL, '2025-11-05 14:16:32', '2025-11-05 14:54:29', NULL, NULL, NULL, NULL),
(38, 2, 18, 9, NULL, 'BK690C35EFC0C0E', '2025-11-07', '10:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-06 09:45:19', '2025-11-06 10:10:31', NULL, NULL, NULL, NULL),
(39, 2, 18, 9, NULL, 'BK690C39467825D', '2025-11-08', '10:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-06 09:59:34', '2025-11-06 10:09:57', NULL, NULL, NULL, NULL),
(40, 49, 18, 9, NULL, 'BK6912E673C077F', '2025-11-11', '15:00:00', NULL, NULL, 'ongoing', 'unpaid', 220.00, 0.00, 0.00, 220.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 11:32:03', '2025-11-11 13:49:44', NULL, NULL, NULL, NULL),
(41, 2, 18, 9, NULL, 'BK6912E692A3265', '2025-11-11', '14:00:00', NULL, NULL, 'ongoing', 'unpaid', 170.00, 0.00, 0.00, 170.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 11:32:34', '2025-11-11 14:15:02', NULL, NULL, NULL, NULL),
(42, 2, 18, 9, NULL, 'BK691313030BED0', '2025-11-11', '16:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 14:42:11', '2025-11-11 14:45:00', NULL, NULL, NULL, NULL),
(43, 49, 18, 9, NULL, 'BK691317349D8C6', '2025-11-11', '17:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:00:04', '2025-11-11 15:00:39', NULL, NULL, NULL, NULL),
(44, 2, 18, 9, NULL, 'BK69131A1A66145', '2025-11-11', '17:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:12:26', '2025-11-11 15:16:41', NULL, NULL, NULL, NULL),
(45, 49, 18, 9, NULL, 'BK69131CF65F7E8', '2025-11-11', '17:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:24:38', '2025-11-11 16:24:20', NULL, NULL, NULL, NULL),
(46, 2, 18, 9, NULL, 'BK69131D05BB5EF', '2025-11-11', '18:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:24:53', '2025-11-11 15:44:23', NULL, NULL, NULL, NULL),
(47, 49, 18, 9, NULL, 'BK69131D1621809', '2025-11-11', '17:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:25:10', '2025-11-12 13:18:37', NULL, NULL, NULL, NULL),
(48, 2, 18, 9, NULL, 'BK691321637BB26', '2025-11-11', '17:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:43:31', '2025-11-12 13:18:45', NULL, NULL, NULL, NULL),
(49, 2, 18, 9, NULL, 'BK691321782DF61', '2025-11-11', '18:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:43:52', '2025-11-11 15:58:45', NULL, NULL, NULL, NULL),
(50, 49, 18, 9, NULL, 'BK69132189311F1', '2025-11-11', '17:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-11 15:44:09', '2025-11-12 13:19:45', NULL, NULL, NULL, NULL),
(51, 2, 18, 9, NULL, 'BK691451A266A9A', '2025-11-12', '15:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-12 13:21:38', '2025-11-12 13:29:08', NULL, NULL, NULL, NULL),
(52, 2, 18, NULL, NULL, 'BK6915656818A1C', '2025-11-13', '13:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 08:58:16', '2025-11-13 08:58:16', NULL, NULL, NULL, NULL),
(53, 49, 18, 9, NULL, 'BK6915657719DD1', '2025-11-13', '17:00:00', NULL, NULL, 'ongoing', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 08:58:31', '2025-11-13 09:00:23', NULL, NULL, NULL, NULL),
(54, 2, 18, NULL, NULL, 'BK6915658E0111B', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 470.00, 0.00, 0.00, 470.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 08:58:54', '2025-11-13 08:58:54', NULL, NULL, NULL, NULL),
(55, 49, 18, NULL, NULL, 'BK691576D533BF1', '2025-11-13', '17:00:00', NULL, NULL, 'pending', 'unpaid', 40.00, 30.00, 0.00, 70.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:12:37', '2025-11-13 10:12:37', NULL, NULL, NULL, NULL),
(56, 2, 18, NULL, NULL, 'BK691577A83ECA5', '2025-11-13', '17:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:16:08', '2025-11-13 10:16:08', NULL, NULL, NULL, NULL),
(57, 2, 18, 9, NULL, 'BK691578840469C', '2025-11-14', '12:00:00', NULL, NULL, 'accepted', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:19:48', '2025-11-14 12:57:23', NULL, NULL, NULL, NULL),
(58, 2, 18, NULL, NULL, 'BK691578A6374EC', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:20:22', '2025-11-13 10:20:22', NULL, NULL, NULL, NULL),
(59, 49, 18, NULL, NULL, 'BK691578EBE7B17', '2025-11-13', '18:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:21:31', '2025-11-13 10:21:31', NULL, NULL, NULL, NULL),
(60, 2, 18, NULL, NULL, 'BK691579B22A252', '2025-11-13', '09:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 10:24:50', '2025-11-13 10:24:50', NULL, NULL, NULL, NULL),
(61, 2, 18, NULL, NULL, 'BK69159DD63869A', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 12:59:02', '2025-11-13 12:59:02', NULL, NULL, NULL, NULL),
(62, 2, 18, NULL, NULL, 'BK69159DEA6E702', '2025-11-13', '10:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 12:59:22', '2025-11-13 12:59:22', NULL, NULL, NULL, NULL),
(63, 2, 18, NULL, NULL, 'BK6915A50FE1CAF', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 13:29:51', '2025-11-13 13:29:51', NULL, NULL, NULL, NULL),
(64, 2, 18, NULL, NULL, 'BK6915A5FB16D45', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 13:33:47', '2025-11-13 13:33:47', NULL, NULL, NULL, NULL),
(65, 2, 18, NULL, NULL, 'BK6915A665941D5', '2025-11-13', '16:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 13:35:33', '2025-11-13 13:35:33', NULL, NULL, NULL, NULL),
(66, 2, 18, NULL, NULL, 'BK6915CA0947417', '2025-11-13', '18:00:00', NULL, NULL, 'pending', 'unpaid', 9.61, 7.20, 0.00, 16.81, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 16:07:37', '2025-11-13 16:07:37', NULL, NULL, NULL, NULL),
(67, 2, 18, NULL, NULL, 'BK6915CA818C041', '2025-11-13', '09:00:00', NULL, NULL, 'pending', 'unpaid', 100.00, 0.00, 0.00, 100.00, 0.00, 0.00, 'AED', NULL, 'onetime', NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '2025-11-13 16:09:37', '2025-11-13 16:09:37', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_payments`
--

CREATE TABLE `booking_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED NOT NULL,
  `payment_transaction_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `is_refund` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(20, 'title1', NULL, 'active', '1759920603_0_68e641db21fcb.jpg', '2025-10-08 09:20:03', '2025-10-08 09:20:03'),
(21, 'title2', NULL, 'active', '1759920603_1_68e641db239df.jpg', '2025-10-08 09:20:03', '2025-10-08 09:20:03'),
(22, 'title3', NULL, 'active', '1759920603_2_68e641db23db1.jpg', '2025-10-08 09:20:03', '2025-10-08 09:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` enum('active','abandoned','converted','expired') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `expires_at` timestamp NULL DEFAULT NULL,
  `applied_coupons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `cart_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `subtotal`, `discount_amount`, `tax_amount`, `total`, `status`, `expires_at`, `applied_coupons`, `cart_metadata`, `created_at`, `updated_at`) VALUES
(4, NULL, 3, 4100.00, 0.00, 0.00, 4100.00, 'active', NULL, NULL, NULL, '2025-10-17 16:05:48', '2025-10-30 16:32:50'),
(21, NULL, 19, 200.00, 0.00, 0.00, 200.00, 'active', NULL, NULL, NULL, '2025-10-27 15:06:32', '2025-10-29 11:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `item_type` enum('service','subscription_plan','combo_offer','addon_only') COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `quantity` int NOT NULL DEFAULT '1',
  `providers_count` int NOT NULL DEFAULT '1',
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `service_frequency_id` bigint UNSIGNED DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `preferred_time` time DEFAULT NULL,
  `subscription_plan_id` bigint UNSIGNED DEFAULT NULL,
  `auto_renew` tinyint(1) DEFAULT NULL,
  `combo_offer_id` bigint UNSIGNED DEFAULT NULL,
  `combo_services_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `combo_discount_applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `selected_addons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `addon_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `include_material` tinyint(1) NOT NULL DEFAULT '0',
  `base_price` decimal(10,2) NOT NULL,
  `addons_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `custom_configurations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `customer_notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `special_requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `preferred_service_provider_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','removed','saved_for_later') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `item_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `coupons_applied` tinyint(1) NOT NULL DEFAULT '0',
  `coupons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `cart_id`, `item_type`, `item_id`, `item_name`, `item_description`, `quantity`, `providers_count`, `unit_price`, `total_price`, `service_frequency_id`, `scheduled_date`, `preferred_time`, `subscription_plan_id`, `auto_renew`, `combo_offer_id`, `combo_services_config`, `combo_discount_applied`, `selected_addons`, `addon_details`, `include_material`, `base_price`, `addons_price`, `discount_amount`, `discount_reason`, `tax_amount`, `custom_configurations`, `customer_notes`, `special_requirements`, `preferred_service_provider_id`, `status`, `item_metadata`, `coupons_applied`, `coupons`, `created_at`, `updated_at`) VALUES
(14, 18, 4, 'service', 3, 'Deep Cleaning – Kitchen, bathroom, full home', NULL, 2, 1, 2000.00, 4000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', NULL, 1, 2000.00, 0.00, 0.00, NULL, 0.00, NULL, NULL, NULL, NULL, 'active', NULL, 0, NULL, '2025-10-18 12:46:16', '2025-10-20 10:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Waxi', 'wsfdbv', 'active', '2025-10-02 23:47:37', '2025-10-17 13:59:58', '1760501279.jpg'),
(2, 'Core Home Services', 'Essential cleaning, maintenance, and home care services', 'active', '2025-10-03 00:06:31', '2025-10-15 04:08:18', '1760501298.jpg'),
(3, 'Family Support', 'Support services for families including childcare and assistance', 'active', '2025-10-03 00:06:31', '2025-10-15 04:08:31', '1760501311.jpg'),
(4, 'Personal Care', 'Beauty, grooming, and personal wellness services', 'active', '2025-10-03 00:06:31', '2025-10-16 06:40:32', '1760596832.jpg'),
(5, 'Home Maintenance & Interior', 'Home improvement, repairs, and maintenance services', 'active', '2025-10-03 00:06:31', '2025-10-16 06:40:42', '1760596842.jpg'),
(6, 'Vehicle & Legal Services', 'Vehicle maintenance and legal assistance services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(7, 'Lifestyle & Events', 'Event planning and lifestyle enhancement services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(8, 'Home Services', NULL, 'active', '2025-10-03 23:43:15', '2025-10-03 23:43:15', 'category1.jpg'),
(9, 'Cleaning Services', 'You home cleaning services', 'active', '2025-10-24 10:01:28', '2025-10-24 10:01:28', ''),
(10, 'Salon and Spa', 'Your relaxation massage', 'active', '2025-10-24 10:02:06', '2025-10-24 10:02:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `combo_offers`
--

CREATE TABLE `combo_offers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL,
  `fixed_discount` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_bookings_per_customer` int DEFAULT NULL,
  `usage_limit` int DEFAULT NULL,
  `used_count` int NOT NULL DEFAULT '0',
  `terms_conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive','expired','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `combo_offer_services`
--

CREATE TABLE `combo_offer_services` (
  `id` bigint UNSIGNED NOT NULL,
  `combo_offer_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `pricing_type` enum('standard','included','discounted') COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_price` decimal(10,2) DEFAULT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL,
  `custom_configurations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complainant_type` enum('customer','service_provider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_type` enum('late_delivery','poor_service','payment_issue','fraud','product_quality','communication','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','in_review','resolved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_notes` text COLLATE utf8mb4_unicode_ci,
  `attachment_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_admin_id` bigint UNSIGNED DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `resolution_action` enum('refund','replacement','account_blocked','warning','none','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution_details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` enum('percentage','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `used_count` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `applicable_to` enum('all_services','specific_services') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_services',
  `service_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `description`, `discount_type`, `discount_value`, `expiry_date`, `usage_limit`, `used_count`, `status`, `applicable_to`, `service_ids`, `created_at`, `updated_at`) VALUES
(1, 'QHSAVE30', 'this will save 30 AED fewtgfdsvb', 'percentage', 30.00, '2025-11-19 10:47:00', NULL, 58, 1, 'all_services', NULL, '2025-10-03 00:47:50', '2025-11-13 16:06:56'),
(3, 'WERTY', NULL, 'percentage', 20.00, '2025-11-07 16:11:00', NULL, 26, 1, 'all_services', NULL, '2025-10-04 05:11:51', '2025-11-04 14:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `disclaimers`
--

CREATE TABLE `disclaimers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disclaimers`
--

INSERT INTO `disclaimers` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Disclaimer', 'Welcome to Qwikhom — a technology-based platform connecting users with verified home and personal service professionals.\r\nWhile we strive to ensure accuracy, reliability, and quality in all information and services displayed on our website and mobile application, Qwikhom does not guarantee or warrant that all content, information, or services will always be accurate, complete, or up to date.\r\n________________________________________\r\n1. Service Provider Relationship\r\nQwikhom acts solely as a facilitator between customers and independent service professionals.\r\nAll services are rendered by third-party professionals who operate as independent contractors, not employees or agents of Qwikhom.\r\nWe are not directly responsible for the conduct, actions, or outcomes of services performed by these professionals.\r\n________________________________________\r\n2. Accuracy of Information\r\nAll prices, service details, and promotional offers listed on our Platform are subject to change without prior notice.\r\nQwikhom makes reasonable efforts to ensure information accuracy, but we do not guarantee that all data, descriptions, or visuals are error-free, current, or applicable to every customer situation.\r\n________________________________________\r\n3. Limitation of Liability\r\nTo the fullest extent permitted by UAE law, Qwikhom shall not be held liable for:\r\n•	Any direct, indirect, incidental, or consequential damages arising from service use or reliance on Platform content.\r\n•	Property loss, damage, or personal injury resulting from services provided by third-party professionals.\r\n•	Delays, cancellations, or interruptions caused by external factors beyond Qwikhom’s control.\r\nUsers are advised to exercise discretion and verify all service-related details before booking.\r\n________________________________________\r\n4. External Links\r\nOur Platform may include links to third-party websites or applications for user convenience.\r\nQwikhom does not control, endorse, or take responsibility for the content, products, or policies of these third-party sites.\r\n________________________________________\r\n5. No Guarantee of Outcomes\r\nAlthough all Qwikhom service partners are trained and verified, results may vary depending on service conditions, user requirements, and environment.\r\nQwikhom does not promise guaranteed outcomes, performance, or timelines for any service.\r\n________________________________________\r\n6. Jurisdiction\r\nThis Disclaimer shall be governed by and interpreted in accordance with the laws of the United Arab Emirates.\r\nAny disputes shall fall under the exclusive jurisdiction of the courts in Dubai, UAE.\r\n________________________________________\r\n7. Contact Us\r\nIf you have questions or concerns regarding this Disclaimer, please contact us:\r\n📧 support@qwikhom.com \r\n🌐 www.qwikhom.com', 'active', '2025-10-14 02:58:05', '2025-10-14 02:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `service_id`, `created_at`, `updated_at`) VALUES
(2, 'It means the admin has a dashboard/section to handle problems raised by users.', 'marketplace, or e-commerce platforms).\r\n\r\nIt means the admin has a dashboard/section to handle problems raised by users.\r\n\r\n🔹 Typical Features:\r\n\r\nComplaint/Dispute Submission\r\n\r\nCustomers or service providers can submit a complaint (e.g., late delivery, poor service, payment issue, fraud).\r\n\r\nUsually includes details: order ID / user ID, complaint category, description, attachments.\r\n\r\nAdmin Tracking\r\n\r\nAdmin can see all complaints in a table with status (Pending, In Review, Resolved, Rejected).\r\n\r\nFilter/search by date, type, user, or status.\r\n\r\nTwo-way Communication\r\n\r\nSometimes, a chat-like thread where admin and users can exchange messages about the issue.\r\n\r\nResolution Actions\r\n\r\nAdmin can mark th', 1, 2, '2025-10-03 03:25:27', '2025-10-03 03:38:23'),
(3, 'question one', '<p>answe one&nbsp;</p>', 1, 49, '2025-10-16 06:12:29', '2025-10-16 06:12:29'),
(4, 'question two', '<p>answer two</p>', 1, 49, '2025-10-16 06:12:29', '2025-10-16 06:12:29'),
(5, 'question three', '<p>answer three</p>', 1, 49, '2025-10-16 06:13:13', '2025-10-16 06:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `rating_service` tinyint UNSIGNED NOT NULL,
  `rating_employee` tinyint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_29_061958_create_personal_access_tokens_table', 2),
(5, '2025_09_30_085000_add_image_to_users_table', 3),
(6, '2025_09_30_072610_create_categories_table', 4),
(7, '2025_09_30_072617_create_subcategories_table', 4),
(8, '2025_09_30_072628_create_services_table', 4),
(9, '2025_10_01_123023_create_faqs_table', 5),
(10, '2025_10_03_061108_create_coupons_table', 6),
(11, '2025_10_03_063411_create_complaints_table', 7),
(13, '2025_10_03_092116_create_promocodes_table', 9),
(14, '2025_10_03_120000_add_image_to_categories_table', 10),
(15, '2025_10_03_121000_add_image_to_subcategories_table', 10),
(16, '2025_10_03_122000_add_image_to_services_table', 10),
(17, '2025_10_03_103833_create_vendors_table', 11),
(18, '2025_10_03_103846_create_service_providers_table', 11),
(19, '2025_10_03_111437_add_colum_to_users_table', 12),
(20, '2025_10_04_044610_create_bookings_table', 13),
(21, '2025_10_04_103703_update_coupons_table_discount_type_to_percentage_only', 14),
(22, '2025_10_06_064930_create_user_services_table', 15),
(23, '2025_10_06_085000_create_feedbacks_table', 16),
(25, '2025_10_03_104240_create_service_requirements_table', 17),
(26, '2025_10_04_052001_create_processes_table', 18),
(27, '2025_10_07_161425_make_password_nullable_in_users_table', 19),
(28, '2025_10_08_115100_add_is_deleted_and_deleted_at_columns_to_users_table', 20),
(29, '2025_10_08_125042_create_banners_table', 21),
(30, '2025_10_08_125108_create_campaigns_table', 22),
(31, '2025_10_08_125056_create_offers_table', 23),
(32, '2025_10_08_150059_add_qwikpick_and_beauty_easy_columns_to_services_table', 24),
(33, '2025_10_09_103632_create_service_frequencies_table', 25),
(34, '2025_10_09_103653_create_service_addons_table', 26),
(35, '2025_10_09_103716_create_service_subscription_plans_table', 27),
(36, '2025_10_09_103739_create_combo_offers_table', 28),
(37, '2025_10_09_103803_create_combo_offer_services_table', 29),
(38, '2025_10_09_103833_create_carts_table', 30),
(39, '2025_10_09_103855_create_cart_items_table', 31),
(40, '2025_10_09_110542_create_addresses_table', 32),
(41, '2025_10_09_124726_add_type_to_addresses_table', 33),
(42, '2025_10_09_150116_create_service_reviews_table', 34),
(43, '2025_10_09_150203_create_service_provider_reviews_table', 35),
(44, '2025_10_09_150953_add_average_rating_to_services_table', 36),
(45, '2025_10_09_165000_add_average_rating_to_users_table', 37),
(46, '2025_10_10_090814_create_disclaimers_table', 38),
(47, '2025_10_10_090951_create_privacy_policies_table', 38),
(48, '2025_10_10_091020_create_refund_policies_table', 38),
(49, '2025_10_10_091042_create_terms_conditions_table', 38),
(50, '2024_01_15_000000_create_service_materials_table', 39),
(51, '2025_10_13_105545_add_duration_and_description_fields_to_services_table', 40),
(52, '2025_10_13_105809_create_service_frequency_options_table', 41),
(53, '2025_10_03_111307_drop_description_from_service_requirements_table', 42),
(54, '2025_10_06_061826_add_active_column_to_users_table', 42),
(55, '2025_10_07_140633_rename_service_image_to_media_in_services_table', 43),
(56, '2025_10_07_141124_add_vendor_documents_and_payment_terms_to_users_table', 43),
(57, '2025_10_07_143411_migrate_existing_service_images_to_media', 44),
(58, '2025_10_13_145430_create_service_offers_table', 44),
(59, '2025_10_08_094536_add_payment_terms_to_user_services_table', 45),
(60, '2025_10_13_151800_create_push_notifications_table', 45),
(61, '2025_10_13_151900_create_notifications_table', 45),
(62, '2025_10_13_154230_add_service_selection_to_coupons_table', 45),
(63, '2025_10_13_164345_add_fcm_token_to_users_table', 45),
(64, '2025_10_14_154419_create_wishlists_table', 46);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('000396fe-e210-45db-8574-27f0960baf7b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":3,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:53:02\"}', NULL, '2025-11-12 13:53:02', '2025-11-12 13:53:02'),
('00f2f0a7-594e-463e-88e3-72927e668de1', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":59,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:21:31\"}', NULL, '2025-11-13 10:21:31', '2025-11-13 10:21:31'),
('0318b252-954b-4f72-b893-9f3eecebbba0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":2,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 15:13:37\"}', NULL, '2025-11-05 15:13:37', '2025-11-05 15:13:37'),
('061b7bbf-f2af-4a28-ae7a-fef79fc0568f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-29 15:24:38\"}', '2025-11-03 12:25:39', '2025-10-29 15:24:38', '2025-11-03 12:25:39'),
('067b586a-60a7-4a86-8a25-e82ab0fcfe98', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":44,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:16:15\"}', NULL, '2025-11-11 15:16:15', '2025-11-11 15:16:15'),
('06afb069-8b93-43f7-9040-2453b240dba6', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":37,\"type\":\"booking_update\",\"time\":\"2025-11-05 14:16:32\"}', NULL, '2025-11-05 14:16:32', '2025-11-05 14:16:32'),
('0743927f-5f05-4863-9086-9215ce91d205', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":49,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:58:09\"}', NULL, '2025-11-11 15:58:09', '2025-11-11 15:58:09'),
('081678c4-f5e2-4ae9-95f7-5322265c64c9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":7,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 15:13:29\"}', NULL, '2025-11-05 15:13:29', '2025-11-05 15:13:29'),
('08b64ee2-1ea3-4aac-8cdf-0edf61c4bdbb', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":28,\"type\":\"booking_update\",\"time\":\"2025-10-30 15:17:57\"}', '2025-10-31 15:59:49', '2025-10-30 15:17:57', '2025-10-31 15:59:49'),
('0a51d87e-3b81-4f6c-ab4b-6b019076c970', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":50,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:19:45\"}', NULL, '2025-11-12 13:19:45', '2025-11-12 13:19:45'),
('0c239c81-5b47-43eb-b422-9fdc0f13a174', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":50,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:44:09\"}', NULL, '2025-11-11 15:44:09', '2025-11-11 15:44:09'),
('0c74e53d-2041-4ed2-b554-d27cc8f1ef7e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":27,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:02\"}', NULL, '2025-11-05 14:54:02', '2025-11-05 14:54:02'),
('0e509460-41ce-404a-96db-a42e83cefcd3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":36,\"type\":\"booking_update\",\"time\":\"2025-11-05 08:31:17\"}', NULL, '2025-11-05 08:31:17', '2025-11-05 08:31:17'),
('0f7f250b-cdea-4b17-b218-e88cb816ee24', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":48,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:18:45\"}', NULL, '2025-11-12 13:18:45', '2025-11-12 13:18:45'),
('10fab765-79a2-4264-9cc0-3150ea67148e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":2,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:53:18\"}', NULL, '2025-11-12 13:53:18', '2025-11-12 13:53:18'),
('1152c331-f9c7-4484-ac7f-db585c8c5db7', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Your Service has been Booked !\",\"description\":\"Your Service has been Booked !\",\"booking_id\":null,\"type\":\"booking_update\",\"time\":\"2025-10-28 14:02:37\"}', '2025-10-29 10:29:45', '2025-10-28 14:02:37', '2025-10-29 10:29:45'),
('1483cd0b-e91d-439d-a37a-befd9e4dce85', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":26,\"type\":\"booking_update\",\"time\":\"2025-10-30 13:41:25\"}', '2025-10-30 13:59:35', '2025-10-30 13:41:25', '2025-10-30 13:59:35'),
('16cb950e-2503-4213-b779-bc9e7e2d1c8e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":42,\"type\":\"booking_update\",\"time\":\"2025-11-11 14:42:11\"}', NULL, '2025-11-11 14:42:11', '2025-11-11 14:42:11'),
('171762a9-fd3c-47e3-a871-1630e4ee3f9f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":12,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:22\"}', NULL, '2025-11-05 14:54:22', '2025-11-05 14:54:22'),
('1ab96bd5-bdea-4b00-9d12-e7da8d9a4c44', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":48,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:43:31\"}', NULL, '2025-11-11 15:43:31', '2025-11-11 15:43:31'),
('1b47ec60-1b2e-4952-aef2-ee88424857aa', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":37,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:29\"}', NULL, '2025-11-05 14:54:29', '2025-11-05 14:54:29'),
('1cb4c905-2588-4e81-a43f-7be9b50aadb9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":41,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 14:14:43\"}', NULL, '2025-11-11 14:14:43', '2025-11-11 14:14:43'),
('1cf2634c-836d-4b82-b829-5dc50b5494d7', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":29,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:13:12\"}', NULL, '2025-11-05 14:13:12', '2025-11-05 14:13:12'),
('230c8a28-c2ef-416f-a835-5eb7e6ebe128', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":37,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:16:42\"}', NULL, '2025-11-05 14:16:42', '2025-11-05 14:16:42'),
('2414df34-41b4-464c-beb4-43231ada3962', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":7,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 15:13:29\"}', NULL, '2025-11-05 15:13:29', '2025-11-05 15:13:29'),
('243ffb59-429f-4e88-acda-c03d15d5bbce', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Rescheduled\",\"description\":\"Your booking has been successfully rescheduled to 2025-11-12 at 15:00\",\"booking_id\":7,\"type\":\"booking_rescheduled\",\"time\":\"2025-11-11 09:56:36\"}', NULL, '2025-11-11 09:56:36', '2025-11-11 09:56:36'),
('272a5616-d53d-485f-9bdc-3b0eccd16d85', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Your Service has been Booked !\",\"description\":\"Your Service has been Booked !\",\"booking_id\":null,\"type\":\"booking_update\",\"time\":\"2025-10-28 14:38:30\"}', '2025-10-29 10:29:35', '2025-10-28 14:38:30', '2025-10-29 10:29:35'),
('276b01ae-d5a0-4c9f-98f1-f5608e4502b5', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":49,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:43:52\"}', NULL, '2025-11-11 15:43:52', '2025-11-11 15:43:52'),
('27816cf0-6630-4749-9aec-057c5bbefa49', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":34,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 12:37:08\"}', NULL, '2025-11-05 12:37:08', '2025-11-05 12:37:08'),
('2bcef102-9834-4020-aaa5-56f9bf573baf', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":28,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:31:35\"}', NULL, '2025-11-05 14:31:35', '2025-11-05 14:31:35'),
('2ca2c554-295b-465f-aaab-c30ddd8af4fd', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Cancelled\",\"description\":\"Your booking has been cancelled by the service provider.\",\"booking_id\":14,\"type\":\"booking_cancelled\",\"time\":\"2025-10-31 12:33:29\"}', '2025-10-31 15:44:33', '2025-10-31 12:33:29', '2025-10-31 15:44:33'),
('2f09b01b-ae88-4539-a3a2-9331d1522289', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":31,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 12:59:28\"}', NULL, '2025-11-05 12:59:28', '2025-11-05 12:59:28'),
('2f2b821e-9c87-46e7-9321-c6a8c232a332', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":10,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:55:59\"}', NULL, '2025-11-05 14:55:59', '2025-11-05 14:55:59'),
('31f04ada-2fc7-4919-bc32-208960280c84', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":51,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:23:17\"}', NULL, '2025-11-12 13:23:17', '2025-11-12 13:23:17'),
('33bce61d-230b-4898-aca9-d2fad574634d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":40,\"type\":\"booking_update\",\"time\":\"2025-11-11 11:32:03\"}', NULL, '2025-11-11 11:32:03', '2025-11-11 11:32:03'),
('33cd5d63-d645-42fc-8c40-08075978216d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":18,\"type\":\"booking_update\",\"time\":\"2025-10-29 15:27:09\"}', '2025-11-03 12:25:39', '2025-10-29 15:27:09', '2025-11-03 12:25:39'),
('34f76abe-a2d9-430f-87c3-35b388053743', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":15,\"type\":\"booking_accepted\",\"time\":\"2025-10-29 15:59:04\"}', '2025-11-01 13:34:28', '2025-10-29 15:59:04', '2025-11-01 13:34:28'),
('36c1fea4-037c-4425-b068-a060dfeb4904', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":22,\"type\":\"booking_update\",\"time\":\"2025-10-30 12:49:28\"}', '2025-10-30 13:59:01', '2025-10-30 12:49:28', '2025-10-30 13:59:01'),
('3740c304-f1ae-4201-a604-b8f0fb8039fa', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":12,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:22\"}', NULL, '2025-11-05 14:54:22', '2025-11-05 14:54:22'),
('374b7e04-cb80-461a-b153-f70055cf4b34', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":45,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:24:38\"}', NULL, '2025-11-11 15:24:38', '2025-11-11 15:24:38'),
('37d2d362-6d36-4f90-a5f0-5c87110c3a9b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":21,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:53\"}', NULL, '2025-11-05 14:54:53', '2025-11-05 14:54:53'),
('3b223900-97df-4139-a258-a1d7e16b57f0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":28,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:31:35\"}', NULL, '2025-11-05 14:31:35', '2025-11-05 14:31:35'),
('3d3e1e1b-ed5f-4ec1-b192-bd79e537934f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":51,\"type\":\"booking_update\",\"time\":\"2025-11-12 13:21:38\"}', NULL, '2025-11-12 13:21:38', '2025-11-12 13:21:38'),
('402c469a-e08c-4992-9a73-09c1ba71065a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":2,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:53:18\"}', NULL, '2025-11-12 13:53:18', '2025-11-12 13:53:18'),
('41c3c1a8-47ad-4ff6-b249-f435cc84320a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 21, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":26,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 16:06:53\"}', NULL, '2025-11-05 16:06:53', '2025-11-05 16:06:53'),
('42f9f5d2-0b06-4c66-83a3-c1d4f4df3f0c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":31,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 12:59:28\"}', NULL, '2025-11-05 12:59:28', '2025-11-05 12:59:28'),
('435ea4c2-4c84-4cc2-99f2-664ef2197d6f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":16,\"type\":\"booking_update\",\"time\":\"2025-10-29 12:47:47\"}', '2025-10-29 13:19:02', '2025-10-29 12:47:47', '2025-10-29 13:19:02'),
('45680bf9-89ed-4c39-b85d-5bf4dbe49625', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":22,\"type\":\"booking_accepted\",\"time\":\"2025-11-04 10:16:23\"}', '2025-11-04 10:18:59', '2025-11-04 10:16:23', '2025-11-04 10:18:59'),
('4710779d-601b-4828-af3f-f69ebca0f9b0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":13,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 08:48:42\"}', '2025-11-07 10:39:15', '2025-11-05 08:48:42', '2025-11-07 10:39:15'),
('49c55d2b-00fd-450b-8e21-072d9ccb7ebe', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":50,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:19:45\"}', NULL, '2025-11-12 13:19:45', '2025-11-12 13:19:45'),
('4b2d9799-87a6-44fb-a2df-e15732cb625d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":36,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:37:24\"}', NULL, '2025-11-05 14:37:24', '2025-11-05 14:37:24'),
('4db8dff3-e1fb-493d-bc89-68bb261621fb', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":21,\"type\":\"booking_update\",\"time\":\"2025-10-30 12:19:10\"}', '2025-11-01 13:34:25', '2025-10-30 12:19:10', '2025-11-01 13:34:25'),
('4dec3c42-d16f-47e0-a635-534364e67118', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":55,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:12:37\"}', NULL, '2025-11-13 10:12:37', '2025-11-13 10:12:37'),
('52e91e9a-a15b-4b20-bafe-76ffe4a35173', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":34,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:33:55\"}', NULL, '2025-11-05 14:33:55', '2025-11-05 14:33:55'),
('544b220a-65c3-4988-8b4d-3ef95a82876e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":35,\"type\":\"booking_update\",\"time\":\"2025-11-04 15:32:02\"}', NULL, '2025-11-04 15:32:02', '2025-11-04 15:32:02'),
('552809ac-9709-4200-af3e-341bb549ba85', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":25,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 16:05:00\"}', NULL, '2025-11-05 16:05:00', '2025-11-05 16:05:00'),
('553990fd-be9a-4fc4-838e-9930af390280', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":24,\"type\":\"booking_update\",\"time\":\"2025-10-30 13:17:29\"}', '2025-10-30 13:59:46', '2025-10-30 13:17:29', '2025-10-30 13:59:46'),
('5729d90d-4b76-401f-a326-1758a7c49740', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":39,\"type\":\"booking_accepted\",\"time\":\"2025-11-06 10:09:57\"}', NULL, '2025-11-06 10:09:57', '2025-11-06 10:09:57'),
('5a8b17e2-ebf1-421f-856b-1dffb3932b26', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":57,\"type\":\"booking_accepted\",\"time\":\"2025-11-14 12:57:23\"}', NULL, '2025-11-14 12:57:23', '2025-11-14 12:57:23'),
('5cef8393-2c18-4939-8f9b-047edfafae5a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Booking Rescheduled\",\"description\":\"A booking has been rescheduled to 2025-11-12 at 15:00\",\"booking_id\":7,\"type\":\"booking_rescheduled\",\"time\":\"2025-11-11 09:56:36\"}', NULL, '2025-11-11 09:56:36', '2025-11-11 09:56:36'),
('606184b1-7079-43e0-a986-e2bf8ca17d9a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":53,\"type\":\"booking_accepted\",\"time\":\"2025-11-13 08:58:56\"}', NULL, '2025-11-13 08:58:56', '2025-11-13 08:58:56'),
('60d8a326-0ab2-4a47-9294-9e911407f22f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":44,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:16:15\"}', NULL, '2025-11-11 15:16:15', '2025-11-11 15:16:15'),
('613c13b4-e2a5-4820-83a0-f1b65b84e7bf', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":46,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:43:48\"}', NULL, '2025-11-11 15:43:48', '2025-11-11 15:43:48'),
('6228971d-d815-4c4e-a636-50dea1cd3092', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":57,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:19:48\"}', NULL, '2025-11-13 10:19:48', '2025-11-13 10:19:48'),
('68591425-3ada-4f8b-9d3c-b5b7869e49b3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":29,\"type\":\"booking_update\",\"time\":\"2025-10-30 15:37:25\"}', '2025-10-31 15:59:35', '2025-10-30 15:37:25', '2025-10-31 15:59:35'),
('68a9ab2d-52fb-44bf-89f1-ade68a457225', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":25,\"type\":\"booking_update\",\"time\":\"2025-10-30 13:38:21\"}', '2025-10-30 13:59:40', '2025-10-30 13:38:21', '2025-10-30 13:59:40'),
('693b79f0-5dec-4b2e-8cf9-e21ba547ea0b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":61,\"type\":\"booking_update\",\"time\":\"2025-11-13 12:59:02\"}', NULL, '2025-11-13 12:59:02', '2025-11-13 12:59:02'),
('69556015-764a-4d16-8d19-0bd7ef10502a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":42,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 14:43:53\"}', NULL, '2025-11-11 14:43:53', '2025-11-11 14:43:53'),
('6cafd271-4a2c-4826-9e46-ce309c495815', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":35,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:55:39\"}', NULL, '2025-11-05 13:55:39', '2025-11-05 13:55:39'),
('6cb0c122-fbdc-4bcf-a9b2-510af40832a4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":53,\"type\":\"booking_accepted\",\"time\":\"2025-11-13 08:58:56\"}', NULL, '2025-11-13 08:58:56', '2025-11-13 08:58:56'),
('6e3f15b2-0fc0-4772-b5b7-0b629d091c2e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":45,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 16:24:20\"}', NULL, '2025-11-11 16:24:20', '2025-11-11 16:24:20'),
('6f0f4f29-f23c-4b38-8ddb-739d3c94a944', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":39,\"type\":\"booking_accepted\",\"time\":\"2025-11-06 10:09:57\"}', NULL, '2025-11-06 10:09:57', '2025-11-06 10:09:57'),
('74b680e0-450e-4574-967b-d2d063efbfb5', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 12:35:21\"}', '2025-10-31 15:44:32', '2025-10-31 12:35:21', '2025-10-31 15:44:32'),
('7626af84-312b-4312-abf0-3022f7f1aef9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":36,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:37:24\"}', NULL, '2025-11-05 14:37:24', '2025-11-05 14:37:24'),
('768572bb-a311-411e-8db7-89a36a22c942', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":41,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 14:14:43\"}', NULL, '2025-11-11 14:14:43', '2025-11-11 14:14:43'),
('7aae490f-168f-437e-ade0-e1faf25e0244', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":2,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 15:13:37\"}', NULL, '2025-11-05 15:13:37', '2025-11-05 15:13:37'),
('7c4b2ede-9cae-44b4-9bba-e4a13555b77f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":24,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:07:16\"}', NULL, '2025-11-05 14:07:16', '2025-11-05 14:07:16'),
('7e340445-bbc5-4460-be05-8350999b2f5c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":38,\"type\":\"booking_accepted\",\"time\":\"2025-11-06 10:10:31\"}', NULL, '2025-11-06 10:10:31', '2025-11-06 10:10:31'),
('7e669d38-4450-4780-977a-0989ead4ff0a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":19,\"type\":\"booking_update\",\"time\":\"2025-10-29 15:51:23\"}', '2025-10-30 13:59:15', '2025-10-29 15:51:23', '2025-10-30 13:59:15'),
('7f329eab-a4bd-40d9-a8ef-b0d6474686a4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":62,\"type\":\"booking_update\",\"time\":\"2025-11-13 12:59:22\"}', NULL, '2025-11-13 12:59:22', '2025-11-13 12:59:22'),
('821a1658-be89-4092-8edb-d29f0d391867', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 12:39:42\"}', '2025-10-31 15:44:30', '2025-10-31 12:39:42', '2025-10-31 15:44:30'),
('821e2982-a14d-40d0-b13e-599ebbb0d858', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":35,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:36:11\"}', NULL, '2025-11-05 14:36:11', '2025-11-05 14:36:11'),
('843299ba-6996-4601-90eb-a524b39b965a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Booking Rescheduled\",\"description\":\"A booking has been rescheduled to 2025-11-12 at 15:00\",\"booking_id\":7,\"type\":\"booking_rescheduled\",\"time\":\"2025-11-11 10:01:59\"}', NULL, '2025-11-11 10:01:59', '2025-11-11 10:01:59'),
('8516fe27-e77d-4414-90de-a2df6aa2b82e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Your Service has been Booked !\",\"description\":\"Your Service has been Booked !\",\"booking_id\":null,\"type\":\"booking_update\",\"time\":\"2025-10-28 14:29:02\"}', '2025-10-29 10:29:49', '2025-10-28 11:29:02', '2025-10-29 10:29:49'),
('86aa692e-ed5f-4e54-bf1a-5fbadaedbcb9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":56,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:16:08\"}', NULL, '2025-11-13 10:16:08', '2025-11-13 10:16:08'),
('880f0ac6-2944-496f-89ba-48a47fd2fdce', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":47,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:25:10\"}', NULL, '2025-11-11 15:25:10', '2025-11-11 15:25:10'),
('88c28035-0c95-476a-958b-f0b2862f2bde', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":17,\"type\":\"booking_update\",\"time\":\"2025-10-29 13:12:16\"}', NULL, '2025-10-29 13:12:16', '2025-10-29 13:12:16'),
('8ac049e8-b972-4d65-a982-b69b3e0bb075', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":39,\"type\":\"booking_update\",\"time\":\"2025-11-06 09:59:34\"}', NULL, '2025-11-06 09:59:34', '2025-11-06 09:59:34'),
('8c3dd082-6a39-4e45-b215-6c4499da3847', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":46,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:43:48\"}', NULL, '2025-11-11 15:43:48', '2025-11-11 15:43:48'),
('8d1497f6-9a32-47b5-b241-4ccd7e3ec236', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":65,\"type\":\"booking_update\",\"time\":\"2025-11-13 13:35:33\"}', NULL, '2025-11-13 13:35:33', '2025-11-13 13:35:33'),
('92133cf6-7aa7-4854-9df8-0e71db5fef27', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":52,\"type\":\"booking_update\",\"time\":\"2025-11-13 08:58:16\"}', NULL, '2025-11-13 08:58:16', '2025-11-13 08:58:16'),
('93fa6efa-0528-45e6-babc-9b5029588c3e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":57,\"type\":\"booking_accepted\",\"time\":\"2025-11-14 12:57:23\"}', NULL, '2025-11-14 12:57:23', '2025-11-14 12:57:23'),
('98de200d-8c78-41c0-a9d3-3098f6c8634c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":60,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:24:50\"}', NULL, '2025-11-13 10:24:50', '2025-11-13 10:24:50'),
('9ae62264-432f-4f19-9e63-960675e01df8', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":33,\"type\":\"booking_update\",\"time\":\"2025-11-04 14:58:18\"}', NULL, '2025-11-04 14:58:18', '2025-11-04 14:58:18'),
('9baf0f24-3cca-4680-a122-0dee09505b8a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":35,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:55:39\"}', NULL, '2025-11-05 13:55:39', '2025-11-05 13:55:39'),
('9db4909f-c4d9-49b5-9823-46e599ead3b3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":8,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:38:01\"}', NULL, '2025-11-05 14:38:01', '2025-11-05 14:38:01'),
('9e072d78-df44-4d15-99e2-bef0883b014d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":31,\"type\":\"booking_update\",\"time\":\"2025-11-04 14:56:11\"}', NULL, '2025-11-04 14:56:11', '2025-11-04 14:56:11'),
('9f4669c0-a48b-435f-83ee-87c9ba34bfe0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":30,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:13\"}', NULL, '2025-11-05 14:54:13', '2025-11-05 14:54:13'),
('a4ca7056-30ba-4227-a2c0-bc233405ec7c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 12:35:21\"}', '2025-11-04 10:13:23', '2025-10-31 12:35:21', '2025-11-04 10:13:23'),
('a4e662cc-1538-4179-8cad-8cddbba6711b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":46,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:24:53\"}', NULL, '2025-11-11 15:24:53', '2025-11-11 15:24:53'),
('a4ebbfef-942f-4d5e-83cf-28212eaf7cb8', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":14,\"type\":\"booking_update\",\"time\":\"2025-10-28 14:59:12\"}', '2025-10-28 15:14:18', '2025-10-28 14:59:12', '2025-10-28 15:14:18'),
('a52c978d-891e-45db-9a9e-740a336564bd', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":31,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:02:49\"}', NULL, '2025-11-05 13:02:49', '2025-11-05 13:02:49'),
('a6007282-51b8-4b2b-aa4e-84bdee12bcc3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":51,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:23:17\"}', NULL, '2025-11-12 13:23:17', '2025-11-12 13:23:17'),
('a9e3b3e8-9a6f-4a52-a83a-71c4e5bb84fa', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":32,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:36:57\"}', '2025-11-05 13:42:45', '2025-11-05 13:36:57', '2025-11-05 13:42:45'),
('aad12493-aaa1-4464-a264-6b39ca8950f2', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":35,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:36:11\"}', NULL, '2025-11-05 14:36:11', '2025-11-05 14:36:11'),
('ab8c2ed9-ff36-448b-876c-26a66b2fb4ed', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Rescheduled\",\"description\":\"Your booking has been successfully rescheduled to 2025-11-12 at 15:00\",\"booking_id\":7,\"type\":\"booking_rescheduled\",\"time\":\"2025-11-11 10:01:59\"}', NULL, '2025-11-11 10:01:59', '2025-11-11 10:01:59'),
('ad90ca1b-9893-4f87-a56c-6db5b2381f07', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":63,\"type\":\"booking_update\",\"time\":\"2025-11-13 13:29:51\"}', NULL, '2025-11-13 13:29:51', '2025-11-13 13:29:51'),
('aea1f44a-c78f-4bb0-b0cf-b8927a6bda0f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":23,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:05:24\"}', NULL, '2025-11-05 14:05:24', '2025-11-05 14:05:24'),
('b012eb0e-6301-4221-8eb5-a52d7dd1b1fc', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":24,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 16:06:24\"}', NULL, '2025-11-05 16:06:24', '2025-11-05 16:06:24'),
('b1790b0d-3726-4eff-aea0-1dc674cf205a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":20,\"type\":\"booking_update\",\"time\":\"2025-10-30 11:15:01\"}', '2025-11-01 13:34:26', '2025-10-30 11:15:01', '2025-11-01 13:34:26'),
('b37192e1-426e-439a-a6e7-efd383efe15c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":47,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:18:37\"}', NULL, '2025-11-12 13:18:37', '2025-11-12 13:18:37'),
('b5d922d4-1ea0-4063-a335-96d1138bb313', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":32,\"type\":\"booking_update\",\"time\":\"2025-11-04 14:57:12\"}', NULL, '2025-11-04 14:57:12', '2025-11-04 14:57:12'),
('b7cfb199-7fd3-4bd0-8d06-8e5943be5566', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":30,\"type\":\"booking_update\",\"time\":\"2025-10-30 15:40:42\"}', '2025-10-31 15:59:36', '2025-10-30 15:40:42', '2025-10-31 15:59:36'),
('b9ca4283-271b-40b6-9422-efd9d2c00817', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":8,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:38:01\"}', NULL, '2025-11-05 14:38:01', '2025-11-05 14:38:01'),
('bcb2abe1-9089-4dec-864c-606b34766b1f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":66,\"type\":\"booking_update\",\"time\":\"2025-11-13 16:07:37\"}', NULL, '2025-11-13 16:07:37', '2025-11-13 16:07:37'),
('bdced08c-afd0-4496-828a-17fb04880c2a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":9,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:59\"}', NULL, '2025-11-05 14:54:59', '2025-11-05 14:54:59'),
('be864d65-0add-4be1-87db-15665ee4af73', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":29,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:13:12\"}', NULL, '2025-11-05 14:13:12', '2025-11-05 14:13:12'),
('bee9d863-0789-422f-911e-4ecc168af3a0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":58,\"type\":\"booking_update\",\"time\":\"2025-11-13 10:20:22\"}', NULL, '2025-11-13 10:20:22', '2025-11-13 10:20:22'),
('c0e2b8ce-30f0-493d-8376-f595d65a5361', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":41,\"type\":\"booking_update\",\"time\":\"2025-11-11 11:32:34\"}', NULL, '2025-11-11 11:32:34', '2025-11-11 11:32:34'),
('c26a5d87-7d5b-4ab3-86d9-8423d1bdba19', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 10:52:37\"}', '2025-10-31 15:59:33', '2025-10-31 10:52:37', '2025-10-31 15:59:33'),
('c5b11ce6-3e7b-4602-908c-1954e3508ba3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":3,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:53:02\"}', NULL, '2025-11-12 13:53:02', '2025-11-12 13:53:02'),
('c71a24bf-d2cb-473c-bda2-46de4583f5cd', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":33,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:24:59\"}', NULL, '2025-11-05 13:24:59', '2025-11-05 13:24:59'),
('c755ec77-7a56-4431-98b5-f326937d8bf1', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 10:52:37\"}', '2025-11-04 10:13:24', '2025-10-31 10:52:37', '2025-11-04 10:13:24'),
('c7f5a056-b6d5-4477-ab0b-7cb67debae99', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":34,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:33:55\"}', NULL, '2025-11-05 14:33:55', '2025-11-05 14:33:55'),
('c88de7b2-8b17-45dd-adf9-e8857eecaae9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":22,\"type\":\"booking_accepted\",\"time\":\"2025-11-04 10:16:23\"}', NULL, '2025-11-04 10:16:23', '2025-11-04 10:16:23'),
('ca9f1221-45b2-46d8-beea-5334cde0774d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":54,\"type\":\"booking_update\",\"time\":\"2025-11-13 08:58:54\"}', NULL, '2025-11-13 08:58:54', '2025-11-13 08:58:54'),
('cb2f8ea3-3341-418d-8585-a893b24e1efb', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":36,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:49:55\"}', '2025-11-07 10:39:17', '2025-11-05 13:49:55', '2025-11-07 10:39:17'),
('cbc84e30-ad5b-447e-93a0-dbc6848646fa', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":15,\"type\":\"booking_accepted\",\"time\":\"2025-10-29 15:53:48\"}', '2025-10-30 13:59:18', '2025-10-29 15:53:48', '2025-10-30 13:59:18'),
('cc6bc440-47a6-4e68-94ed-1864a74c2555', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":27,\"type\":\"booking_update\",\"time\":\"2025-10-30 13:57:08\"}', '2025-10-30 13:59:43', '2025-10-30 13:57:08', '2025-10-30 13:59:43'),
('cd5cd12e-d500-46f2-8414-fb1931536b1e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":37,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:16:42\"}', NULL, '2025-11-05 14:16:42', '2025-11-05 14:16:42'),
('ce751603-8ff3-4614-a37f-581b0ee233b5', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 10:36:45\"}', '2025-10-31 15:59:39', '2025-10-31 10:36:45', '2025-10-31 15:59:39'),
('cff67291-89bf-42f8-9529-d924804d75f3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":30,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:13\"}', NULL, '2025-11-05 14:54:13', '2025-11-05 14:54:13'),
('d03db360-e994-494d-8641-869859500d6b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":67,\"type\":\"booking_update\",\"time\":\"2025-11-13 16:09:37\"}', NULL, '2025-11-13 16:09:37', '2025-11-13 16:09:37'),
('d1c4bda5-d2b5-40eb-894e-c9291de23d20', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":1,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:43:23\"}', NULL, '2025-11-05 14:43:23', '2025-11-05 14:43:23'),
('d3f52444-ff54-4501-ab75-935aeacc226b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":40,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 13:27:13\"}', NULL, '2025-11-11 13:27:13', '2025-11-11 13:27:13'),
('d56347c5-088d-47cb-b32e-4b218a3f4119', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":27,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:02\"}', NULL, '2025-11-05 14:54:02', '2025-11-05 14:54:02'),
('d80e5e0d-4af8-49e7-bbe8-c0f6480c4e56', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 3, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":1,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:43:23\"}', NULL, '2025-11-05 14:43:23', '2025-11-05 14:43:23'),
('dc910e5d-2b42-4699-a950-ad804b5692fa', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":49,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:58:09\"}', NULL, '2025-11-11 15:58:09', '2025-11-11 15:58:09'),
('def6b024-ac8b-4d01-ae7c-c7dabefa31d9', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":47,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:18:37\"}', NULL, '2025-11-12 13:18:37', '2025-11-12 13:18:37'),
('e07bf4b2-6a8f-435e-b143-7e58cd5f06e3', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":10,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:55:59\"}', NULL, '2025-11-05 14:55:59', '2025-11-05 14:55:59'),
('e2898401-5d8e-4317-9a20-501e9146cf69', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":36,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 13:49:55\"}', NULL, '2025-11-05 13:49:55', '2025-11-05 13:49:55'),
('e400c882-4fdc-4845-8ef8-8969be40bd62', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":42,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 14:43:53\"}', NULL, '2025-11-11 14:43:53', '2025-11-11 14:43:53'),
('e54f15fc-3806-4f46-a318-819acdb25c28', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":45,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 16:24:20\"}', NULL, '2025-11-11 16:24:20', '2025-11-11 16:24:20'),
('e5718263-16b1-4c5b-901c-983804085821', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":23,\"type\":\"booking_update\",\"time\":\"2025-10-30 13:08:31\"}', '2025-10-31 15:59:50', '2025-10-30 13:08:31', '2025-10-31 15:59:50'),
('e58598bb-188c-4c95-a54e-9d44b0d040b1', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":9,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 14:54:59\"}', NULL, '2025-11-05 14:54:59', '2025-11-05 14:54:59');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('e7645beb-5a6f-4f9c-8742-19d57604f0a0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":44,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:12:26\"}', NULL, '2025-11-11 15:12:26', '2025-11-11 15:12:26'),
('e95043ab-2b10-43df-a167-897470118f92', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":64,\"type\":\"booking_update\",\"time\":\"2025-11-13 13:33:47\"}', NULL, '2025-11-13 13:33:47', '2025-11-13 13:33:47'),
('eaaa6f11-ef3a-4cd2-96e2-cfcfa9c421a0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":14,\"type\":\"booking_accepted\",\"time\":\"2025-10-31 10:36:45\"}', '2025-11-04 10:13:34', '2025-10-31 10:36:45', '2025-11-04 10:13:34'),
('ebf43d37-0744-4933-8cbf-a600de9948fd', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":34,\"type\":\"booking_update\",\"time\":\"2025-11-04 15:00:11\"}', NULL, '2025-11-04 15:00:11', '2025-11-04 15:00:11'),
('ecef148b-4027-4aa5-8010-2e80a4bb1ed0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":13,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 08:48:42\"}', NULL, '2025-11-05 08:48:42', '2025-11-05 08:48:42'),
('eed54009-0ef6-4dd0-b5e2-9664e914561a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":43,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:00:19\"}', NULL, '2025-11-11 15:00:19', '2025-11-11 15:00:19'),
('ef83c1f3-33c5-47df-999c-5933b9729d41', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":53,\"type\":\"booking_update\",\"time\":\"2025-11-13 08:58:31\"}', NULL, '2025-11-13 08:58:31', '2025-11-13 08:58:31'),
('f033b7bb-b34c-4457-8329-fd863312043a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Cancelled\",\"description\":\"Your booking has been cancelled by the service provider.\",\"booking_id\":14,\"type\":\"booking_cancelled\",\"time\":\"2025-10-29 15:47:17\"}', '2025-10-30 14:00:00', '2025-10-29 15:47:17', '2025-10-30 14:00:00'),
('f0689b21-027c-4931-86be-8ecb053b619b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":38,\"type\":\"booking_update\",\"time\":\"2025-11-06 09:45:19\"}', NULL, '2025-11-06 09:45:19', '2025-11-06 09:45:19'),
('f238c88e-3850-47cf-8bbb-c9a9fd802e30', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":43,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 15:00:19\"}', NULL, '2025-11-11 15:00:19', '2025-11-11 15:00:19'),
('f2d9cd35-2910-4031-ad89-a37f5cef559f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":40,\"type\":\"booking_accepted\",\"time\":\"2025-11-11 13:27:13\"}', NULL, '2025-11-11 13:27:13', '2025-11-11 13:27:13'),
('f38aaf6f-ef05-4552-b491-8aa93403b94c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Accepted\",\"description\":\"Your booking has been accepted by a service provider!\",\"booking_id\":11,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 15:13:26\"}', NULL, '2025-11-05 15:13:26', '2025-11-05 15:13:26'),
('f745a726-6910-480e-8a35-f307ecef13ad', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":38,\"type\":\"booking_accepted\",\"time\":\"2025-11-06 10:10:31\"}', NULL, '2025-11-06 10:10:31', '2025-11-06 10:10:31'),
('fb2f27bc-2ec3-4581-8a25-ae2451e72647', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":34,\"type\":\"booking_accepted\",\"time\":\"2025-11-05 12:37:08\"}', '2025-11-10 08:09:22', '2025-11-05 12:37:08', '2025-11-10 08:09:22'),
('fb967be6-cead-43ba-b240-66e3e6024a23', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":15,\"type\":\"booking_update\",\"time\":\"2025-10-29 11:32:20\"}', '2025-10-29 13:08:57', '2025-10-29 11:32:20', '2025-10-29 13:08:57'),
('fcface31-ac12-4efa-a6c3-d7c36ad224e0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 9, '{\"title\":\"Accepted\",\"description\":\"You Have Accepted a Booking !\",\"booking_id\":48,\"type\":\"booking_accepted\",\"time\":\"2025-11-12 13:18:45\"}', NULL, '2025-11-12 13:18:45', '2025-11-12 13:18:45'),
('fed6d4ce-0bec-472a-b761-1b3a44ab338c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking Confirmed\",\"description\":\"Your booking has been confirmed successfully!\",\"booking_id\":43,\"type\":\"booking_update\",\"time\":\"2025-11-11 15:00:04\"}', NULL, '2025-11-11 15:00:04', '2025-11-11 15:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` enum('credit_card','debit_card','bank_transfer','digital_wallet','cash','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` enum('stripe','paypal','square','bank_transfer','cash','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` tinyint DEFAULT NULL,
  `card_exp_year` smallint DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_status_history`
--

CREATE TABLE `payment_status_history` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_transaction_id` bigint UNSIGNED NOT NULL,
  `old_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changed_by` bigint UNSIGNED DEFAULT NULL,
  `change_reason` text COLLATE utf8mb4_unicode_ci,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `subscription_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AED',
  `status` enum('pending','processing','completed','failed','cancelled','refunded','partially_refunded') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('payment','refund','authorization','capture','void') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` enum('stripe','paypal','square','bank_transfer','cash','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` text COLLATE utf8mb4_unicode_ci,
  `failure_reason` text COLLATE utf8mb4_unicode_ci,
  `refunded_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_amount` decimal(10,2) NOT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(53, 'App\\Models\\User', 14, 'API Token', 'e5d769c76793a7145145889df7d94f104713b902e46699cb72dff4c564ee4c8e', '[\"*\"]', NULL, NULL, '2025-10-28 08:42:32', '2025-10-28 08:42:32'),
(54, 'App\\Models\\User', 15, 'API Token', '63446d5b144fd287e27a1991cf7dddb90f68153b525f79b03ac25580f132bff1', '[\"*\"]', NULL, NULL, '2025-10-28 08:42:57', '2025-10-28 08:42:57'),
(75, 'App\\Models\\User', 21, 'Guest API Token', '4d45497b6b89404d9fb2697dc562f78f008e24fbe4cd91ac38b7880622f1d23d', '[\"*\"]', NULL, NULL, '2025-10-31 15:42:13', '2025-10-31 15:42:13'),
(76, 'App\\Models\\User', 22, 'Guest API Token', '3ac38513a11bb90cc5a8f70f9a5b73ed26b60e3b11596658377d5865cb71e987', '[\"*\"]', NULL, NULL, '2025-10-31 15:43:42', '2025-10-31 15:43:42'),
(81, 'App\\Models\\User', 23, 'Guest API Token', 'b6468960f2bb0c994ef3c16c1f8e1d4a1dca24f01739ac378470e32d62a57798', '[\"*\"]', NULL, NULL, '2025-11-01 11:25:02', '2025-11-01 11:25:02'),
(83, 'App\\Models\\User', 24, 'Guest API Token', 'bef2b1137d41af056aa6ecde2692ab996b6f48961abb2a8d7010bed0bfdc9bb1', '[\"*\"]', NULL, NULL, '2025-11-01 12:47:55', '2025-11-01 12:47:55'),
(84, 'App\\Models\\User', 25, 'Guest API Token', '5c2b0019cbba97a78db1b82951505735d0f2a35872c955ccb80f2c57427dbf08', '[\"*\"]', NULL, NULL, '2025-11-01 12:48:13', '2025-11-01 12:48:13'),
(85, 'App\\Models\\User', 26, 'Guest API Token', 'bc55fd83c1c5c50fe95c7b4fd725537e78314775ee28e34a2976a8b67e10cc82', '[\"*\"]', NULL, NULL, '2025-11-01 12:48:14', '2025-11-01 12:48:14'),
(86, 'App\\Models\\User', 27, 'Guest API Token', '6e91fa4a99e6463918c1f97b6d6c66e82bb040fb8f38c6eae362bf4483be720f', '[\"*\"]', NULL, NULL, '2025-11-01 12:49:22', '2025-11-01 12:49:22'),
(87, 'App\\Models\\User', 28, 'Guest API Token', 'be8416d47021f8ac33292fea1c8717b4a0257232170e17cd7d607f4447b274f8', '[\"*\"]', NULL, NULL, '2025-11-01 12:51:10', '2025-11-01 12:51:10'),
(88, 'App\\Models\\User', 29, 'Guest API Token', 'ed5a5a1aff5d1eac416d79b836c9ba559d4c5b7cf7f8a169bd024bd16791b84e', '[\"*\"]', NULL, NULL, '2025-11-01 12:51:36', '2025-11-01 12:51:36'),
(89, 'App\\Models\\User', 30, 'Guest API Token', '35f19c4149e1cb04da710519c4de2b4587e29e3c1fab378bafec64815fe66ae7', '[\"*\"]', NULL, NULL, '2025-11-01 12:52:31', '2025-11-01 12:52:31'),
(90, 'App\\Models\\User', 31, 'Guest API Token', 'b866d7fdb31be52c9da0b0b76727af63fdc8d2cbbe4caa4cee846b7fee7db699', '[\"*\"]', NULL, NULL, '2025-11-01 12:53:59', '2025-11-01 12:53:59'),
(91, 'App\\Models\\User', 32, 'Guest API Token', '34de2ab833561c31746c68237133c863fc90bf0a9455e90af75fc7f21e98b791', '[\"*\"]', NULL, NULL, '2025-11-01 13:04:31', '2025-11-01 13:04:31'),
(96, 'App\\Models\\User', 20, 'API Token', '880585c846fbe749380c5657228e6feb82d4ce20f5e73354c90faefe597b9b4f', '[\"*\"]', NULL, NULL, '2025-11-01 14:34:24', '2025-11-01 14:34:24'),
(113, 'App\\Models\\User', 33, 'API Token', 'c67274ab726289cce19891cb0fc0140a0acca8d9a6c123d811e7bacac5388059', '[\"*\"]', NULL, NULL, '2025-11-04 13:27:28', '2025-11-04 13:27:28'),
(122, 'App\\Models\\User', 9, 'API Token', 'f759f0fb7c43dd7ec85cb0e21182d1cef9e27e83dd0b57538a2c3f1981ddff09', '[\"*\"]', NULL, NULL, '2025-11-07 10:04:29', '2025-11-07 10:04:29'),
(125, 'App\\Models\\User', 18, 'API Token', '7acc67201ad24aa4b70b85b18e3ecb30335d8634be6f2a618afe8063e3d88337', '[\"*\"]', NULL, NULL, '2025-11-13 16:17:43', '2025-11-13 16:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'privacy policy', 'Effective Date: [Insert Date]\nWelcome to Qwikhom\nThis Privacy Policy explains how we collect, use, disclose, and safeguard your personal\ninformation when you visit or use our website, mobile application, and related services.\nBy accessing or using Qwikhom, you agree to the practices described in this Policy. If you do\nnot agree, please discontinue use of the Platform.\n1. Information We Collect\nWe collect information to provide, improve, and personalize our services:\n1.1 Personal Information you provide us:\n Name, email address, phone number, and address\n Payment details (processed through secure gateways; Qwikhom does not store full\ncard data)\n Location, booking details, and service preferences\n Identification documents (if required for verification)\n1.2 Automatically collected information:\n Device type, operating system, IP address, and browser details\n Usage data such as pages visited, time spent, and app activity\n Cookies and similar tracking technologies (see Section 8)\n2. How We Use Your Information\nWe may use your information to:\n Process bookings, payments, and confirmations\n Communicate service updates, offers, or promotions\n Verify your identity and prevent fraud\n Improve our Platform and service quality\n Comply with applicable UAE laws and regulations\n\n3. How We Share Information\nWe may share your information only when necessary to:\n Assign service professionals (“Partners”) to fulfill your booking\n Process payments through secure third-party payment providers\n Comply with legal or regulatory obligations\n Respond to law-enforcement or government requests\nWe do not sell, rent, or trade your personal data to third parties for marketing purposes.\n4. Data Retention\nYour personal information is retained only for as long as needed to fulfill the purposes\ndescribed in this Policy or as required by UAE law. When data is no longer required, it is\nsecurely deleted or anonymized.\n\n\n5. Data Security\nWe employ industry-standard administrative, technical, and physical safeguards to protect\nyour information from unauthorized access, loss, misuse, or alteration.\nHowever, no electronic storage or transmission is completely secure; you use the Platform at\nyour own risk.\n6. Your Rights\nUnder UAE data-protection laws, you have the right to:\n Access the personal data we hold about you\n Request correction or deletion of inaccurate or outdated information\n Withdraw consent to marketing communications at any time\n Request restriction or objection to data processing (subject to legal limits)\nRequests can be sent to privacy@qwikhom.com or support@qwikhom.com.\n7. Third-Party Links and Services\nOur Platform may include links to external websites or services.\nWe are not responsible for the privacy practices or content of third-party websites. Please\nreview their policies before sharing any personal data.\n8. Cookies and Tracking Technologies\nQwikhom uses cookies to enhance user experience, remember preferences, and analyze\nusage.\nYou can modify your browser settings to block or delete cookies; however, some features of\nthe Platform may not function properly if cookies are disabled.\n9. Children’s Privacy\nOur services are intended for adults aged 18 and above.\nWe do not knowingly collect personal data from minors. If we learn that data from a child has\nbeen collected, we will delete it promptly.\n10. Updates to This Policy\nQwikhom may update this Privacy Policy periodically. Any changes will be posted on this\npage with an updated “Effective Date.”\nContinued use of the Platform after such updates constitutes your acceptance of the revised\nPolicy.\n11. Contact Us\nFor questions or concerns regarding this Privacy Policy or your personal data, please contact:\n\n📧support@qwikhom.com\n🌐www.qwikhom.com\n📍 Dubai, United Arab Emirates', 'active', '2025-10-14 02:50:00', '2025-10-14 03:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `service_id`, `title`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(60, 2, 'proc one', 'asdfgh', '1760693563_process_0_download (1).jpeg', 0, '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(61, 2, 'proc two', 'sewrghm', '1760693563_process_1_download (4).jpeg', 1, '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(62, 1, 'test proces', 'process desc', '1762232078_process_0_download (4).jpeg', 0, '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(63, 1, 'gejn', 'fewjebisb', '1762232078_process_1_download (1).jpeg', 1, '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(64, 49, 'process one', 'dasv', '', 0, '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(65, 49, 'process two', 'sfd', '', 1, '2025-11-04 10:31:51', '2025-11-04 10:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `profile_change_requests`
--

CREATE TABLE `profile_change_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `service_provider_id` bigint UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `requested_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_id` bigint UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `profile_change_requests`
--

INSERT INTO `profile_change_requests` (`id`, `service_provider_id`, `reason`, `requested_data`, `status`, `admin_id`, `approved_at`, `created_at`, `updated_at`) VALUES
(2, 9, NULL, '{\"name\":\"John Doe\",\"email\":\"johndoe@example.com\",\"phone\":\"9876543210\",\"alternatePhone\":\"9123456780\",\"biography\":\"Experienced service provider specializing in home maintenance.\",\"address\":\"123 Palm Street, Dubai\",\"profileImage\":\"1762853812_temp_9.jpg\"}', 'approved', 1, '2025-11-12 15:05:05', '2025-11-11 13:36:52', '2025-11-12 15:05:05'),
(3, 9, 'this was wrong , correct information mentioned', '{\"profileImage\":\"1762946100_temp_9.png\"}', 'pending', NULL, NULL, '2025-11-12 15:15:00', '2025-11-12 16:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `for_active_subscription` tinyint(1) NOT NULL DEFAULT '1',
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `expiry_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `code`, `discount`, `for_active_subscription`, `is_used`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'QWAPPLY200', 200.00, 1, 0, '2025-10-31 14:57:00', '2025-10-03 03:57:43', '2025-10-03 03:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `audience` enum('vendor','serviceprovider','user','all') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_payments`
--

CREATE TABLE `recurring_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AED',
  `status` enum('scheduled','processing','completed','failed','cancelled','skipped') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'scheduled',
  `scheduled_date` date NOT NULL,
  `processed_date` date DEFAULT NULL,
  `failed_date` date DEFAULT NULL,
  `attempt_count` tinyint NOT NULL DEFAULT '0',
  `max_attempts` tinyint NOT NULL DEFAULT '3',
  `next_retry_date` date DEFAULT NULL,
  `failure_reason` text COLLATE utf8mb4_unicode_ci,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `refund_policies`
--

CREATE TABLE `refund_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refund_policies`
--

INSERT INTO `refund_policies` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'refund & Cancellation policy', 'At Qwikhom, customer satisfaction is our top priority. We aim to provide a smooth and reliable experience across all home and personal care services.\r\nThis Refund & Cancellation Policy outlines the terms under which cancellations, refunds, or reschedules may be processed.\r\n________________________________________\r\n1. Service Bookings\r\nWhen you book a service through the Qwikhom platform (website or mobile app), you agree to the specific terms, pricing, and timing mentioned for that booking.\r\nAll bookings are confirmed only after successful payment or confirmation by Qwikhom.\r\n________________________________________\r\n2. Cancellation by Customer\r\nYou may cancel or reschedule your booking before the service professional has been dispatched.\r\n•	Free cancellation: Available if you cancel at least 2 hours before the scheduled service time.\r\n•	Late cancellation: If you cancel within 2 hours of the service, a cancellation fee may apply.\r\n•	No-show: If the professional arrives and the customer is unavailable or unresponsive, the booking may be marked as completed and no refund will be issued.\r\n________________________________________\r\n3. Cancellation by Qwikhom\r\nQwikhom reserves the right to cancel any booking due to:\r\n•	Unavailability of service professionals\r\n•	Safety concerns or incorrect location details\r\n•	Unforeseen technical or operational issues\r\nIn such cases, a full refund will be initiated to your original payment method.\r\n________________________________________\r\n4. Refund Eligibility\r\nRefunds may be issued in the following cases:\r\n•	Service cancelled by Qwikhom\r\n•	Customer cancelled within the allowed cancellation window\r\n•	Service not delivered or completed due to professional’s non-arrival or quality issues verified by Qwikhom\r\nOnce the issue is reviewed and approved, the refund will be processed within 7 to 10 working days (depending on your bank or payment provider).\r\nAll refunds are processed in UAE Dirhams (AED) via the original mode of payment.\r\n________________________________________\r\n5. Non-Refundable Situations\r\nRefunds will not be issued if:\r\n•	The customer provided incomplete or incorrect service details.\r\n•	The service was completed as per booking but did not meet personal expectations without valid quality proof.\r\n•	The customer violated Qwikhom’s Terms & Conditions or misused promotional offers.\r\n________________________________________\r\n6. Rescheduling\r\nCustomers can request rescheduling up to 2 hours before the original service time, subject to professional availability.\r\nQwikhom will make every effort to accommodate the new schedule without additional charges.\r\n________________________________________\r\n7. Quality & Service Concerns\r\nIf you are not satisfied with the service provided, you may raise a complaint within 24 hours of service completion by contacting our support team.\r\nQwikhom will review the issue, verify the concern, and take appropriate action which may include partial refund, complimentary reservice, or partner replacement.\r\n________________________________________\r\n8. Contact Us\r\nFor refund, cancellation, or reschedule requests, please reach out to:\r\n📧 support@qwikhom.com\r\n🌐 www.qwikhom.com\r\nOur support team is available 7 days a week to assist you.\r\n9. Jurisdiction\r\nThis Refund & Cancellation Policy is governed by the laws of the United Arab Emirates, and any disputes shall be subject to the exclusive jurisdiction of the courts in Dubai, UAE.', 'active', '2025-10-14 02:50:15', '2025-10-14 02:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_attendances`
--

CREATE TABLE `serviceprovider_attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `serviceProviderId` bigint UNSIGNED NOT NULL,
  `bookingId` bigint UNSIGNED NOT NULL,
  `status` enum('punchedIn','inProgress','punchedOut','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'punchedIn',
  `punchIn_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `punchOut_time` timestamp NULL DEFAULT NULL,
  `startImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startNotes` text COLLATE utf8mb4_unicode_ci,
  `midImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `midNotes` text COLLATE utf8mb4_unicode_ci,
  `completionImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completionNotes` text COLLATE utf8mb4_unicode_ci,
  `totalTime` decimal(8,2) DEFAULT NULL,
  `startLatitude` decimal(10,8) DEFAULT NULL,
  `startLongitude` decimal(11,8) DEFAULT NULL,
  `completionLatitude` decimal(10,8) DEFAULT NULL,
  `completionLongitude` decimal(11,8) DEFAULT NULL,
  `additionalData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `serviceprovider_attendances`
--

INSERT INTO `serviceprovider_attendances` (`id`, `serviceProviderId`, `bookingId`, `status`, `punchIn_time`, `punchOut_time`, `startImage`, `startNotes`, `midImage`, `midNotes`, `completionImage`, `completionNotes`, `totalTime`, `startLatitude`, `startLongitude`, `completionLatitude`, `completionLongitude`, `additionalData`, `created_at`, `updated_at`) VALUES
(6, 9, 17, 'punchedOut', '2025-11-10 12:05:19', '2025-11-10 16:05:19', '1762766879_defaultBanner.png', 'start test notes', NULL, NULL, '1762776319_3502688.png', 'completion test notes', 4.03, NULL, NULL, NULL, NULL, NULL, '2025-11-10 13:27:59', '2025-11-10 16:05:19'),
(7, 9, 18, 'punchedIn', '2025-11-10 15:20:33', NULL, '1762773633_defaultBanner.png', 'start test notes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-10 15:20:33', '2025-11-10 15:20:33'),
(9, 9, 13, 'punchedIn', '2025-11-11 12:41:30', NULL, '1762850490_WhatsApp Image 2025-10-28 at 9.46.49 PM.jpeg', 'kuchh nahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 12:41:30', '2025-11-11 12:41:30'),
(11, 9, 40, 'punchedIn', '2025-11-11 13:49:44', NULL, '1762854584_1762854573853.jpg', 'ghhikii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 13:49:44', '2025-11-11 13:49:44'),
(12, 9, 41, 'punchedIn', '2025-11-11 14:15:02', NULL, '1762856102_1762856092972.jpg', 'edit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 14:15:02', '2025-11-11 14:15:02'),
(13, 9, 42, 'punchedIn', '2025-11-11 14:45:00', NULL, '1762857900_1762857849767.jpg', 'hhhhhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 14:45:00', '2025-11-11 14:45:00'),
(14, 9, 43, 'inProgress', '2025-11-11 11:02:00', NULL, '1762858839_1762858830974.jpg', 'rrrrrr', '1762858920_1762858850558.jpg', 'rrrrrhhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 15:00:39', '2025-11-11 15:02:00'),
(15, 9, 44, 'inProgress', '2025-11-11 11:20:54', NULL, '1762859801_1762859792664.jpg', 'ffggghhjn', '1762860054_1762860041832.jpg', 'fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 15:16:41', '2025-11-11 15:20:54'),
(16, 9, 46, 'inProgress', '2025-11-11 11:53:47', NULL, '1762861463_1762861453515.jpg', 'tttttttttfgg', '1762862027_1762862011623.jpg', 'gffggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 15:44:23', '2025-11-11 15:53:47'),
(17, 9, 49, 'inProgress', '2025-11-11 12:03:16', NULL, '1762862325_1762862314654.jpg', 'tttt', '1762862596_1762862584430.jpg', 'tttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-11 15:58:45', '2025-11-11 16:03:16'),
(19, 9, 7, 'inProgress', '2025-11-12 09:03:07', NULL, '1762938160_1762937341538.jpg', 'ttggggghhh', '1762938187_1762938179846.jpg', 'tttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-12 13:02:40', '2025-11-12 13:03:07'),
(20, 9, 51, 'punchedIn', '2025-11-12 13:29:08', NULL, '1762939748_1762939739832.jpg', 'tttttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-12 13:29:08', '2025-11-12 13:29:08'),
(21, 9, 3, 'punchedIn', '2025-11-12 14:02:59', NULL, '1762941779_1762941764540.jpg', 'raju mistri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-12 14:02:59', '2025-11-12 14:02:59'),
(22, 9, 2, 'punchedIn', '2025-11-12 14:14:45', NULL, '1762942485_1762942479314.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-12 14:14:45', '2025-11-12 14:14:45'),
(23, 9, 53, 'punchedIn', '2025-11-13 09:00:23', NULL, '1763010023_1763009962940.jpg', 'rrrrr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-13 09:00:23', '2025-11-13 09:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `whats_include` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `price_onetime` decimal(10,2) DEFAULT NULL,
  `price_onetime_description` text COLLATE utf8mb4_unicode_ci,
  `duration_onetime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_weekly` decimal(10,2) DEFAULT NULL,
  `price_weekly_description` text COLLATE utf8mb4_unicode_ci,
  `price_monthly` decimal(10,2) DEFAULT NULL,
  `price_monthly_description` text COLLATE utf8mb4_unicode_ci,
  `price_yearly` decimal(10,2) DEFAULT NULL,
  `price_yearly_description` text COLLATE utf8mb4_unicode_ci,
  `is_arabic` tinyint(1) NOT NULL DEFAULT '0',
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `allow_quantity_increment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint UNSIGNED DEFAULT NULL,
  `qwikpick` tinyint(1) NOT NULL DEFAULT '0',
  `beauty_and_easy` tinyint(1) NOT NULL DEFAULT '0',
  `average_rating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `total_reviews` int NOT NULL DEFAULT '0'
) ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `name`, `description`, `whats_include`, `short_description`, `price_onetime`, `price_onetime_description`, `duration_onetime`, `price_weekly`, `price_weekly_description`, `price_monthly`, `price_monthly_description`, `price_yearly`, `price_yearly_description`, `is_arabic`, `duration`, `status`, `allow_quantity_increment`, `created_at`, `updated_at`, `media`, `vendor_id`, `qwikpick`, `beauty_and_easy`, `average_rating`, `total_reviews`) VALUES
(1, 1, 1, 'salon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac sem euismod, facilisis augue ut, porttitor eros. Integer vitae ligula id orci hendrerit luctus ut vel libero. Curabitur euismod purus vitae turpis sodales, at varius orci tincidunt. Maecenas blandit feugiat nunc, nec fermentum sem mattis ac. Suspendisse potenti. Sed sit amet purus a velit cursus consequat. Donec ultricies nisi sit amet luctus sodales. Vivamus vulputate, ligula sed laoreet dictum, magna ex cursus justo, nec eleifend elit justo eget erat. Quisque eu odio lorem. Vestibulum interdum diam id nibh lacinia, a bibendum nisl hendrerit. Morbi fermentum, est nec aliquam gravida, justo libero efficitur purus, non volutpat sapien neque eget arcu. Pellentesque dignissim nunc in felis cursus fermentum. Aliquam erat volutpat. Integer sit amet elit leo. Sed ac libero luctus, fringilla est sed, euismod velit.', '[\"test inclusion desc\",\"afdsjjn\",\"genewigeb\"]', 'long desc added', 117.00, NULL, NULL, 118.00, NULL, 119.00, NULL, 200.00, NULL, 1, '2  hours', 'active', 1, '2025-10-02 23:48:49', '2025-11-04 08:54:38', '[\"1762232078_0_download.jpeg\"]', 2, 0, 1, 4.0, 32),
(2, 2, 2, 'Maids – Subscription & on-demand cleaning', 'Professional house cleaning services available on subscription or one-time basis', '[\"sadf\",\"xzcvb\"]', 'asd', 500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2-4 hours', 'active', 0, '2025-10-03 00:06:31', '2025-10-17 13:49:00', '[\"1760596760_0_about.jpg\",\"1760596760_1_laravel_archi.jpg\"]', 2, 0, 1, 3.0, 20),
(49, 2, 2, 'basin cleaning', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed nisl convallis, feugiat tortor at, lacinia ligula. Quisque tristique, mauris ut gravida gravida, nulla metus fermentum lorem, in malesuada nunc felis non lorem. Curabitur dignissim mi ac velit porttitor, ac egestas sem fringilla. Nullam finibus, turpis et malesuada tincidunt, felis sapien tempus nisi, in feugiat ligula enim nec neque. Donec vehicula massa nec dolor sodales, eget iaculis elit tristique. Vivamus consequat neque nec lorem fermentum porta. Integer ac purus nec arcu feugiat convallis. Suspendisse ac mattis lectus, at interdum enim. Mauris a metus non erat rhoncus vulputate. Proin sit amet tincidunt lacus. Fusce bibendum urna vitae justo bibendum, nec mattis arcu efficitur. Sed tempor, neque in aliquam tincidunt, odio urna feugiat magna, ut fringilla leo turpis et massa.', '[\"incluson one\",\"demo\",\"demo\",\"fewnovjn\"]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed nisl convallis, feugiat tortor at, lacinia ligula. Quisque tristique, mauris ut gravida gravida, nulla metus fermentum lorem, in malesuada nunc felis non lorem. Curabitur dignissim mi ac velit porttitor, ac egestas sem fringilla. Nullam finibus, turpis et malesuada tincidunt, felis sapien tempus nisi, in feugiat ligula enim nec neque', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'active', 0, '2025-10-15 09:40:34', '2025-11-04 10:31:51', '[\"1762237911_0_download (2).jpeg\"]', 2, 1, 1, 0.0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_addons`
--

CREATE TABLE `service_addons` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `price` decimal(10,2) NOT NULL,
  `frequency_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('material','equipment','labor','premium','custom') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `quantity_limit` int DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `service_frequencies`
--

CREATE TABLE `service_frequencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `days_multiplier` int NOT NULL DEFAULT '1',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `service_frequency_options`
--

CREATE TABLE `service_frequency_options` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `frequency_type` enum('weekly','monthly','yearly','onetime') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_times` int NOT NULL,
  `duration` int DEFAULT NULL,
  `price_per_time` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_frequency_options`
--

INSERT INTO `service_frequency_options` (`id`, `service_id`, `frequency_type`, `no_of_times`, `duration`, `price_per_time`, `description`, `created_at`, `updated_at`) VALUES
(82, 2, 'onetime', 1, 1, 100.00, 'wsdf', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(83, 2, 'weekly', 1, 1, 100.00, NULL, '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(84, 2, 'weekly', 1, 2, 200.00, 'sdv', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(86, 2, 'monthly', 2, 2, 400.00, 'ertyukjmnbv', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(88, 2, 'yearly', 2, 2, 550.00, 'zxcvbnhgfds', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(91, 1, 'onetime', 1, 1, 100.00, 'bgfdbf', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(92, 1, 'weekly', 1, 1, 200.00, 'fvdsccdfdb', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(93, 1, 'weekly', 2, 1, 250.00, 'renf v', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(94, 49, 'onetime', 1, 1, 100.00, 'tets', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(95, 49, 'weekly', 1, 1, 200.00, 'test dsrse', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(96, 49, 'weekly', 3, 6, 300.00, 'demo', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(97, 49, 'monthly', 1, 1, 4000.00, 'desc', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(98, 49, 'yearly', 1, 1, 500.00, 'desc', '2025-11-04 10:31:51', '2025-11-04 10:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `service_materials`
--

CREATE TABLE `service_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `material_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_description` text COLLATE utf8mb4_unicode_ci,
  `applicable_to` enum('onetime','weekly','monthly','yearly','all') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `material_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `material_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_materials`
--

INSERT INTO `service_materials` (`id`, `service_id`, `material_name`, `material_description`, `applicable_to`, `material_price`, `material_image`, `created_at`, `updated_at`) VALUES
(66, 2, 'm1', 'wsdf', 'onetime', 50.00, '', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(67, 2, 'test name', 'tst desc', 'onetime', 20.00, NULL, NULL, NULL),
(68, 1, 'material 1', 'vfgfdvsdc', 'onetime', 100.00, '1762232078_6909870edc0bd_material_0_download (3).jpeg', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(69, 49, 'material one', 'demo', 'onetime', 10.00, '', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(70, 49, 'm 2', 'demo', 'weekly', 10.00, '', '2025-11-04 10:31:51', '2025-11-04 10:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `service_offers`
--

CREATE TABLE `service_offers` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` enum('percentage','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discounted_price_onetime` decimal(10,2) DEFAULT NULL,
  `discounted_price_weekly` decimal(10,2) DEFAULT NULL,
  `discounted_price_monthly` decimal(10,2) DEFAULT NULL,
  `discounted_price_yearly` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_offers`
--

INSERT INTO `service_offers` (`id`, `service_id`, `name`, `description`, `image`, `discount_type`, `discount_value`, `discounted_price_onetime`, `discounted_price_weekly`, `discounted_price_monthly`, `discounted_price_yearly`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Diwali Dhamak Offer', 'this will be the biggest offer festive at qwikhome', '1761718176.jpg', 'flat', 20.00, 115.00, 114.00, 100.00, 90.00, '2025-10-13', '2025-11-21', 'active', '2025-10-13 10:17:50', '2025-10-29 10:09:36'),
(16, 49, 'sadg', 'sad', '1761718220.jpg', 'percentage', 10.00, NULL, NULL, NULL, NULL, '2025-10-17', '2025-11-16', 'active', '2025-10-17 14:54:41', '2025-10-29 10:10:20'),
(17, 2, 'test', 'desc', '1761718230.jpg', 'percentage', 20.00, NULL, NULL, NULL, NULL, '2025-10-29', '2025-11-28', 'active', '2025-10-29 08:57:21', '2025-10-29 10:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_offer_frequency_option_discounts`
--

CREATE TABLE `service_offer_frequency_option_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `service_offer_id` bigint UNSIGNED NOT NULL,
  `frequency_option_id` bigint UNSIGNED NOT NULL,
  `discounted_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_offer_frequency_option_discounts`
--

INSERT INTO `service_offer_frequency_option_discounts` (`id`, `service_offer_id`, `frequency_option_id`, `discounted_price`, `created_at`, `updated_at`) VALUES
(11, 17, 83, 80.00, '2025-10-29 08:57:21', '2025-10-29 08:57:21'),
(12, 17, 84, 160.00, '2025-10-29 08:57:21', '2025-10-29 08:57:21'),
(14, 17, 86, 320.00, '2025-10-29 08:57:21', '2025-10-29 08:57:21'),
(16, 17, 88, 440.00, '2025-10-29 08:57:21', '2025-10-29 08:57:21'),
(17, 17, 82, 80.00, '2025-10-29 08:57:21', '2025-10-29 08:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_availabilities`
--

CREATE TABLE `service_provider_availabilities` (
  `id` bigint UNSIGNED NOT NULL,
  `service_provider_id` bigint UNSIGNED NOT NULL,
  `available_date` date NOT NULL,
  `available_time` time NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_provider_availabilities`
--

INSERT INTO `service_provider_availabilities` (`id`, `service_provider_id`, `available_date`, `available_time`, `is_available`, `created_at`, `updated_at`) VALUES
(7, 9, '2025-10-02', '06:00:00', 1, '2025-10-30 12:57:32', '2025-10-30 12:57:32'),
(8, 9, '2025-10-02', '07:00:00', 1, '2025-10-30 12:57:32', '2025-10-30 12:57:32'),
(13, 9, '2025-10-02', '10:00:00', 1, '2025-10-31 09:47:14', '2025-10-31 09:47:14'),
(14, 9, '2025-10-02', '12:00:00', 1, '2025-10-31 09:47:14', '2025-10-31 09:47:14'),
(105, 9, '2025-11-07', '16:00:00', 1, '2025-11-04 15:22:20', '2025-11-04 15:22:20'),
(112, 9, '2025-11-04', '06:00:00', 1, '2025-11-04 15:29:32', '2025-11-04 15:29:32'),
(113, 9, '2025-11-04', '07:00:00', 1, '2025-11-04 15:29:32', '2025-11-04 15:29:32'),
(120, 9, '2025-11-05', '13:00:00', 1, '2025-11-05 08:43:25', '2025-11-05 08:43:25'),
(121, 9, '2025-11-05', '16:00:00', 1, '2025-11-05 08:43:25', '2025-11-05 08:43:25'),
(122, 9, '2025-11-05', '14:00:00', 1, '2025-11-05 08:43:25', '2025-11-05 08:43:25'),
(123, 9, '2025-11-05', '17:00:00', 1, '2025-11-05 08:43:25', '2025-11-05 08:43:25'),
(142, 9, '2025-11-06', '07:00:00', 1, '2025-11-06 13:22:12', '2025-11-06 13:22:12'),
(143, 9, '2025-11-12', '06:00:00', 1, '2025-11-11 09:55:58', '2025-11-11 09:55:58'),
(144, 9, '2025-11-12', '07:00:00', 1, '2025-11-11 09:55:58', '2025-11-11 09:55:58'),
(145, 9, '2025-11-12', '09:00:00', 1, '2025-11-11 09:55:58', '2025-11-11 09:55:58'),
(146, 9, '2025-11-12', '15:00:00', 1, '2025-11-11 09:55:58', '2025-11-11 09:55:58'),
(147, 9, '2025-11-11', '06:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(148, 9, '2025-11-11', '07:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(149, 9, '2025-11-11', '08:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(150, 9, '2025-11-11', '09:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(151, 9, '2025-11-11', '10:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(152, 9, '2025-11-11', '11:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(153, 9, '2025-11-11', '12:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(154, 9, '2025-11-11', '13:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(155, 9, '2025-11-11', '14:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(156, 9, '2025-11-11', '16:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(157, 9, '2025-11-11', '17:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(158, 9, '2025-11-11', '19:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(159, 9, '2025-11-11', '15:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(160, 9, '2025-11-11', '20:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(161, 9, '2025-11-11', '18:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(162, 9, '2025-11-11', '22:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(163, 9, '2025-11-11', '21:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(164, 9, '2025-11-11', '23:00:00', 1, '2025-11-11 11:31:51', '2025-11-11 11:31:51'),
(201, 9, '2025-11-13', '06:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(202, 9, '2025-11-13', '07:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(203, 9, '2025-11-13', '09:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(204, 9, '2025-11-13', '10:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(205, 9, '2025-11-13', '08:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(206, 9, '2025-11-13', '11:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(207, 9, '2025-11-13', '13:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(208, 9, '2025-11-13', '12:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(209, 9, '2025-11-13', '14:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(210, 9, '2025-11-13', '17:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(211, 9, '2025-11-13', '16:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(212, 9, '2025-11-13', '15:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(213, 9, '2025-11-13', '18:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(214, 9, '2025-11-13', '19:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(215, 9, '2025-11-13', '20:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(216, 9, '2025-11-13', '22:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(217, 9, '2025-11-13', '23:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01'),
(218, 9, '2025-11-13', '21:00:00', 1, '2025-11-13 08:58:01', '2025-11-13 08:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_reviews`
--

CREATE TABLE `service_provider_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_provider_id` bigint UNSIGNED NOT NULL,
  `rating` tinyint NOT NULL COMMENT '1 to 5',
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_requirements`
--

CREATE TABLE `service_requirements` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_requirements`
--

INSERT INTO `service_requirements` (`id`, `service_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(61, 2, 'xcvbn', '', '2025-10-17 13:49:00', '2025-10-17 13:49:00'),
(62, 1, 'test requirements', '1762232078_0_download (3).jpeg', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(63, 1, 'ewgreb', '1762232078_1_download (1).jpeg', '2025-11-04 08:54:38', '2025-11-04 08:54:38'),
(64, 49, 'req one', '', '2025-11-04 10:31:51', '2025-11-04 10:31:51'),
(65, 49, 'req two', '', '2025-11-04 10:31:51', '2025-11-04 10:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `service_reviews`
--

CREATE TABLE `service_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `rating` tinyint NOT NULL DEFAULT '0' COMMENT '1 to 5',
  `mood` enum('happy','okay','sad') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jWHI8Kbyx6dBdN1LlV7Re53qy3hf9m3FkdQXaIMz', NULL, '3.249.13.81', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEIyV2NMWXhMOUJvRTBCM0dOeUNaMXh1Y1VpbkNoekV0ekVwbHp1VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vYWRtaW4ucXdpa2hvbS5hZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763153849),
('OJUJc52Rn80MYANShBErTICqBGIfQqahycyAyhjJ', NULL, '66.132.153.133', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDNBZkQzeG5ITXhSS0lTQno4c2swdzU3dHROSkM2R3lFSjFzZW5mNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9hZG1pbi5xd2lraG9tLmFlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763175154),
('Vnmq6fB8lixsRBU80bQV9A4lE22FU8Hc6i0DDtG4', NULL, '34.234.215.199', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWZqdHR0WGxSSnJ1RmZ3VXhEakVndEkzb05SWlJzQ0dQWlB5UFNtViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vYWRtaW4ucXdpa2hvbS5hZS9yZWZ1bmQtcG9saWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763147568),
('X24KDwYrZBYlrWLf8ZDMFtR68uyTR8dfjwJUTXck', NULL, '199.45.155.94', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienJlaXRocWxRZ2YzRHJHUjdtaFJYZDEyWkgxa0x5blNuT0NkbnpjSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vYWRtaW4ucXdpa2hvbS5hZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763170719),
('ZlDSGRyEony4uShl5S6fcKwB4WeFuIPq5hl4pPQu', NULL, '65.1.242.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/91.0.4472.124', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0JVdTcxTGY0T0RlQXNGajNEUUxrWlE3Uk5EVmI5NmZDQnFJYnVnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8vYWRtaW4ucXdpa2hvbS5hZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763159563);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'auto_cancel_time_limit', '1', '2025-11-05 15:56:38', '2025-11-06 09:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `description`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 1, 'spatula wax', NULL, 'active', '2025-10-02 23:48:08', '2025-10-17 14:00:16', '1760596857.jpg'),
(2, 2, 'Cleaning Services', 'Professional cleaning and hygiene services', 'active', '2025-10-03 00:06:31', '2025-10-16 06:41:24', '1760596884.jpg'),
(3, 2, 'Laundry Services', 'Clothing and fabric care services', 'active', '2025-10-03 00:06:31', '2025-11-04 15:26:48', '1762255608.png'),
(4, 2, 'Pest & Disinfection Services', 'Pest control and disinfection services', 'active', '2025-10-03 00:06:31', '2025-10-29 13:29:16', '1761730156.jpg'),
(5, 2, 'Moving & Relocation Services', 'Professional moving and relocation assistance', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(6, 3, 'Child Care', 'Childcare and nanny services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(7, 3, 'Post-Maternity Care', 'Post-delivery maternal care and assistance', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(8, 3, 'Education Support', 'Tutoring and educational assistance services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(9, 3, 'Food Services', 'Home cooking and meal preparation services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(10, 3, 'Transportation', 'Family transportation and driver services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(11, 4, 'Salon Services', 'Professional hair, beauty, and grooming services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(12, 4, 'Spa Services', 'Relaxation and wellness spa treatments', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(13, 5, 'Window Treatments', 'Curtain and blind installation and repair services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(14, 5, 'Painting & Decoration', 'Interior painting and decorative services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(15, 5, 'Carpentry Services', 'Woodworking and furniture repair services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(16, 5, 'Appliance Maintenance', 'Home appliance repair and maintenance services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(17, 5, 'Landscape Maintenance', 'Garden and outdoor space maintenance', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(18, 6, 'Vehicle Services', 'Vehicle maintenance and recovery services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(19, 6, 'Legal Services', 'Legal assistance and renewal services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(20, 7, 'Event Planning', 'Party and event organization services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL),
(21, 7, 'Pet Care Services', 'Pet care, grooming, and wellness services', 'active', '2025-10-03 00:06:31', '2025-10-03 00:06:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_billing_cycles`
--

CREATE TABLE `subscription_billing_cycles` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `user_subscription_id` bigint UNSIGNED DEFAULT NULL,
  `cycle_number` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','paid','failed','skipped','prorated') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `payment_transaction_id` bigint UNSIGNED DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'terms and conditions', 'WelcometoQwikhom!\r\nThese Terms and Conditions (“Terms”) govern your access to and use of the Qwikhom website, mobile application, and related services (collectively, the “Platform”). By accessing or using our Platform, you agree to comply with and be bound by these Terms.\r\nPlease read them carefully before using our services.\r\n________________________________________\r\n1. Overview\r\nQwikhom is a technology-driven platform based in the United Arab Emirates (UAE) that connects customers with trained and verified service professionals (“Partners”) for various home and personal care services. Qwikhom facilitates service booking and payment transactions between customers and service providers but does not directly employ the service professionals.\r\n________________________________________\r\n2. Eligibility and Use\r\n•	You must be 18 years or older to register and use our services.\r\n•	You agree to provide accurate, current, and complete information during registration and booking.\r\n•	You are responsible for maintaining the confidentiality of your account login details.\r\n•	Misuse of the Platform, fraudulent activity, or violation of these Terms may result in account suspension or legal action.\r\n________________________________________\r\n3. Services Offered\r\nQwikhom enables users to book professional services including but not limited to:\r\nhome cleaning, plumbing, electrical work, appliance repair, painting, pest control, beauty care, grooming, and wellness treatments.\r\nAll services are provided by independent professionals verified by Qwikhom. The quality and outcome of each service may vary depending on the scope and condition at the service location.\r\n________________________________________\r\n4. Pricing and Payments\r\n•	Service prices are listed on the Platform and may vary by location, time, and nature of the service.\r\n•	Payments can be made through secure online payment gateways, debit/credit cards, or other approved digital methods.\r\n•	Qwikhom reserves the right to modify pricing, introduce offers, or apply service charges at its discretion.\r\n•	All payments are processed in UAE Dirhams (AED).\r\n________________________________________\r\n5. Cancellations and Refunds\r\n•	You may cancel or reschedule a service before the professional is dispatched.\r\n•	Refunds (if applicable) will be processed in accordance with our Refund Policy.\r\n•	Qwikhom reserves the right to cancel any booking due to unavailability or unforeseen circumstances.\r\n•	In case of a refund, the amount will be credited to your original payment method within a reasonable period as per UAE banking norms.\r\n________________________________________\r\n6. User Responsibilities\r\nYou agree not to:\r\n•	Misuse or attempt to interfere with the operation of the Platform.\r\n•	Post or transmit any misleading, harmful, or illegal content.\r\n•	Violate UAE laws, regulations, or moral standards.\r\n•	Copy, modify, or distribute Platform content without written consent from Qwikhom.\r\n________________________________________\r\n7. Partner Responsibilities\r\n•	All service professionals are required to perform their services with due care, skill, and professionalism.\r\n•	Partners are independent contractors, not employees or representatives of Qwikhom.\r\n•	Any issues or disputes between users and partners should be reported to Qwikhom for mediation and resolution support.\r\n________________________________________\r\n8. Limitation of Liability\r\nQwikhom acts solely as a facilitator between users and service professionals. While we ensure that professionals are verified and trained, Qwikhom shall not be liable for:\r\n•	Any direct or indirect damages caused during or after service completion.\r\n•	Loss or damage to property, or personal injury resulting from the service.\r\n•	Service delays or failures beyond Qwikhom’s reasonable control.\r\n________________________________________\r\n9. Intellectual Property\r\nAll trademarks, designs, software, and content available on the Qwikhom Platform are owned by Qwikhom or its licensors. No material may be copied, reproduced, or distributed without prior written permission.\r\n________________________________________\r\n10. Privacy and Data Protection\r\nYour personal data is collected, stored, and processed in compliance with applicable UAE data protection laws. For details, please refer to our Privacy Policy. By using our Platform, you consent to our data practices as described therein.\r\n________________________________________\r\n11. Updates and Modifications\r\nQwikhom reserves the right to update or amend these Terms at any time. Changes will be effective upon posting on the Platform. Continued use of our services constitutes acceptance of the updated Terms.\r\n________________________________________\r\n12. Governing Law and Jurisdiction\r\nThese Terms and Conditions are governed by the laws of the United Arab Emirates. Any disputes arising under or in connection with these Terms shall be subject to the exclusive jurisdiction of the courts of Dubai, UAE.\r\n________________________________________\r\n13. Contact Us\r\nFor any queries, feedback, or concerns, please contact us:\r\n📧 support@qwikhom.com (change it as per requirement)\r\n🌐 www.qwikhom.com (change it as per requirement)', 'active', '2025-10-14 02:49:39', '2025-10-14 02:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternatePhone` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `active` int NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `application_document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license_document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_certificate_document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` enum('fixed_rate','commission','revenue_share') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'commission',
  `fixed_rate_amount` decimal(10,2) DEFAULT NULL,
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `revenue_share_ratio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `alternatePhone`, `image`, `biography`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `vendor_id`, `active`, `is_deleted`, `deleted_at`, `address`, `application_document`, `trade_license_document`, `vat_certificate_document`, `staff_documents`, `contract_document`, `payment_type`, `fixed_rate_amount`, `commission_rate`, `revenue_share_ratio`, `average_rating`, `is_guest`, `fcm_token`) VALUES
(1, 'Admin', 'admin@gmail.com', '1111111111', NULL, NULL, NULL, '2025-09-29 05:09:13', '$2y$12$jltDtsVVsQdN44eQPrJd0.pVa2O6sYi32GtCumw6PW.46Kw8mNGx.', 'SNuq34N8tN8Pk878Dg98KkNe6iG56XDT17PiZuMZ6DELZ8TeoFtkKbmL0A49', '2025-09-29 05:09:13', '2025-09-29 05:09:13', 'admin', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(2, 'Vendor', 'vendor@gmail.com', '5555555555', NULL, '1759494600.jpg', NULL, '2025-09-29 23:29:34', '$2y$12$NqOezJgewb68KlxAtXNdgu/Q2LLkiTUdNGIGysQ/tmSID6Z/rvqEu', 'XCE2Gk9hzHAOREsyoSw8uY8skcXuQx9NJYxTQBlQOucB5WhSJwbnQV5GmynE', '2025-09-29 23:29:34', '2025-10-03 07:00:00', 'vendor', NULL, 0, 0, NULL, 'nashik , india', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(3, 'user', 'user@gmail.com', '0000000000', NULL, NULL, NULL, '2025-09-29 23:29:34', '$2y$12$NM1NJ4s4a8/P0XkqFAfZd.Qo502cuY8Sge78WIhyEELo8BcCyDyBS', 'aacdjLqjKY', '2025-09-29 23:29:34', '2025-10-06 00:55:26', 'user', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(6, 'chetan', 'chetan@gmail.com', '7777777777', NULL, '1759492396.jpg', NULL, NULL, '$2y$12$WfWRTBZJWNAjb5Mnc7/xD.95MuIrYuYmDxBNxEc5cgML0LBkgAmzC', NULL, '2025-10-03 06:23:16', '2025-10-03 06:23:16', 'serviceprovider', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(8, 'John Smith', 'john.smith@example.com', '+1987654321', NULL, NULL, NULL, NULL, '$2y$12$u9BdluXhEGt1BS9Eej4f8upoFRCymY9UB1USx6Jq5SBuMpmQ35aTa', NULL, '2025-10-03 23:43:13', '2025-10-03 23:43:13', 'serviceprovider', NULL, 1, 0, NULL, '456 Worker Ave, City, State 12346', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(9, 'dani', 'dani@gmail.com', '6857634583', '124356784564', NULL, 'i am a plumber', NULL, '$2y$12$c7DX6OE.H.jdOyVngBmcZeY3699DTcsyHAgr.0qSnngSwifxRqAES', NULL, '2025-10-03 23:43:13', '2025-11-12 16:03:48', 'serviceprovider', NULL, 0, 0, NULL, '123 Palm Street, Dubai', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(10, 'Mike Davis', 'mike.davis@example.com', '+1444987654', NULL, NULL, NULL, NULL, '$2y$12$XAG06NhLvozFbpTUmA4AAur9T/AMSe4Q4N3rTPu5MWgUKcbvyuJJS', NULL, '2025-10-03 23:43:13', '2025-10-03 23:43:13', 'serviceprovider', NULL, 1, 0, NULL, '321 Service Ln, City, State 12348', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(11, 'Alice Cooper', 'alice.cooper@example.com', '+1777123456', NULL, NULL, NULL, NULL, '$2y$12$/HfQm/RLJDhknsXiXU9sz.SnBlOiRJaz1.PhtRPZwMZioCm2vatw.', NULL, '2025-10-03 23:43:14', '2025-10-06 00:55:29', 'user', NULL, 1, 0, NULL, '111 Customer St, City, State 12349', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(12, 'Bob Wilson', 'bob.wilson@example.com', '+1666234567', NULL, NULL, NULL, NULL, '$2y$12$oNQLwKKC7pn0f.cEWiZmYuqRVRNgmiwcQ0OJ8romRdEMxy.yxOWt6', NULL, '2025-10-03 23:43:14', '2025-10-03 23:43:14', 'user', NULL, 0, 0, NULL, '222 Client Ave, City, State 12350', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(13, 'Carol Brown', 'carol.brown@example.com', '+1555345678', NULL, NULL, NULL, NULL, '$2y$12$cIiAVOIviqrMua9mw8aGtO8jAaQaDxC/Njok4w/2N9smnl6YcOT2i', NULL, '2025-10-03 23:43:14', '2025-10-06 00:55:06', 'user', NULL, 1, 0, NULL, '333 Patron Rd, City, State 12351', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(14, 'David Lee', 'david.lee@example.com', '+1444456789', NULL, NULL, NULL, NULL, '$2y$12$UHXTVSKimJ1b3OYegaQP1u6aLJMaT3nKMPYsAqNsmJBVXEgT5sYgq', NULL, '2025-10-03 23:43:15', '2025-10-06 00:29:09', 'user', NULL, 0, 0, '2025-10-08 06:47:00', '444 Consumer Ln, City, State 12352', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(15, 'new vendor', 'vendor2@gmail.com', '4556675645', NULL, '', NULL, NULL, '$2y$12$VhNY23Z7iG6.8e.6V1cwCeWsf8BWNidjIHmqCeUwfSbIa54CdzRJe', NULL, '2025-10-06 01:24:32', '2025-10-06 01:24:32', 'serviceprovider', NULL, 0, 0, NULL, 'wanowrie , pune , india', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(17, 'employee', 'emp@gmail.com', '5656565656', NULL, '', NULL, NULL, '$2y$12$XWU/bCM/y1qc/wFHr5rglekWAKmT77R1uEqzr1q8f3vR1G0ROZfp2', NULL, '2025-10-06 01:50:02', '2025-10-06 01:50:02', 'serviceprovider', NULL, 0, 0, NULL, 'nashik', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(18, 'Pritesh Pawar', 'rathodprathamesh23@gmail.com', '7757872473', NULL, '1762849771.jpg', NULL, NULL, NULL, NULL, '2025-10-15 06:58:27', '2025-11-11 12:29:31', 'user', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(19, 'pritesh pawarya', 'pritesh@gmail.com', '9876543210', NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-15 06:58:54', '2025-10-29 11:00:29', 'user', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(20, 'Chetan Shelake', 'chetan123@gmail.com', '7696986799', NULL, '1760596392.jpg', NULL, NULL, '$2y$12$RCjVl9unVnNAuc368yHhfO5iYwpQVGvRTpsBN/Boqs1G4OAvaP4Si', NULL, '2025-10-16 06:32:29', '2025-10-16 06:33:12', 'serviceprovider', 2, 0, 0, NULL, 'demo', NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL),
(21, 'Guest User', 'guest_1761910933@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-31 15:42:13', '2025-10-31 15:42:13', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(22, 'Guest User', 'guest_1761911022@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-31 15:43:42', '2025-10-31 15:43:42', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(23, 'Guest User', 'guest_1761981902@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 11:25:02', '2025-11-01 11:25:02', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(24, 'Guest User', 'guest_1761986875@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:47:55', '2025-11-01 12:47:55', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(25, 'Guest User', 'guest_1761986893@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:48:13', '2025-11-01 12:48:13', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(26, 'Guest User', 'guest_1761986894@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:48:14', '2025-11-01 12:48:14', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(27, 'Guest User', 'guest_1761986962@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:49:22', '2025-11-01 12:49:22', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(28, 'Guest User', 'guest_1761987070@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:51:10', '2025-11-01 12:51:10', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(29, 'Guest User', 'guest_1761987096@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:51:36', '2025-11-01 12:51:36', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(30, 'Guest User', 'guest_1761987151@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:52:31', '2025-11-01 12:52:31', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(31, 'Guest User', 'guest_1761987238@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:53:59', '2025-11-01 12:53:59', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(32, 'Guest User', 'guest_1761987871@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-01 13:04:31', '2025-11-01 13:04:31', 'guest', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 1, NULL),
(33, 'prathamesh', 'prathamesh@gmail.com', '9960523475', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-03 14:44:43', '2025-11-03 14:44:43', 'user', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commission', NULL, NULL, NULL, 0.00, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_type` enum('fixed_rate','commission','revenue_share') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_rate_amount` decimal(10,2) DEFAULT NULL,
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `revenue_share_ratio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_services`
--

INSERT INTO `user_services` (`id`, `user_id`, `service_id`, `created_at`, `updated_at`, `payment_type`, `fixed_rate_amount`, `commission_rate`, `revenue_share_ratio`) VALUES
(7, 9, 2, '2025-10-29 15:02:32', '2025-10-29 15:02:32', NULL, NULL, NULL, NULL),
(8, 9, 49, '2025-10-29 15:02:32', '2025-10-29 15:02:32', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subscription_plan_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `subscription_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','paused','cancelled','expired','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancellation_reason` text COLLATE utf8mb4_unicode_ci,
  `billing_cycle` enum('weekly','monthly','quarterly','yearly') COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_day` tinyint NOT NULL,
  `base_price` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_amount` decimal(10,2) NOT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '1',
  `next_billing_date` date NOT NULL,
  `failed_payment_count` tinyint NOT NULL DEFAULT '0',
  `max_failed_payments` tinyint NOT NULL DEFAULT '3',
  `payment_method_id` bigint UNSIGNED NOT NULL,
  `last_payment_date` date DEFAULT NULL,
  `last_payment_amount` decimal(10,2) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_plan_id`, `service_id`, `subscription_number`, `status`, `start_date`, `end_date`, `trial_end_date`, `cancelled_at`, `cancellation_reason`, `billing_cycle`, `billing_day`, `base_price`, `discount_amount`, `tax_amount`, `total_amount`, `auto_renew`, `next_billing_date`, `failed_payment_count`, `max_failed_payments`, `payment_method_id`, `last_payment_date`, `last_payment_amount`, `metadata`, `created_at`, `updated_at`) VALUES
(1, 18, 79, 49, 'SUB-6901C304424EB', 'active', '2025-10-29', NULL, NULL, NULL, NULL, 'weekly', 29, 300.00, 0.00, 0.00, 320.00, 1, '2025-11-05', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":103,\"frequency_option_id\":79,\"providers_count\":1,\"include_material\":1,\"selected_addons\":\"[64,65]\"}', '2025-10-29 11:32:20', '2025-10-29 11:32:20'),
(2, 18, 83, 2, 'SUB-69030DF7BEABC', 'active', '2025-10-30', NULL, NULL, NULL, NULL, 'weekly', 30, 100.00, 51.00, 0.00, 119.00, 1, '2025-11-06', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":133,\"frequency_option_id\":83,\"providers_count\":1,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-10-30 11:04:23', '2025-10-30 11:04:23'),
(3, 18, 83, 2, 'SUB-69030E01340E2', 'active', '2025-10-30', NULL, NULL, NULL, NULL, 'weekly', 30, 100.00, 51.00, 0.00, 119.00, 1, '2025-11-06', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":133,\"frequency_option_id\":83,\"providers_count\":1,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-10-30 11:04:33', '2025-10-30 11:04:33'),
(4, 18, 83, 2, 'SUB-69032FF599761', 'active', '2025-10-30', NULL, NULL, NULL, NULL, 'weekly', 30, 100.00, 0.00, 0.00, 170.00, 1, '2025-11-06', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":147,\"frequency_option_id\":83,\"providers_count\":3,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-10-30 13:29:25', '2025-10-30 13:29:25'),
(5, 18, 83, 2, 'SUB-690330E9082ED', 'active', '2025-10-30', NULL, NULL, NULL, NULL, 'weekly', 30, 100.00, 0.00, 0.00, 170.00, 1, '2025-11-06', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":153,\"frequency_option_id\":83,\"providers_count\":2,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-10-30 13:33:29', '2025-10-30 13:33:29'),
(6, 18, 83, 2, 'SUB-69034965EB3F7', 'active', '2025-10-30', NULL, NULL, NULL, NULL, 'weekly', 30, 100.00, 0.00, 0.00, 170.00, 1, '2025-11-06', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":199,\"frequency_option_id\":83,\"providers_count\":2,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-10-30 15:17:57', '2025-10-30 15:17:57'),
(7, 18, 95, 49, 'SUB-6912E673BD9FB', 'active', '2025-11-11', NULL, NULL, NULL, NULL, 'weekly', 11, 200.00, 0.00, 0.00, 220.00, 1, '2025-11-18', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":455,\"frequency_option_id\":95,\"providers_count\":2,\"include_material\":1,\"selected_addons\":\"[69,70]\"}', '2025-11-11 11:32:03', '2025-11-11 11:32:03'),
(8, 18, 83, 2, 'SUB-6912E6929FFF3', 'active', '2025-11-11', NULL, NULL, NULL, NULL, 'weekly', 11, 100.00, 0.00, 0.00, 170.00, 1, '2025-11-18', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":456,\"frequency_option_id\":83,\"providers_count\":2,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-11-11 11:32:34', '2025-11-11 11:32:34'),
(9, 18, 84, 2, 'SUB-6915658DF2BA6', 'active', '2025-11-13', NULL, NULL, NULL, NULL, 'weekly', 13, 200.00, 0.00, 0.00, 470.00, 1, '2025-11-20', 0, 3, 1, NULL, NULL, '{\"cart_item_id\":502,\"frequency_option_id\":84,\"providers_count\":2,\"include_material\":1,\"selected_addons\":\"[66,67]\"}', '2025-11-13 08:58:53', '2025-11-13 08:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `offer_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `service_id`, `offer_id`, `created_at`, `updated_at`) VALUES
(75, 18, 49, NULL, '2025-11-04 10:47:26', '2025-11-04 10:47:26'),
(78, 18, 2, NULL, '2025-11-12 10:57:15', '2025-11-12 10:57:15'),
(79, 18, 1, NULL, '2025-11-12 11:00:35', '2025-11-12 11:00:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_cancelled_by_foreign` (`cancelled_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_session_id_index` (`session_id`),
  ADD KEY `carts_user_id_index` (`user_id`),
  ADD KEY `carts_status_expires_at_index` (`status`,`expires_at`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_service_frequency_id_foreign` (`service_frequency_id`),
  ADD KEY `cart_items_preferred_service_provider_id_foreign` (`preferred_service_provider_id`),
  ADD KEY `cart_items_item_type_item_id_index` (`item_type`,`item_id`),
  ADD KEY `cart_items_cart_id_index` (`cart_id`),
  ADD KEY `cart_items_subscription_plan_id_index` (`subscription_plan_id`),
  ADD KEY `cart_items_combo_offer_id_index` (`combo_offer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_offers`
--
ALTER TABLE `combo_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_offer_services`
--
ALTER TABLE `combo_offer_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combo_offer_services_combo_offer_id_service_id_unique` (`combo_offer_id`,`service_id`),
  ADD KEY `combo_offer_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_user_id_foreign` (`user_id`),
  ADD KEY `complaints_assigned_admin_id_foreign` (`assigned_admin_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `disclaimers`
--
ALTER TABLE `disclaimers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_service_id_foreign` (`service_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feedbacks_booking_id_unique` (`booking_id`),
  ADD KEY `feedbacks_user_id_foreign` (`user_id`),
  ADD KEY `feedbacks_service_id_foreign` (`service_id`),
  ADD KEY `feedbacks_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processes_service_id_foreign` (`service_id`);

--
-- Indexes for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_change_requests_service_provider_id_foreign` (`service_provider_id`),
  ADD KEY `profile_change_requests_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promocodes_code_unique` (`code`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_created_by_foreign` (`created_by`);

--
-- Indexes for table `refund_policies`
--
ALTER TABLE `refund_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceprovider_attendances`
--
ALTER TABLE `serviceprovider_attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serviceprovider_attendances_serviceproviderid_bookingid_unique` (`serviceProviderId`,`bookingId`),
  ADD KEY `serviceprovider_attendances_serviceproviderid_bookingid_index` (`serviceProviderId`,`bookingId`),
  ADD KEY `serviceprovider_attendances_status_index` (`status`),
  ADD KEY `serviceprovider_attendances_punchin_time_index` (`punchIn_time`),
  ADD KEY `serviceprovider_attendances_punchout_time_index` (`punchOut_time`),
  ADD KEY `serviceprovider_attendances_bookingid_foreign` (`bookingId`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_id_foreign` (`category_id`),
  ADD KEY `services_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `services_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `service_addons`
--
ALTER TABLE `service_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_addons_service_id_foreign` (`service_id`),
  ADD KEY `service_addons_frequency_id_foreign` (`frequency_id`);

--
-- Indexes for table `service_frequencies`
--
ALTER TABLE `service_frequencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_frequencies_slug_unique` (`slug`);

--
-- Indexes for table `service_frequency_options`
--
ALTER TABLE `service_frequency_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_frequency_options_service_id_frequency_type_index` (`service_id`,`frequency_type`);

--
-- Indexes for table `service_materials`
--
ALTER TABLE `service_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_materials_service_id_applicable_to_index` (`service_id`,`applicable_to`);

--
-- Indexes for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_offers_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_offer_frequency_option_discounts`
--
ALTER TABLE `service_offer_frequency_option_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_offer_freq_option_unique` (`service_offer_id`,`frequency_option_id`),
  ADD KEY `fk_so_freq_discounts_option_id` (`frequency_option_id`);

--
-- Indexes for table `service_provider_availabilities`
--
ALTER TABLE `service_provider_availabilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_provider_date_time` (`service_provider_id`,`available_date`,`available_time`);

--
-- Indexes for table `service_provider_reviews`
--
ALTER TABLE `service_provider_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_provider_reviews_user_id_foreign` (`user_id`),
  ADD KEY `service_provider_reviews_service_provider_id_foreign` (`service_provider_id`);

--
-- Indexes for table `service_requirements`
--
ALTER TABLE `service_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_requirements_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_reviews`
--
ALTER TABLE `service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `service_reviews_service_id_foreign` (`service_id`),
  ADD KEY `service_reviews_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `subscription_billing_cycles`
--
ALTER TABLE `subscription_billing_cycles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_billing_cycles_subscription_id_cycle_number_unique` (`subscription_id`,`cycle_number`),
  ADD KEY `subscription_billing_cycles_payment_transaction_id_foreign` (`payment_transaction_id`),
  ADD KEY `subscription_billing_cycles_subscription_id_index` (`subscription_id`),
  ADD KEY `subscription_billing_cycles_cycle_number_index` (`cycle_number`),
  ADD KEY `subscription_billing_cycles_status_index` (`status`),
  ADD KEY `subscription_billing_cycles_user_subscription_id_foreign` (`user_subscription_id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_services_user_id_service_id_unique` (`user_id`,`service_id`),
  ADD KEY `user_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_subscriptions_subscription_number_unique` (`subscription_number`),
  ADD KEY `user_subscriptions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `user_subscriptions_user_id_index` (`user_id`),
  ADD KEY `user_subscriptions_service_id_index` (`service_id`),
  ADD KEY `user_subscriptions_subscription_plan_id_index` (`subscription_plan_id`),
  ADD KEY `user_subscriptions_status_index` (`status`),
  ADD KEY `user_subscriptions_next_billing_date_index` (`next_billing_date`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_service_id_foreign` (`service_id`),
  ADD KEY `wishlists_offer_id_foreign` (`offer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `combo_offers`
--
ALTER TABLE `combo_offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_offer_services`
--
ALTER TABLE `combo_offer_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disclaimers`
--
ALTER TABLE `disclaimers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_policies`
--
ALTER TABLE `refund_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serviceprovider_attendances`
--
ALTER TABLE `serviceprovider_attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_addons`
--
ALTER TABLE `service_addons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_frequencies`
--
ALTER TABLE `service_frequencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_frequency_options`
--
ALTER TABLE `service_frequency_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `service_materials`
--
ALTER TABLE `service_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `service_offers`
--
ALTER TABLE `service_offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `service_offer_frequency_option_discounts`
--
ALTER TABLE `service_offer_frequency_option_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `service_provider_availabilities`
--
ALTER TABLE `service_provider_availabilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `service_provider_reviews`
--
ALTER TABLE `service_provider_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_requirements`
--
ALTER TABLE `service_requirements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `service_reviews`
--
ALTER TABLE `service_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscription_billing_cycles`
--
ALTER TABLE `subscription_billing_cycles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_combo_offer_id_foreign` FOREIGN KEY (`combo_offer_id`) REFERENCES `combo_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_preferred_service_provider_id_foreign` FOREIGN KEY (`preferred_service_provider_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_items_service_frequency_id_foreign` FOREIGN KEY (`service_frequency_id`) REFERENCES `service_frequency_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cart_items_subscription_plan_id_foreign` FOREIGN KEY (`subscription_plan_id`) REFERENCES `service_subscription_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `combo_offer_services`
--
ALTER TABLE `combo_offer_services`
  ADD CONSTRAINT `combo_offer_services_combo_offer_id_foreign` FOREIGN KEY (`combo_offer_id`) REFERENCES `combo_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `combo_offer_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_assigned_admin_id_foreign` FOREIGN KEY (`assigned_admin_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `complaints_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookingsoldtable` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedbacks_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedbacks_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedbacks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  ADD CONSTRAINT `profile_change_requests_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `profile_change_requests_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD CONSTRAINT `push_notifications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `serviceprovider_attendances`
--
ALTER TABLE `serviceprovider_attendances`
  ADD CONSTRAINT `serviceprovider_attendances_bookingid_foreign` FOREIGN KEY (`bookingId`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serviceprovider_attendances_serviceproviderid_foreign` FOREIGN KEY (`serviceProviderId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `services_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `service_addons`
--
ALTER TABLE `service_addons`
  ADD CONSTRAINT `service_addons_frequency_id_foreign` FOREIGN KEY (`frequency_id`) REFERENCES `service_frequencies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `service_addons_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_frequency_options`
--
ALTER TABLE `service_frequency_options`
  ADD CONSTRAINT `service_frequency_options_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_materials`
--
ALTER TABLE `service_materials`
  ADD CONSTRAINT `service_materials_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD CONSTRAINT `service_offers_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_offer_frequency_option_discounts`
--
ALTER TABLE `service_offer_frequency_option_discounts`
  ADD CONSTRAINT `fk_so_freq_discounts_offer_id` FOREIGN KEY (`service_offer_id`) REFERENCES `service_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_so_freq_discounts_option_id` FOREIGN KEY (`frequency_option_id`) REFERENCES `service_frequency_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_provider_availabilities`
--
ALTER TABLE `service_provider_availabilities`
  ADD CONSTRAINT `service_provider_availabilities_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_provider_reviews`
--
ALTER TABLE `service_provider_reviews`
  ADD CONSTRAINT `service_provider_reviews_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_provider_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_requirements`
--
ALTER TABLE `service_requirements`
  ADD CONSTRAINT `service_requirements_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_reviews`
--
ALTER TABLE `service_reviews`
  ADD CONSTRAINT `service_reviews_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `service_reviews_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_services`
--
ALTER TABLE `user_services`
  ADD CONSTRAINT `user_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `service_offers` (`id`),
  ADD CONSTRAINT `wishlists_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
