-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2016 at 03:34 PM
-- Server version: 10.1.17-MariaDB-1~xenial
-- PHP Version: 5.6.25-2+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rps`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Six', '2016-12-21 03:07:37', '2016-12-21 03:07:37'),
(2, 'Seven', '2016-12-21 03:08:06', '2016-12-21 03:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_04_060627_create_years_table', 1),
('2016_10_04_090204_create_sections_table', 1),
('2016_10_04_100637_create_students_table', 1),
('2016_10_05_144411_create_levels_table', 1),
('2016_10_09_061804_create_terms_table', 1),
('2016_10_09_084425_create_subjects_table', 1),
('2016_10_10_061333_create_results_table', 1),
('2016_10_10_062436_create_result_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `total_point` double(8,2) NOT NULL DEFAULT '0.00',
  `grade_point_avg` double(8,2) NOT NULL DEFAULT '0.00',
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_get_mark` double(8,2) DEFAULT NULL,
  `fail_subject` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_details`
--

CREATE TABLE `result_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `result_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `get_mark` double(8,2) NOT NULL,
  `get_mark_percentage` double(8,2) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2016-12-21 03:07:48', '2016-12-21 03:07:48'),
(2, 'B', '2016-12-21 03:08:15', '2016-12-21 03:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roll_no` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll_no`, `level_id`, `section_id`, `year_id`, `father_name`, `mother_name`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Opsori Jamil Raniya', 1, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:22:11', '2016-12-21 11:22:11'),
(2, 'Saiyada Marfua Habiba', 2, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:23:04', '2016-12-21 11:23:04'),
(3, 'Umme Hafsa Niha', 3, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:24:15', '2016-12-21 11:24:15'),
(4, 'Taslima Akter', 4, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:24:49', '2016-12-21 11:24:49'),
(5, 'Sabrina Sultana', 5, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:25:29', '2016-12-21 11:25:29'),
(6, 'Shawkat Ara', 6, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:26:07', '2016-12-21 11:26:07'),
(7, 'Rapaida Ansaria', 7, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:27:03', '2016-12-21 11:27:03'),
(8, 'Chohinur Islam Chohi', 8, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:28:04', '2016-12-21 11:28:04'),
(9, 'Nargis Akter', 9, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:28:49', '2016-12-21 11:28:49'),
(10, 'Minoara Akter', 10, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:29:30', '2016-12-21 11:29:30'),
(11, 'Jannatul Mawa Montaha', 11, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:30:14', '2016-12-21 11:30:14'),
(12, 'Tofuri Karim Jitu', 12, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:31:04', '2016-12-21 11:31:04'),
(13, 'Tasniha Tahmin', 13, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:31:54', '2016-12-21 11:31:54'),
(14, 'Kaneta Khanom', 14, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:33:02', '2016-12-21 11:33:02'),
(15, 'Hasnatul Akbar', 15, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:34:41', '2016-12-21 11:34:41'),
(16, 'Meheraba Jannat Noshin', 16, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:37:13', '2016-12-21 11:37:13'),
(17, 'Loloal Marjan', 17, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:38:17', '2016-12-21 11:38:17'),
(18, 'Bosra Binte Belal', 18, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:39:03', '2016-12-21 11:39:03'),
(19, 'Sabekun Nahar', 19, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:39:44', '2016-12-21 11:39:44'),
(20, 'Yeasmin Soltana', 20, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:40:24', '2016-12-21 11:40:24'),
(21, 'Lija Akter', 21, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:41:39', '2016-12-21 11:41:39'),
(22, 'Rahe Nur', 22, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:42:08', '2016-12-21 11:42:08'),
(23, 'Asma Akter', 23, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:42:38', '2016-12-22 05:16:43'),
(24, 'Bilkis Akter', 24, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:43:11', '2016-12-21 11:43:11'),
(25, 'Josna Akter', 25, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:43:58', '2016-12-21 11:43:58'),
(26, 'Hafeja Akter', 26, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:45:19', '2016-12-21 11:45:19'),
(27, 'Tasnoba Tabassom', 27, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:45:57', '2016-12-21 11:45:57'),
(28, 'Afroja Yeasmin', 28, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:47:07', '2016-12-21 11:47:07'),
(29, 'Tahino Farzana', 29, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:47:55', '2016-12-21 11:47:55'),
(30, 'Arjo Alam Maya', 30, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:48:37', '2016-12-21 11:48:37'),
(31, 'Tarina Israt Moina', 31, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:49:15', '2016-12-21 11:49:15'),
(32, 'Rajiya Akter', 32, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:49:59', '2016-12-21 11:49:59'),
(33, 'Mustafiz Khanom Akhi', 33, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:51:13', '2016-12-21 11:51:13'),
(34, 'Sabrina Teasmin', 34, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:52:00', '2016-12-21 11:52:00'),
(35, 'Tumpa Akter', 35, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:52:36', '2016-12-21 11:52:36'),
(36, 'Dilruba Tasnuba', 36, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:53:23', '2016-12-21 11:53:23'),
(37, 'Sadiya Nasrin Moyna', 37, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:54:14', '2016-12-21 11:54:14'),
(38, 'Fahmida Ireen', 38, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:55:18', '2016-12-21 11:55:18'),
(39, 'Habiba Jannat', 39, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:56:05', '2016-12-21 11:56:05'),
(40, 'Jannatul Ferdaus', 40, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:57:30', '2016-12-21 11:57:30'),
(41, 'Pranti Prova Dey', 41, 2, 1, 1, '', '', '', NULL, '2016-12-21 11:58:55', '2016-12-21 11:58:55'),
(42, 'Sharmin Akter', 43, 2, 1, 1, '', '', '', NULL, '2016-12-21 12:00:00', '2016-12-21 12:00:00'),
(43, 'Saima Sultana', 44, 2, 1, 1, '', '', '', NULL, '2016-12-21 12:00:57', '2016-12-21 12:00:57'),
(44, 'Sabrina Yeasmin', 45, 2, 1, 1, '', '', '', NULL, '2016-12-21 12:03:17', '2016-12-21 12:03:17'),
(45, 'Rujina Akter', 46, 2, 1, 1, '', '', '', NULL, '2016-12-21 12:04:11', '2016-12-21 12:04:11'),
(46, 'Sajeda Akter', 47, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:07:12', '2016-12-21 21:07:12'),
(47, 'Amena Akter', 48, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:09:36', '2016-12-21 21:09:36'),
(48, 'Tanjila Mubarak', 49, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:10:18', '2016-12-21 21:10:18'),
(49, 'Afifa Homaira', 50, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:11:14', '2016-12-21 21:11:14'),
(50, 'Tasfia Sultana', 51, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:12:07', '2016-12-21 21:12:07'),
(51, 'Afroza Khanam', 52, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:13:02', '2016-12-21 21:13:02'),
(52, 'Tasnuba Nusrat Tahiya', 53, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:14:38', '2016-12-21 21:14:38'),
(53, 'Subeh Nur', 54, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:15:47', '2016-12-21 21:15:47'),
(54, 'Faria Rahmim Puti', 55, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:29:19', '2016-12-21 21:29:19'),
(55, 'Monira Akter', 56, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:30:12', '2016-12-21 21:30:12'),
(56, 'Tamima Jannat', 57, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:37:58', '2016-12-21 21:37:58'),
(57, 'Ruma Akter', 58, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:41:05', '2016-12-21 21:41:05'),
(58, 'Tasnure Akter', 60, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:41:37', '2016-12-21 21:41:37'),
(59, 'Sadia Mostofa Neha', 61, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:42:36', '2016-12-21 21:42:36'),
(60, 'Khaleda Akter', 62, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:43:13', '2016-12-21 21:43:13'),
(61, 'Riko Moni', 63, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:43:56', '2016-12-21 21:43:56'),
(62, 'Isme Sahida Rony', 64, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:45:36', '2016-12-21 21:45:36'),
(63, 'Isratul Jannat', 65, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:46:24', '2016-12-21 21:46:24'),
(64, 'Rijiya Akter', 66, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:47:21', '2016-12-21 21:47:21'),
(65, 'Horon Akter', 67, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:48:00', '2016-12-21 21:48:00'),
(66, 'Sumi Akter', 68, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:54:29', '2016-12-21 21:54:29'),
(67, 'Payel Momi Dey', 69, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:55:35', '2016-12-21 21:55:35'),
(68, 'Tasnuba Nahrin', 70, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:56:10', '2016-12-21 21:56:10'),
(69, 'Sajeda Yeasmin', 72, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:57:11', '2016-12-21 21:57:11'),
(70, 'Mubareka Akter', 73, 2, 1, 1, '', '', '', NULL, '2016-12-21 21:57:46', '2016-12-21 21:57:46'),
(71, 'Fahmida Akter', 74, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:15:50', '2016-12-21 22:15:50'),
(72, 'Nasima Akter', 75, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:16:27', '2016-12-21 22:16:27'),
(73, 'Faria Sultana', 76, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:17:05', '2016-12-21 22:17:05'),
(74, 'Jannatul Kawsar', 77, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:18:20', '2016-12-21 22:18:20'),
(75, 'Israt Jahan Selina', 78, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:19:01', '2016-12-21 22:20:07'),
(76, 'Asmaul Hosna', 79, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:20:56', '2016-12-21 22:20:56'),
(77, 'Israt Jannat Sonia', 80, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:22:39', '2016-12-21 22:22:39'),
(78, 'Fahmida Admim Mofiz', 81, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:25:40', '2016-12-21 22:25:40'),
(79, 'Astefa Khanom', 82, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:26:42', '2016-12-21 22:26:42'),
(80, 'Sabraj Hasnat', 83, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:27:20', '2016-12-21 22:27:20'),
(81, 'Anowara Begum', 84, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:28:17', '2016-12-21 22:28:17'),
(82, 'Nilufa Akter', 85, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:28:50', '2016-12-21 22:28:50'),
(83, 'Farhana Yeasmin', 86, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:29:31', '2016-12-21 22:29:31'),
(84, 'Anamika Sharma Somapti', 87, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:30:22', '2016-12-21 22:30:22'),
(85, 'Sabekon Nahar', 88, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:31:37', '2016-12-21 22:31:37'),
(86, 'Somi Akter', 89, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:32:12', '2016-12-21 22:32:12'),
(87, 'Dilruba Khanom', 90, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:33:04', '2016-12-21 22:33:04'),
(88, 'Rebeka Sultana Deji', 91, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:34:03', '2016-12-21 22:34:03'),
(89, 'Tawhida Begum', 92, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:35:19', '2016-12-21 22:35:19'),
(90, 'Wahida Hasna Munni', 93, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:37:27', '2016-12-21 22:37:27'),
(91, 'Sajeda Akter', 94, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:38:28', '2016-12-21 22:38:28'),
(92, 'Furkan Nasrin Shanto', 95, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:39:09', '2016-12-21 22:39:09'),
(93, 'Ayatul Kursi', 96, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:40:12', '2016-12-21 22:40:12'),
(94, 'Isratul Jannat', 97, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:42:28', '2016-12-21 22:42:28'),
(95, 'Unknown', 98, 2, 1, 1, '', '', '', NULL, '2016-12-21 22:43:31', '2016-12-21 22:43:31'),
(96, 'Setara Khanom', 1, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:55:04', '2016-12-21 22:55:04'),
(97, 'Tania Nusrat Sathi', 2, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:56:15', '2016-12-21 22:56:15'),
(98, 'Sabekon Nahar', 3, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:56:56', '2016-12-21 22:56:56'),
(99, 'Fatema Akter Monmon', 5, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:58:00', '2016-12-21 22:58:00'),
(100, 'Faria Sultana', 6, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:58:27', '2016-12-21 22:58:27'),
(101, 'Shahinur Akter', 7, 2, 2, 1, '', '', '', NULL, '2016-12-21 22:59:28', '2016-12-21 22:59:28'),
(102, 'Ajmira Nasrin Farzana', 8, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:00:32', '2016-12-21 23:00:32'),
(103, 'Hamida Akter', 9, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:09:10', '2016-12-21 23:09:10'),
(104, 'Khorshida Akter', 10, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:10:19', '2016-12-21 23:10:19'),
(105, 'Somaia Akter Mori', 11, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:12:51', '2016-12-21 23:12:51'),
(106, 'Jesifa Yeasmin', 12, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:13:48', '2016-12-21 23:13:48'),
(107, 'Somaia Akter', 13, 2, 2, 1, '', '', '', NULL, '2016-12-21 23:14:30', '2016-12-21 23:14:30'),
(108, 'Sadia Farzana Rafi', 14, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:00:27', '2016-12-22 05:00:27'),
(109, 'Sabila Nusrat Tisha', 17, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:01:52', '2016-12-22 05:01:52'),
(110, 'Shakila Akter', 19, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:03:04', '2016-12-22 05:03:04'),
(111, 'Rawjatul Jannat', 20, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:03:53', '2016-12-22 05:03:53'),
(112, 'Nasrin Banglali Rafi', 21, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:04:56', '2016-12-22 05:04:56'),
(113, 'Khaleda Yeasmin', 22, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:05:58', '2016-12-22 05:05:58'),
(114, 'Khaleda Akter Sumi', 23, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:17:29', '2016-12-22 05:17:29'),
(115, 'Jasmin Habib Munni', 24, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:18:17', '2016-12-22 05:18:17'),
(116, 'Rifa Akter', 25, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:35:03', '2016-12-22 05:35:03'),
(117, 'Ruma Akter', 26, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:35:37', '2016-12-22 05:35:37'),
(118, 'Mehedi Hasna Nishat', 27, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:36:16', '2016-12-22 05:36:16'),
(119, 'Somaia Nur Musa', 28, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:37:30', '2016-12-22 05:37:30'),
(120, 'Shamima Yeasmin', 29, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:38:06', '2016-12-22 05:38:06'),
(121, 'Nigat Arfin Rina', 30, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:39:21', '2016-12-22 05:39:21'),
(122, 'Sadia Alam Sopna', 32, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:40:04', '2016-12-22 05:40:04'),
(123, 'Morzina Akter', 33, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:41:11', '2016-12-22 05:41:11'),
(124, 'Kulsoma Akter', 34, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:42:22', '2016-12-22 05:42:22'),
(125, 'Tania Akter', 37, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:43:07', '2016-12-22 05:43:07'),
(126, 'Ayesha akter', 38, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:44:16', '2016-12-22 05:44:16'),
(127, 'Ruma Akter', 39, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:45:55', '2016-12-22 05:45:55'),
(128, 'Meri Rani Shil', 40, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:46:54', '2016-12-22 05:46:54'),
(129, 'Nurun Nahar', 41, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:47:32', '2016-12-22 05:47:32'),
(130, 'Kajol Akter', 42, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:48:02', '2016-12-22 05:48:02'),
(131, 'Ayesha Siddika', 43, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:50:53', '2016-12-22 05:50:53'),
(132, 'Meherunnesa', 44, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:51:27', '2016-12-22 05:51:27'),
(133, 'Tahmina Akter', 45, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:52:18', '2016-12-22 05:52:18'),
(134, 'Rumpa Shil', 46, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:53:37', '2016-12-22 05:53:37'),
(135, 'Kajol Moni', 48, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:54:04', '2016-12-22 05:54:04'),
(136, 'Setu Yesmin ', 49, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:55:28', '2016-12-22 05:55:28'),
(137, 'Mohima Yeasmin', 50, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:55:59', '2016-12-22 05:55:59'),
(138, 'Amita Begum', 51, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:56:41', '2016-12-22 05:56:41'),
(139, 'Shakila Yeasmin', 52, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:57:14', '2016-12-22 05:57:14'),
(140, 'Romi Akter', 53, 2, 2, 1, '', '', '', NULL, '2016-12-22 05:58:05', '2016-12-22 05:58:05'),
(141, 'Toiyoba Akter', 54, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:13:56', '2016-12-22 11:13:56'),
(142, 'Popi Akter', 55, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:14:34', '2016-12-22 11:14:34'),
(143, 'Rojina Akter', 56, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:15:16', '2016-12-22 11:15:16'),
(144, 'Kopila Yeasmin', 57, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:16:29', '2016-12-22 11:16:29'),
(145, 'Sopna Dash', 58, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:17:39', '2016-12-22 11:17:39'),
(146, 'Sajeda Yeasmin', 59, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:19:26', '2016-12-22 11:19:26'),
(147, 'Tumpa Rani Shil', 61, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:21:11', '2016-12-22 11:21:11'),
(148, 'Anika Akter', 62, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:23:00', '2016-12-22 11:23:00'),
(149, 'Jaitun Nahar', 64, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:24:23', '2016-12-22 11:24:23'),
(150, 'Shepa Akter Monni', 65, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:25:34', '2016-12-22 11:25:34'),
(151, 'Roma Rani Shil', 67, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:27:08', '2016-12-22 11:27:08'),
(152, 'Asma-ul Hosna', 68, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:33:35', '2016-12-22 11:33:35'),
(153, 'Asma Sadia', 73, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:34:50', '2016-12-22 11:34:50'),
(154, 'Sailo Akter', 75, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:35:59', '2016-12-22 11:35:59'),
(155, 'Tanjina Akter', 76, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:45:56', '2016-12-22 11:45:56'),
(156, 'Sumi Akter', 77, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:46:53', '2016-12-22 11:46:53'),
(157, 'Sofia Akter', 78, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:48:48', '2016-12-22 11:48:48'),
(158, 'Yeasmin Jannat', 79, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:50:59', '2016-12-22 11:50:59'),
(159, 'Unknown', 80, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:51:26', '2016-12-22 11:51:26'),
(160, 'Nur Sadia Kazi', 81, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:52:14', '2016-12-22 11:52:14'),
(161, 'Umme Habiba', 82, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:52:49', '2016-12-22 11:52:49'),
(162, 'Mobasshera', 83, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:54:42', '2016-12-22 11:54:42'),
(163, 'Afia Moni', 84, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:56:40', '2016-12-22 11:56:40'),
(164, 'Tasmin Akter', 85, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:58:01', '2016-12-22 11:58:01'),
(165, 'Rasheda Akter', 86, 2, 2, 1, '', '', '', NULL, '2016-12-22 11:59:38', '2016-12-22 11:59:38'),
(166, 'Tahmina Akter', 87, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:01:09', '2016-12-22 12:01:09'),
(167, 'Amena Akter', 88, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:01:46', '2016-12-22 12:03:28'),
(168, 'Saiyada Nasrin', 89, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:02:50', '2016-12-22 12:02:50'),
(169, 'Mosroka Khanom Munni', 90, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:04:52', '2016-12-22 12:04:52'),
(170, 'Farzana Khanom Rumi', 91, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:05:36', '2016-12-22 12:05:36'),
(171, 'Shakila Akter', 92, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:06:08', '2016-12-22 12:06:08'),
(172, 'Purnima Rani Shil', 93, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:06:42', '2016-12-22 12:06:42'),
(173, 'Jamuna Akter', 97, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:07:34', '2016-12-22 12:07:34'),
(174, 'Mehedi Hasan Parul', 98, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:08:42', '2016-12-22 12:08:42'),
(175, 'Marjina Akter', 99, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:09:19', '2016-12-22 12:09:19'),
(176, 'Rifa Akter', 101, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:09:57', '2016-12-22 12:09:57'),
(177, 'Shanta Mubarak Suchi', 102, 2, 2, 1, '', '', '', NULL, '2016-12-22 12:10:41', '2016-12-22 12:10:41'),
(178, 'Najma Akter', 1, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:37:41', '2016-12-22 21:37:41'),
(179, 'Sadia Irfat Binte Akram', 2, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:38:46', '2016-12-22 21:38:46'),
(180, 'Miftahol Jannat', 3, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:39:28', '2016-12-22 21:39:28'),
(181, 'Wasifa Tafhim Rafi', 4, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:41:13', '2016-12-22 21:41:13'),
(182, 'Unknown', 5, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:42:01', '2016-12-22 21:42:01'),
(183, 'Sonia Akter', 6, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:42:55', '2016-12-22 21:42:55'),
(184, 'Saima Salm Sriti', 7, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:44:17', '2016-12-22 21:44:17'),
(185, 'Mahima Awal Mim', 8, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:46:05', '2016-12-22 21:46:05'),
(186, 'Kamrun Nahar', 9, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:46:42', '2016-12-22 21:46:42'),
(187, 'Isdanul Haque', 10, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:47:45', '2016-12-22 21:47:45'),
(188, 'Jannatul Ferdaus', 11, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:48:21', '2016-12-22 21:48:21'),
(189, 'Laki Yeasmin Munni', 12, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:48:52', '2016-12-22 21:48:52'),
(190, 'Tahsin Iffat Chita', 13, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:50:42', '2016-12-22 21:50:42'),
(191, 'Saima Sultana Priya Moni', 14, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:51:32', '2016-12-22 21:51:32'),
(192, 'Shrabonti Shil Urmi', 15, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:52:26', '2016-12-22 21:52:26'),
(193, 'Shakila Jafar', 16, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:53:04', '2016-12-22 21:53:04'),
(194, 'Nayma Moni', 17, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:54:30', '2016-12-22 21:54:30'),
(195, 'Tafrin Sultana Sumi', 18, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:55:22', '2016-12-22 21:55:22'),
(196, 'Shahida Yeasmin', 19, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:56:11', '2016-12-22 21:56:11'),
(197, 'Atifa Munni', 20, 1, 1, 1, '', '', '', NULL, '2016-12-22 21:56:40', '2016-12-22 21:56:40'),
(198, 'Jobeda Akter', 21, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:01:08', '2016-12-22 22:01:08'),
(199, 'Rumena Akter Koli', 22, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:01:53', '2016-12-22 22:01:53'),
(200, 'Sima Rani Dey', 23, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:02:49', '2016-12-22 22:02:49'),
(201, 'Shahin Moni', 24, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:03:24', '2016-12-22 22:03:24'),
(202, 'Sokanti Dey', 25, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:03:58', '2016-12-22 22:03:58'),
(203, 'Tahmina Akter Asma', 26, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:04:45', '2016-12-22 22:04:45'),
(204, 'Sajia Shahed Tabassom', 27, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:06:13', '2016-12-22 22:06:35'),
(205, 'Afsan Rifat Moni', 28, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:07:23', '2016-12-22 22:07:23'),
(206, 'Rifa Tamanna', 29, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:08:01', '2016-12-22 22:08:01'),
(207, 'Fairuz Tabab Chawdhori', 30, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:09:20', '2016-12-22 22:09:20'),
(208, 'Anamika Tabassom', 31, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:10:15', '2016-12-22 22:10:15'),
(209, 'Mahfuza Sultana Mammi', 32, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:12:06', '2016-12-22 22:12:06'),
(210, 'Shahin Mostofa Khanom Sifat', 33, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:13:05', '2016-12-22 22:13:05'),
(211, 'Rubaiya Ahmed Sifat', 34, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:14:07', '2016-12-22 22:14:07'),
(212, 'Sidratul Montaha Akhi', 35, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:14:59', '2016-12-22 22:14:59'),
(213, 'Afsana Nusrat Somaia', 36, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:15:46', '2016-12-22 22:15:46'),
(214, 'Rajia Sultana', 37, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:16:34', '2016-12-22 22:16:34'),
(215, 'Liza Moni', 38, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:16:58', '2016-12-22 22:16:58'),
(216, 'Setara Yeasmin Setu', 39, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:18:22', '2016-12-22 22:18:22'),
(217, 'Kolsoma Khanam Maleka Minhaz', 40, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:19:26', '2016-12-22 22:19:26'),
(218, 'Fahmida Alam Nova', 41, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:20:24', '2016-12-22 22:20:24'),
(219, 'Sopriya Shil Shanta', 42, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:21:26', '2016-12-22 22:21:26'),
(220, 'Saima Nusrat Ireen', 43, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:22:18', '2016-12-22 22:22:18'),
(221, 'Saima Shormila Kanta', 44, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:27:21', '2016-12-22 22:27:21'),
(222, 'Tinko Rani Shil', 45, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:28:11', '2016-12-22 22:28:11'),
(223, 'Tahmin Akter Jaitun', 46, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:32:41', '2016-12-22 22:32:41'),
(224, 'Isfakon Niha Khanom Tamfia', 47, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:34:53', '2016-12-22 22:34:53'),
(225, 'Mobina Akter', 48, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:36:17', '2016-12-22 22:36:17'),
(226, 'Tanjia Raihai Hena', 49, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:38:12', '2016-12-22 22:38:12'),
(227, 'Taslima Akter', 50, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:38:41', '2016-12-22 22:38:41'),
(228, 'Popi Das', 51, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:39:40', '2016-12-22 22:39:40'),
(229, 'Rifa Akjor', 52, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:40:13', '2016-12-22 22:40:13'),
(230, 'Saila Tajraman Ani', 53, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:41:12', '2016-12-22 22:41:12'),
(231, 'Sofaiya Yeasmin Saima', 54, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:42:11', '2016-12-22 22:42:11'),
(232, 'Dulna dey', 55, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:42:46', '2016-12-22 22:42:46'),
(233, 'Sajia Sobaju Chomki', 56, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:44:21', '2016-12-22 22:44:21'),
(234, 'Urmi Akter', 57, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:44:51', '2016-12-22 22:44:51'),
(235, 'Somaia Raihan Shanto', 58, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:45:53', '2016-12-22 22:45:53'),
(236, 'Kulsoma Akter', 59, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:46:52', '2016-12-22 22:46:52'),
(237, 'Sarjina Akter', 60, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:47:47', '2016-12-22 22:47:47'),
(238, 'Shahida Akter', 61, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:48:24', '2016-12-22 22:48:24'),
(239, 'Sajeda Akter', 62, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:49:32', '2016-12-22 22:49:32'),
(240, 'Mohima Sultana Rumi', 63, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:50:35', '2016-12-22 22:50:35'),
(241, 'Somaia Farzana Sumi', 64, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:52:19', '2016-12-22 22:52:19'),
(242, 'Sanjida Akter', 65, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:52:53', '2016-12-22 22:52:53'),
(243, 'Nahida Farzana Mishu', 66, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:53:32', '2016-12-22 22:53:32'),
(244, 'Sadia Afrin', 67, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:54:17', '2016-12-22 22:54:17'),
(245, 'Shormila Shil', 68, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:54:54', '2016-12-22 22:54:54'),
(246, 'Umme Kulsom Tanjima Nasrin', 69, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:56:11', '2016-12-22 22:56:11'),
(247, 'Riya Rani Shil', 70, 1, 1, 1, '', '', '', NULL, '2016-12-22 22:56:54', '2016-12-22 22:56:54'),
(248, 'Rejia Akter', 71, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:00:34', '2016-12-22 23:00:34'),
(249, 'Rujina Yeasmin Sharmin', 72, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:01:14', '2016-12-22 23:01:14'),
(250, 'Rekha Moni', 73, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:01:59', '2016-12-22 23:01:59'),
(251, 'Nasima Sultana', 74, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:02:29', '2016-12-22 23:02:29'),
(252, 'Bebi Akter', 75, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:03:24', '2016-12-22 23:03:24'),
(253, 'Mamoka', 76, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:04:17', '2016-12-22 23:04:17'),
(254, 'Shakila Akter ', 77, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:05:02', '2016-12-22 23:05:02'),
(255, 'Mishu Dash', 78, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:05:44', '2016-12-22 23:05:44'),
(256, 'Asma-ul Hosna', 79, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:07:22', '2016-12-22 23:07:22'),
(257, 'Fahima Akter', 80, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:07:55', '2016-12-22 23:07:55'),
(258, 'Rifa Afjor', 81, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:08:35', '2016-12-22 23:08:35'),
(259, 'Afia Sarmin Bina', 82, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:09:22', '2016-12-22 23:09:22'),
(260, 'Homaira Yeasmin Jui', 83, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:09:54', '2016-12-22 23:09:54'),
(261, 'Khairunnessa', 85, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:10:27', '2016-12-22 23:12:14'),
(262, 'Shibu Dash', 86, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:12:06', '2016-12-22 23:12:06'),
(263, 'Ammatun Khanom', 87, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:14:28', '2016-12-22 23:14:28'),
(264, 'Popi Akter', 88, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:15:09', '2016-12-22 23:15:09'),
(265, 'Shakila Yeasmin Sumi ', 90, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:16:06', '2016-12-22 23:16:06'),
(266, 'Sadia Ali', 91, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:16:40', '2016-12-22 23:16:40'),
(267, 'Insaniat Hosain', 92, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:17:25', '2016-12-22 23:17:25'),
(268, 'Nasrin Akter', 93, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:18:01', '2016-12-22 23:18:01'),
(269, 'Selina Akter ', 94, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:18:44', '2016-12-22 23:18:44'),
(270, 'Roksana Akter', 95, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:19:24', '2016-12-22 23:19:24'),
(271, 'Munni Akter', 96, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:20:04', '2016-12-22 23:20:04'),
(272, 'Fatema Begum', 97, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:20:46', '2016-12-22 23:20:46'),
(273, 'Unknown', 98, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:21:56', '2016-12-22 23:21:56'),
(274, 'Unknown', 99, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:22:25', '2016-12-22 23:22:25'),
(275, 'Unknown', 100, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:22:52', '2016-12-22 23:22:52'),
(276, 'Unknown', 101, 1, 1, 1, '', '', '', NULL, '2016-12-22 23:23:10', '2016-12-22 23:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_mark` double(8,2) NOT NULL,
  `total_mark_in_percentage` double(8,2) NOT NULL,
  `pass_mark` double(8,2) NOT NULL,
  `pass_mark_in_percentage` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `total_mark`, `total_mark_in_percentage`, `pass_mark`, `pass_mark_in_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 150.00, 100.00, 50.00, 33.00, '2016-12-21 03:10:11', '2016-12-21 03:10:11'),
(2, 'English', 150.00, 100.00, 50.00, 33.00, '2016-12-21 03:10:31', '2016-12-21 03:10:31'),
(3, 'Mathemathics', 100.00, 100.00, 33.00, 33.00, '2016-12-21 03:11:06', '2016-12-21 03:11:06'),
(4, 'General Science', 100.00, 100.00, 33.00, 33.00, '2016-12-21 03:17:18', '2016-12-21 03:17:18'),
(5, 'Introduce of Bangladesh & World', 100.00, 100.00, 33.00, 33.00, '2016-12-21 03:17:34', '2016-12-21 03:17:34'),
(6, 'Religion & Moral Studies', 100.00, 100.00, 33.00, 33.00, '2016-12-21 03:18:25', '2016-12-21 03:18:25'),
(7, 'Home Economics / Agricultural Studies', 100.00, 100.00, 33.00, 33.00, '2016-12-21 03:18:51', '2016-12-21 03:18:51'),
(8, 'ICT', 50.00, 100.00, 17.00, 34.00, '2016-12-21 03:19:32', '2016-12-21 03:19:32'),
(9, 'Work & Life Oriented Studies', 50.00, 100.00, 17.00, 34.00, '2016-12-21 03:20:07', '2016-12-21 03:20:07'),
(10, 'Physical Studies & Health', 50.00, 100.00, 17.00, 34.00, '2016-12-21 03:20:38', '2016-12-21 03:20:38'),
(11, 'Arts & Crafts', 50.00, 100.00, 17.00, 34.00, '2016-12-21 03:21:07', '2016-12-21 03:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Annual', '2016-12-21 03:35:23', '2016-12-21 03:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohsin Iqbal', 'mohsin@gmail.com', '$2y$10$7cE8VzdFHxXMAX1mQFfMOe.CrRRzbC57SUG208eYvgtTmxzIRbRZq', 'HgNJeUNtL9cGYbur84P9Vxfg1491Yp4LCMhzB6Tyw0KaluDYFlty5Nl9f29A', '2016-12-21 03:07:19', '2016-12-22 12:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, 2016, '2016-12-21 03:08:34', '2016-12-21 03:08:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_details`
--
ALTER TABLE `result_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result_details`
--
ALTER TABLE `result_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
