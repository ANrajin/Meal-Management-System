-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 12:10 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatches`
--

CREATE TABLE `dispatches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `out_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dispatches`
--

INSERT INTO `dispatches` (`id`, `date`, `out_by`, `budget`, `created_at`, `updated_at`) VALUES
(8, '2020-09-22', 'Rajin', 2000.00, '2020-09-21 22:23:12', '2020-09-21 22:23:12'),
(9, '2020-09-22', 'Rajin', 1000.00, '2020-09-21 22:44:34', '2020-09-21 22:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_details`
--

CREATE TABLE `dispatch_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dispatchs_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dispatch_details`
--

INSERT INTO `dispatch_details` (`id`, `dispatchs_id`, `items_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(6, 8, 3, 10, 60.00, '2020-09-21 22:23:12', '2020-09-21 22:23:12'),
(7, 8, 7, 12, 90.00, '2020-09-21 22:23:12', '2020-09-21 22:23:12'),
(8, 8, 5, 3, 80.00, '2020-09-21 22:23:12', '2020-09-21 22:23:12'),
(9, 9, 5, 10, 80.00, '2020-09-21 22:44:34', '2020-09-21 22:44:34'),
(10, 9, 2, 4, 50.00, '2020-09-21 22:44:34', '2020-09-21 22:44:34');

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
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meal_types_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `item_name`, `meal_types_id`, `created_at`, `updated_at`) VALUES
(1, 'Porota', 1, '2020-09-21 13:09:50', NULL),
(2, 'Omlate', 1, '2020-09-21 13:09:50', NULL),
(3, 'Khicuri', 1, '2020-09-21 13:09:50', NULL),
(4, 'Vagetable', 1, '2020-09-21 13:09:50', NULL),
(5, 'Tea', 1, '2020-09-21 13:09:51', NULL),
(6, 'Rice', 2, '2020-09-21 13:09:51', NULL),
(7, 'Chicken', 2, '2020-09-21 13:09:51', NULL),
(8, 'Beef', 2, '2020-09-21 13:09:51', NULL),
(9, 'Vagetable curry', 2, '2020-09-21 13:09:51', NULL),
(10, 'Daal', 2, '2020-09-21 13:09:51', NULL),
(11, 'Rice', 3, '2020-09-21 13:09:51', NULL),
(13, 'Daal', 3, '2020-09-21 13:09:51', NULL),
(14, 'Vagetable', 3, '2020-09-21 13:09:51', NULL),
(15, 'Fish Curry', 3, '2020-09-21 13:09:51', NULL),
(16, 'Vegetable Fry', 3, '2020-09-21 13:09:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_roasters`
--

CREATE TABLE `food_roasters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `foods` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_roasters`
--

INSERT INTO `food_roasters` (`id`, `date`, `foods`, `column_number`, `created_at`, `updated_at`) VALUES
(31, '2020-09-23', 'a:6:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 13:40:21', '2020-09-22 13:40:21'),
(32, '2020-09-24', 'a:6:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 13:40:21', '2020-09-22 13:40:21'),
(33, '2020-09-23', 'a:11:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:4;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:8;s:9:\"item_name\";s:4:\"Beef\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:8;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:9;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:10;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:15;s:9:\"item_name\";s:10:\"Fish Curry\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:50', '2020-09-22 16:03:50'),
(34, '2020-09-24', 'a:7:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:4;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:5;s:9:\"item_name\";s:3:\"Tea\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:15;s:9:\"item_name\";s:10:\"Fish Curry\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:16;s:9:\"item_name\";s:13:\"Vegetable Fry\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:50', '2020-09-22 16:03:50'),
(35, '2020-09-25', 'a:10:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:5;s:9:\"item_name\";s:3:\"Tea\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:8;s:9:\"item_name\";s:4:\"Beef\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:9;s:9:\"item_name\";s:15:\"Vagetable curry\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:8;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:9;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:15;s:9:\"item_name\";s:10:\"Fish Curry\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:50', '2020-09-22 16:03:50'),
(36, '2020-09-26', 'a:9:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:8;s:9:\"item_name\";s:4:\"Beef\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:8;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:50', '2020-09-22 16:03:50'),
(37, '2020-09-27', 'a:8:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:8;s:9:\"item_name\";s:4:\"Beef\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:50', '2020-09-22 16:03:50'),
(38, '2020-09-28', 'a:8:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:51', '2020-09-22 16:03:51'),
(39, '2020-09-29', 'a:10:{i:0;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:1;s:9:\"item_name\";s:6:\"Porota\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:1;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:2;s:9:\"item_name\";s:6:\"Omlate\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:2;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:3;s:9:\"item_name\";s:7:\"Khicuri\";s:13:\"meal_types_id\";i:1;s:10:\"created_at\";s:19:\"2020-09-21 19:09:50\";s:10:\"updated_at\";N;}}}i:3;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:6;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:4;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:7;s:9:\"item_name\";s:7:\"Chicken\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:5;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:8;s:9:\"item_name\";s:4:\"Beef\";s:13:\"meal_types_id\";i:2;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:6;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:11;s:9:\"item_name\";s:4:\"Rice\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:7;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:13;s:9:\"item_name\";s:4:\"Daal\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:8;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:14;s:9:\"item_name\";s:9:\"Vagetable\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}i:9;O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:8:\"stdClass\":5:{s:2:\"id\";i:15;s:9:\"item_name\";s:10:\"Fish Curry\";s:13:\"meal_types_id\";i:3;s:10:\"created_at\";s:19:\"2020-09-21 19:09:51\";s:10:\"updated_at\";N;}}}}', NULL, '2020-09-22 16:03:51', '2020-09-22 16:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price_per` double(8,2) NOT NULL,
  `price_total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `qty`, `price_per`, `price_total`, `created_at`, `updated_at`) VALUES
(1, 'onion', 50, 30.00, 1500.00, '2020-09-21 04:09:08', NULL),
(2, 'ginger', 50, 50.00, 2500.00, '2020-09-21 04:09:08', NULL),
(3, 'rosun', 50, 60.00, 3000.00, '2020-09-21 04:09:08', NULL),
(4, 'Rice', 100, 30.00, 3000.00, '2020-09-21 04:09:09', NULL),
(5, 'Lental', 60, 80.00, 4800.00, '2020-09-21 04:09:09', NULL),
(6, 'chili powder', 40, 100.00, 4000.00, '2020-09-21 04:09:09', NULL),
(7, 'turmaric powder', 40, 90.00, 3600.00, '2020-09-21 04:09:09', NULL),
(8, 'oil', 100, 150.00, 15000.00, '2020-09-21 04:09:09', NULL),
(9, 'beef', 10, 600.00, 6000.00, '2020-09-21 04:09:09', NULL),
(10, 'chicken meat', 40, 150.00, 6000.00, '2020-09-21 04:09:09', NULL),
(11, 'potato', 40, 20.00, 800.00, '2020-09-21 04:09:09', NULL),
(12, 'Mixed Masala', 10, 50.00, 500.00, '2020-09-21 04:09:09', NULL),
(13, 'jira gura', 20, 60.00, 1200.00, '2020-09-21 04:09:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_types`
--

INSERT INTO `meal_types` (`id`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 'breakfast', 'Lorem Ipsum', '2020-09-21 13:09:24', NULL),
(2, 'lunch', 'Lorem Ipsum', '2020-09-21 13:09:24', NULL),
(3, 'dinner', 'Lorem Ipsum', '2020-09-21 13:09:24', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_20_170053_create_students_table', 1),
(7, '2014_10_12_000000_create_users_table', 2),
(8, '2020_09_21_035036_create_stocks_table', 3),
(9, '2020_09_21_043909_create_items_table', 4),
(10, '2020_09_21_190440_create_meal_types_table', 5),
(11, '2020_09_20_170142_create_foods_table', 6),
(15, '2020_09_22_034818_create_dispatches_table', 7),
(16, '2020_09_22_035926_create_dispatch_details_table', 7),
(18, '2020_09_22_144021_create_food_roasters_table', 8),
(19, '2020_09_22_200207_create_student_food_menus_table', 9);

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
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `std_id`, `student_name`, `phone`, `Address`, `created_at`, `updated_at`) VALUES
(1, 2, 124512, 'Jhone Doe', '12345698745', 'lorem Ipsum', NULL, NULL),
(2, 3, 124513, 'jane Doe', '12345698745', 'lorem Ipsum', NULL, NULL),
(3, 4, 124514, 'Alex Doe', '12345698745', 'lorem Ipsum', NULL, NULL),
(4, 5, 124515, 'James Aurthor', '12345698745', 'lorem Ipsum', NULL, NULL),
(5, 6, 124516, 'Deborah Angle', '12345698745', 'lorem Ipsum', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_food_menus`
--

CREATE TABLE `student_food_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `food_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_food_menus`
--

INSERT INTO `student_food_menus` (`id`, `user_id`, `student_id`, `date`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 4, 124514, '2020-09-23', 1, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(2, 4, 124514, '2020-09-23', 6, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(3, 4, 124514, '2020-09-23', 7, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(4, 4, 124514, '2020-09-23', 11, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(5, 4, 124514, '2020-09-23', 13, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(6, 4, 124514, '2020-09-24', 1, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(7, 4, 124514, '2020-09-24', 2, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(8, 4, 124514, '2020-09-24', 6, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(9, 4, 124514, '2020-09-24', 7, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(10, 4, 124514, '2020-09-24', 11, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(11, 4, 124514, '2020-09-24', 13, '2020-09-22 14:22:05', '2020-09-22 14:22:05'),
(12, 3, 124513, '2020-09-23', 1, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(13, 3, 124513, '2020-09-23', 2, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(14, 3, 124513, '2020-09-23', 6, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(15, 3, 124513, '2020-09-23', 7, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(16, 3, 124513, '2020-09-23', 11, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(17, 3, 124513, '2020-09-23', 13, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(18, 3, 124513, '2020-09-24', 1, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(19, 3, 124513, '2020-09-24', 2, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(20, 3, 124513, '2020-09-24', 6, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(21, 3, 124513, '2020-09-24', 7, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(22, 3, 124513, '2020-09-24', 11, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(23, 3, 124513, '2020-09-24', 13, '2020-09-22 14:22:54', '2020-09-22 14:22:54'),
(24, 2, 124512, '2020-09-23', 1, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(25, 2, 124512, '2020-09-23', 2, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(26, 2, 124512, '2020-09-23', 6, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(27, 2, 124512, '2020-09-23', 7, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(28, 2, 124512, '2020-09-23', 11, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(29, 2, 124512, '2020-09-23', 13, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(30, 2, 124512, '2020-09-24', 2, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(31, 2, 124512, '2020-09-24', 7, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(32, 2, 124512, '2020-09-24', 11, '2020-09-22 14:23:38', '2020-09-22 14:23:38'),
(33, 4, 124514, '2020-09-28', 3, '2020-09-22 16:04:59', '2020-09-22 16:04:59'),
(34, 4, 124514, '2020-09-28', 6, '2020-09-22 16:04:59', '2020-09-22 16:04:59'),
(35, 4, 124514, '2020-09-28', 7, '2020-09-22 16:04:59', '2020-09-22 16:04:59'),
(36, 4, 124514, '2020-09-28', 11, '2020-09-22 16:04:59', '2020-09-22 16:04:59'),
(37, 4, 124514, '2020-09-28', 13, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(38, 4, 124514, '2020-09-28', 14, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(39, 4, 124514, '2020-09-29', 1, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(40, 4, 124514, '2020-09-29', 2, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(41, 4, 124514, '2020-09-29', 6, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(42, 4, 124514, '2020-09-29', 7, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(43, 4, 124514, '2020-09-29', 11, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(44, 4, 124514, '2020-09-29', 13, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(45, 4, 124514, '2020-09-29', 14, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(46, 4, 124514, '2020-09-23', 1, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(47, 4, 124514, '2020-09-23', 2, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(48, 4, 124514, '2020-09-23', 6, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(49, 4, 124514, '2020-09-23', 7, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(50, 4, 124514, '2020-09-24', 4, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(51, 4, 124514, '2020-09-24', 5, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(52, 4, 124514, '2020-09-24', 11, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(53, 4, 124514, '2020-09-24', 14, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(54, 4, 124514, '2020-09-24', 15, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(55, 4, 124514, '2020-09-25', 1, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(56, 4, 124514, '2020-09-25', 2, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(57, 4, 124514, '2020-09-25', 6, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(58, 4, 124514, '2020-09-25', 7, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(59, 4, 124514, '2020-09-25', 8, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(60, 4, 124514, '2020-09-25', 14, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(61, 4, 124514, '2020-09-25', 15, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(62, 4, 124514, '2020-09-26', 1, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(63, 4, 124514, '2020-09-26', 2, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(64, 4, 124514, '2020-09-26', 6, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(65, 4, 124514, '2020-09-26', 7, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(66, 4, 124514, '2020-09-26', 11, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(67, 4, 124514, '2020-09-26', 13, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(68, 4, 124514, '2020-09-27', 1, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(69, 4, 124514, '2020-09-27', 2, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(70, 4, 124514, '2020-09-27', 7, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(71, 4, 124514, '2020-09-27', 8, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(72, 4, 124514, '2020-09-27', 11, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(73, 4, 124514, '2020-09-27', 13, '2020-09-22 16:05:00', '2020-09-22 16:05:00'),
(74, 2, 124512, '2020-09-28', 1, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(75, 2, 124512, '2020-09-28', 2, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(76, 2, 124512, '2020-09-28', 6, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(77, 2, 124512, '2020-09-28', 7, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(78, 2, 124512, '2020-09-28', 11, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(79, 2, 124512, '2020-09-28', 13, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(80, 2, 124512, '2020-09-23', 1, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(81, 2, 124512, '2020-09-23', 2, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(82, 2, 124512, '2020-09-23', 6, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(83, 2, 124512, '2020-09-23', 7, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(84, 2, 124512, '2020-09-23', 11, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(85, 2, 124512, '2020-09-23', 13, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(86, 2, 124512, '2020-09-24', 3, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(87, 2, 124512, '2020-09-24', 11, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(88, 2, 124512, '2020-09-24', 14, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(89, 2, 124512, '2020-09-25', 1, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(90, 2, 124512, '2020-09-25', 2, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(91, 2, 124512, '2020-09-25', 6, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(92, 2, 124512, '2020-09-25', 7, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(93, 2, 124512, '2020-09-25', 14, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(94, 2, 124512, '2020-09-25', 15, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(95, 2, 124512, '2020-09-26', 1, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(96, 2, 124512, '2020-09-26', 2, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(97, 2, 124512, '2020-09-26', 6, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(98, 2, 124512, '2020-09-26', 7, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(99, 2, 124512, '2020-09-26', 8, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(100, 2, 124512, '2020-09-26', 11, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(101, 2, 124512, '2020-09-26', 13, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(102, 2, 124512, '2020-09-27', 1, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(103, 2, 124512, '2020-09-27', 2, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(104, 2, 124512, '2020-09-27', 6, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(105, 2, 124512, '2020-09-27', 7, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(106, 2, 124512, '2020-09-27', 11, '2020-09-22 16:05:50', '2020-09-22 16:05:50'),
(107, 2, 124512, '2020-09-27', 13, '2020-09-22 16:05:51', '2020-09-22 16:05:51'),
(108, 2, 124512, '2020-09-29', 6, '2020-09-22 16:05:51', '2020-09-22 16:05:51'),
(109, 2, 124512, '2020-09-29', 7, '2020-09-22 16:05:51', '2020-09-22 16:05:51');

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
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@email.com', NULL, '$2y$10$q4eT4.z4A9mUZvszLioOx.Cftb/lgg9rmHLibqNY1NQBL7E.FSq5C', 'admin.jpg', 'admin', NULL, NULL, NULL),
(2, 'Jnoe doe', 'doe@email.com', NULL, '$2y$10$JOLJ7rfUi4X3RLvo.f6sAeCnhJvGKjk/Zqj9Jz9c46Pigonn2ZErO', 'user1.jpg', 'student', NULL, NULL, NULL),
(3, 'jane doe', 'jane@email.com', NULL, '$2y$10$OQXr1fXQy.u.Zq.rVtZQLOGnd6B5/I4ZrN6lfbfqZmDwnh0A08/o.', 'user2.jpg', 'student', NULL, NULL, NULL),
(4, 'Alex doe', 'alex@email.com', NULL, '$2y$10$CFvkYUqcQqXuvla.Ex6qHuR3chh9.EU7Rm8ue7k8YxhRANcOdixU.', 'user3.jpg', 'student', NULL, NULL, NULL),
(5, 'James Aurthor', 'james@email.com', NULL, '$2y$10$AYDKclq/zh8RLwsBuxEz.edIKU4Mnj.fdobFZQBgOKIvbuY55oJAa', 'user4.jpg', 'student', NULL, NULL, NULL),
(6, 'Deborah Angle', 'deborah@email.com', NULL, '$2y$10$Oq0fE1iaiisjDzHLiShtKOl4c4u9nBx7MH5gfhiCrDLRPdhsU9dt.', 'user5.jpg', 'student', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatches`
--
ALTER TABLE `dispatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_details`
--
ALTER TABLE `dispatch_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_roasters`
--
ALTER TABLE `food_roasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
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
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_food_menus`
--
ALTER TABLE `student_food_menus`
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
-- AUTO_INCREMENT for table `dispatches`
--
ALTER TABLE `dispatches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dispatch_details`
--
ALTER TABLE `dispatch_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `food_roasters`
--
ALTER TABLE `food_roasters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_food_menus`
--
ALTER TABLE `student_food_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
