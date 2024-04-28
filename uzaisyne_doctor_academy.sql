-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2024 at 03:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzaisyne_doctor_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `district_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 60, 'University of Sindh Hyderabad Campus', '2024-01-03 10:33:00', NULL, '2024-01-03 10:33:00'),
(2, 60, 'Agri University Tandojam Hyderabad Campus', '2024-01-03 10:33:06', NULL, '2024-01-03 10:33:06'),
(3, 60, 'LUMHS Jamshoro Hyderabad Campus', '2024-01-03 10:33:11', NULL, '2024-01-03 10:33:11'),
(4, 60, 'IoBM Hyderabad Campus', '2024-01-03 10:33:16', NULL, '2024-01-03 10:33:16'),
(5, 60, 'Isra University Hyderabad Campus', '2024-01-03 10:33:22', NULL, '2024-01-03 10:33:22'),
(6, 60, 'SZABIST Hyderabad Campus', '2024-01-03 10:33:29', NULL, '2024-01-03 10:33:29'),
(7, 60, 'Dow University of Health Sciences Hyderabad Campus', '2024-01-03 10:35:40', NULL, '2024-01-03 10:35:40'),
(8, 60, 'Sindh Agriculture University Tandojam Hyderabad Campus', '2024-01-03 10:35:43', NULL, '2024-01-03 10:35:43'),
(9, 60, 'Institute of Business Management Hyderabad Campus', '2024-01-03 10:35:46', NULL, '2024-01-03 10:35:46'),
(10, 60, 'University of Arts and Sciences Hyderabad Campus', '2024-01-03 10:35:49', NULL, '2024-01-03 10:35:49'),
(11, 60, 'Indus University Hyderabad Campus', '2024-01-03 10:35:53', NULL, '2024-01-03 10:35:53'),
(12, 60, 'Pakistan Institute of Engineering and Applied Sciences (PIEAS) Hyderabad Campus', '2024-01-03 10:35:56', NULL, '2024-01-03 10:35:56'),
(13, 60, 'Allama Iqbal Open University Hyderabad Campus', '2024-01-03 10:36:00', NULL, '2024-01-03 10:36:00'),
(14, 60, 'Quaid-e-Awam University Hyderabad Campus', '2024-01-03 10:36:05', NULL, '2024-01-03 10:36:05'),
(15, 60, 'Iqra University Hyderabad Campus', '2024-01-03 10:36:09', NULL, '2024-01-03 10:36:09'),
(16, 60, 'Dawood University of Engineering and Technology Hyderabad Campus', '2024-01-03 10:36:13', NULL, '2024-01-03 10:36:13'),
(17, 60, 'University of Information Technology and Management Sciences Hyderabad Campus', '2024-01-03 10:36:17', NULL, '2024-01-03 10:36:17'),
(18, 60, 'Sindh Madressatul Islam University Hyderabad Campus', '2024-01-03 10:36:21', NULL, '2024-01-03 10:36:21'),
(19, 60, 'Shaheed Zulfiqar Ali Bhutto Institute of Science and Technology (SZABIST) Hyderabad Campus', '2024-01-03 10:36:27', NULL, '2024-01-03 10:36:27'),
(20, 60, 'Liaquat University of Medical and Health Sciences Hyderabad Campus', '2024-01-03 10:36:30', NULL, '2024-01-03 10:36:30'),
(21, 85, 'Khawaja Fareed University of Engineering and Information Technology Rahim Yar Khan Campus', '2024-01-03 10:36:34', NULL, '2024-01-03 10:36:34'),
(22, 85, 'IUB Bahawalnagar Campus', '2024-01-03 10:36:38', NULL, '2024-01-03 10:36:38'),
(23, 85, 'Punjab Group of Colleges Rahim Yar Khan Campus', '2024-01-03 10:36:41', NULL, '2024-01-03 10:36:41'),
(24, 85, 'The Educators Rahim Yar Khan Campus', '2024-01-03 10:36:48', NULL, '2024-01-03 10:36:48'),
(25, 85, 'Virtual University Rahim Yar Khan Campus', '2024-01-03 10:37:26', NULL, '2024-01-03 10:37:26'),
(26, 85, 'Punjab College Rahim Yar Khan Campus', '2024-01-03 10:37:30', NULL, '2024-01-03 10:37:30'),
(27, 85, 'University of Sufism and Modern Sciences Rahim Yar Khan Campus', '2024-01-03 10:37:33', NULL, '2024-01-03 10:37:33'),
(28, 85, 'Riphah International University Rahim Yar Khan Campus', '2024-01-03 10:37:37', NULL, '2024-01-03 10:37:37'),
(29, 85, 'Ghazi University Rahim Yar Khan Campus', '2024-01-03 10:37:39', NULL, '2024-01-03 10:37:39'),
(30, 85, 'Islamia University Bahawalpur Rahim Yar Khan Campus', '2024-01-03 10:37:42', NULL, '2024-01-03 10:37:42'),
(31, 85, 'Allama Iqbal Open University Rahim Yar Khan Campus', '2024-01-03 10:37:45', NULL, '2024-01-03 10:37:45'),
(32, 85, 'Quaid-e-Azam Medical College Bahawalpur Rahim Yar Khan Campus', '2024-01-03 10:37:48', NULL, '2024-01-03 10:37:48'),
(33, 85, 'Shaikh Zayed Medical College Rahim Yar Khan Campus', '2024-01-03 10:37:51', NULL, '2024-01-03 10:37:51'),
(34, 85, 'Iqra University Rahim Yar Khan Campus', '2024-01-03 10:37:54', NULL, '2024-01-03 10:37:54'),
(35, 85, 'Dawood University of Engineering and Technology Rahim Yar Khan Campus', '2024-01-03 10:37:57', NULL, '2024-01-03 10:37:57'),
(36, 85, 'HITEC University Taxila Rahim Yar Khan Campus', '2024-01-03 10:38:01', NULL, '2024-01-03 10:38:01'),
(37, 85, 'Khawaja Fareed University Rahim Yar Khan Campus', '2024-01-03 10:38:04', NULL, '2024-01-03 10:38:04'),
(38, 85, 'FAST-NUCES Rahim Yar Khan Campus', '2024-01-03 10:38:07', NULL, '2024-01-03 10:38:07'),
(39, 85, 'Punjab Tianjin University of Technology Rahim Yar Khan Campus', '2024-01-03 10:38:10', NULL, '2024-01-03 10:38:10'),
(40, 85, 'Pir Mehr Ali Shah Arid Agriculture University Rahim Yar Khan Campus', '2024-01-03 10:38:14', NULL, '2024-01-03 10:38:14'),
(41, 120, 'Quetta Male', '2024-01-03 10:38:48', '2024-01-03 10:38:41', '2024-01-03 10:38:48'),
(42, 120, 'Quetta Male Campus', NULL, '2024-01-03 10:39:10', '2024-01-03 10:39:10'),
(43, 120, 'Quetta Female Campus', NULL, '2024-01-03 10:39:29', '2024-01-03 10:39:29'),
(44, 109, 'Turbat Campus', NULL, '2024-01-03 10:39:50', '2024-01-03 10:39:50'),
(45, 102, 'Hub Chowki Campus', NULL, '2024-01-03 10:40:10', '2024-01-03 10:40:10'),
(46, 108, 'Gwadar Campus', NULL, '2024-01-03 10:40:28', '2024-01-03 10:40:28'),
(47, 135, 'Loralai Campus', NULL, '2024-01-03 10:40:57', '2024-01-03 10:40:57'),
(48, 135, 'Loralai Campus', '2024-01-03 10:42:55', '2024-01-03 10:40:58', '2024-01-03 10:42:55'),
(49, 118, 'Pishin Campus', NULL, '2024-01-03 10:41:49', '2024-01-03 10:41:49'),
(50, 128, 'Zhob Campus', NULL, '2024-01-03 10:42:07', '2024-01-03 10:42:07'),
(51, 104, 'khuzdar Campus', NULL, '2024-01-03 10:42:25', '2024-01-03 10:42:25'),
(52, 112, 'Dera Allahyar Campus', '2024-03-04 20:27:41', '2024-01-03 10:43:34', '2024-03-04 20:27:41'),
(53, 1, 'my campus', NULL, '2024-01-08 11:10:20', '2024-01-08 11:10:20'),
(54, 0, 'test campussss', NULL, '2024-02-25 13:50:45', '2024-02-25 13:50:45'),
(55, 0, 'Karachi campus', '2024-03-02 00:34:53', '2024-03-02 00:33:11', '2024-03-02 00:34:53'),
(56, 0, 'karachi campus', '2024-03-04 20:27:34', '2024-03-04 20:26:55', '2024-03-04 20:27:34'),
(57, 0, 'hyd campus', '2024-03-04 20:27:58', '2024-03-04 20:27:17', '2024-03-04 20:27:58'),
(58, 0, 'Dera Allah Yar campus', NULL, '2024-03-04 20:28:10', '2024-03-04 20:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `campus_session`
--

CREATE TABLE `campus_session` (
  `id` bigint UNSIGNED NOT NULL,
  `campus_id` bigint UNSIGNED NOT NULL,
  `session_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campus_session`
--

INSERT INTO `campus_session` (`id`, `campus_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 42, 57, NULL, NULL),
(2, 44, 57, NULL, NULL),
(4, 47, 57, NULL, NULL),
(5, 50, 57, NULL, NULL),
(6, 42, 58, NULL, NULL),
(7, 43, 58, NULL, NULL),
(8, 46, 59, NULL, NULL),
(9, 53, 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Testing multiple Chapter', NULL, '2024-04-27 18:01:14', '2024-04-27 18:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_subject`
--

CREATE TABLE `chapter_subject` (
  `id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_subject`
--

INSERT INTO `chapter_subject` (`id`, `chapter_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL),
(3, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(49, 'Testing Multiple Class', NULL, '2024-04-27 17:09:14', '2024-04-27 17:09:14'),
(50, 'Class 2', NULL, '2024-04-27 17:35:01', '2024-04-27 17:35:01'),
(51, 'Class 3', NULL, '2024-04-27 17:35:13', '2024-04-27 17:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_session`
--

CREATE TABLE `classroom_session` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `session_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classroom_session`
--

INSERT INTO `classroom_session` (`id`, `classroom_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 49, 57, NULL, NULL),
(3, 49, 59, NULL, NULL),
(4, 50, 59, NULL, NULL),
(5, 51, 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_subject`
--

CREATE TABLE `classroom_subject` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classroom_subject`
--

INSERT INTO `classroom_subject` (`id`, `classroom_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(2, 50, 2, NULL, NULL),
(3, 51, 2, NULL, NULL),
(4, 50, 3, NULL, NULL),
(5, 51, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'Layyah', '2024-02-27 16:00:01', NULL, '2024-02-27 16:00:01'),
(2, 4, 'Bahawalpur District', '2024-02-27 16:00:05', NULL, '2024-02-27 16:00:05'),
(3, 1, 'Dera Ghazi Khan', '2024-02-27 16:00:09', NULL, '2024-02-27 16:00:09'),
(4, 1, 'Faisalabad', '2024-02-27 16:00:12', NULL, '2024-02-27 16:00:12'),
(5, 1, 'Gujrat', '2024-02-27 16:00:16', NULL, '2024-02-27 16:00:16'),
(6, 1, 'Jhelum', '2024-02-27 16:00:19', NULL, '2024-02-27 16:00:19'),
(7, 1, 'Kasur', '2024-02-27 16:00:23', NULL, '2024-02-27 16:00:23'),
(8, 1, 'Mianwali', '2024-02-27 16:00:26', NULL, '2024-02-27 16:00:26'),
(9, 1, 'Nankana Sahib', '2024-02-27 16:00:30', NULL, '2024-02-27 16:00:30'),
(10, 1, 'Okara', '2024-02-27 16:00:35', NULL, '2024-02-27 16:00:35'),
(11, 2, 'Dadu', '2024-02-27 16:00:39', NULL, '2024-02-27 16:00:39'),
(12, 2, 'Jacobabad', '2024-02-27 16:00:42', NULL, '2024-02-27 16:00:42'),
(13, 2, 'Shikarpur', '2024-02-27 16:00:45', NULL, '2024-02-27 16:00:45'),
(14, 2, 'Thatta', '2024-02-27 16:00:48', NULL, '2024-02-27 16:00:48'),
(15, 2, 'Tando Allahyar', '2024-02-27 16:00:52', NULL, '2024-02-27 16:00:52'),
(16, 2, 'Umerkot', '2024-02-27 16:00:59', NULL, '2024-02-27 16:00:59'),
(17, 2, 'Jamshoro', '2024-02-27 16:01:02', NULL, '2024-02-27 16:01:02'),
(18, 2, 'Badin', '2024-02-27 16:01:08', NULL, '2024-02-27 16:01:08'),
(19, 2, 'Kamber Shahdadkot', '2024-02-27 16:01:11', NULL, '2024-02-27 16:01:11'),
(20, 2, 'Sanghar', '2024-02-27 16:01:14', NULL, '2024-02-27 16:01:14'),
(21, 3, 'Mansehra', '2024-02-27 16:01:17', NULL, '2024-02-27 16:01:17'),
(22, 3, 'Swabi', '2024-02-27 16:01:20', NULL, '2024-02-27 16:01:20'),
(23, 3, 'Hangu', '2024-02-27 16:01:22', NULL, '2024-02-27 16:01:22'),
(24, 3, 'Karak', '2024-02-27 16:01:25', NULL, '2024-02-27 16:01:25'),
(25, 3, 'Nowshera', NULL, NULL, NULL),
(26, 3, 'Kohat', NULL, NULL, NULL),
(27, 3, 'Bannu', NULL, NULL, NULL),
(28, 3, 'Haripur', NULL, NULL, NULL),
(29, 3, 'Batagram', NULL, NULL, NULL),
(30, 3, 'Kohistan', NULL, NULL, NULL),
(31, 4, 'Loralai', '2024-01-03 10:06:26', NULL, '2024-01-03 10:06:26'),
(32, 4, 'Sibi', '2024-01-03 10:12:36', NULL, '2024-01-03 10:12:36'),
(33, 4, 'Ziarat', '2024-01-03 10:12:53', NULL, '2024-01-03 10:12:53'),
(34, 4, 'Pishin', '2024-01-03 10:13:08', NULL, '2024-01-03 10:13:08'),
(35, 4, 'Killa Abdullah', '2024-01-03 10:13:24', NULL, '2024-01-03 10:13:24'),
(36, 4, 'Jafarabad', '2024-01-03 10:13:41', NULL, '2024-01-03 10:13:41'),
(37, 4, 'Kech', '2024-01-03 10:13:56', NULL, '2024-01-03 10:13:56'),
(38, 4, 'Panjgur', '2024-01-03 10:14:07', NULL, '2024-01-03 10:14:07'),
(39, 4, 'Washuk', '2024-01-03 10:14:18', NULL, '2024-01-03 10:14:18'),
(40, 4, 'Awaran', '2024-01-03 10:14:30', NULL, '2024-01-03 10:14:30'),
(41, 5, 'Ghizer', NULL, NULL, NULL),
(42, 5, 'Shigar', NULL, NULL, NULL),
(43, 5, 'Astore', NULL, NULL, NULL),
(44, 5, 'Kharmang', NULL, NULL, NULL),
(45, 5, 'Diamer', NULL, NULL, NULL),
(46, 5, 'Ghanche', NULL, NULL, NULL),
(47, 5, 'Skardu', NULL, NULL, NULL),
(48, 5, 'Hunza', NULL, NULL, NULL),
(49, 5, 'Nagar', NULL, NULL, NULL),
(50, 5, 'Shimshal', NULL, NULL, NULL),
(51, 6, 'Muzaffarabad', NULL, NULL, NULL),
(52, 6, 'Mirpur', NULL, NULL, NULL),
(53, 6, 'Bhimber', NULL, NULL, NULL),
(54, 6, 'Kotli', NULL, NULL, NULL),
(55, 6, 'Neelum', NULL, NULL, NULL),
(56, 6, 'Poonch', NULL, NULL, NULL),
(57, 6, 'Haveli', NULL, NULL, NULL),
(58, 6, 'Bagh', NULL, NULL, NULL),
(59, 6, 'Sudhanoti', NULL, NULL, NULL),
(60, 2, 'Hyderabad', NULL, NULL, NULL),
(61, 2, 'Sukkur', NULL, NULL, NULL),
(62, 2, 'Khairpur', NULL, NULL, NULL),
(63, 2, 'Ghotki', NULL, NULL, NULL),
(64, 2, 'Tando Muhammad Khan', NULL, NULL, NULL),
(65, 2, 'Qambar Shahdadkot', NULL, NULL, NULL),
(66, 2, 'Naushahro Feroze', NULL, NULL, NULL),
(67, 2, 'Badin', NULL, NULL, NULL),
(68, 2, 'Tharparkar', NULL, NULL, NULL),
(69, 2, 'Sujawal', NULL, NULL, NULL),
(70, 2, 'Dadu', NULL, NULL, NULL),
(71, 2, 'Jamshoro', NULL, NULL, NULL),
(72, 2, 'Matiari', NULL, NULL, NULL),
(73, 2, 'Tando Allahyar', NULL, NULL, NULL),
(74, 2, 'Umerkot', NULL, NULL, NULL),
(75, 2, 'Mirpur Khas', NULL, NULL, NULL),
(76, 2, 'Tandojam', NULL, NULL, NULL),
(77, 2, 'Nawabshah', NULL, NULL, NULL),
(78, 2, 'Matiari', NULL, NULL, NULL),
(79, 1, 'Multan', NULL, NULL, NULL),
(80, 1, 'Gujranwala', NULL, NULL, NULL),
(81, 1, 'Sialkot', NULL, NULL, NULL),
(82, 1, 'Sargodha', NULL, NULL, NULL),
(83, 1, 'Lodhran', NULL, NULL, NULL),
(84, 1, 'Muzaffargarh', NULL, NULL, NULL),
(85, 1, 'Rahim Yar Khan', NULL, NULL, NULL),
(86, 1, 'Vehari', NULL, NULL, NULL),
(87, 1, 'Narowal', NULL, NULL, NULL),
(88, 1, 'Sheikhupura', NULL, NULL, NULL),
(89, 1, 'Jhang', NULL, NULL, NULL),
(90, 1, 'Khanewal', NULL, NULL, NULL),
(91, 1, 'Attock', NULL, NULL, NULL),
(92, 1, 'Chakwal', NULL, NULL, NULL),
(93, 1, 'Mandi Bahauddin', NULL, NULL, NULL),
(94, 1, 'Hafizabad', NULL, NULL, NULL),
(95, 1, 'Jhelum', NULL, NULL, NULL),
(96, 1, 'Kasur', NULL, NULL, NULL),
(97, 1, 'Nankana Sahib', NULL, NULL, NULL),
(98, 1, 'Okara', NULL, NULL, NULL),
(99, 4, 'Hub Chowki', '2024-01-03 10:14:39', '2024-01-03 10:05:23', '2024-01-03 10:14:39'),
(100, 4, 'Kalat', '2024-01-03 10:14:47', '2024-01-03 10:06:02', '2024-01-03 10:14:47'),
(101, 4, 'Awaran', '2024-03-12 14:27:01', '2024-01-03 10:15:15', '2024-03-12 14:27:01'),
(102, 4, 'Hub Chowki', '2024-03-12 14:27:14', '2024-01-03 10:15:33', '2024-03-12 14:27:14'),
(103, 4, 'Kalat', '2024-03-12 14:27:39', '2024-01-03 10:15:54', '2024-03-12 14:27:39'),
(104, 4, 'Khuzdar', '2024-03-12 14:27:39', '2024-01-03 10:16:05', '2024-03-12 14:27:39'),
(105, 4, 'Lasbella', '2024-03-12 14:27:39', '2024-01-03 10:18:48', '2024-03-12 14:27:39'),
(106, 4, 'Mastung', '2024-03-12 14:27:39', '2024-01-03 10:19:03', '2024-03-12 14:27:39'),
(107, 4, 'Surab', '2024-03-12 14:27:39', '2024-01-03 10:19:12', '2024-03-12 14:27:39'),
(108, 4, 'Gwadar', '2024-03-12 14:27:39', '2024-01-03 10:19:51', '2024-03-12 14:27:39'),
(109, 4, 'Kech', '2024-03-12 14:28:01', '2024-01-03 10:20:08', '2024-03-12 14:28:01'),
(110, 4, 'Panjgur', '2024-03-12 14:28:01', '2024-01-03 10:20:18', '2024-03-12 14:28:01'),
(111, 4, 'Bolan', '2024-03-12 14:28:01', '2024-01-03 10:23:41', '2024-03-12 14:28:01'),
(112, 4, 'Jafferabad', '2024-03-12 14:28:01', '2024-01-03 10:24:01', '2024-03-12 14:28:01'),
(113, 4, 'Jhall Magsi', '2024-03-12 14:28:01', '2024-01-03 10:24:15', '2024-03-12 14:28:01'),
(114, 4, 'Naseerabad', '2024-03-12 14:28:01', '2024-01-03 10:24:36', '2024-03-12 14:28:01'),
(115, 4, 'sohbatpur', '2024-03-12 14:28:33', '2024-01-03 10:25:02', '2024-03-12 14:28:33'),
(116, 4, 'Usta Mohammad', '2024-03-12 14:28:33', '2024-01-03 10:25:17', '2024-03-12 14:28:33'),
(117, 4, 'Killa Abdullah', '2024-03-12 14:28:33', '2024-01-03 10:25:57', '2024-03-12 14:28:33'),
(118, 4, 'pishin', '2024-03-12 14:28:33', '2024-01-03 10:26:29', '2024-03-12 14:28:33'),
(119, 4, 'Quetta Rural', '2024-03-12 14:28:33', '2024-01-03 10:26:40', '2024-03-12 14:28:33'),
(120, 4, 'Quetta Urban', '2024-03-12 14:28:33', '2024-01-03 10:26:50', '2024-03-12 14:28:33'),
(121, 4, 'Chaman', '2024-03-12 14:29:04', '2024-01-03 10:26:59', '2024-03-12 14:29:04'),
(122, 4, 'Sibi', '2024-03-12 14:29:04', '2024-01-03 10:27:25', '2024-03-12 14:29:04'),
(123, 4, 'Kohlu', '2024-03-12 14:29:04', '2024-01-03 10:27:39', '2024-03-12 14:29:04'),
(124, 4, 'Dera bugti', '2024-03-12 14:29:04', '2024-01-03 10:27:52', '2024-03-12 14:29:04'),
(125, 4, 'Ziarat', '2024-03-12 14:29:04', '2024-01-03 10:28:08', '2024-03-12 14:29:04'),
(126, 4, 'Harnai', '2024-03-12 14:29:04', '2024-01-03 10:28:24', '2024-03-12 14:29:04'),
(127, 4, 'Lehri', '2024-03-12 14:29:41', '2024-01-03 10:28:38', '2024-03-12 14:29:41'),
(128, 4, 'Zhob', '2024-03-12 14:29:41', '2024-01-03 10:29:48', '2024-03-12 14:29:41'),
(129, 4, 'Killa saifullah', '2024-03-12 14:29:41', '2024-01-03 10:30:03', '2024-03-12 14:29:41'),
(130, 4, 'Sherani', '2024-03-12 14:29:41', '2024-01-03 10:30:21', '2024-03-12 14:29:41'),
(131, 4, 'Chaghi', '2024-03-12 14:29:41', '2024-01-03 10:30:58', '2024-03-12 14:29:41'),
(132, 4, 'Washuk', '2024-02-27 15:59:58', '2024-01-03 10:31:15', '2024-02-27 15:59:58'),
(133, 4, 'Nushki', '2024-03-12 14:29:41', '2024-01-03 10:31:33', '2024-03-12 14:29:41'),
(134, 4, 'kharan', '2024-03-12 14:30:05', '2024-01-03 10:31:46', '2024-03-12 14:30:05'),
(135, 4, 'Loralai', '2024-03-12 14:30:05', '2024-01-03 10:32:03', '2024-03-12 14:30:05'),
(136, 4, 'Musakhail', '2024-03-12 14:30:05', '2024-01-03 10:32:13', '2024-03-12 14:30:05'),
(137, 4, 'Duki', '2024-03-12 14:30:05', '2024-01-03 10:32:23', '2024-03-12 14:30:05'),
(138, 4, 'Barkhan', '2024-03-12 14:30:05', '2024-01-03 10:32:36', '2024-03-12 14:30:05'),
(139, 4, 'Rahim Yar Khan District', '2024-03-12 14:25:37', '2024-02-17 09:28:03', '2024-03-12 14:25:37'),
(140, 9, 'Awaran', NULL, '2024-02-27 16:01:53', '2024-02-27 16:01:53'),
(141, 9, 'Kalat', NULL, '2024-02-27 16:02:15', '2024-02-27 16:02:15'),
(142, 9, 'Khuzdar', NULL, '2024-02-27 16:02:46', '2024-02-27 16:02:46'),
(143, 9, 'Lasbella', NULL, '2024-02-27 16:03:12', '2024-02-27 16:03:12'),
(144, 9, 'Mastung', NULL, '2024-02-27 16:03:28', '2024-02-27 16:03:28'),
(145, 9, 'Surab', NULL, '2024-02-27 16:03:40', '2024-02-27 16:03:40'),
(146, 10, 'Barkhan', NULL, '2024-02-27 16:03:56', '2024-02-27 16:03:56'),
(147, 10, 'Duki', NULL, '2024-02-27 16:04:10', '2024-02-27 16:04:10'),
(148, 10, 'Loralai', NULL, '2024-02-27 16:04:27', '2024-02-27 16:04:27'),
(149, 10, 'Musakhail', NULL, '2024-02-27 16:04:43', '2024-02-27 16:05:00'),
(150, 11, 'Gwadar', NULL, '2024-02-27 16:05:57', '2024-02-27 16:05:57'),
(151, 11, 'Kech', NULL, '2024-02-27 16:07:55', '2024-02-27 16:07:55'),
(152, 11, 'Panjgur', NULL, '2024-02-27 16:08:08', '2024-02-27 16:08:08'),
(153, 12, 'Jafferabad', NULL, '2024-02-27 16:08:24', '2024-02-27 16:08:24'),
(154, 12, 'jhall magsi', NULL, '2024-02-27 16:10:09', '2024-02-27 16:10:09'),
(155, 12, 'Bolan(Kacchi)', NULL, '2024-02-27 16:10:34', '2024-02-27 16:10:34'),
(156, 12, 'Naseerabad', NULL, '2024-02-27 16:10:58', '2024-02-27 16:10:58'),
(157, 12, 'sohbatpur', NULL, '2024-02-27 16:11:14', '2024-02-27 16:11:14'),
(158, 8, 'Chaman', NULL, '2024-02-27 16:11:27', '2024-02-27 16:11:27'),
(159, 8, 'Killa Abdullah', NULL, '2024-02-27 16:12:04', '2024-02-27 16:12:04'),
(160, 8, 'Pishin', NULL, '2024-02-27 16:12:20', '2024-02-27 16:12:20'),
(161, 8, 'Quetta Urban', NULL, '2024-02-27 16:12:35', '2024-02-27 16:12:35'),
(162, 8, 'Quetta Urban', NULL, '2024-02-27 16:12:42', '2024-02-27 16:12:42'),
(163, 8, 'Quetta Rural', NULL, '2024-02-27 16:13:00', '2024-02-27 16:13:00'),
(164, 13, 'Chahgi', NULL, '2024-02-27 16:13:28', '2024-02-27 16:13:28'),
(165, 13, 'kharan', NULL, '2024-02-27 16:13:42', '2024-02-27 16:13:42'),
(166, 13, 'Nushki', NULL, '2024-02-27 16:13:55', '2024-02-27 16:13:55'),
(167, 13, 'Washuk', NULL, '2024-02-27 16:19:01', '2024-02-27 16:19:01'),
(168, 14, 'Dera bugti', NULL, '2024-02-27 16:19:39', '2024-02-27 16:19:39'),
(169, 14, 'Harnai', NULL, '2024-02-27 16:19:59', '2024-02-27 16:19:59'),
(170, 14, 'Kohlu', NULL, '2024-02-27 16:20:15', '2024-02-27 16:20:15'),
(171, 14, 'Kohlu', NULL, '2024-02-27 16:20:27', '2024-02-27 16:20:27'),
(172, 14, 'Sibi', NULL, '2024-02-27 16:21:39', '2024-02-27 16:21:39'),
(173, 14, 'Ziarat', NULL, '2024-02-27 16:22:07', '2024-02-27 16:22:07'),
(174, 15, 'Killa saifullah', NULL, '2024-02-27 16:22:28', '2024-02-27 16:22:28'),
(175, 15, 'Sherani', NULL, '2024-02-27 16:22:41', '2024-02-27 16:22:41'),
(176, 15, 'Zhob', NULL, '2024-02-27 16:22:57', '2024-02-27 16:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `province_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `province_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Peshawer', '2024-02-17 09:15:56', '2024-02-17 09:13:01', '2024-02-17 09:15:56'),
(2, 3, 'Peshawer', NULL, '2024-02-17 09:23:23', '2024-02-17 09:23:23'),
(3, 3, 'Malakand', NULL, '2024-02-17 09:23:51', '2024-02-17 09:23:51'),
(4, 1, 'Bahawalpur', NULL, '2024-02-17 09:27:10', '2024-02-17 09:27:10'),
(5, 1, 'Dera Ghazi Khan', NULL, '2024-02-17 09:29:08', '2024-02-17 09:29:08'),
(6, 1, 'test', '2024-02-17 10:06:26', '2024-02-17 10:05:55', '2024-02-17 10:06:26'),
(7, 1, 'test server', '2024-02-17 10:06:26', '2024-02-17 10:06:11', '2024-02-17 10:06:26'),
(8, 4, 'Quetta Division', NULL, '2024-02-27 15:55:53', '2024-02-27 15:55:53'),
(9, 4, 'Kalat Division', NULL, '2024-02-27 15:57:36', '2024-02-27 15:57:36'),
(10, 4, 'Loralai Division', NULL, '2024-02-27 15:57:51', '2024-02-27 15:57:51'),
(11, 4, 'Makran Division', NULL, '2024-02-27 15:58:07', '2024-02-27 15:58:07'),
(12, 4, 'Naseerabad Division', NULL, '2024-02-27 15:58:22', '2024-02-27 15:58:22'),
(13, 4, 'Rakhshan Division', NULL, '2024-02-27 15:58:39', '2024-02-27 15:58:39'),
(14, 4, 'Sibi Division', NULL, '2024-02-27 15:58:50', '2024-02-27 15:58:50'),
(15, 4, 'Zhob Division', NULL, '2024-02-27 15:59:05', '2024-02-27 15:59:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_09_195947_create_provinces_table', 1),
(6, '2023_10_09_200035_create_districts_table', 1),
(7, '2023_10_09_200052_create_campuses_table', 1),
(8, '2023_10_09_200058_create_sessions_table', 1),
(9, '2023_10_09_200117_create_classrooms_table', 1),
(10, '2023_10_15_100155_create_subjects_table', 1),
(11, '2023_10_16_051157_create_chapters_table', 2),
(12, '2024_02_17_130842_create_divisions_table', 3),
(13, '2024_04_27_151431_create_campus_session_table', 4),
(14, '2024_04_27_151708_remove_campus_id_from_sessions_table', 5),
(15, '2024_04_27_220039_create_classroom_session_table', 6),
(16, '2024_04_27_220720_remove_session_id_from_classrooms_table', 7),
(18, '2024_04_27_222316_create_classroom_subject_table', 8),
(19, '2024_04_27_224522_remove_subject_id_from_chapters_table', 9),
(20, '2024_04_27_224753_create_chapter_subject_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('aaas@gmail.com', '6699', '2023-11-08 14:47:02'),
('devidmachelum@gmail.com', '7548', '2023-12-07 11:20:31'),
('imrannawaz288@gmail.com', '7236', '2023-11-19 10:09:19'),
('oo@gmail.com', '8474', '2023-11-07 09:38:05'),
('shahb7599@gmail.com', '1615', '2023-11-10 18:00:32'),
('student3@gmail.com', '2130', '2023-11-07 09:40:07'),
('zees@gmail.com', '9933', '2024-03-12 11:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'MyApp', 'a7be172fdb28763453549ed5ba0b9bf4b65a7306df3e9458fb5fe60a3b7a77e3', '[\"*\"]', NULL, NULL, '2023-10-20 06:57:53', '2023-10-20 06:57:53'),
(2, 'App\\Models\\User', 3, 'MyApp', 'd812c8afe2e7c377e504970b50ddeb7b351e8a18812683295a9c4db29134e7da', '[\"*\"]', NULL, NULL, '2023-10-20 06:58:56', '2023-10-20 06:58:56'),
(3, 'App\\Models\\User', 3, 'MyApp', 'ca0d716186e41efb5f7dad034ffa694f1c348a79e9e4a7bb05ec7fb075b32c3e', '[\"*\"]', NULL, NULL, '2023-10-20 19:09:52', '2023-10-20 19:09:52'),
(4, 'App\\Models\\User', 3, 'MyApp', '47d6e85315f4c3050866ebfb7c01410b44b42d626ea13a25138d814a71d71551', '[\"*\"]', NULL, NULL, '2023-10-21 13:14:22', '2023-10-21 13:14:22'),
(5, 'App\\Models\\User', 3, 'MyApp', '0f8dd31c396a5a9e11393dc110db849b8537ba5132c58af26238132113f0c8c5', '[\"*\"]', NULL, NULL, '2023-10-21 15:14:48', '2023-10-21 15:14:48'),
(6, 'App\\Models\\User', 3, 'MyApp', '4193225465922d970e9df3f6859fdc65589ff4573cd51f42e0a8bbf17c9536ff', '[\"*\"]', NULL, NULL, '2023-10-21 15:55:52', '2023-10-21 15:55:52'),
(7, 'App\\Models\\User', 3, 'MyApp', '4179ac54d1e74c342ce094f875498e4e24d432fdaef670660dfddba8ccc5865b', '[\"*\"]', NULL, NULL, '2023-10-22 09:20:31', '2023-10-22 09:20:31'),
(8, 'App\\Models\\User', 3, 'MyApp', 'ced705c6c34da9234f7ee4614ab4f083bd9d19dabc5dee95de6ab3b32c71ce27', '[\"*\"]', NULL, NULL, '2023-10-22 09:33:06', '2023-10-22 09:33:06'),
(9, 'App\\Models\\User', 3, 'MyApp', '2a95c23304c45d593887d97e4573c3ff777b94cd1825a110b2943f850f5a58a3', '[\"*\"]', NULL, NULL, '2023-10-22 09:34:05', '2023-10-22 09:34:05'),
(10, 'App\\Models\\User', 3, 'MyApp', '09f43a1f403517e93277c50d19d31cfbb2473ae996ca94303d87e2d38f5aa2e8', '[\"*\"]', NULL, NULL, '2023-10-22 09:44:19', '2023-10-22 09:44:19'),
(11, 'App\\Models\\User', 3, 'MyApp', 'd39840b27dad477ea7d24fc1c3268c7eb675f6faeeb673e2c6732a507be3a444', '[\"*\"]', NULL, NULL, '2023-10-22 09:45:55', '2023-10-22 09:45:55'),
(12, 'App\\Models\\User', 3, 'MyApp', '6141792dd67cea83c7703c125a1bc14f0cd179738bfc28d167c4d65d71295cc2', '[\"*\"]', NULL, NULL, '2023-10-22 09:48:51', '2023-10-22 09:48:51'),
(13, 'App\\Models\\User', 3, 'MyApp', 'efd7166a6ec7ae6fdfedaf861d9dd7be1469a42530c6241ef7e8fe8b2979a574', '[\"*\"]', NULL, NULL, '2023-10-23 22:10:52', '2023-10-23 22:10:52'),
(14, 'App\\Models\\User', 3, 'MyApp', 'c0c22b3fc567003516da6211378219115189fe53e23d48bad55c14deb8ff2214', '[\"*\"]', NULL, NULL, '2023-10-23 22:14:36', '2023-10-23 22:14:36'),
(15, 'App\\Models\\User', 4, 'MyApp', '12bbf020e9287e314d72c138d6acc509d2de7eaa16739eab1393e727502ea0b5', '[\"*\"]', NULL, NULL, '2023-11-01 12:06:57', '2023-11-01 12:06:57'),
(16, 'App\\Models\\User', 5, 'MyApp', '1361c61d2ef9d64793c5e16ace6e18539f46cd36848d7f4322f5d5513429d1ce', '[\"*\"]', NULL, NULL, '2023-11-01 12:13:11', '2023-11-01 12:13:11'),
(17, 'App\\Models\\User', 6, 'MyApp', '10e515c7d4c8c07e6861384a8dbe36f6024bca0d3f019dff85053caf8167769e', '[\"*\"]', NULL, NULL, '2023-11-01 12:18:13', '2023-11-01 12:18:13'),
(18, 'App\\Models\\User', 7, 'MyApp', '6e7a5d1fbc7fb2881d84fe3f8383875263b0f6bf8c0ecee59406ed1504e06ee8', '[\"*\"]', NULL, NULL, '2023-11-02 09:06:08', '2023-11-02 09:06:08'),
(19, 'App\\Models\\User', 8, 'MyApp', 'e5fd382388a36d1721cb4f595f336b7b1d06dcc4e49e8e4a715ef55568734a48', '[\"*\"]', NULL, NULL, '2023-11-02 09:32:14', '2023-11-02 09:32:14'),
(20, 'App\\Models\\User', 9, 'MyApp', '1dc1b4f0b445d4392e1a1d22907c417ccf18f300b41c30821ecbac826fbe605f', '[\"*\"]', NULL, NULL, '2023-11-02 11:39:35', '2023-11-02 11:39:35'),
(21, 'App\\Models\\User', 10, 'MyApp', 'b08eb21fd30f00ee2a4b0552af99fecb29ae83c1a13829c23688c2f3de9fa62e', '[\"*\"]', NULL, NULL, '2023-11-02 14:12:46', '2023-11-02 14:12:46'),
(22, 'App\\Models\\User', 10, 'MyApp', '730abaa293b272501ef58d166cfe04e02ba767fc381edbee2746ad4d45b6fa96', '[\"*\"]', NULL, NULL, '2023-11-02 14:14:29', '2023-11-02 14:14:29'),
(23, 'App\\Models\\User', 10, 'MyApp', '15fbd699c9d00f4ce6ec85fbc049ec0e0e47bd2b6e76d2db622753aea61db6dd', '[\"*\"]', NULL, NULL, '2023-11-02 14:16:47', '2023-11-02 14:16:47'),
(24, 'App\\Models\\User', 10, 'MyApp', '7b088bee86c0bb8e97e85dd45f1982ff6d21f48e18a582effc77474eaa7e36c5', '[\"*\"]', NULL, NULL, '2023-11-02 14:18:52', '2023-11-02 14:18:52'),
(25, 'App\\Models\\User', 10, 'MyApp', '0daeec0ca0e119670a540f90557c6ffad723a786b4a2d8b7d42f2b4f3db5b233', '[\"*\"]', NULL, NULL, '2023-11-02 14:19:55', '2023-11-02 14:19:55'),
(26, 'App\\Models\\User', 10, 'MyApp', '8ae9303fd1b3a1938e341e1dc6a7474c6307f6ac7e87c57cb9f70e8d236dde0c', '[\"*\"]', NULL, NULL, '2023-11-02 14:21:29', '2023-11-02 14:21:29'),
(27, 'App\\Models\\User', 10, 'MyApp', '6bf190abf7cf204c0fb6bfa0ff7c74f48cdd34f8032e225eaf601b1da4318e7c', '[\"*\"]', NULL, NULL, '2023-11-02 15:58:46', '2023-11-02 15:58:46'),
(28, 'App\\Models\\User', 10, 'MyApp', 'bd5aa843a32cdeb0d4c15e4da9ad55e6aa03f4a702c6a3ba5324e09f5e3d562b', '[\"*\"]', NULL, NULL, '2023-11-02 16:00:18', '2023-11-02 16:00:18'),
(29, 'App\\Models\\User', 10, 'MyApp', 'a4211ff339f26e8836bd76395327a413c2a025a306cd2ffce26b32d91a0628cb', '[\"*\"]', NULL, NULL, '2023-11-02 16:01:15', '2023-11-02 16:01:15'),
(30, 'App\\Models\\User', 10, 'MyApp', '43ae6da066827e05c6b114ed3fbe47b12aac82f40d03c3ae8f15d759342c4048', '[\"*\"]', NULL, NULL, '2023-11-02 16:03:27', '2023-11-02 16:03:27'),
(31, 'App\\Models\\User', 10, 'MyApp', '13b3827ac1e0e3664e7159f9ee337dc0f01d5b4445d6abc59881ca1a798840f4', '[\"*\"]', NULL, NULL, '2023-11-02 16:12:20', '2023-11-02 16:12:20'),
(32, 'App\\Models\\User', 10, 'MyApp', '51afaf5a7fadb083e83cbb9a7d459ebb88fac50758b8ba1631adfbeb61f510c8', '[\"*\"]', NULL, NULL, '2023-11-02 16:14:37', '2023-11-02 16:14:37'),
(33, 'App\\Models\\User', 10, 'MyApp', 'd028686b3a4c8ce3f6d3b47ad13b771d84e48f15d389f984731396d842b1b251', '[\"*\"]', NULL, NULL, '2023-11-02 16:20:00', '2023-11-02 16:20:00'),
(34, 'App\\Models\\User', 10, 'MyApp', '95a231454b58e9d66c2db1e4643d79e7ea5133a1ee7a1888ab6a9ba0e957a828', '[\"*\"]', NULL, NULL, '2023-11-02 16:20:57', '2023-11-02 16:20:57'),
(35, 'App\\Models\\User', 10, 'MyApp', 'ef09f72c3b1ab1f53ccfc053c0d5a4a71e98136b704768410a8332994f5d80e5', '[\"*\"]', NULL, NULL, '2023-11-02 16:22:42', '2023-11-02 16:22:42'),
(36, 'App\\Models\\User', 10, 'MyApp', '0d171bbd82250fa80cd0f0a631fd605dc8a97a4236181361ebe960e1e9202f35', '[\"*\"]', NULL, NULL, '2023-11-02 16:35:39', '2023-11-02 16:35:39'),
(37, 'App\\Models\\User', 10, 'MyApp', 'ac98dad2b57b2eced15331794ad5255cfef210ae22ea1afcc9dbc211f63a9ff0', '[\"*\"]', NULL, NULL, '2023-11-02 16:51:19', '2023-11-02 16:51:19'),
(38, 'App\\Models\\User', 10, 'MyApp', '18109370505f5557b57e470e08c4711eed79c66afd8dcf9d738c57b41d3a509f', '[\"*\"]', NULL, NULL, '2023-11-05 07:36:35', '2023-11-05 07:36:35'),
(39, 'App\\Models\\User', 10, 'MyApp', 'ee481460652d8af0797d31d1882784208951bd3e8bb28c2079babef37f5f3a7d', '[\"*\"]', NULL, NULL, '2023-11-05 07:42:34', '2023-11-05 07:42:34'),
(40, 'App\\Models\\User', 10, 'MyApp', 'c78efd4cbe5af15ebfc74c36dad34b2d0746b63f392142de4219ee8339d76e41', '[\"*\"]', NULL, NULL, '2023-11-05 07:42:35', '2023-11-05 07:42:35'),
(41, 'App\\Models\\User', 10, 'MyApp', 'af03e09ad54f2059377518ffb3f30b3352fe18666d83aebddafa68b6d2264f5c', '[\"*\"]', NULL, NULL, '2023-11-05 07:46:41', '2023-11-05 07:46:41'),
(42, 'App\\Models\\User', 10, 'MyApp', '55ff822432591760b8b0f565f33f74c1ea7222e538c156ee07859f2d49b726d0', '[\"*\"]', NULL, NULL, '2023-11-07 08:49:21', '2023-11-07 08:49:21'),
(43, 'App\\Models\\User', 10, 'MyApp', '26051980c33cc3cf8a1131c946c64979f59ab1a1fc8fcb3273660da3ecbf2a2b', '[\"*\"]', NULL, NULL, '2023-11-07 08:53:22', '2023-11-07 08:53:22'),
(44, 'App\\Models\\User', 10, 'MyApp', 'acf0ca90c1eb896950eb5e1739affb831e071dab0a7a7e6318d970ecc60525dd', '[\"*\"]', NULL, NULL, '2023-11-07 08:55:30', '2023-11-07 08:55:30'),
(45, 'App\\Models\\User', 10, 'MyApp', 'e3606b15304aefb3a8a231dd97259dfb014fd174173a995d4fe4fcd096cdf261', '[\"*\"]', NULL, NULL, '2023-11-07 08:56:50', '2023-11-07 08:56:50'),
(46, 'App\\Models\\User', 10, 'MyApp', 'c493e421ae975e4a46474e9b9a28f47fd2e328e053a270c6bb214298048c77a4', '[\"*\"]', NULL, NULL, '2023-11-07 08:58:02', '2023-11-07 08:58:02'),
(47, 'App\\Models\\User', 10, 'MyApp', 'e369c60e04c9969ff89a1ed9aa6d607b483fdd4844037b1f06bc6c07953bf855', '[\"*\"]', NULL, NULL, '2023-11-07 09:01:54', '2023-11-07 09:01:54'),
(48, 'App\\Models\\User', 10, 'MyApp', 'dca591b7cb9d5df8cf23592dabc282162f8184e1c6556123a0390aef3e7e0167', '[\"*\"]', NULL, NULL, '2023-11-07 09:04:56', '2023-11-07 09:04:56'),
(49, 'App\\Models\\User', 10, 'MyApp', '524bb9bc3ba334cecede2f3975f382b9664e608f38451194104c8566e5544701', '[\"*\"]', NULL, NULL, '2023-11-07 09:04:56', '2023-11-07 09:04:56'),
(50, 'App\\Models\\User', 10, 'MyApp', 'ad4c73c5b9c36e200cebe4fe21983b46883e2e91795eb6cda24f5e029b121d1d', '[\"*\"]', NULL, NULL, '2023-11-07 09:20:38', '2023-11-07 09:20:38'),
(51, 'App\\Models\\User', 10, 'MyApp', 'ecd2522cf877dc49e8e9849c8f04d62412f963e8f7ddf6ee37221f29e127c89d', '[\"*\"]', NULL, NULL, '2023-11-07 09:23:15', '2023-11-07 09:23:15'),
(52, 'App\\Models\\User', 10, 'MyApp', 'b96aa10cd3200f95d0e157a6af1052e8bcdfb24460659ce2530b6c2bca0e8d7c', '[\"*\"]', NULL, NULL, '2023-11-07 09:25:37', '2023-11-07 09:25:37'),
(53, 'App\\Models\\User', 10, 'MyApp', '2a7bd1abbf8d0feef4c301fa75daf17306a638bd7950ad31e99a61f7f9e9d795', '[\"*\"]', NULL, NULL, '2023-11-07 09:26:18', '2023-11-07 09:26:18'),
(54, 'App\\Models\\User', 10, 'MyApp', '63c8f51902e3c6afb8680bb6cb808b9f334990f3830551e0e0e603fe10aba61f', '[\"*\"]', NULL, NULL, '2023-11-07 09:31:12', '2023-11-07 09:31:12'),
(55, 'App\\Models\\User', 10, 'MyApp', 'dc86a2a47f8312af4f3cf513ae8cdc3a9f0a2a75df3cc7eaa75ddaebb5334917', '[\"*\"]', NULL, NULL, '2023-11-07 09:34:20', '2023-11-07 09:34:20'),
(56, 'App\\Models\\User', 10, 'MyApp', '2ea9b6146cda8e38a5e15432d5526355b3ee04631b33a9793383d863c57af6cc', '[\"*\"]', NULL, NULL, '2023-11-07 09:36:56', '2023-11-07 09:36:56'),
(57, 'App\\Models\\User', 10, 'MyApp', 'f8be6b4cc44cc0392e8c767fdb92f0430cc39d42b1bbf6045f56b37bea647779', '[\"*\"]', NULL, NULL, '2023-11-07 09:53:26', '2023-11-07 09:53:26'),
(58, 'App\\Models\\User', 10, 'MyApp', 'b657d61c1e6b13136098e2ea8860808ec8a4c08d3baef93ee64435f763c5e5c3', '[\"*\"]', NULL, NULL, '2023-11-07 09:57:18', '2023-11-07 09:57:18'),
(59, 'App\\Models\\User', 10, 'MyApp', 'b3b0f975e764d1774a0c2ffd5e97dd76b62f9631bc093d6b023612f3d450b7e1', '[\"*\"]', NULL, NULL, '2023-11-07 10:01:14', '2023-11-07 10:01:14'),
(60, 'App\\Models\\User', 10, 'MyApp', '832de8ed780e95d6c374a122cf5e6cfe09bfd18c80fa2d08c707adca3779472e', '[\"*\"]', NULL, NULL, '2023-11-07 12:41:19', '2023-11-07 12:41:19'),
(61, 'App\\Models\\User', 10, 'MyApp', '32efa4f3afe8d7c063def100884e686c54dfdf927b39cefcb46808c7a6278f54', '[\"*\"]', NULL, NULL, '2023-11-07 12:41:53', '2023-11-07 12:41:53'),
(62, 'App\\Models\\User', 10, 'MyApp', '03c49c9f1bbd66885dc2274d4004d3ad4383839776d1695cf6bc4916fd3c5900', '[\"*\"]', NULL, NULL, '2023-11-07 12:53:29', '2023-11-07 12:53:29'),
(63, 'App\\Models\\User', 10, 'MyApp', '2871c205b1ce51c75f75335dac9cf39193d04d500dc2b1892669b9b1dd085a0a', '[\"*\"]', NULL, NULL, '2023-11-07 12:54:08', '2023-11-07 12:54:08'),
(64, 'App\\Models\\User', 10, 'MyApp', '6cd14514b81295b6760a02b9682525958aad58e4b8b307ee0403ff7900f68ba0', '[\"*\"]', NULL, NULL, '2023-11-07 13:07:53', '2023-11-07 13:07:53'),
(65, 'App\\Models\\User', 10, 'MyApp', 'a4e5c61311d31ef8db4b51d3ec5b4883b0c842a18bf8205cb38ad40551d643bf', '[\"*\"]', NULL, NULL, '2023-11-07 13:08:31', '2023-11-07 13:08:31'),
(66, 'App\\Models\\User', 10, 'MyApp', '7a396dedf261ad0126ca9f291f950f17bbe0dcde66df3ac42dfdc9c3c3f4393a', '[\"*\"]', NULL, NULL, '2023-11-07 13:15:58', '2023-11-07 13:15:58'),
(67, 'App\\Models\\User', 10, 'MyApp', 'bc1de67879c72ab415cd754aba358cf233057ab7938cd970987a1f1acf6744c4', '[\"*\"]', NULL, NULL, '2023-11-07 13:18:37', '2023-11-07 13:18:37'),
(68, 'App\\Models\\User', 10, 'MyApp', 'a102203db09a1bbc34871452bec9f53442215ea7657cd1bcc6eee90adc4bb9be', '[\"*\"]', NULL, NULL, '2023-11-07 13:19:33', '2023-11-07 13:19:33'),
(69, 'App\\Models\\User', 10, 'MyApp', 'cf46aa62a80708f788d7a631b64063e063d59525b6c9b2f27c2dfc609031b650', '[\"*\"]', NULL, NULL, '2023-11-07 13:21:44', '2023-11-07 13:21:44'),
(70, 'App\\Models\\User', 10, 'MyApp', '7e83cae0f714538a4598d125dfe4adf7f6bc0b7633dc2ff39da13ad207768728', '[\"*\"]', NULL, NULL, '2023-11-07 13:24:14', '2023-11-07 13:24:14'),
(71, 'App\\Models\\User', 8, 'MyApp', '629e812c0d88209ac9c87b63b9c0e5a1a7b166e7d35b22a24e7493e2eeed8097', '[\"*\"]', NULL, NULL, '2023-11-10 09:21:24', '2023-11-10 09:21:24'),
(72, 'App\\Models\\User', 3, 'MyApp', '3dfbfc8fa8bd60414c62b978ce314de717b6da419362ac44c770eaa8d3915cb0', '[\"*\"]', NULL, NULL, '2023-11-19 00:05:37', '2023-11-19 00:05:37'),
(73, 'App\\Models\\User', 11, 'MyApp', 'db1aa890dc99d9726e9abcf7000d48a166da3d44c4024067b36294c3063ae5b1', '[\"*\"]', NULL, NULL, '2023-11-19 10:02:22', '2023-11-19 10:02:22'),
(74, 'App\\Models\\User', 3, 'MyApp', '889b82db81c69204be192a3a3bfef284a34bf7d6f0ad49e30e7a250e75adbf94', '[\"*\"]', NULL, NULL, '2023-11-19 10:10:28', '2023-11-19 10:10:28'),
(75, 'App\\Models\\User', 10, 'MyApp', '6efcd13fa3b7e5b823b237baa200310e5fcdf2325580d18503b452c04df816f9', '[\"*\"]', NULL, NULL, '2023-11-19 11:08:24', '2023-11-19 11:08:24'),
(76, 'App\\Models\\User', 10, 'MyApp', '02d36a6d8d1397363c1b5a59777cfd2af4b01ee0c14d35aa2d3a8ce57afac099', '[\"*\"]', NULL, NULL, '2023-11-19 11:10:56', '2023-11-19 11:10:56'),
(77, 'App\\Models\\User', 10, 'MyApp', 'f6a0a8fddd76bd119741f7e6545eb9bbacf6673f03f0775832502118465d2d66', '[\"*\"]', NULL, NULL, '2023-11-19 11:15:53', '2023-11-19 11:15:53'),
(78, 'App\\Models\\User', 10, 'MyApp', 'ba8ec59d328269f83c024a84f1a4e832ede7a84d9549d526d4069e095d106187', '[\"*\"]', NULL, NULL, '2023-11-19 11:22:10', '2023-11-19 11:22:10'),
(79, 'App\\Models\\User', 10, 'MyApp', '03db82a510270a91274e9a57fff7f77bad99ed032a60a643abb8c3908b062c32', '[\"*\"]', NULL, NULL, '2023-11-19 11:23:59', '2023-11-19 11:23:59'),
(80, 'App\\Models\\User', 10, 'MyApp', '0fe50199978e982a14a62ec51897d8090fcd456d4e8007ca3098948ba4031c18', '[\"*\"]', NULL, NULL, '2023-11-19 11:32:45', '2023-11-19 11:32:45'),
(81, 'App\\Models\\User', 10, 'MyApp', '43b51ede2df1e8343f261081a302076a7c222ed4710eca7b5695b96888b11d7f', '[\"*\"]', NULL, NULL, '2023-11-19 11:39:42', '2023-11-19 11:39:42'),
(82, 'App\\Models\\User', 10, 'MyApp', '1bd4b3651465e7d8ae502d9e3f59ab381b25c0940639b6cc61d2ed437e3e8fa8', '[\"*\"]', NULL, NULL, '2023-11-19 11:41:36', '2023-11-19 11:41:36'),
(83, 'App\\Models\\User', 10, 'MyApp', '4c8ba9f83bfd057c3e5b935a0cb724e3d191fb1e8493b20c2014665e16d91e03', '[\"*\"]', NULL, NULL, '2023-11-19 12:00:15', '2023-11-19 12:00:15'),
(84, 'App\\Models\\User', 10, 'MyApp', '569dbde35532bb1422910ac77322c496412f03f8e4e522377551dddf4dc5e0d4', '[\"*\"]', NULL, NULL, '2023-11-19 12:06:37', '2023-11-19 12:06:37'),
(85, 'App\\Models\\User', 10, 'MyApp', 'ccd8a674633a6e3a070bcde8477c879ddcdd2380f36ed7c285f9657c80e5f789', '[\"*\"]', NULL, NULL, '2023-11-19 12:20:36', '2023-11-19 12:20:36'),
(86, 'App\\Models\\User', 10, 'MyApp', '843128d03e3624aaaa46f0a1b5d481d22bdec506918f721b08f9500a30e1820e', '[\"*\"]', NULL, NULL, '2023-11-19 12:26:11', '2023-11-19 12:26:11'),
(87, 'App\\Models\\User', 10, 'MyApp', 'de09f04a737bbfab09ea262d35abcfe14d6482b2aa47e20e3ff50f0d1d2b0704', '[\"*\"]', NULL, NULL, '2023-11-19 12:33:10', '2023-11-19 12:33:10'),
(88, 'App\\Models\\User', 10, 'MyApp', '43ad45ff2f2cf7fad64342a38f443d11c88e5be0340406818781355f3a23cd93', '[\"*\"]', NULL, NULL, '2023-11-19 12:36:02', '2023-11-19 12:36:02'),
(89, 'App\\Models\\User', 10, 'MyApp', 'f3205bbd94a15d6435db1219286c04f061a4dbe3bea836cf6a6ddf8cb0efa7c6', '[\"*\"]', NULL, NULL, '2023-11-19 12:40:41', '2023-11-19 12:40:41'),
(90, 'App\\Models\\User', 10, 'MyApp', 'b25e8c9bd783c93cf156132b3482782a4da94f351385b5274390196178534b74', '[\"*\"]', NULL, NULL, '2023-11-19 12:43:56', '2023-11-19 12:43:56'),
(91, 'App\\Models\\User', 10, 'MyApp', 'c72e1a73ac4094a810b07c034e4174e67895a731f037ee463aba1fff72e112bf', '[\"*\"]', NULL, NULL, '2023-11-19 12:45:22', '2023-11-19 12:45:22'),
(92, 'App\\Models\\User', 10, 'MyApp', '0a7f039a8a3feebce2b4f3249a6a5bca34808444e897fd9c192f802fcbdb3b2e', '[\"*\"]', NULL, NULL, '2023-11-19 12:47:25', '2023-11-19 12:47:25'),
(93, 'App\\Models\\User', 10, 'MyApp', 'f93d5c7fb7fcdb0418551923b53052db9b9f7630d5515f2b7ba15d2dce2cf6ed', '[\"*\"]', NULL, NULL, '2023-11-19 12:53:43', '2023-11-19 12:53:43'),
(94, 'App\\Models\\User', 10, 'MyApp', '9909e755a16fbe792343aa636ef2cc1cc1b3ff33fad0618eaae46a15e198d231', '[\"*\"]', NULL, NULL, '2023-11-19 12:59:30', '2023-11-19 12:59:30'),
(95, 'App\\Models\\User', 10, 'MyApp', 'e84794bb709545e57723e3cc94409ec2ffb6f63321c42ac7e03ab76893e7064d', '[\"*\"]', NULL, NULL, '2023-11-19 13:02:28', '2023-11-19 13:02:28'),
(96, 'App\\Models\\User', 10, 'MyApp', '30c842f01da6c0e323d672f872ed926b6cdd5c734e316b417725b53ab64efbb4', '[\"*\"]', NULL, NULL, '2023-11-19 13:04:01', '2023-11-19 13:04:01'),
(97, 'App\\Models\\User', 10, 'MyApp', '7ab54e9869ea7a7665fed3642290aa0bed4f7a20d33a652ba35cccb4a58def06', '[\"*\"]', NULL, NULL, '2023-11-19 13:04:56', '2023-11-19 13:04:56'),
(98, 'App\\Models\\User', 10, 'MyApp', '4276dbcbbb02bb397989b073cbbdeddd1be1d037dbe59e0cfc8774619618a406', '[\"*\"]', NULL, NULL, '2023-11-19 13:06:52', '2023-11-19 13:06:52'),
(99, 'App\\Models\\User', 3, 'MyApp', 'df1d4264b2b5165c9b01971a7897bc024d3618971127c2ff3afdde44193c8a0d', '[\"*\"]', NULL, NULL, '2023-11-19 18:13:56', '2023-11-19 18:13:56'),
(100, 'App\\Models\\User', 10, 'MyApp', '380f9330c2dbbeec5fc377e768ffb037fd2f6d7ea954ac43d78f7e2edb27449a', '[\"*\"]', NULL, NULL, '2023-11-22 09:40:35', '2023-11-22 09:40:35'),
(101, 'App\\Models\\User', 3, 'MyApp', 'e9186397f246ef6d9361b9a5eb5bbb8a8760af8ad55ed82af5d8d82458f3597d', '[\"*\"]', '2023-11-22 17:33:03', NULL, '2023-11-22 17:04:30', '2023-11-22 17:33:03'),
(102, 'App\\Models\\User', 3, 'MyApp', 'c9850456bf8d3a7c278140398b9dd87594c250d2878d969581d4fdd1b11a6980', '[\"*\"]', NULL, NULL, '2023-11-22 17:07:16', '2023-11-22 17:07:16'),
(103, 'App\\Models\\User', 3, 'MyApp', '6748d75afd10fd4044d8bf96b545a66e10522b89e23f82dac2a53f87aef34c99', '[\"*\"]', '2023-11-22 18:30:30', NULL, '2023-11-22 18:17:22', '2023-11-22 18:30:30'),
(104, 'App\\Models\\User', 3, 'MyApp', '5924b15290b89d64b513d95ad4ba957a87c938b093895307a99363dedb44689e', '[\"*\"]', '2023-11-22 18:36:46', NULL, '2023-11-22 18:36:34', '2023-11-22 18:36:46'),
(105, 'App\\Models\\User', 3, 'MyApp', '566fb91558f756bfefdc16e1f81c1133d13947c5bbf17a6e5d41b1f840d770de', '[\"*\"]', '2023-11-23 01:41:17', NULL, '2023-11-23 00:42:06', '2023-11-23 01:41:17'),
(106, 'App\\Models\\User', 10, 'MyApp', 'ab9dea30f8c25a1bbbc70a9c6200b04804c9163ec68a5ed66022e44731e4d07d', '[\"*\"]', NULL, NULL, '2023-11-23 11:19:38', '2023-11-23 11:19:38'),
(107, 'App\\Models\\User', 3, 'MyApp', 'd012bad2a632a5f9c03ed19056719ed8d2793593e60c69e7b30e86d6f347dad7', '[\"*\"]', NULL, NULL, '2023-11-23 11:26:02', '2023-11-23 11:26:02'),
(108, 'App\\Models\\User', 10, 'MyApp', '10ad7d0bda1fdf4403cd53aa51c33ee1858d9f2770ffdb56db6df5586f1641c9', '[\"*\"]', NULL, NULL, '2023-11-23 12:15:19', '2023-11-23 12:15:19'),
(109, 'App\\Models\\User', 10, 'MyApp', '62c068e3b5566ad95fd0f90ce0441def298c1b2897031a6c981acb8fc1f23895', '[\"*\"]', NULL, NULL, '2023-11-23 12:17:54', '2023-11-23 12:17:54'),
(110, 'App\\Models\\User', 10, 'MyApp', '4145fdfd0fd315e8f46edf3de7a0a119455ff69d87b316a4ec1edc4b0aa8afe5', '[\"*\"]', '2023-11-23 12:24:59', NULL, '2023-11-23 12:22:44', '2023-11-23 12:24:59'),
(111, 'App\\Models\\User', 12, 'MyApp', 'e3160f23ac24eee0bab60d737ca8c151038767a7fcae0c0bd5733f012e86a0e6', '[\"*\"]', NULL, NULL, '2023-11-23 12:26:36', '2023-11-23 12:26:36'),
(112, 'App\\Models\\User', 12, 'MyApp', '6f19c15ffa3e0eebae2259708aeda6bd6d859b704bf8d25b6490e1ff93c7eceb', '[\"*\"]', '2023-11-23 12:30:11', NULL, '2023-11-23 12:29:12', '2023-11-23 12:30:11'),
(113, 'App\\Models\\User', 12, 'MyApp', 'bc265157b3d97bdceed35daa633ff99331a0ec47304352cd27b7ec2a27152433', '[\"*\"]', '2023-11-23 13:22:48', NULL, '2023-11-23 13:21:32', '2023-11-23 13:22:48'),
(114, 'App\\Models\\User', 10, 'MyApp', '12865a703b115dba6723b2b149e6ee19f370e1eaf5881c3c798b594bb557140a', '[\"*\"]', NULL, NULL, '2023-11-23 13:24:13', '2023-11-23 13:24:13'),
(115, 'App\\Models\\User', 10, 'MyApp', '91e2056164727dbb8bc1989560d6f66bde8ebcf677392f0270efc12ccfc1f91e', '[\"*\"]', '2023-11-23 13:35:26', NULL, '2023-11-23 13:33:55', '2023-11-23 13:35:26'),
(116, 'App\\Models\\User', 10, 'MyApp', 'ad76c96a4f0a5cae45693d0b38e84ac611e4d9519a6a413594223299d13acc50', '[\"*\"]', NULL, NULL, '2023-11-23 16:59:16', '2023-11-23 16:59:16'),
(117, 'App\\Models\\User', 10, 'MyApp', '46b8171b5878718833f16ccb00fb12a79c763bdacaf1552e79f803f6a126cb81', '[\"*\"]', NULL, NULL, '2023-11-23 17:00:36', '2023-11-23 17:00:36'),
(118, 'App\\Models\\User', 13, 'MyApp', '5afac263592dbf28f35240c00ba957ba7f26d0c1c4343e85296d694f7f51b626', '[\"*\"]', NULL, NULL, '2023-11-23 17:07:01', '2023-11-23 17:07:01'),
(119, 'App\\Models\\User', 13, 'MyApp', '52b7a00cf20fecb162b1899a078a6b496912e09854baba387b9aab59ffb11c10', '[\"*\"]', NULL, NULL, '2023-11-23 17:10:00', '2023-11-23 17:10:00'),
(120, 'App\\Models\\User', 13, 'MyApp', '03b0ffb013a23de14d24c06a13ea2b1facb964230d31ccfe07365190ae34990c', '[\"*\"]', NULL, NULL, '2023-11-24 09:58:31', '2023-11-24 09:58:31'),
(121, 'App\\Models\\User', 14, 'MyApp', 'eaceb2c1e165b7b24f3eaab96f4dbebee138b914b0243fa2dc731211e3c0ac7c', '[\"*\"]', NULL, NULL, '2023-11-24 10:01:37', '2023-11-24 10:01:37'),
(122, 'App\\Models\\User', 14, 'MyApp', 'dd16e072752a0bbb8c36c1a375797d314c18314c690127422a7b786d3acde1cd', '[\"*\"]', '2023-11-24 10:16:24', NULL, '2023-11-24 10:13:33', '2023-11-24 10:16:24'),
(123, 'App\\Models\\User', 15, 'MyApp', '355d3fada889aff1c7eedaa5c5d4a55eb849b28d036ceab7a316db3c1587507b', '[\"*\"]', NULL, NULL, '2023-11-24 11:10:58', '2023-11-24 11:10:58'),
(124, 'App\\Models\\User', 10, 'MyApp', '7a35f093be6f0c3f4c4b4c0eb55e5989583e16abd5ee0423326fea022c26155e', '[\"*\"]', NULL, NULL, '2023-11-24 11:53:12', '2023-11-24 11:53:12'),
(125, 'App\\Models\\User', 10, 'MyApp', '44cdf92afc3bde879f07c5df39874f9e591b5d83e3ca41cb26de635fd021e9d9', '[\"*\"]', NULL, NULL, '2023-11-24 12:00:29', '2023-11-24 12:00:29'),
(126, 'App\\Models\\User', 10, 'MyApp', '57ff9ab073b82761d898b249975e780feb498ee9b4e4495f0ccd4675703019e2', '[\"*\"]', NULL, NULL, '2023-11-24 12:03:53', '2023-11-24 12:03:53'),
(127, 'App\\Models\\User', 10, 'MyApp', '76757027717da40b373347bb03055995c22bfac77a338861a558e8abe2c27e2a', '[\"*\"]', NULL, NULL, '2023-11-24 12:06:09', '2023-11-24 12:06:09'),
(128, 'App\\Models\\User', 10, 'MyApp', '6da89bd2accb1d52297e591606ade6839776f001d13634c90021715994304971', '[\"*\"]', NULL, NULL, '2023-11-24 12:10:09', '2023-11-24 12:10:09'),
(129, 'App\\Models\\User', 16, 'MyApp', 'df223159650412de48ff3253fb9ba18afae763163cd0eb9454132183ee14b65a', '[\"*\"]', NULL, NULL, '2023-11-25 20:13:23', '2023-11-25 20:13:23'),
(130, 'App\\Models\\User', 17, 'MyApp', 'aad6dd0caf8e1f9debd8464a153a13837b333f1caedf001404cae312586b9cdf', '[\"*\"]', NULL, NULL, '2023-11-25 20:27:07', '2023-11-25 20:27:07'),
(131, 'App\\Models\\User', 18, 'MyApp', '95053fc2fcea79dc7b202d46d67171acc2b7ab90c3268eea03ab57e4c2ca2155', '[\"*\"]', NULL, NULL, '2023-11-25 20:29:19', '2023-11-25 20:29:19'),
(132, 'App\\Models\\User', 3, 'MyApp', '3cb8629f7168a4cde1fab7ed3d732491e6816547722258238dd8361db6b2ef65', '[\"*\"]', NULL, NULL, '2023-11-25 20:31:50', '2023-11-25 20:31:50'),
(133, 'App\\Models\\User', 3, 'MyApp', '030ad2d1daa8891a893b11d92af43a9fa99e809494db0042b89263604302d67e', '[\"*\"]', NULL, NULL, '2023-11-26 16:42:10', '2023-11-26 16:42:10'),
(134, 'App\\Models\\User', 3, 'MyApp', '9dedfe397430195338b9ff89fa0b9409a7714ecb78927c65bae1bbc5e8ff9295', '[\"*\"]', NULL, NULL, '2023-11-27 09:03:52', '2023-11-27 09:03:52'),
(135, 'App\\Models\\User', 3, 'MyApp', '9600f75b2ac297738e14212493a4455b0a42d5e49885d9a6fc66313c3d453264', '[\"*\"]', NULL, NULL, '2023-11-27 09:05:20', '2023-11-27 09:05:20'),
(136, 'App\\Models\\User', 10, 'MyApp', '92eae8225cfaa9af86482450213a31c5b7b2eb76a5a48c2f2519f4a907f4fefb', '[\"*\"]', NULL, NULL, '2023-11-27 09:12:58', '2023-11-27 09:12:58'),
(137, 'App\\Models\\User', 10, 'MyApp', 'ed8f8a2244875b1809f24134b6cd46da50d51069efdcd447a82ca6a45e4f0d4a', '[\"*\"]', NULL, NULL, '2023-11-27 09:20:09', '2023-11-27 09:20:09'),
(138, 'App\\Models\\User', 10, 'MyApp', '257d913177a3031c4e31b8e671e0aa9f0f333c10fd92b68e7423587da48b6c4b', '[\"*\"]', NULL, NULL, '2023-11-27 10:30:43', '2023-11-27 10:30:43'),
(139, 'App\\Models\\User', 10, 'MyApp', '473268b88c2ecb89ae034c78bea5210791b73f50aa213447c7c8ff5e7baf3524', '[\"*\"]', NULL, NULL, '2023-11-27 10:32:18', '2023-11-27 10:32:18'),
(140, 'App\\Models\\User', 19, 'MyApp', '336181e69a60011ab82c40d34741080dc001851a840903e41e52f820783ba72e', '[\"*\"]', NULL, NULL, '2023-11-27 10:46:01', '2023-11-27 10:46:01'),
(141, 'App\\Models\\User', 10, 'MyApp', '732eee5d56ffc7b7b046c01cb8e14257dd72b2d645413514c700760955bcfb2e', '[\"*\"]', NULL, NULL, '2023-11-27 11:03:17', '2023-11-27 11:03:17'),
(142, 'App\\Models\\User', 19, 'MyApp', '5d4c6898679b347839f3f729de8bbd560d8682d89e31243948c4f44b4e74dc2e', '[\"*\"]', NULL, NULL, '2023-11-27 11:04:30', '2023-11-27 11:04:30'),
(143, 'App\\Models\\User', 20, 'MyApp', '3d97fe266ee709495201e66afc2c8787932c81322be0ee1eb5f24389ff1146ee', '[\"*\"]', NULL, NULL, '2023-11-27 11:09:39', '2023-11-27 11:09:39'),
(144, 'App\\Models\\User', 21, 'MyApp', '2faa713113c62c13f2051db5e8eaa9690cd27d79295db79d7700dd3001987daa', '[\"*\"]', NULL, NULL, '2023-11-27 11:15:47', '2023-11-27 11:15:47'),
(145, 'App\\Models\\User', 22, 'MyApp', '23e80e359441a59a268b82be2c934ed0ce51522a8e7dcbe8338d5262d1f65758', '[\"*\"]', NULL, NULL, '2023-11-27 11:24:57', '2023-11-27 11:24:57'),
(146, 'App\\Models\\User', 22, 'MyApp', 'd5566b490703764b5b2610c996f2f4829883c72945d3a17b9459504316d457a7', '[\"*\"]', NULL, NULL, '2023-11-27 11:43:18', '2023-11-27 11:43:18'),
(147, 'App\\Models\\User', 23, 'MyApp', '7302c3edaad52095877854a858a58de5db5bf6e65ccb65006c3f986a0d03f0ac', '[\"*\"]', NULL, NULL, '2023-11-27 11:45:10', '2023-11-27 11:45:10'),
(148, 'App\\Models\\User', 24, 'MyApp', '1941f341035565d60b6776ac3494368615c8bcd2fab9c951c3e92c9c3d57140b', '[\"*\"]', NULL, NULL, '2023-11-27 11:52:52', '2023-11-27 11:52:52'),
(149, 'App\\Models\\User', 24, 'MyApp', '28656e4bae66000abcfce7743c4576a3fa12b25025d2f50aeb141803cb65df9f', '[\"*\"]', '2023-11-27 12:11:15', NULL, '2023-11-27 11:54:33', '2023-11-27 12:11:15'),
(150, 'App\\Models\\User', 24, 'MyApp', 'f0c4403da51e6407d789900ff2e576d57cb6002683ff266529cc777f5ad6d291', '[\"*\"]', NULL, NULL, '2023-11-27 11:56:05', '2023-11-27 11:56:05'),
(151, 'App\\Models\\User', 3, 'MyApp', 'b5c5f63a3b6437ce322cf0169eebaec2e543f0e80a0185fabb16c7918f70f765', '[\"*\"]', NULL, NULL, '2023-11-27 12:55:04', '2023-11-27 12:55:04'),
(152, 'App\\Models\\User', 24, 'MyApp', '3b0d7b8df4515d425850346644708f2130930f2afbedaffb0eb346c2c6eb0a1d', '[\"*\"]', NULL, NULL, '2023-11-27 12:55:54', '2023-11-27 12:55:54'),
(153, 'App\\Models\\User', 3, 'MyApp', '29393e0c13f8434758f6c3a0f686de2659e7389a0345310a9ba005db7916a05d', '[\"*\"]', '2023-11-27 13:01:20', NULL, '2023-11-27 12:57:20', '2023-11-27 13:01:20'),
(154, 'App\\Models\\User', 3, 'MyApp', '04d12d04864332646ac8a464afa33b31fb34b228d9ec8b53c523b68e29292981', '[\"*\"]', '2023-11-27 16:38:11', NULL, '2023-11-27 15:43:44', '2023-11-27 16:38:11'),
(155, 'App\\Models\\User', 3, 'MyApp', 'c576b167724f9c4113671ee4f324a899b2306223f2f8723b4fc351394d027dda', '[\"*\"]', '2023-11-27 16:53:56', NULL, '2023-11-27 16:53:42', '2023-11-27 16:53:56'),
(156, 'App\\Models\\User', 3, 'MyApp', '84905dfaeb6fe912231ac02c41768549e43f41abe7f1c98d0a3f905b271ed446', '[\"*\"]', NULL, NULL, '2023-11-27 19:37:44', '2023-11-27 19:37:44'),
(157, 'App\\Models\\User', 3, 'MyApp', '301475ffe7089e44afe0141eb00172954875b7488918d7824795ad0a44a95888', '[\"*\"]', NULL, NULL, '2023-11-27 19:43:38', '2023-11-27 19:43:38'),
(158, 'App\\Models\\User', 3, 'MyApp', 'cc202feaf3f58181fb32d4dfb6fae541e015a04ba38fb796a21d6e53dc930e10', '[\"*\"]', NULL, NULL, '2023-11-27 19:44:22', '2023-11-27 19:44:22'),
(159, 'App\\Models\\User', 3, 'MyApp', '43153825dba1ce38cb5ad386f3049e4cc31592bf0fcba62631d631de643974e3', '[\"*\"]', NULL, NULL, '2023-11-27 19:45:53', '2023-11-27 19:45:53'),
(160, 'App\\Models\\User', 3, 'MyApp', '7d29e868bb858612d05c63fbbbd411223468aabafc91f4096aab2a1fc389caf3', '[\"*\"]', NULL, NULL, '2023-11-27 20:48:47', '2023-11-27 20:48:47'),
(161, 'App\\Models\\User', 3, 'MyApp', 'a8fe47fc3d9323bb749d4266cfb88e14298c332fca7e728b75bc5cf1acf88964', '[\"*\"]', NULL, NULL, '2023-11-28 09:50:03', '2023-11-28 09:50:03'),
(162, 'App\\Models\\User', 25, 'MyApp', '8fcbdf5a116527b79ae784a98e6236739c4e65228005c3d09ebb8479fb8bc5f8', '[\"*\"]', NULL, NULL, '2023-11-28 10:06:21', '2023-11-28 10:06:21'),
(163, 'App\\Models\\User', 26, 'MyApp', '7c9e3538d59be83d32b4cd07d243a7324164e8eb83b5b22746a150e5adadc443', '[\"*\"]', NULL, NULL, '2023-11-28 10:10:54', '2023-11-28 10:10:54'),
(164, 'App\\Models\\User', 3, 'MyApp', 'b87e45f2a6d5e054ed4cc026728c2c1c12705602de9d95c9e276ea03b9aa6bc6', '[\"*\"]', NULL, NULL, '2023-11-28 10:13:20', '2023-11-28 10:13:20'),
(165, 'App\\Models\\User', 3, 'MyApp', '1fdebf9204dfd0e19330a3a24b999c0435c0da3db54f72f3a5705950b1e22704', '[\"*\"]', '2023-11-28 10:19:46', NULL, '2023-11-28 10:19:34', '2023-11-28 10:19:46'),
(166, 'App\\Models\\User', 3, 'MyApp', '58a51431d46bb8227dc3ffdd063f2cdfad57ce2aff1ff420900097af3aa5fde5', '[\"*\"]', NULL, NULL, '2023-11-28 15:32:33', '2023-11-28 15:32:33'),
(167, 'App\\Models\\User', 27, 'MyApp', '2743fefd8b7ff89ab5523298f75b49887d6efb7c640a6a0248c6b359d7c872ba', '[\"*\"]', NULL, NULL, '2023-11-28 15:33:03', '2023-11-28 15:33:03'),
(168, 'App\\Models\\User', 3, 'MyApp', 'e356b6c2fc71275e82c0fa6b43547e08856ee92ccba3b4c5b608eab908cdf6bf', '[\"*\"]', '2023-11-28 16:11:19', NULL, '2023-11-28 16:11:09', '2023-11-28 16:11:19'),
(169, 'App\\Models\\User', 28, 'MyApp', 'deb33c04046cbafe4c083eab48f2420dd36961fe9ae7146a9f4148983fe2be46', '[\"*\"]', NULL, NULL, '2023-11-28 16:52:27', '2023-11-28 16:52:27'),
(170, 'App\\Models\\User', 29, 'MyApp', '4610cbd37eb25b25bb0e68fb6d9a8d1e319006ecc451ba8bb15e53679c68e7bf', '[\"*\"]', NULL, NULL, '2023-11-28 16:52:46', '2023-11-28 16:52:46'),
(171, 'App\\Models\\User', 30, 'MyApp', 'e11e0bd52b275972f09e1b88a1a6e9f848f4ea26c31b9994b5e9e76920a30e60', '[\"*\"]', NULL, NULL, '2023-11-29 08:10:49', '2023-11-29 08:10:49'),
(172, 'App\\Models\\User', 31, 'MyApp', '5c35dabc5644225c4f1f62d0f5be4ce0445adfd08679c2239f6a9aa508a97e92', '[\"*\"]', NULL, NULL, '2023-11-29 09:50:45', '2023-11-29 09:50:45'),
(173, 'App\\Models\\User', 32, 'MyApp', '433b0b932199c6095a0be16436c8e7be74778c3ed53bdcc76b83e69fa630140e', '[\"*\"]', NULL, NULL, '2023-11-29 09:51:25', '2023-11-29 09:51:25'),
(174, 'App\\Models\\User', 3, 'MyApp', 'e0d8810929a01f5d096ac505e216429d60a69f7a667839d316743b4d0a9e919e', '[\"*\"]', '2023-11-29 10:16:18', NULL, '2023-11-29 10:15:05', '2023-11-29 10:16:18'),
(175, 'App\\Models\\User', 25, 'MyApp', '9164921cccde364ebfbe876967e64292f875189dffe624b99f840897e92643a9', '[\"*\"]', NULL, NULL, '2023-11-29 10:56:44', '2023-11-29 10:56:44'),
(176, 'App\\Models\\User', 33, 'MyApp', '63e5b25011d80d9c41b996c3313c9bf32431d83b4bda10eb33753d64b7accfda', '[\"*\"]', NULL, NULL, '2023-11-29 10:59:21', '2023-11-29 10:59:21'),
(177, 'App\\Models\\User', 34, 'MyApp', '0bbbf178ba1aec4476ab559eefaa133d9f6b7569b0e7bcf17f6648fea123fa6b', '[\"*\"]', NULL, NULL, '2023-11-30 06:31:44', '2023-11-30 06:31:44'),
(178, 'App\\Models\\User', 35, 'MyApp', '82f35decf7d1c1a33fe2614247ba8c6ac673dd1e9c0e27239500b59392daa34b', '[\"*\"]', NULL, NULL, '2023-11-30 16:01:04', '2023-11-30 16:01:04'),
(179, 'App\\Models\\User', 36, 'MyApp', '5de961c50b5b07074d6ce14216eefc759f3fe5e8ef4d03b392961145ac8526b4', '[\"*\"]', NULL, NULL, '2023-11-30 16:05:31', '2023-11-30 16:05:31'),
(180, 'App\\Models\\User', 37, 'MyApp', '04ba3cc0c14f270f1b1c5182cb458c3c92154df63c3369cbacdf942f5842f988', '[\"*\"]', NULL, NULL, '2023-11-30 22:37:40', '2023-11-30 22:37:40'),
(181, 'App\\Models\\User', 3, 'MyApp', '695ad2b754a9141265f60ceac92218ddc7a69d3f1c000936591db80348fda7eb', '[\"*\"]', NULL, NULL, '2023-11-30 22:38:52', '2023-11-30 22:38:52'),
(182, 'App\\Models\\User', 3, 'MyApp', '219b53bd8be6fd898fccb822ba64ba4985e05bfe07bbcf29b6995382d6a9cc76', '[\"*\"]', NULL, NULL, '2023-12-01 16:25:28', '2023-12-01 16:25:28'),
(183, 'App\\Models\\User', 3, 'MyApp', '8d4f0d44f7bf18237c876df2016fb956a36858727c3fb2106ffd1e75d587e1b2', '[\"*\"]', '2023-12-01 16:51:47', NULL, '2023-12-01 16:31:12', '2023-12-01 16:51:47'),
(184, 'App\\Models\\User', 38, 'MyApp', '78d0919df72c75b0f7da98af0a0d1e962b589f07c9ae3e28d86844eb3a41ee0d', '[\"*\"]', '2023-12-01 17:49:15', NULL, '2023-12-01 16:55:39', '2023-12-01 17:49:15'),
(185, 'App\\Models\\User', 38, 'MyApp', 'c2cfd2815e975fd4a62614cf48a5e0d62ec920922057bcf5ce6cf8fcbca3357f', '[\"*\"]', NULL, NULL, '2023-12-01 16:58:35', '2023-12-01 16:58:35'),
(186, 'App\\Models\\User', 38, 'MyApp', 'b2eb8c23e148a15e2fe41a34f8e0687d8b70fd92ff955e5c307142e55012df97', '[\"*\"]', '2023-12-01 18:21:09', NULL, '2023-12-01 18:13:59', '2023-12-01 18:21:09'),
(187, 'App\\Models\\User', 39, 'MyApp', '3f5341ab4db80823639f8dd68a4c538fe09ba8c8bc37c643b27a052677e80f08', '[\"*\"]', NULL, NULL, '2023-12-02 13:54:09', '2023-12-02 13:54:09'),
(188, 'App\\Models\\User', 39, 'MyApp', '24c151ada20af8436fba5b03373e90f875afbc06599d6fb2f2712579965f8006', '[\"*\"]', NULL, NULL, '2023-12-02 14:31:03', '2023-12-02 14:31:03'),
(189, 'App\\Models\\User', 39, 'MyApp', 'ff66d15c5b4719f6be44b453f6427a988b19b11c165f8ae065c4ed09349b3cd5', '[\"*\"]', NULL, NULL, '2023-12-02 14:44:20', '2023-12-02 14:44:20'),
(190, 'App\\Models\\User', 39, 'MyApp', 'f849ca40df47c06d3978fc67c4680b3e526f486737883f7c2360dbdf087fb088', '[\"*\"]', NULL, NULL, '2023-12-02 14:44:22', '2023-12-02 14:44:22'),
(191, 'App\\Models\\User', 39, 'MyApp', 'c728988cddb8c35f49a1a29ee7359b6bc9dc262cd061689dfaac7486bd162ab5', '[\"*\"]', NULL, NULL, '2023-12-02 14:46:16', '2023-12-02 14:46:16'),
(192, 'App\\Models\\User', 39, 'MyApp', 'aab5fe965fa83f6b3da2e588d1ea0f8a8673b7173870cce90b630908145fa09b', '[\"*\"]', '2023-12-02 15:48:38', NULL, '2023-12-02 14:50:11', '2023-12-02 15:48:38'),
(193, 'App\\Models\\User', 39, 'MyApp', 'be35a662ecfd4e030922cd755ba1fe747edc41e134f203bf26fd3475005895a7', '[\"*\"]', '2023-12-02 16:52:01', NULL, '2023-12-02 16:08:05', '2023-12-02 16:52:01'),
(194, 'App\\Models\\User', 39, 'MyApp', 'cf667a8549d8b74eb8752cf206c0c65461f155ad79645a33585b92a1992765eb', '[\"*\"]', '2023-12-02 17:59:29', NULL, '2023-12-02 17:00:53', '2023-12-02 17:59:29'),
(195, 'App\\Models\\User', 40, 'MyApp', '50ac2801d176032a0d9e51b4ec3f60a096167f5878a1cad611b6d13219b3407c', '[\"*\"]', NULL, NULL, '2023-12-03 10:59:04', '2023-12-03 10:59:04'),
(196, 'App\\Models\\User', 10, 'MyApp', '807ec6d87833bd449909760e2ae7aee77de404e12b4950782e7985d765a8502d', '[\"*\"]', NULL, NULL, '2023-12-03 11:09:47', '2023-12-03 11:09:47'),
(197, 'App\\Models\\User', 41, 'MyApp', '34484d0aef31a0693310e3c20ab6b93667e722e4d703d5444c2d6d25bba9b0e6', '[\"*\"]', '2023-12-03 11:14:51', NULL, '2023-12-03 11:14:08', '2023-12-03 11:14:51'),
(198, 'App\\Models\\User', 41, 'MyApp', '604c86ca503d0d6a3da76cc3a26cc77311fd21d4e1480a05b133cda81f8042a3', '[\"*\"]', '2023-12-03 11:18:51', NULL, '2023-12-03 11:18:30', '2023-12-03 11:18:51'),
(199, 'App\\Models\\User', 42, 'MyApp', '16ef9fd46a7d4d9c8183976ea53f57d6ff1340a397d3e478fd2a18e777267a01', '[\"*\"]', NULL, NULL, '2023-12-03 12:32:27', '2023-12-03 12:32:27'),
(200, 'App\\Models\\User', 25, 'MyApp', '4e6c8d1c06d09d2c5315a132423a0df3c9ee4329776ddc7133feb10259fd3cd9', '[\"*\"]', NULL, NULL, '2023-12-03 22:46:10', '2023-12-03 22:46:10'),
(201, 'App\\Models\\User', 43, 'MyApp', '1b07f854957b28c881306d6d76a67a2567165d3e27e26b29f7e7d5a7e09284d9', '[\"*\"]', '2023-12-04 00:27:31', NULL, '2023-12-04 00:26:57', '2023-12-04 00:27:31'),
(202, 'App\\Models\\User', 3, 'MyApp', 'b23c5525ecf5c8fd9bd54117001ff26967fa6a90e10d86e29b133055ec02701c', '[\"*\"]', '2023-12-05 15:49:09', NULL, '2023-12-05 15:48:59', '2023-12-05 15:49:09'),
(203, 'App\\Models\\User', 44, 'MyApp', 'b1cd6d0ecd21eba5d4253eba03df474e248c1d3154dac12b184c86aa0d301162', '[\"*\"]', NULL, NULL, '2023-12-05 16:00:36', '2023-12-05 16:00:36'),
(204, 'App\\Models\\User', 41, 'MyApp', 'a8dddb57201232e24a3174cf7f787526240758abf000fd7a6de7b940046d2caf', '[\"*\"]', '2023-12-06 10:09:10', NULL, '2023-12-06 10:08:14', '2023-12-06 10:09:10'),
(205, 'App\\Models\\User', 41, 'MyApp', 'acc3465e5628476603d0d83c23115f069e3ae6404bd7fe741e0e3997a8c18eac', '[\"*\"]', '2023-12-06 10:48:52', NULL, '2023-12-06 10:22:22', '2023-12-06 10:48:52'),
(206, 'App\\Models\\User', 45, 'MyApp', '2255a18360547a330f0ff76159b86b9272b2da3d754633a0efee948476b71396', '[\"*\"]', '2023-12-06 11:02:31', NULL, '2023-12-06 10:54:15', '2023-12-06 11:02:31'),
(207, 'App\\Models\\User', 45, 'MyApp', '66f8181596d1ad8a10759dfe25adf7fe86aa015469aff8626f7c886725ffb8e0', '[\"*\"]', '2023-12-06 10:58:59', NULL, '2023-12-06 10:58:31', '2023-12-06 10:58:59'),
(208, 'App\\Models\\User', 45, 'MyApp', '4faf16b9f1b80147c85176c4927da086d10ea480472bd4c0e6b4f2599f987666', '[\"*\"]', '2023-12-06 12:31:50', NULL, '2023-12-06 12:26:38', '2023-12-06 12:31:50'),
(209, 'App\\Models\\User', 46, 'MyApp', 'a57230fc849e389758588d16ca812c8abe89ece978799cc196a3aff3f76ef2bf', '[\"*\"]', '2023-12-06 13:34:22', NULL, '2023-12-06 13:16:25', '2023-12-06 13:34:22'),
(210, 'App\\Models\\User', 47, 'MyApp', '000a92e929b8fec605659ffae62ab12797b39d91bf3f9baf7cec40083147fae3', '[\"*\"]', '2023-12-06 13:55:51', NULL, '2023-12-06 13:36:41', '2023-12-06 13:55:51'),
(211, 'App\\Models\\User', 45, 'MyApp', '3a0a39ecea50b5e40f8fbe97a65305682cc55edfe7b4af9e4f61eccae2b0c840', '[\"*\"]', '2023-12-06 13:53:39', NULL, '2023-12-06 13:51:51', '2023-12-06 13:53:39'),
(212, 'App\\Models\\User', 48, 'MyApp', 'f990558dae11938b2ad3627ae5bf4e2b66496a4856c6e340a7823bfec7bee27f', '[\"*\"]', '2023-12-06 14:13:07', NULL, '2023-12-06 14:02:07', '2023-12-06 14:13:07'),
(213, 'App\\Models\\User', 49, 'MyApp', 'cb81bb1e11f3cebcef1e1634b1805a70a54d098d3846f78a2542caf1d8ad7f56', '[\"*\"]', '2023-12-06 14:26:27', NULL, '2023-12-06 14:16:17', '2023-12-06 14:26:27'),
(214, 'App\\Models\\User', 50, 'MyApp', 'abd2621f25941a54b4f8066f0085b40d3f8fc4cc52fc47bbbe2d24ae629feca3', '[\"*\"]', '2023-12-06 14:53:59', NULL, '2023-12-06 14:30:09', '2023-12-06 14:53:59'),
(215, 'App\\Models\\User', 45, 'MyApp', '2ac82b6b5cd5a7d23274058476382247612551d2bab090f20fdb11d5dbf1adcf', '[\"*\"]', '2023-12-06 15:02:19', NULL, '2023-12-06 15:01:54', '2023-12-06 15:02:19'),
(216, 'App\\Models\\User', 51, 'MyApp', '6925be4e2e25eb62975dfa8efaf9ef6e0de152a09423db1fffe4ed5671f3ad6d', '[\"*\"]', '2023-12-06 17:08:29', NULL, '2023-12-06 16:51:54', '2023-12-06 17:08:29'),
(217, 'App\\Models\\User', 52, 'MyApp', 'a83e5a94d4ab224b5d16e953fcc97d9d432bd8a781a860e354db043126d5821f', '[\"*\"]', '2023-12-06 17:12:41', NULL, '2023-12-06 17:12:01', '2023-12-06 17:12:41'),
(218, 'App\\Models\\User', 52, 'MyApp', '92ebd34e9d10df10793aeeb6b7dbab8286582ae0f9dc824ee246a9d6645fa522', '[\"*\"]', NULL, NULL, '2023-12-06 17:51:31', '2023-12-06 17:51:31'),
(219, 'App\\Models\\User', 52, 'MyApp', 'bd1f2193b499ce570ae83e2b38098724c53a4cc701d4c390181da57fb37a931c', '[\"*\"]', NULL, NULL, '2023-12-07 10:22:54', '2023-12-07 10:22:54'),
(220, 'App\\Models\\User', 52, 'MyApp', '090ed4e771ee6eb7d597eee10e8e79a16d0f96ad4d6602c8f858aa0a37045b66', '[\"*\"]', NULL, NULL, '2023-12-07 10:23:05', '2023-12-07 10:23:05'),
(221, 'App\\Models\\User', 52, 'MyApp', 'a7b555a96e464070ec7fe71d9cbc694fb00a44d6fbaec10f0ef79a26436aad76', '[\"*\"]', NULL, NULL, '2023-12-07 10:27:12', '2023-12-07 10:27:12'),
(222, 'App\\Models\\User', 52, 'MyApp', 'ebcdb4a3022af57defbbb6d68d887e573c484bfd25462488a69758cce0ee2d52', '[\"*\"]', NULL, NULL, '2023-12-07 10:30:19', '2023-12-07 10:30:19'),
(223, 'App\\Models\\User', 52, 'MyApp', 'fcb00fc549515e054266d13cdc12b959f18e2fe799ef9c17b28bbfd807119413', '[\"*\"]', NULL, NULL, '2023-12-07 10:34:40', '2023-12-07 10:34:40'),
(224, 'App\\Models\\User', 52, 'MyApp', '7e4454e153d102beff546773e1466a2e9040c229f443cda6d5be036d5cd11efe', '[\"*\"]', NULL, NULL, '2023-12-07 10:57:00', '2023-12-07 10:57:00'),
(225, 'App\\Models\\User', 52, 'MyApp', '9f64edc2e9951f488c27752c05761d1433cea456aac35a5e4e63c28f4d4e6bd2', '[\"*\"]', '2023-12-07 11:18:24', NULL, '2023-12-07 10:57:23', '2023-12-07 11:18:24'),
(226, 'App\\Models\\User', 52, 'MyApp', 'a0c512b1802fe581c305ee9ad82c2a9aac13139704658d6036fadb4836e811b2', '[\"*\"]', '2023-12-07 10:59:43', NULL, '2023-12-07 10:59:13', '2023-12-07 10:59:43'),
(227, 'App\\Models\\User', 52, 'MyApp', 'f2d020d20a0652d1f840d37b4650ec03832e3455d8be0f9c7b7a99c0fa9d2969', '[\"*\"]', '2023-12-07 11:36:13', NULL, '2023-12-07 11:35:07', '2023-12-07 11:36:13'),
(228, 'App\\Models\\User', 44, 'MyApp', '23ee0fb29c69a52860b2f9f8c7d04bf18e8e75159cf6db8f46baa0503e03a96f', '[\"*\"]', '2023-12-07 12:17:10', NULL, '2023-12-07 12:15:50', '2023-12-07 12:17:10'),
(229, 'App\\Models\\User', 44, 'MyApp', 'd9c7a9c438e2311f2bb140139dbf008115570daa87206a7b035e517eeb1450e0', '[\"*\"]', '2023-12-07 12:40:50', NULL, '2023-12-07 12:37:29', '2023-12-07 12:40:50'),
(230, 'App\\Models\\User', 53, 'MyApp', 'd63b985c383c01051db4c62e2b9334dd0e9f80c9eb357c0555a4946d32937adf', '[\"*\"]', NULL, NULL, '2023-12-07 12:54:18', '2023-12-07 12:54:18'),
(231, 'App\\Models\\User', 52, 'MyApp', '7971ab40c16e6fb99e8f31fa72b31421d15ebb477d4a12538e5c78b411785d99', '[\"*\"]', NULL, NULL, '2023-12-07 15:23:26', '2023-12-07 15:23:26'),
(232, 'App\\Models\\User', 52, 'MyApp', '36af5f911ffaa0a5c050a8fd59039175899e71a3b4cc835a884554f7d4d25fc9', '[\"*\"]', '2023-12-07 17:47:43', NULL, '2023-12-07 17:40:34', '2023-12-07 17:47:43'),
(233, 'App\\Models\\User', 52, 'MyApp', '9666c9d7e9e263d7859bb6b902d15c348583f4ec8150b49f2235f9bbee31d773', '[\"*\"]', '2023-12-08 17:58:07', NULL, '2023-12-08 17:56:48', '2023-12-08 17:58:07'),
(234, 'App\\Models\\User', 54, 'MyApp', '8e36bffca521fa5a467dbb2346820d33a77e292b8478abf4b226f962cd00c6a1', '[\"*\"]', NULL, NULL, '2023-12-15 20:00:22', '2023-12-15 20:00:22'),
(235, 'App\\Models\\User', 3, 'MyApp', '115b0a0991e9b94bd16f0b909df4f90ba25b5624d08624f398964adfa6e45be8', '[\"*\"]', '2023-12-17 22:01:55', NULL, '2023-12-17 21:01:59', '2023-12-17 22:01:55'),
(236, 'App\\Models\\User', 3, 'MyApp', 'fca1b1e292e6843a2d7d21e4cc64003d5e248cbc99ba78050254723c9bffe438', '[\"*\"]', '2023-12-17 23:05:51', NULL, '2023-12-17 22:06:53', '2023-12-17 23:05:51'),
(237, 'App\\Models\\User', 3, 'MyApp', '83acdb4fd77fabfa66580ec76e7b985ed326ba4c09c080a7ee9c7cdeb0df55e0', '[\"*\"]', '2023-12-18 00:00:21', NULL, '2023-12-17 23:07:28', '2023-12-18 00:00:21'),
(238, 'App\\Models\\User', 55, 'MyApp', 'cbfe29d83e2bf7bd4179544536c1c0606ac20e297cc1a64effb673b8ba1e6fbb', '[\"*\"]', NULL, NULL, '2024-01-06 13:48:56', '2024-01-06 13:48:56'),
(239, 'App\\Models\\User', 55, 'MyApp', '9f1f529dd26e8caac62e51606316298f19b8b69d6868c837e52636f38d8d2df8', '[\"*\"]', NULL, NULL, '2024-01-06 13:58:12', '2024-01-06 13:58:12'),
(240, 'App\\Models\\User', 56, 'MyApp', '5fcfadd5595185df0db87b23ae81ad52111394d7afb7fc200269656580b42b4d', '[\"*\"]', NULL, NULL, '2024-01-08 11:21:55', '2024-01-08 11:21:55'),
(241, 'App\\Models\\User', 57, 'MyApp', '97a2c91426cb9344ec52f986fa6d0c91302771c358f8c9a92661c5368278f8b0', '[\"*\"]', NULL, NULL, '2024-01-08 11:24:27', '2024-01-08 11:24:27'),
(242, 'App\\Models\\User', 58, 'MyApp', '4f4582e2cb53962bb636b08594d38c02b828ff80221943392b9ff3ad4bf583c9', '[\"*\"]', NULL, NULL, '2024-01-25 10:39:33', '2024-01-25 10:39:33'),
(243, 'App\\Models\\User', 59, 'MyApp', 'dcf4c6d1b57295f29dd9ca99ccdc9795e7302682cec2926660b4a833f07b79b5', '[\"*\"]', NULL, NULL, '2024-01-28 11:41:18', '2024-01-28 11:41:18'),
(244, 'App\\Models\\User', 60, 'MyApp', 'a10695621d0e0d2d4e2aa7836f589d99fef34143184b42f5513494e347423c15', '[\"*\"]', NULL, NULL, '2024-01-28 11:43:21', '2024-01-28 11:43:21'),
(245, 'App\\Models\\User', 60, 'MyApp', 'd5e9d50a20c7ba6fa88bd01e01c5f6476732b6ff8bad72fbf46b3cf3ebb4fc9f', '[\"*\"]', NULL, NULL, '2024-01-28 11:44:10', '2024-01-28 11:44:10'),
(246, 'App\\Models\\User', 60, 'MyApp', '5b6ac5cb48145c732bc5c4f95a6e3ae94ca267662ad85cc3623595447efac003', '[\"*\"]', NULL, NULL, '2024-01-28 11:44:37', '2024-01-28 11:44:37'),
(247, 'App\\Models\\User', 61, 'MyApp', '91cbaceac473f0b140b3cd6b702bae654bc848d9c2598ddfbeba30eae0123858', '[\"*\"]', NULL, NULL, '2024-03-12 09:42:39', '2024-03-12 09:42:39'),
(248, 'App\\Models\\User', 61, 'MyApp', '6d398e9617b0a8259de5ac0a2229d09025a760be47b42cdd2843f26e6b2269a1', '[\"*\"]', NULL, NULL, '2024-03-12 09:51:24', '2024-03-12 09:51:24'),
(249, 'App\\Models\\User', 62, 'MyApp', 'f0aee4257c5a8a343d48ba39f3d48b4c40912949ecebb6c84388fb6c21826743', '[\"*\"]', NULL, NULL, '2024-03-12 09:59:10', '2024-03-12 09:59:10'),
(250, 'App\\Models\\User', 63, 'MyApp', '36ff9519f3bdc7c03c2223e191b39384a4afbf5c3715f530ff0e85c7ae5f67bc', '[\"*\"]', NULL, NULL, '2024-03-12 10:59:16', '2024-03-12 10:59:16'),
(251, 'App\\Models\\User', 63, 'MyApp', '2d8d2409bd9d3a1cc84acfbbe47b53e736b9701fa7e46540cd4007508240579a', '[\"*\"]', NULL, NULL, '2024-03-12 11:17:26', '2024-03-12 11:17:26'),
(252, 'App\\Models\\User', 64, 'MyApp', '953925122a4c2a9b65534396eadbfcd1521644e5133b6c41da4cd35e2c178ce0', '[\"*\"]', NULL, NULL, '2024-03-12 11:19:16', '2024-03-12 11:19:16'),
(253, 'App\\Models\\User', 65, 'MyApp', 'e5af2acd6eb090aa09ec0eb2b6be71769f206dc483be44c636b4801d252ce053', '[\"*\"]', NULL, NULL, '2024-03-12 11:28:37', '2024-03-12 11:28:37'),
(254, 'App\\Models\\User', 66, 'MyApp', '9f69b7e187ca084f534688a1b326a81a51e17c3f788c9e79a7db9512e7ef02ff', '[\"*\"]', NULL, NULL, '2024-03-12 11:35:48', '2024-03-12 11:35:48'),
(255, 'App\\Models\\User', 66, 'MyApp', '85b89604cfe8f48fc64d4ad085652f2f0d47d71ee5be47a8c053597a567dc0aa', '[\"*\"]', NULL, NULL, '2024-03-12 11:36:39', '2024-03-12 11:36:39'),
(256, 'App\\Models\\User', 66, 'MyApp', '8ce8d4cbf95ba4f4278d94cc9f458e21fdde9579c915db8dd0e259bb42c6e09c', '[\"*\"]', NULL, NULL, '2024-03-12 11:40:55', '2024-03-12 11:40:55'),
(257, 'App\\Models\\User', 66, 'MyApp', '8832f2cfb31f7c40a1ade4f50c3069a30b9094d86c7df257ab0499c4e1ae3c0f', '[\"*\"]', NULL, NULL, '2024-03-12 11:46:20', '2024-03-12 11:46:20'),
(258, 'App\\Models\\User', 67, 'MyApp', 'd5bc61e37de41902bee6d53488c80fa01c50b4308c9adea7b4d80cc7f8726a15', '[\"*\"]', NULL, NULL, '2024-03-19 08:40:09', '2024-03-19 08:40:09'),
(259, 'App\\Models\\User', 67, 'MyApp', '8874173dd2bc3c1d5fe8daf0ee44f7664d04305d86e68a6d457b73fabd3892ff', '[\"*\"]', NULL, NULL, '2024-03-19 09:05:32', '2024-03-19 09:05:32'),
(260, 'App\\Models\\User', 67, 'MyApp', '9c926bb4bfb804a109212b5258ae78fc6efb7217604621bd886c281ef65b2e0b', '[\"*\"]', NULL, NULL, '2024-03-22 08:55:20', '2024-03-22 08:55:20'),
(261, 'App\\Models\\User', 67, 'MyApp', 'dc1baaea36dd49e1558336c582e5bf07a7e15fc0636c1b2d872546b8beb66215', '[\"*\"]', NULL, NULL, '2024-03-22 10:40:44', '2024-03-22 10:40:44'),
(262, 'App\\Models\\User', 68, 'MyApp', 'b162d84db15ac55b68282b3332fc439d2deebfcbc6d2ffea335463f2e5d3d92c', '[\"*\"]', NULL, NULL, '2024-03-22 10:44:57', '2024-03-22 10:44:57'),
(263, 'App\\Models\\User', 69, 'MyApp', '21fc21a59b477d337f9730dac0a35ec7b4d040f9dc89d1b98f8e1c1a7c7395f8', '[\"*\"]', '2024-03-23 12:17:42', NULL, '2024-03-23 12:09:18', '2024-03-23 12:17:42'),
(264, 'App\\Models\\User', 70, 'MyApp', '5ee8ed1a9b2ee31f4cc661a4325149aeb771b072369b00e572b8cfb9bb85d92c', '[\"*\"]', '2024-03-23 12:52:39', NULL, '2024-03-23 12:19:42', '2024-03-23 12:52:39'),
(265, 'App\\Models\\User', 70, 'MyApp', '508f6b9294e4bb2c7fe25f27e4842db417035288bb8693d083ba29874e2fd2ed', '[\"*\"]', '2024-03-23 12:29:24', NULL, '2024-03-23 12:25:42', '2024-03-23 12:29:24'),
(266, 'App\\Models\\User', 71, 'MyApp', '7db89f7a943d6e5fa90ceee14b94444176c587d9a972a4fe30608d4c4031c88f', '[\"*\"]', NULL, NULL, '2024-03-27 09:37:07', '2024-03-27 09:37:07'),
(267, 'App\\Models\\User', 72, 'MyApp', 'd8ac1e5e83377e14789ad306dd7d1db2befa104e602e30e8387b6b94f54a53de', '[\"*\"]', NULL, NULL, '2024-03-27 09:42:27', '2024-03-27 09:42:27'),
(268, 'App\\Models\\User', 72, 'MyApp', '4298a360f79757672237428137b15d747d7ad80f5e2ca0ef3e57b0cbbf36b7bd', '[\"*\"]', NULL, NULL, '2024-03-27 10:12:55', '2024-03-27 10:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Punjab', NULL, NULL, NULL),
(2, 'Sindh', NULL, NULL, NULL),
(3, 'Khyber Pakhtunkhwa', NULL, NULL, NULL),
(4, 'Balochistan', NULL, NULL, NULL),
(5, 'Gilgit-Baltistan', NULL, NULL, NULL),
(6, 'Azad Jammu and Kashmir', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_question_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_question_id`, `title`, `correct_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'A', NULL, '2023-11-18 18:12:18', '2023-11-18 18:12:18'),
(2, 1, '2', 'C', NULL, '2023-11-18 18:12:18', '2023-11-18 18:12:18'),
(3, 3, '1', 'A', NULL, '2023-12-13 17:49:21', '2023-12-13 17:49:21'),
(4, 3, '2', 'D', NULL, '2023-12-13 17:49:21', '2023-12-13 17:49:21'),
(5, 3, '3', 'B', NULL, '2023-12-13 17:49:21', '2023-12-13 17:49:21'),
(6, 4, '1', 'A', NULL, '2023-12-13 17:56:47', '2023-12-13 17:56:47'),
(7, 4, '2', 'D', NULL, '2023-12-13 17:56:47', '2023-12-13 17:56:47'),
(8, 4, '3', 'B', NULL, '2023-12-13 17:56:47', '2023-12-13 17:56:47'),
(9, 5, '1', 'C', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(10, 5, '2', 'C', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(11, 5, '3', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(12, 5, '4', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(13, 5, '5', 'C', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(14, 5, '6', 'A', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(15, 5, '7', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(16, 5, '8', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(17, 5, '9', 'A', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(18, 5, '10', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(19, 5, '11', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(20, 5, '12', 'A', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(21, 5, '13', 'A', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(22, 5, '14', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(23, 5, '15', 'B', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(24, 5, '16', 'C', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(25, 5, '17', 'A', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(26, 5, '18', 'C', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(27, 5, '19', 'D', NULL, '2024-01-06 13:18:46', '2024-01-06 13:18:46'),
(28, 5, '20', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(29, 5, '21', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(30, 5, '22', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(31, 5, '23', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(32, 5, '24', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(33, 5, '25', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(34, 5, '26', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(35, 5, '27', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(36, 5, '28', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(37, 5, '29', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(38, 5, '30', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(39, 5, '31', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(40, 5, '32', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(41, 5, '33', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(42, 5, '34', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(43, 5, '35', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(44, 5, '36', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(45, 5, '37', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(46, 5, '38', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(47, 5, '39', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(48, 5, '40', 'D', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(49, 5, '41', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(50, 5, '42', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(51, 5, '43', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(52, 5, '44', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(53, 5, '45', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(54, 5, '46', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(55, 5, '47', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(56, 5, '48', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(57, 5, '49', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(58, 5, '50', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(59, 5, '51', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(60, 5, '52', 'A', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(61, 5, '53', 'C', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(62, 5, '54', 'B', NULL, '2024-01-06 13:18:47', '2024-01-06 13:18:47'),
(63, 6, 'Question', 'CorrectOption', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(64, 6, '1', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(65, 6, '2', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(66, 6, '3', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(67, 6, '4', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(68, 6, '5', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(69, 6, '6', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(70, 6, '7', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(71, 6, '8', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(72, 6, '9', 'B ', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(73, 6, '10', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(74, 6, '11', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(75, 6, '12', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(76, 6, '13', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(77, 6, '14', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(78, 6, '15', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(79, 6, '16', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(80, 6, '17', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(81, 6, '18', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(82, 6, '19', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(83, 6, '20', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(84, 6, '21', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(85, 6, '22', 'E', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(86, 6, '23', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(87, 6, '24', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(88, 6, '25', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(89, 6, '26', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(90, 6, '27', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(91, 6, '28', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(92, 6, '29', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(93, 6, '30', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(94, 6, '31', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(95, 6, '32', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(96, 6, '33', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(97, 6, '34', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(98, 6, '35', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(99, 6, '36', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(100, 6, '37', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(101, 6, '38', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(102, 6, '39', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(103, 6, '40', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(104, 6, '41', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(105, 6, '42', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(106, 6, '43', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(107, 6, '44', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(108, 6, '45', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(109, 6, '46', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(110, 6, '47', 'E', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(111, 6, '48', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(112, 6, '49', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(113, 6, '50', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(114, 6, '51', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(115, 6, '52', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(116, 6, '53', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(117, 6, '54', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(118, 6, '55', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(119, 6, '56', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(120, 6, '57', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(121, 6, '58', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(122, 6, '59', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(123, 6, '60', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(124, 6, '61', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(125, 6, '62', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(126, 6, '63', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(127, 6, '64', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(128, 6, '65', 'E', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(129, 6, '66', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(130, 6, '67', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(131, 6, '68', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(132, 6, '69', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(133, 6, '70', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(134, 6, '71', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(135, 6, '72', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(136, 6, '73', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(137, 6, '74', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(138, 6, '75', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(139, 6, '76', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(140, 6, '77', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(141, 6, '78', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(142, 6, '79', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(143, 6, '80', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(144, 6, '81', 'D', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(145, 6, '82', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(146, 6, '83', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(147, 6, '84', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(148, 6, '85', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(149, 6, '86', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(150, 6, '87', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(151, 6, '88', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(152, 6, '89', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(153, 6, '90', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(154, 6, '91', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(155, 6, '92', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(156, 6, '93', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(157, 6, '94', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(158, 6, '95', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(159, 6, '96', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(160, 6, '97', 'C', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(161, 6, '98', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(162, 6, '99', 'A', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(163, 6, '100', 'B', '2024-03-12 12:29:28', '2024-03-06 11:30:43', '2024-03-12 12:29:28'),
(164, 6, 'Question', 'CorrectOption', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(165, 6, '1', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(166, 6, '2', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(167, 6, '3', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(168, 6, '4', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(169, 6, '5', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(170, 6, '6', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(171, 6, '7', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(172, 6, '8', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(173, 6, '9', 'B ', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(174, 6, '10', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(175, 6, '11', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(176, 6, '12', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(177, 6, '13', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(178, 6, '14', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(179, 6, '15', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(180, 6, '16', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(181, 6, '17', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(182, 6, '18', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(183, 6, '19', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(184, 6, '20', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(185, 6, '21', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(186, 6, '22', 'E', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(187, 6, '23', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(188, 6, '24', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(189, 6, '25', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(190, 6, '26', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(191, 6, '27', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(192, 6, '28', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(193, 6, '29', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(194, 6, '30', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(195, 6, '31', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(196, 6, '32', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(197, 6, '33', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(198, 6, '34', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(199, 6, '35', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(200, 6, '36', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(201, 6, '37', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(202, 6, '38', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(203, 6, '39', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(204, 6, '40', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(205, 6, '41', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(206, 6, '42', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(207, 6, '43', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(208, 6, '44', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(209, 6, '45', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(210, 6, '46', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(211, 6, '47', 'E', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(212, 6, '48', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(213, 6, '49', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(214, 6, '50', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(215, 6, '51', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(216, 6, '52', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(217, 6, '53', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(218, 6, '54', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(219, 6, '55', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(220, 6, '56', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(221, 6, '57', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(222, 6, '58', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(223, 6, '59', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(224, 6, '60', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(225, 6, '61', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(226, 6, '62', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(227, 6, '63', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(228, 6, '64', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(229, 6, '65', 'E', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(230, 6, '66', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(231, 6, '67', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(232, 6, '68', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(233, 6, '69', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(234, 6, '70', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(235, 6, '71', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(236, 6, '72', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(237, 6, '73', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(238, 6, '74', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(239, 6, '75', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(240, 6, '76', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(241, 6, '77', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(242, 6, '78', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(243, 6, '79', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(244, 6, '80', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(245, 6, '81', 'D', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(246, 6, '82', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(247, 6, '83', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(248, 6, '84', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(249, 6, '85', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(250, 6, '86', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(251, 6, '87', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(252, 6, '88', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(253, 6, '89', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(254, 6, '90', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(255, 6, '91', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(256, 6, '92', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(257, 6, '93', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(258, 6, '94', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(259, 6, '95', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(260, 6, '96', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(261, 6, '97', 'C', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(262, 6, '98', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(263, 6, '99', 'A', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28'),
(264, 6, '100', 'B', NULL, '2024-03-12 12:29:28', '2024-03-12 12:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `question_keys`
--

CREATE TABLE `question_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_keys`
--

INSERT INTO `question_keys` (`id`, `question_id`, `option`) VALUES
(1, 1, 'A'),
(2, 1, 'B'),
(3, 1, 'C'),
(4, 1, 'D'),
(5, 2, 'A'),
(6, 2, 'B'),
(7, 2, 'C'),
(8, 2, 'D'),
(9, 3, 'A'),
(10, 3, 'B'),
(11, 3, 'C'),
(12, 3, 'D'),
(13, 4, 'A'),
(14, 4, 'B'),
(15, 4, 'C'),
(16, 4, 'D'),
(17, 5, 'A'),
(18, 5, 'B'),
(19, 5, 'C'),
(20, 5, 'D'),
(21, 6, 'A'),
(22, 6, 'B'),
(23, 6, 'C'),
(24, 6, 'D'),
(25, 7, 'A'),
(26, 7, 'B'),
(27, 7, 'C'),
(28, 7, 'D'),
(29, 8, 'A'),
(30, 8, 'B'),
(31, 8, 'C'),
(32, 8, 'D'),
(33, 9, 'A'),
(34, 9, 'B'),
(35, 9, 'C'),
(36, 9, 'D'),
(37, 10, 'A'),
(38, 10, 'B'),
(39, 10, 'C'),
(40, 10, 'D'),
(41, 11, 'A'),
(42, 11, 'B'),
(43, 11, 'C'),
(44, 11, 'D'),
(45, 12, 'A'),
(46, 12, 'B'),
(47, 12, 'C'),
(48, 12, 'D'),
(49, 13, 'A'),
(50, 13, 'B'),
(51, 13, 'C'),
(52, 13, 'D'),
(53, 14, 'A'),
(54, 14, 'B'),
(55, 14, 'C'),
(56, 14, 'D'),
(57, 15, 'A'),
(58, 15, 'B'),
(59, 15, 'C'),
(60, 15, 'D'),
(61, 16, 'A'),
(62, 16, 'B'),
(63, 16, 'C'),
(64, 16, 'D'),
(65, 17, 'A'),
(66, 17, 'B'),
(67, 17, 'C'),
(68, 17, 'D'),
(69, 18, 'A'),
(70, 18, 'B'),
(71, 18, 'C'),
(72, 18, 'D'),
(73, 19, 'A'),
(74, 19, 'B'),
(75, 19, 'C'),
(76, 19, 'D'),
(77, 20, 'A'),
(78, 20, 'B'),
(79, 20, 'C'),
(80, 20, 'D'),
(81, 21, 'A'),
(82, 21, 'B'),
(83, 21, 'C'),
(84, 21, 'D'),
(85, 22, 'A'),
(86, 22, 'B'),
(87, 22, 'C'),
(88, 22, 'D'),
(89, 23, 'A'),
(90, 23, 'B'),
(91, 23, 'C'),
(92, 23, 'D'),
(93, 24, 'A'),
(94, 24, 'B'),
(95, 24, 'C'),
(96, 24, 'D'),
(97, 25, 'A'),
(98, 25, 'B'),
(99, 25, 'C'),
(100, 25, 'D'),
(101, 26, 'A'),
(102, 26, 'B'),
(103, 26, 'C'),
(104, 26, 'D'),
(105, 27, 'A'),
(106, 27, 'B'),
(107, 27, 'C'),
(108, 27, 'D'),
(109, 28, 'A'),
(110, 28, 'B'),
(111, 28, 'C'),
(112, 28, 'D'),
(113, 29, 'A'),
(114, 29, 'B'),
(115, 29, 'C'),
(116, 29, 'D'),
(117, 30, 'A'),
(118, 30, 'B'),
(119, 30, 'C'),
(120, 30, 'D'),
(121, 31, 'A'),
(122, 31, 'B'),
(123, 31, 'C'),
(124, 31, 'D'),
(125, 32, 'A'),
(126, 32, 'B'),
(127, 32, 'C'),
(128, 32, 'D'),
(129, 33, 'A'),
(130, 33, 'B'),
(131, 33, 'C'),
(132, 33, 'D'),
(133, 34, 'A'),
(134, 34, 'B'),
(135, 34, 'C'),
(136, 34, 'D'),
(137, 35, 'A'),
(138, 35, 'B'),
(139, 35, 'C'),
(140, 35, 'D'),
(141, 36, 'A'),
(142, 36, 'B'),
(143, 36, 'C'),
(144, 36, 'D'),
(145, 37, 'A'),
(146, 37, 'B'),
(147, 37, 'C'),
(148, 37, 'D'),
(149, 38, 'A'),
(150, 38, 'B'),
(151, 38, 'C'),
(152, 38, 'D'),
(153, 39, 'A'),
(154, 39, 'B'),
(155, 39, 'C'),
(156, 39, 'D'),
(157, 40, 'A'),
(158, 40, 'B'),
(159, 40, 'C'),
(160, 40, 'D'),
(161, 41, 'A'),
(162, 41, 'B'),
(163, 41, 'C'),
(164, 41, 'D'),
(165, 42, 'A'),
(166, 42, 'B'),
(167, 42, 'C'),
(168, 42, 'D'),
(169, 43, 'A'),
(170, 43, 'B'),
(171, 43, 'C'),
(172, 43, 'D'),
(173, 44, 'A'),
(174, 44, 'B'),
(175, 44, 'C'),
(176, 44, 'D'),
(177, 45, 'A'),
(178, 45, 'B'),
(179, 45, 'C'),
(180, 45, 'D'),
(181, 46, 'A'),
(182, 46, 'B'),
(183, 46, 'C'),
(184, 46, 'D'),
(185, 47, 'A'),
(186, 47, 'B'),
(187, 47, 'C'),
(188, 47, 'D'),
(189, 48, 'A'),
(190, 48, 'B'),
(191, 48, 'C'),
(192, 48, 'D'),
(193, 49, 'A'),
(194, 49, 'B'),
(195, 49, 'C'),
(196, 49, 'D'),
(197, 50, 'A'),
(198, 50, 'B'),
(199, 50, 'C'),
(200, 50, 'D'),
(201, 51, 'A'),
(202, 51, 'B'),
(203, 51, 'C'),
(204, 51, 'D'),
(205, 52, 'A'),
(206, 52, 'B'),
(207, 52, 'C'),
(208, 52, 'D'),
(209, 53, 'A'),
(210, 53, 'B'),
(211, 53, 'C'),
(212, 53, 'D'),
(213, 54, 'A'),
(214, 54, 'B'),
(215, 54, 'C'),
(216, 54, 'D'),
(217, 55, 'A'),
(218, 55, 'B'),
(219, 55, 'C'),
(220, 55, 'D'),
(221, 56, 'A'),
(222, 56, 'B'),
(223, 56, 'C'),
(224, 56, 'D'),
(225, 57, 'A'),
(226, 57, 'B'),
(227, 57, 'C'),
(228, 57, 'D'),
(229, 58, 'A'),
(230, 58, 'B'),
(231, 58, 'C'),
(232, 58, 'D'),
(233, 59, 'A'),
(234, 59, 'B'),
(235, 59, 'C'),
(236, 59, 'D'),
(237, 60, 'A'),
(238, 60, 'B'),
(239, 60, 'C'),
(240, 60, 'D'),
(241, 61, 'A'),
(242, 61, 'B'),
(243, 61, 'C'),
(244, 61, 'D'),
(245, 62, 'A'),
(246, 62, 'B'),
(247, 62, 'C'),
(248, 62, 'D'),
(754, 164, 'Option1'),
(755, 164, 'Option2'),
(756, 164, 'Option3'),
(757, 164, 'Option4'),
(758, 164, 'Option5'),
(759, 165, 'A'),
(760, 165, 'B'),
(761, 165, 'C'),
(762, 165, 'D'),
(763, 165, 'E'),
(764, 166, 'A'),
(765, 166, 'B'),
(766, 166, 'C'),
(767, 166, 'D'),
(768, 166, 'E'),
(769, 167, 'A'),
(770, 167, 'B'),
(771, 167, 'C'),
(772, 167, 'D'),
(773, 167, 'E'),
(774, 168, 'A'),
(775, 168, 'B'),
(776, 168, 'C'),
(777, 168, 'D'),
(778, 168, 'E'),
(779, 169, 'A'),
(780, 169, 'B'),
(781, 169, 'C'),
(782, 169, 'D'),
(783, 169, 'E'),
(784, 170, 'A'),
(785, 170, 'B'),
(786, 170, 'C'),
(787, 170, 'D'),
(788, 170, 'E'),
(789, 171, 'A'),
(790, 171, 'B'),
(791, 171, 'C'),
(792, 171, 'D'),
(793, 171, 'E'),
(794, 172, 'A'),
(795, 172, 'B'),
(796, 172, 'C'),
(797, 172, 'D'),
(798, 172, 'E'),
(799, 173, 'A'),
(800, 173, 'B'),
(801, 173, 'C'),
(802, 173, 'D'),
(803, 173, 'E'),
(804, 174, 'A'),
(805, 174, 'B'),
(806, 174, 'C'),
(807, 174, 'D'),
(808, 174, 'E'),
(809, 175, 'A'),
(810, 175, 'B'),
(811, 175, 'C'),
(812, 175, 'D'),
(813, 175, 'E'),
(814, 176, 'A'),
(815, 176, 'B'),
(816, 176, 'C'),
(817, 176, 'D'),
(818, 176, 'E'),
(819, 177, 'A'),
(820, 177, 'B'),
(821, 177, 'C'),
(822, 177, 'D'),
(823, 177, 'E'),
(824, 178, 'A'),
(825, 178, 'B'),
(826, 178, 'C'),
(827, 178, 'D'),
(828, 178, 'E'),
(829, 179, 'A'),
(830, 179, 'B'),
(831, 179, 'C'),
(832, 179, 'D'),
(833, 179, 'E'),
(834, 180, 'A'),
(835, 180, 'B'),
(836, 180, 'C'),
(837, 180, 'D'),
(838, 180, 'E'),
(839, 181, 'A'),
(840, 181, 'B'),
(841, 181, 'C'),
(842, 181, 'D'),
(843, 181, 'E'),
(844, 182, 'A'),
(845, 182, 'B'),
(846, 182, 'C'),
(847, 182, 'D'),
(848, 182, 'E'),
(849, 183, 'A'),
(850, 183, 'B'),
(851, 183, 'C'),
(852, 183, 'D'),
(853, 183, 'E'),
(854, 184, 'A'),
(855, 184, 'B'),
(856, 184, 'C'),
(857, 184, 'D'),
(858, 184, 'E'),
(859, 185, 'A'),
(860, 185, 'B'),
(861, 185, 'C'),
(862, 185, 'D'),
(863, 185, 'E'),
(864, 186, 'A'),
(865, 186, 'B'),
(866, 186, 'C'),
(867, 186, 'D'),
(868, 186, 'E'),
(869, 187, 'A'),
(870, 187, 'B'),
(871, 187, 'C'),
(872, 187, 'D'),
(873, 187, 'E'),
(874, 188, 'A'),
(875, 188, 'B'),
(876, 188, 'C'),
(877, 188, 'D'),
(878, 188, 'E'),
(879, 189, 'A'),
(880, 189, 'B'),
(881, 189, 'C'),
(882, 189, 'D'),
(883, 189, 'E'),
(884, 190, 'A'),
(885, 190, 'B'),
(886, 190, 'C'),
(887, 190, 'D'),
(888, 190, 'E'),
(889, 191, 'A'),
(890, 191, 'B'),
(891, 191, 'C'),
(892, 191, 'D'),
(893, 191, 'E'),
(894, 192, 'A'),
(895, 192, 'B'),
(896, 192, 'C'),
(897, 192, 'D'),
(898, 192, 'E'),
(899, 193, 'A'),
(900, 193, 'B'),
(901, 193, 'C'),
(902, 193, 'D'),
(903, 193, 'E'),
(904, 194, 'A'),
(905, 194, 'B'),
(906, 194, 'C'),
(907, 194, 'D'),
(908, 194, 'E'),
(909, 195, 'A'),
(910, 195, 'B'),
(911, 195, 'C'),
(912, 195, 'D'),
(913, 195, 'E'),
(914, 196, 'A'),
(915, 196, 'B'),
(916, 196, 'C'),
(917, 196, 'D'),
(918, 196, 'E'),
(919, 197, 'A'),
(920, 197, 'B'),
(921, 197, 'C'),
(922, 197, 'D'),
(923, 197, 'E'),
(924, 198, 'A'),
(925, 198, 'B'),
(926, 198, 'C'),
(927, 198, 'D'),
(928, 198, 'E'),
(929, 199, 'A'),
(930, 199, 'B'),
(931, 199, 'C'),
(932, 199, 'D'),
(933, 199, 'E'),
(934, 200, 'A'),
(935, 200, 'B'),
(936, 200, 'C'),
(937, 200, 'D'),
(938, 200, 'E'),
(939, 201, 'A'),
(940, 201, 'B'),
(941, 201, 'C'),
(942, 201, 'D'),
(943, 201, 'E'),
(944, 202, 'A'),
(945, 202, 'B'),
(946, 202, 'C'),
(947, 202, 'D'),
(948, 202, 'E'),
(949, 203, 'A'),
(950, 203, 'B'),
(951, 203, 'C'),
(952, 203, 'D'),
(953, 203, 'E'),
(954, 204, 'A'),
(955, 204, 'B'),
(956, 204, 'C'),
(957, 204, 'D'),
(958, 204, 'E'),
(959, 205, 'A'),
(960, 205, 'B'),
(961, 205, 'C'),
(962, 205, 'D'),
(963, 205, 'E'),
(964, 206, 'A'),
(965, 206, 'B'),
(966, 206, 'C'),
(967, 206, 'D'),
(968, 206, 'E'),
(969, 207, 'A'),
(970, 207, 'B'),
(971, 207, 'C'),
(972, 207, 'D'),
(973, 207, 'E'),
(974, 208, 'A'),
(975, 208, 'B'),
(976, 208, 'C'),
(977, 208, 'D'),
(978, 208, 'E'),
(979, 209, 'A'),
(980, 209, 'B'),
(981, 209, 'C'),
(982, 209, 'D'),
(983, 209, 'E'),
(984, 210, 'A'),
(985, 210, 'B'),
(986, 210, 'C'),
(987, 210, 'D'),
(988, 210, 'E'),
(989, 211, 'A'),
(990, 211, 'B'),
(991, 211, 'C'),
(992, 211, 'D'),
(993, 211, 'E'),
(994, 212, 'A'),
(995, 212, 'B'),
(996, 212, 'C'),
(997, 212, 'D'),
(998, 212, 'E'),
(999, 213, 'A'),
(1000, 213, 'B'),
(1001, 213, 'C'),
(1002, 213, 'D'),
(1003, 213, 'E'),
(1004, 214, 'A'),
(1005, 214, 'B'),
(1006, 214, 'C'),
(1007, 214, 'D'),
(1008, 214, 'E'),
(1009, 215, 'A'),
(1010, 215, 'B'),
(1011, 215, 'C'),
(1012, 215, 'D'),
(1013, 215, 'E'),
(1014, 216, 'A'),
(1015, 216, 'B'),
(1016, 216, 'C'),
(1017, 216, 'D'),
(1018, 216, 'E'),
(1019, 217, 'A'),
(1020, 217, 'B'),
(1021, 217, 'C'),
(1022, 217, 'D'),
(1023, 217, 'E'),
(1024, 218, 'A'),
(1025, 218, 'B'),
(1026, 218, 'C'),
(1027, 218, 'D'),
(1028, 218, 'E'),
(1029, 219, 'A'),
(1030, 219, 'B'),
(1031, 219, 'C'),
(1032, 219, 'D'),
(1033, 219, 'E'),
(1034, 220, 'A'),
(1035, 220, 'B'),
(1036, 220, 'C'),
(1037, 220, 'D'),
(1038, 220, 'E'),
(1039, 221, 'A'),
(1040, 221, 'B'),
(1041, 221, 'C'),
(1042, 221, 'D'),
(1043, 221, 'E'),
(1044, 222, 'A'),
(1045, 222, 'B'),
(1046, 222, 'C'),
(1047, 222, 'D'),
(1048, 222, 'E'),
(1049, 223, 'A'),
(1050, 223, 'B'),
(1051, 223, 'C'),
(1052, 223, 'D'),
(1053, 223, 'E'),
(1054, 224, 'A'),
(1055, 224, 'B'),
(1056, 224, 'C'),
(1057, 224, 'D'),
(1058, 224, 'E'),
(1059, 225, 'A'),
(1060, 225, 'B'),
(1061, 225, 'C'),
(1062, 225, 'D'),
(1063, 225, 'E'),
(1064, 226, 'A'),
(1065, 226, 'B'),
(1066, 226, 'C'),
(1067, 226, 'D'),
(1068, 226, 'E'),
(1069, 227, 'A'),
(1070, 227, 'B'),
(1071, 227, 'C'),
(1072, 227, 'D'),
(1073, 227, 'E'),
(1074, 228, 'A'),
(1075, 228, 'B'),
(1076, 228, 'C'),
(1077, 228, 'D'),
(1078, 228, 'E'),
(1079, 229, 'A'),
(1080, 229, 'B'),
(1081, 229, 'C'),
(1082, 229, 'D'),
(1083, 229, 'E'),
(1084, 230, 'A'),
(1085, 230, 'B'),
(1086, 230, 'C'),
(1087, 230, 'D'),
(1088, 230, 'E'),
(1089, 231, 'A'),
(1090, 231, 'B'),
(1091, 231, 'C'),
(1092, 231, 'D'),
(1093, 231, 'E'),
(1094, 232, 'A'),
(1095, 232, 'B'),
(1096, 232, 'C'),
(1097, 232, 'D'),
(1098, 232, 'E'),
(1099, 233, 'A'),
(1100, 233, 'B'),
(1101, 233, 'C'),
(1102, 233, 'D'),
(1103, 233, 'E'),
(1104, 234, 'A'),
(1105, 234, 'B'),
(1106, 234, 'C'),
(1107, 234, 'D'),
(1108, 234, 'E'),
(1109, 235, 'A'),
(1110, 235, 'B'),
(1111, 235, 'C'),
(1112, 235, 'D'),
(1113, 235, 'E'),
(1114, 236, 'A'),
(1115, 236, 'B'),
(1116, 236, 'C'),
(1117, 236, 'D'),
(1118, 236, 'E'),
(1119, 237, 'A'),
(1120, 237, 'B'),
(1121, 237, 'C'),
(1122, 237, 'D'),
(1123, 237, 'E'),
(1124, 238, 'A'),
(1125, 238, 'B'),
(1126, 238, 'C'),
(1127, 238, 'D'),
(1128, 238, 'E'),
(1129, 239, 'A'),
(1130, 239, 'B'),
(1131, 239, 'C'),
(1132, 239, 'D'),
(1133, 239, 'E'),
(1134, 240, 'A'),
(1135, 240, 'B'),
(1136, 240, 'C'),
(1137, 240, 'D'),
(1138, 240, 'E'),
(1139, 241, 'A'),
(1140, 241, 'B'),
(1141, 241, 'C'),
(1142, 241, 'D'),
(1143, 241, 'E'),
(1144, 242, 'A'),
(1145, 242, 'B'),
(1146, 242, 'C'),
(1147, 242, 'D'),
(1148, 242, 'E'),
(1149, 243, 'A'),
(1150, 243, 'B'),
(1151, 243, 'C'),
(1152, 243, 'D'),
(1153, 243, 'E'),
(1154, 244, 'A'),
(1155, 244, 'B'),
(1156, 244, 'C'),
(1157, 244, 'D'),
(1158, 244, 'E'),
(1159, 245, 'A'),
(1160, 245, 'B'),
(1161, 245, 'C'),
(1162, 245, 'D'),
(1163, 245, 'E'),
(1164, 246, 'A'),
(1165, 246, 'B'),
(1166, 246, 'C'),
(1167, 246, 'D'),
(1168, 246, 'E'),
(1169, 247, 'A'),
(1170, 247, 'B'),
(1171, 247, 'C'),
(1172, 247, 'D'),
(1173, 247, 'E'),
(1174, 248, 'A'),
(1175, 248, 'B'),
(1176, 248, 'C'),
(1177, 248, 'D'),
(1178, 248, 'E'),
(1179, 249, 'A'),
(1180, 249, 'B'),
(1181, 249, 'C'),
(1182, 249, 'D'),
(1183, 249, 'E'),
(1184, 250, 'A'),
(1185, 250, 'B'),
(1186, 250, 'C'),
(1187, 250, 'D'),
(1188, 250, 'E'),
(1189, 251, 'A'),
(1190, 251, 'B'),
(1191, 251, 'C'),
(1192, 251, 'D'),
(1193, 251, 'E'),
(1194, 252, 'A'),
(1195, 252, 'B'),
(1196, 252, 'C'),
(1197, 252, 'D'),
(1198, 252, 'E'),
(1199, 253, 'A'),
(1200, 253, 'B'),
(1201, 253, 'C'),
(1202, 253, 'D'),
(1203, 253, 'E'),
(1204, 254, 'A'),
(1205, 254, 'B'),
(1206, 254, 'C'),
(1207, 254, 'D'),
(1208, 254, 'E'),
(1209, 255, 'A'),
(1210, 255, 'B'),
(1211, 255, 'C'),
(1212, 255, 'D'),
(1213, 255, 'E'),
(1214, 256, 'A'),
(1215, 256, 'B'),
(1216, 256, 'C'),
(1217, 256, 'D'),
(1218, 256, 'E'),
(1219, 257, 'A'),
(1220, 257, 'B'),
(1221, 257, 'C'),
(1222, 257, 'D'),
(1223, 257, 'E'),
(1224, 258, 'A'),
(1225, 258, 'B'),
(1226, 258, 'C'),
(1227, 258, 'D'),
(1228, 258, 'E'),
(1229, 259, 'A'),
(1230, 259, 'B'),
(1231, 259, 'C'),
(1232, 259, 'D'),
(1233, 259, 'E'),
(1234, 260, 'A'),
(1235, 260, 'B'),
(1236, 260, 'C'),
(1237, 260, 'D'),
(1238, 260, 'E'),
(1239, 261, 'A'),
(1240, 261, 'B'),
(1241, 261, 'C'),
(1242, 261, 'D'),
(1243, 261, 'E'),
(1244, 262, 'A'),
(1245, 262, 'B'),
(1246, 262, 'C'),
(1247, 262, 'D'),
(1248, 262, 'E'),
(1249, 263, 'A'),
(1250, 263, 'B'),
(1251, 263, 'C'),
(1252, 263, 'D'),
(1253, 263, 'E'),
(1254, 264, 'A'),
(1255, 264, 'B'),
(1256, 264, 'C'),
(1257, 264, 'D'),
(1258, 264, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `subject_id`, `chapter_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '2023-11-22 17:07:58', '2023-11-22 17:07:58'),
(2, 1, 1, 7, '2023-11-22 17:13:47', '2023-11-22 17:13:47'),
(3, 0, 0, 10, '2023-11-23 12:23:01', '2023-11-23 12:23:01'),
(4, 0, 0, 12, '2023-11-23 12:30:11', '2023-11-23 12:30:11'),
(5, 0, 0, 14, '2023-11-24 10:16:24', '2023-11-24 10:16:24'),
(6, 0, 0, 24, '2023-11-27 12:11:15', '2023-11-27 12:11:15'),
(7, 0, 0, 7, '2023-11-27 12:59:25', '2023-11-27 12:59:25'),
(8, 0, 0, 3, '2023-12-01 16:51:47', '2023-12-01 16:51:47'),
(9, 0, 0, 38, '2023-12-01 17:42:18', '2023-12-01 17:42:18'),
(10, 1, 1, 38, '2023-12-01 17:49:15', '2023-12-01 17:49:15'),
(11, 1, 3, 38, '2023-12-01 18:15:58', '2023-12-01 18:15:58'),
(12, 1, 1, 39, '2023-12-02 15:48:36', '2023-12-02 15:48:36'),
(13, 1, 3, 39, '2023-12-02 17:40:48', '2023-12-02 17:40:48'),
(14, 1, 2, 39, '2023-12-02 17:42:01', '2023-12-02 17:42:01'),
(15, 1, 4, 39, '2023-12-02 17:47:00', '2023-12-02 17:47:00'),
(16, 1, 5, 39, '2023-12-02 17:50:55', '2023-12-02 17:50:55'),
(17, 1, 6, 39, '2023-12-02 17:52:38', '2023-12-02 17:52:38'),
(18, 1, 7, 39, '2023-12-02 17:57:41', '2023-12-02 17:57:41'),
(19, 1, 1, 41, '2023-12-03 11:14:50', '2023-12-03 11:14:50'),
(20, 1, 1, 43, '2023-12-04 00:27:29', '2023-12-04 00:27:29'),
(21, 1, 3, 41, '2023-12-06 10:24:05', '2023-12-06 10:24:05'),
(22, 1, 4, 41, '2023-12-06 10:26:45', '2023-12-06 10:26:45'),
(23, 1, 5, 41, '2023-12-06 10:34:49', '2023-12-06 10:34:49'),
(24, 1, 1, 45, '2023-12-06 10:54:31', '2023-12-06 10:54:31'),
(25, 1, 3, 45, '2023-12-06 11:00:11', '2023-12-06 11:00:11'),
(26, 1, 4, 45, '2023-12-06 11:02:30', '2023-12-06 11:02:30'),
(27, 1, 5, 45, '2023-12-06 12:26:52', '2023-12-06 12:26:52'),
(28, 1, 1, 46, '2023-12-06 13:16:42', '2023-12-06 13:16:42'),
(29, 1, 3, 46, '2023-12-06 13:23:02', '2023-12-06 13:23:02'),
(30, 1, 4, 46, '2023-12-06 13:28:13', '2023-12-06 13:28:13'),
(31, 1, 5, 46, '2023-12-06 13:32:26', '2023-12-06 13:32:26'),
(32, 1, 1, 47, '2023-12-06 13:36:57', '2023-12-06 13:36:57'),
(33, 1, 3, 47, '2023-12-06 13:43:12', '2023-12-06 13:43:12'),
(34, 1, 4, 47, '2023-12-06 13:44:30', '2023-12-06 13:44:30'),
(35, 1, 5, 47, '2023-12-06 13:51:12', '2023-12-06 13:51:12'),
(36, 1, 1, 48, '2023-12-06 14:02:30', '2023-12-06 14:02:30'),
(37, 1, 3, 48, '2023-12-06 14:07:01', '2023-12-06 14:07:01'),
(38, 1, 4, 48, '2023-12-06 14:10:13', '2023-12-06 14:10:13'),
(39, 1, 5, 48, '2023-12-06 14:11:18', '2023-12-06 14:11:18'),
(40, 1, 1, 49, '2023-12-06 14:19:41', '2023-12-06 14:19:41'),
(41, 1, 3, 49, '2023-12-06 14:22:18', '2023-12-06 14:22:18'),
(42, 1, 4, 49, '2023-12-06 14:25:16', '2023-12-06 14:25:16'),
(43, 1, 5, 49, '2023-12-06 14:26:26', '2023-12-06 14:26:26'),
(44, 1, 1, 50, '2023-12-06 14:30:27', '2023-12-06 14:30:27'),
(45, 1, 3, 50, '2023-12-06 14:38:20', '2023-12-06 14:38:20'),
(46, 1, 4, 50, '2023-12-06 14:53:54', '2023-12-06 14:53:54'),
(47, 1, 1, 51, '2023-12-06 16:52:15', '2023-12-06 16:52:15'),
(48, 1, 3, 51, '2023-12-06 16:53:27', '2023-12-06 16:53:27'),
(49, 1, 1, 52, '2023-12-06 17:12:28', '2023-12-06 17:12:28'),
(50, 1, 5, 52, '2023-12-07 11:35:54', '2023-12-07 11:35:54'),
(51, 1, 1, 44, '2023-12-07 12:16:10', '2023-12-07 12:16:10'),
(52, 1, 4, 52, '2023-12-07 17:47:10', '2023-12-07 17:47:10'),
(53, 161, 61, 69, '2024-03-23 12:16:39', '2024-03-23 12:16:39'),
(54, 161, 61, 70, '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(55, 161, 63, 70, '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(56, 161, 64, 70, '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(57, 161, 65, 70, '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(58, 161, 66, 70, '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(59, 161, 68, 70, '2024-03-23 12:51:41', '2024-03-23 12:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(57, 'Testing Multiple Select', NULL, '2024-04-27 11:33:51', '2024-04-27 11:33:51'),
(58, 'Session 2', NULL, '2024-04-27 16:56:56', '2024-04-27 16:56:56'),
(59, 'Session 3', NULL, '2024-04-27 16:57:11', '2024-04-27 16:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Testing Multiple Subject', NULL, '2024-04-27 17:39:25', '2024-04-27 17:39:25'),
(3, 'Subject 2', NULL, '2024-04-27 17:53:29', '2024-04-27 17:53:29'),
(4, 'Subject 3', NULL, '2024-04-27 17:53:40', '2024-04-27 17:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `subject_questions`
--

CREATE TABLE `subject_questions` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED DEFAULT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_questions`
--

INSERT INTO `subject_questions` (`id`, `classroom_id`, `subject_id`, `chapter_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2024-01-06 13:18:52', '2023-11-18 18:12:18', '2024-01-06 13:18:52'),
(2, 1, 1, 1, '2023-12-06 13:58:05', '2023-12-06 13:58:05', '2023-12-06 13:58:05'),
(3, NULL, 8, NULL, '2023-12-13 17:50:32', '2023-12-13 17:49:21', '2023-12-13 17:50:32'),
(4, NULL, 11, NULL, '2024-01-06 13:18:57', '2023-12-13 17:56:47', '2024-01-06 13:18:57'),
(5, 4, 95, 8, '2024-02-29 22:16:38', '2024-01-06 13:18:46', '2024-02-29 22:16:38'),
(6, 29, 161, 61, NULL, '2024-03-06 11:30:43', '2024-03-06 11:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `submit_results`
--

CREATE TABLE `submit_results` (
  `id` bigint UNSIGNED NOT NULL,
  `result_id` bigint UNSIGNED DEFAULT NULL,
  `question_id` bigint UNSIGNED DEFAULT NULL,
  `user_ans_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submit_results`
--

INSERT INTO `submit_results` (`id`, `result_id`, `question_id`, `user_ans_key`, `correct_key`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 'A', '2023-11-22 17:07:58', '2023-11-22 17:07:58'),
(2, 1, 2, 'C', 'C', '2023-11-22 17:07:58', '2023-11-22 17:07:58'),
(3, 2, 1, 'B', 'A', '2023-11-22 17:13:47', '2023-11-22 17:13:47'),
(4, 2, 2, 'C', 'C', '2023-11-22 17:13:47', '2023-11-22 17:13:47'),
(5, 7, 1, 'C', 'A', '2023-11-27 12:59:25', '2023-11-27 12:59:25'),
(6, 7, 2, 'B', 'C', '2023-11-27 12:59:25', '2023-11-27 12:59:25'),
(7, 14, 1, 'C', 'A', '2023-12-02 17:42:01', '2023-12-02 17:42:01'),
(8, 14, 2, 'B', 'C', '2023-12-02 17:42:01', '2023-12-02 17:42:01'),
(9, 17, 1, 'C', 'A', '2023-12-02 17:52:38', '2023-12-02 17:52:38'),
(10, 17, 2, 'B', 'C', '2023-12-02 17:52:38', '2023-12-02 17:52:38'),
(11, 18, 1, 'B', 'A', '2023-12-02 17:57:41', '2023-12-02 17:57:41'),
(12, 18, 2, 'C', 'C', '2023-12-02 17:57:41', '2023-12-02 17:57:41'),
(13, 19, 1, 'A', 'A', '2023-12-03 11:14:50', '2023-12-03 11:14:50'),
(14, 19, 2, 'C', 'C', '2023-12-03 11:14:50', '2023-12-03 11:14:50'),
(15, 20, 1, 'A', 'A', '2023-12-04 00:27:29', '2023-12-04 00:27:29'),
(16, 20, 2, 'B', 'C', '2023-12-04 00:27:29', '2023-12-04 00:27:29'),
(17, 21, 1, 'A', 'A', '2023-12-06 10:24:05', '2023-12-06 10:24:05'),
(18, 21, 2, 'C', 'C', '2023-12-06 10:24:05', '2023-12-06 10:24:05'),
(19, 22, 1, 'A', 'A', '2023-12-06 10:26:45', '2023-12-06 10:26:45'),
(20, 22, 2, 'C', 'C', '2023-12-06 10:26:45', '2023-12-06 10:26:45'),
(21, 23, 1, 'A', 'A', '2023-12-06 10:34:49', '2023-12-06 10:34:49'),
(22, 23, 2, 'C', 'C', '2023-12-06 10:34:49', '2023-12-06 10:34:49'),
(23, 24, 1, 'A', 'A', '2023-12-06 10:54:31', '2023-12-06 10:54:31'),
(24, 24, 2, 'C', 'C', '2023-12-06 10:54:31', '2023-12-06 10:54:31'),
(25, 25, 1, 'A', 'A', '2023-12-06 11:00:11', '2023-12-06 11:00:11'),
(26, 25, 2, 'C', 'C', '2023-12-06 11:00:11', '2023-12-06 11:00:11'),
(27, 26, 1, 'A', 'A', '2023-12-06 11:02:30', '2023-12-06 11:02:30'),
(28, 26, 2, 'B', 'C', '2023-12-06 11:02:30', '2023-12-06 11:02:30'),
(29, 27, 1, 'A', 'A', '2023-12-06 12:26:52', '2023-12-06 12:26:52'),
(30, 27, 2, 'C', 'C', '2023-12-06 12:26:52', '2023-12-06 12:26:52'),
(31, 28, 1, 'A', 'A', '2023-12-06 13:16:42', '2023-12-06 13:16:42'),
(32, 28, 2, 'B', 'C', '2023-12-06 13:16:42', '2023-12-06 13:16:42'),
(33, 29, 1, 'A', 'A', '2023-12-06 13:23:02', '2023-12-06 13:23:02'),
(34, 29, 2, 'C', 'C', '2023-12-06 13:23:02', '2023-12-06 13:23:02'),
(35, 30, 1, 'A', 'A', '2023-12-06 13:28:13', '2023-12-06 13:28:13'),
(36, 30, 2, 'B', 'C', '2023-12-06 13:28:13', '2023-12-06 13:28:13'),
(37, 31, 1, 'A', 'A', '2023-12-06 13:32:26', '2023-12-06 13:32:26'),
(38, 31, 2, 'C', 'C', '2023-12-06 13:32:26', '2023-12-06 13:32:26'),
(39, 32, 1, 'A', 'A', '2023-12-06 13:36:57', '2023-12-06 13:36:57'),
(40, 32, 2, 'C', 'C', '2023-12-06 13:36:57', '2023-12-06 13:36:57'),
(41, 33, 1, 'A', 'A', '2023-12-06 13:43:12', '2023-12-06 13:43:12'),
(42, 33, 2, 'C', 'C', '2023-12-06 13:43:12', '2023-12-06 13:43:12'),
(43, 34, 1, 'A', 'A', '2023-12-06 13:44:30', '2023-12-06 13:44:30'),
(44, 34, 2, 'C', 'C', '2023-12-06 13:44:30', '2023-12-06 13:44:30'),
(45, 35, 1, 'A', 'A', '2023-12-06 13:51:12', '2023-12-06 13:51:12'),
(46, 35, 2, 'C', 'C', '2023-12-06 13:51:12', '2023-12-06 13:51:12'),
(47, 36, 1, 'A', 'A', '2023-12-06 14:02:30', '2023-12-06 14:02:30'),
(48, 36, 2, 'B', 'C', '2023-12-06 14:02:30', '2023-12-06 14:02:30'),
(49, 37, 1, 'A', 'A', '2023-12-06 14:07:01', '2023-12-06 14:07:01'),
(50, 37, 2, 'C', 'C', '2023-12-06 14:07:01', '2023-12-06 14:07:01'),
(51, 38, 1, 'A', 'A', '2023-12-06 14:10:13', '2023-12-06 14:10:13'),
(52, 38, 2, 'C', 'C', '2023-12-06 14:10:13', '2023-12-06 14:10:13'),
(53, 39, 1, 'A', 'A', '2023-12-06 14:11:18', '2023-12-06 14:11:18'),
(54, 39, 2, 'C', 'C', '2023-12-06 14:11:18', '2023-12-06 14:11:18'),
(55, 40, 1, 'A', 'A', '2023-12-06 14:19:41', '2023-12-06 14:19:41'),
(56, 40, 2, 'C', 'C', '2023-12-06 14:19:41', '2023-12-06 14:19:41'),
(57, 41, 1, 'A', 'A', '2023-12-06 14:22:18', '2023-12-06 14:22:18'),
(58, 41, 2, 'C', 'C', '2023-12-06 14:22:18', '2023-12-06 14:22:18'),
(59, 42, 1, 'A', 'A', '2023-12-06 14:25:16', '2023-12-06 14:25:16'),
(60, 42, 2, 'C', 'C', '2023-12-06 14:25:16', '2023-12-06 14:25:16'),
(61, 43, 1, 'A', 'A', '2023-12-06 14:26:26', '2023-12-06 14:26:26'),
(62, 43, 2, 'C', 'C', '2023-12-06 14:26:26', '2023-12-06 14:26:26'),
(63, 44, 1, 'A', 'A', '2023-12-06 14:30:27', '2023-12-06 14:30:27'),
(64, 44, 2, 'C', 'C', '2023-12-06 14:30:27', '2023-12-06 14:30:27'),
(65, 45, 1, 'A', 'A', '2023-12-06 14:38:20', '2023-12-06 14:38:20'),
(66, 45, 2, 'B', 'C', '2023-12-06 14:38:20', '2023-12-06 14:38:20'),
(67, 46, 1, 'A', 'A', '2023-12-06 14:53:54', '2023-12-06 14:53:54'),
(68, 46, 2, 'C', 'C', '2023-12-06 14:53:54', '2023-12-06 14:53:54'),
(69, 47, 1, 'A', 'A', '2023-12-06 16:52:15', '2023-12-06 16:52:15'),
(70, 47, 2, 'C', 'C', '2023-12-06 16:52:15', '2023-12-06 16:52:15'),
(71, 48, 1, 'A', 'A', '2023-12-06 16:53:27', '2023-12-06 16:53:27'),
(72, 48, 2, 'C', 'C', '2023-12-06 16:53:27', '2023-12-06 16:53:27'),
(73, 49, 1, 'A', 'A', '2023-12-06 17:12:28', '2023-12-06 17:12:28'),
(74, 49, 2, 'C', 'C', '2023-12-06 17:12:28', '2023-12-06 17:12:28'),
(75, 50, 1, 'A', 'A', '2023-12-07 11:35:54', '2023-12-07 11:35:54'),
(76, 50, 2, 'C', 'C', '2023-12-07 11:35:54', '2023-12-07 11:35:54'),
(77, 51, 1, 'A', 'A', '2023-12-07 12:16:10', '2023-12-07 12:16:10'),
(78, 51, 2, 'B', 'C', '2023-12-07 12:16:10', '2023-12-07 12:16:10'),
(79, 52, 1, 'A', 'A', '2023-12-07 17:47:10', '2023-12-07 17:47:10'),
(80, 52, 2, 'C', 'C', '2023-12-07 17:47:10', '2023-12-07 17:47:10'),
(81, 53, 1, 'C', 'A', '2024-03-23 12:16:39', '2024-03-23 12:16:39'),
(82, 53, 2, 'B', 'C', '2024-03-23 12:16:39', '2024-03-23 12:16:39'),
(83, 54, 164, 'Option3', 'CorrectOption', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(84, 54, 165, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(85, 54, 166, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(86, 54, 167, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(87, 54, 168, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(88, 54, 169, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(89, 54, 170, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(90, 54, 171, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(91, 54, 172, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(92, 54, 173, 'C', 'B ', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(93, 54, 174, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(94, 54, 175, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(95, 54, 176, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(96, 54, 177, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(97, 54, 178, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(98, 54, 179, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(99, 54, 180, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(100, 54, 181, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(101, 54, 182, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(102, 54, 183, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(103, 54, 184, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(104, 54, 185, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(105, 54, 186, 'C', 'E', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(106, 54, 187, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(107, 54, 188, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(108, 54, 189, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(109, 54, 190, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(110, 54, 191, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(111, 54, 192, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(112, 54, 193, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(113, 54, 194, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(114, 54, 195, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(115, 54, 196, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(116, 54, 197, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(117, 54, 198, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(118, 54, 199, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(119, 54, 200, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(120, 54, 201, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(121, 54, 202, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(122, 54, 203, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(123, 54, 204, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(124, 54, 205, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(125, 54, 206, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(126, 54, 207, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(127, 54, 208, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(128, 54, 209, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(129, 54, 210, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(130, 54, 211, 'C', 'E', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(131, 54, 212, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(132, 54, 213, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(133, 54, 214, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(134, 54, 215, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(135, 54, 216, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(136, 54, 217, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(137, 54, 218, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(138, 54, 219, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(139, 54, 220, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(140, 54, 221, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(141, 54, 222, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(142, 54, 223, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(143, 54, 224, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(144, 54, 225, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(145, 54, 226, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(146, 54, 227, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(147, 54, 228, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(148, 54, 229, 'C', 'E', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(149, 54, 230, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(150, 54, 231, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(151, 54, 232, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(152, 54, 233, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(153, 54, 234, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(154, 54, 235, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(155, 54, 236, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(156, 54, 237, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(157, 54, 238, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(158, 54, 239, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(159, 54, 240, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(160, 54, 241, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(161, 54, 242, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(162, 54, 243, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(163, 54, 244, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(164, 54, 245, 'C', 'D', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(165, 54, 246, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(166, 54, 247, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(167, 54, 248, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(168, 54, 249, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(169, 54, 250, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(170, 54, 251, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(171, 54, 252, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(172, 54, 253, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(173, 54, 254, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(174, 54, 255, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(175, 54, 256, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(176, 54, 257, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(177, 54, 258, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(178, 54, 259, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(179, 54, 260, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(180, 54, 261, 'C', 'C', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(181, 54, 262, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(182, 54, 263, 'C', 'A', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(183, 54, 264, 'C', 'B', '2024-03-23 12:24:23', '2024-03-23 12:24:23'),
(184, 55, 164, 'Option2', 'CorrectOption', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(185, 55, 165, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(186, 55, 166, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(187, 55, 167, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(188, 55, 168, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(189, 55, 169, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(190, 55, 170, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(191, 55, 171, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(192, 55, 172, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(193, 55, 173, 'C', 'B ', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(194, 55, 174, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(195, 55, 175, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(196, 55, 176, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(197, 55, 177, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(198, 55, 178, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(199, 55, 179, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(200, 55, 180, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(201, 55, 181, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(202, 55, 182, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(203, 55, 183, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(204, 55, 184, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(205, 55, 185, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(206, 55, 186, 'C', 'E', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(207, 55, 187, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(208, 55, 188, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(209, 55, 189, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(210, 55, 190, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(211, 55, 191, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(212, 55, 192, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(213, 55, 193, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(214, 55, 194, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(215, 55, 195, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(216, 55, 196, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(217, 55, 197, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(218, 55, 198, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(219, 55, 199, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(220, 55, 200, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(221, 55, 201, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(222, 55, 202, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(223, 55, 203, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(224, 55, 204, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(225, 55, 205, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(226, 55, 206, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(227, 55, 207, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(228, 55, 208, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(229, 55, 209, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(230, 55, 210, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(231, 55, 211, 'C', 'E', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(232, 55, 212, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(233, 55, 213, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(234, 55, 214, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(235, 55, 215, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(236, 55, 216, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(237, 55, 217, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(238, 55, 218, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(239, 55, 219, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(240, 55, 220, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(241, 55, 221, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(242, 55, 222, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(243, 55, 223, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(244, 55, 224, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(245, 55, 225, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(246, 55, 226, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(247, 55, 227, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(248, 55, 228, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(249, 55, 229, 'C', 'E', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(250, 55, 230, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(251, 55, 231, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(252, 55, 232, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(253, 55, 233, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(254, 55, 234, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(255, 55, 235, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(256, 55, 236, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(257, 55, 237, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(258, 55, 238, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(259, 55, 239, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(260, 55, 240, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(261, 55, 241, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(262, 55, 242, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(263, 55, 243, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(264, 55, 244, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(265, 55, 245, 'C', 'D', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(266, 55, 246, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(267, 55, 247, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(268, 55, 248, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(269, 55, 249, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(270, 55, 250, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(271, 55, 251, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(272, 55, 252, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(273, 55, 253, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(274, 55, 254, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(275, 55, 255, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(276, 55, 256, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(277, 55, 257, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(278, 55, 258, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(279, 55, 259, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(280, 55, 260, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(281, 55, 261, 'C', 'C', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(282, 55, 262, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(283, 55, 263, 'C', 'A', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(284, 55, 264, 'C', 'B', '2024-03-23 12:32:44', '2024-03-23 12:32:44'),
(285, 56, 164, 'Option2', 'CorrectOption', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(286, 56, 165, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(287, 56, 166, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(288, 56, 167, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(289, 56, 168, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(290, 56, 169, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(291, 56, 170, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(292, 56, 171, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(293, 56, 172, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(294, 56, 173, 'C', 'B ', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(295, 56, 174, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(296, 56, 175, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(297, 56, 176, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(298, 56, 177, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(299, 56, 178, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(300, 56, 179, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(301, 56, 180, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(302, 56, 181, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(303, 56, 182, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(304, 56, 183, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(305, 56, 184, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(306, 56, 185, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(307, 56, 186, 'C', 'E', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(308, 56, 187, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(309, 56, 188, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(310, 56, 189, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(311, 56, 190, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(312, 56, 191, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(313, 56, 192, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(314, 56, 193, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(315, 56, 194, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(316, 56, 195, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(317, 56, 196, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(318, 56, 197, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(319, 56, 198, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(320, 56, 199, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(321, 56, 200, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(322, 56, 201, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(323, 56, 202, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(324, 56, 203, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(325, 56, 204, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(326, 56, 205, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(327, 56, 206, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(328, 56, 207, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(329, 56, 208, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(330, 56, 209, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(331, 56, 210, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(332, 56, 211, 'C', 'E', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(333, 56, 212, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(334, 56, 213, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(335, 56, 214, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(336, 56, 215, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(337, 56, 216, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(338, 56, 217, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(339, 56, 218, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(340, 56, 219, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(341, 56, 220, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(342, 56, 221, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(343, 56, 222, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(344, 56, 223, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(345, 56, 224, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(346, 56, 225, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(347, 56, 226, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(348, 56, 227, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(349, 56, 228, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(350, 56, 229, 'C', 'E', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(351, 56, 230, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(352, 56, 231, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(353, 56, 232, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(354, 56, 233, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(355, 56, 234, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(356, 56, 235, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(357, 56, 236, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(358, 56, 237, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(359, 56, 238, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(360, 56, 239, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(361, 56, 240, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(362, 56, 241, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(363, 56, 242, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(364, 56, 243, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(365, 56, 244, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(366, 56, 245, 'C', 'D', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(367, 56, 246, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(368, 56, 247, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(369, 56, 248, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(370, 56, 249, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(371, 56, 250, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(372, 56, 251, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(373, 56, 252, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(374, 56, 253, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(375, 56, 254, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(376, 56, 255, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(377, 56, 256, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(378, 56, 257, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(379, 56, 258, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(380, 56, 259, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(381, 56, 260, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(382, 56, 261, 'C', 'C', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(383, 56, 262, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(384, 56, 263, 'C', 'A', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(385, 56, 264, 'C', 'B', '2024-03-23 12:37:23', '2024-03-23 12:37:23'),
(386, 57, 164, 'Option2', 'CorrectOption', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(387, 57, 165, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(388, 57, 166, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(389, 57, 167, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(390, 57, 168, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(391, 57, 169, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(392, 57, 170, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(393, 57, 171, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(394, 57, 172, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(395, 57, 173, 'D', 'B ', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(396, 57, 174, 'D', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(397, 57, 175, 'D', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(398, 57, 176, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(399, 57, 177, 'B', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(400, 57, 178, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(401, 57, 179, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(402, 57, 180, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(403, 57, 181, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(404, 57, 182, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(405, 57, 183, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(406, 57, 184, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(407, 57, 185, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(408, 57, 186, 'C', 'E', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(409, 57, 187, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(410, 57, 188, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(411, 57, 189, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(412, 57, 190, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(413, 57, 191, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(414, 57, 192, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(415, 57, 193, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(416, 57, 194, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(417, 57, 195, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(418, 57, 196, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(419, 57, 197, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(420, 57, 198, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(421, 57, 199, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(422, 57, 200, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(423, 57, 201, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(424, 57, 202, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(425, 57, 203, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(426, 57, 204, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(427, 57, 205, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(428, 57, 206, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(429, 57, 207, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(430, 57, 208, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(431, 57, 209, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(432, 57, 210, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(433, 57, 211, 'C', 'E', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(434, 57, 212, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(435, 57, 213, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(436, 57, 214, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(437, 57, 215, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(438, 57, 216, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(439, 57, 217, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(440, 57, 218, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(441, 57, 219, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(442, 57, 220, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(443, 57, 221, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(444, 57, 222, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(445, 57, 223, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(446, 57, 224, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(447, 57, 225, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(448, 57, 226, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(449, 57, 227, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(450, 57, 228, 'C', 'A', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(451, 57, 229, 'C', 'E', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(452, 57, 230, 'C', 'C', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(453, 57, 231, 'C', 'B', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(454, 57, 232, 'C', 'D', '2024-03-23 12:43:32', '2024-03-23 12:43:32'),
(455, 57, 233, 'C', 'D', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(456, 57, 234, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(457, 57, 235, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(458, 57, 236, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(459, 57, 237, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(460, 57, 238, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(461, 57, 239, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(462, 57, 240, 'C', 'D', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(463, 57, 241, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(464, 57, 242, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(465, 57, 243, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(466, 57, 244, 'C', 'D', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(467, 57, 245, 'C', 'D', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(468, 57, 246, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(469, 57, 247, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(470, 57, 248, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(471, 57, 249, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(472, 57, 250, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(473, 57, 251, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(474, 57, 252, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(475, 57, 253, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(476, 57, 254, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(477, 57, 255, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(478, 57, 256, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(479, 57, 257, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(480, 57, 258, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(481, 57, 259, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(482, 57, 260, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(483, 57, 261, 'C', 'C', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(484, 57, 262, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(485, 57, 263, 'C', 'A', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(486, 57, 264, 'C', 'B', '2024-03-23 12:43:33', '2024-03-23 12:43:33'),
(487, 58, 164, 'Option3', 'CorrectOption', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(488, 58, 165, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(489, 58, 166, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(490, 58, 167, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(491, 58, 168, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(492, 58, 169, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(493, 58, 170, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(494, 58, 171, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(495, 58, 172, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(496, 58, 173, 'C', 'B ', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(497, 58, 174, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(498, 58, 175, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(499, 58, 176, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(500, 58, 177, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(501, 58, 178, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(502, 58, 179, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(503, 58, 180, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(504, 58, 181, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(505, 58, 182, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(506, 58, 183, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(507, 58, 184, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(508, 58, 185, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(509, 58, 186, 'C', 'E', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(510, 58, 187, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(511, 58, 188, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(512, 58, 189, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(513, 58, 190, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(514, 58, 191, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(515, 58, 192, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(516, 58, 193, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(517, 58, 194, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(518, 58, 195, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(519, 58, 196, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(520, 58, 197, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(521, 58, 198, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(522, 58, 199, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(523, 58, 200, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(524, 58, 201, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(525, 58, 202, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(526, 58, 203, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(527, 58, 204, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(528, 58, 205, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(529, 58, 206, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(530, 58, 207, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(531, 58, 208, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(532, 58, 209, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(533, 58, 210, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(534, 58, 211, 'C', 'E', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(535, 58, 212, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(536, 58, 213, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(537, 58, 214, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(538, 58, 215, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(539, 58, 216, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(540, 58, 217, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(541, 58, 218, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(542, 58, 219, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(543, 58, 220, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(544, 58, 221, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(545, 58, 222, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(546, 58, 223, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(547, 58, 224, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(548, 58, 225, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(549, 58, 226, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(550, 58, 227, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(551, 58, 228, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(552, 58, 229, 'C', 'E', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(553, 58, 230, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(554, 58, 231, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(555, 58, 232, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(556, 58, 233, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(557, 58, 234, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(558, 58, 235, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(559, 58, 236, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(560, 58, 237, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(561, 58, 238, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(562, 58, 239, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(563, 58, 240, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(564, 58, 241, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(565, 58, 242, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(566, 58, 243, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(567, 58, 244, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(568, 58, 245, 'C', 'D', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(569, 58, 246, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(570, 58, 247, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(571, 58, 248, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(572, 58, 249, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(573, 58, 250, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(574, 58, 251, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(575, 58, 252, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(576, 58, 253, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(577, 58, 254, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(578, 58, 255, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(579, 58, 256, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(580, 58, 257, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(581, 58, 258, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(582, 58, 259, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(583, 58, 260, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(584, 58, 261, 'C', 'C', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(585, 58, 262, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(586, 58, 263, 'C', 'A', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(587, 58, 264, 'C', 'B', '2024-03-23 12:48:41', '2024-03-23 12:48:41'),
(588, 59, 164, 'Option3', 'CorrectOption', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(589, 59, 165, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(590, 59, 166, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(591, 59, 167, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(592, 59, 168, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(593, 59, 169, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(594, 59, 170, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(595, 59, 171, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(596, 59, 172, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(597, 59, 173, 'C', 'B ', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(598, 59, 174, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(599, 59, 175, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(600, 59, 176, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(601, 59, 177, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(602, 59, 178, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(603, 59, 179, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(604, 59, 180, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(605, 59, 181, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(606, 59, 182, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(607, 59, 183, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(608, 59, 184, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(609, 59, 185, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(610, 59, 186, 'C', 'E', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(611, 59, 187, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(612, 59, 188, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(613, 59, 189, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(614, 59, 190, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(615, 59, 191, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(616, 59, 192, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(617, 59, 193, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(618, 59, 194, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(619, 59, 195, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(620, 59, 196, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(621, 59, 197, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(622, 59, 198, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(623, 59, 199, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(624, 59, 200, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(625, 59, 201, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(626, 59, 202, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(627, 59, 203, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(628, 59, 204, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(629, 59, 205, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(630, 59, 206, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(631, 59, 207, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(632, 59, 208, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(633, 59, 209, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(634, 59, 210, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(635, 59, 211, 'C', 'E', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(636, 59, 212, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(637, 59, 213, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(638, 59, 214, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(639, 59, 215, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(640, 59, 216, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(641, 59, 217, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(642, 59, 218, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(643, 59, 219, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(644, 59, 220, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(645, 59, 221, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(646, 59, 222, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(647, 59, 223, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(648, 59, 224, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(649, 59, 225, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(650, 59, 226, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(651, 59, 227, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(652, 59, 228, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(653, 59, 229, 'C', 'E', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(654, 59, 230, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(655, 59, 231, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(656, 59, 232, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(657, 59, 233, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(658, 59, 234, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(659, 59, 235, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(660, 59, 236, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(661, 59, 237, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(662, 59, 238, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(663, 59, 239, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(664, 59, 240, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(665, 59, 241, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(666, 59, 242, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(667, 59, 243, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(668, 59, 244, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(669, 59, 245, 'C', 'D', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(670, 59, 246, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(671, 59, 247, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(672, 59, 248, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(673, 59, 249, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(674, 59, 250, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(675, 59, 251, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(676, 59, 252, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(677, 59, 253, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(678, 59, 254, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(679, 59, 255, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(680, 59, 256, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(681, 59, 257, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(682, 59, 258, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(683, 59, 259, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(684, 59, 260, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(685, 59, 261, 'C', 'C', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(686, 59, 262, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(687, 59, 263, 'C', 'A', '2024-03-23 12:51:41', '2024-03-23 12:51:41'),
(688, 59, 264, 'C', 'B', '2024-03-23 12:51:41', '2024-03-23 12:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `campus_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `classroom_id` bigint DEFAULT NULL,
  `matric_marks` double(8,2) DEFAULT NULL,
  `fsc_marks` double(8,2) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `type` enum('admin','student') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `father_name`, `phone_no`, `email`, `password`, `province_id`, `district_id`, `campus_id`, `session_id`, `classroom_id`, `matric_marks`, `fsc_marks`, `email_verified_at`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '1112123', 'admin@admin.com', '$2y$10$Hd.T8yQbQayhcS6i94.sV.87OiwQl.X2lSqa5P4LM9DJpQndVP9wC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, '2023-10-20 06:53:29', '2023-10-20 06:53:29'),
(55, 'kamran', 'iqbal', '123123123', 'pahujaenterprizes@gmail.com', '$2y$10$28CSaQ2Ag282TbAPgOdJNOdLwfeNEWZIRaaK6knk2.F5i6UQFP3/C', 4, 101, 1, 1, 1, 850456.00, 456.00, NULL, 'student', NULL, '2024-01-06 13:48:56', '2024-01-06 13:48:56'),
(58, 'ddd', 'dd', '4444', 'hgff@gmail.com', '$2y$10$3CU7rW3UbLsFCmMN0MsBqemwDRd2NN5sd.Ag.50pXuK3XYQhyIdZ6', 1, 91, 3, 2, 2, 1.00, 11.00, NULL, 'student', NULL, '2024-01-25 10:39:33', '2024-01-25 10:39:33'),
(61, 'apk', 'apk', '03066553637', 'test@gmail.com', '$2y$10$fhGRJvqcNA6jKB8uyPHQKuC1SV7EM9r5QpR5uc563J28tf3uHp3lu', 1, 79, 42, 46, 30, 1212.00, 12.00, NULL, 'student', NULL, '2024-03-12 09:42:39', '2024-03-12 09:42:39'),
(62, 'test app', 'test app', '03066555555', 'app@gmail.com', '$2y$10$/75dqiVy2yzIgXuSCb2dBevFFYOYV6lsgqwswMA4DZa79vhC0csJm', 1, 79, 46, 50, 38, 3.00, 3.00, NULL, 'student', NULL, '2024-03-12 09:59:10', '2024-03-12 09:59:10'),
(63, 'asad', 'asad', '03066553637', 'asad@gmail.com', '$2y$10$m3BuJAZP3m8mxme7xx4I1./iLCBeQVlEuAfTNJ7.zFNRepXh8uTH2', 1, 93, 50, 53, 44, 11.00, 12.00, NULL, 'student', NULL, '2024-03-12 10:59:16', '2024-03-12 10:59:16'),
(64, 'asadf', 'asadf', '03066553637', 'asadf@gmail.com', '$2y$10$Vk39PAe.iA0KNm5jD4gUoOQss/BHIAW8XfIE0usWyaks03qM2JHE2', 1, 86, 49, 52, 42, 11.00, 11.00, NULL, 'student', NULL, '2024-03-12 11:19:16', '2024-03-12 11:19:16'),
(65, 'ff', 'zx', '0306', 'asadcf@gmail.com', '$2y$10$C4ovIzdnjp8Fe37H07leUOTMwBAUJAbjG.1qGp7.whDlRlJBi7vEm', 1, 79, 49, 52, 42, 55.00, 55.00, NULL, 'student', NULL, '2024-03-12 11:28:37', '2024-03-12 11:28:37'),
(66, 'Zeeshan', 'afzal', '03066553637', 'zees@gmail.com', '$2y$10$Gc7ThYJvgt2OxQ1c/pIk8uSbCrAoJUb/La7Jk/8Oafj5UAYKw2BRC', 1, 85, 49, 52, 41, 123123.00, 123.00, NULL, 'student', NULL, '2024-03-12 11:35:48', '2024-03-12 11:35:48'),
(67, 'asad', 'aswe', '123456789', 'asadff@gmail.com', '$2y$10$x7EvKjscUqP1ZemZDD23uO4FeuhyieQv.lEaPdKTr3poi.YqSN/v6', 1, 85, 47, 51, 39, 12.00, 12.00, NULL, 'student', NULL, '2024-03-19 08:40:09', '2024-03-19 08:40:09'),
(68, 'gshha', 'vavhshs', '03066553637', 'asifjamal@gmail.com', '$2y$10$YAUI4Nd1qd.3fNN3aiQctelvjidKVmRF/ir7m0J.PpSsRWMBfOdq6', 1, 79, 45, 49, 35, 545.00, 5454.00, NULL, 'student', NULL, '2024-03-22 10:44:57', '2024-03-22 10:44:57'),
(69, 'jhin', 'father1', '033133333', 'jhon1@gmail.com', '$2y$10$D./PF0TupxHhLYSLDZ8.venfqvl5OHaZrg6SP52qYK8uQS3O2Cp16', 1, 79, 42, 46, 29, 640.50, 800.00, NULL, 'student', NULL, '2024-03-23 12:09:18', '2024-03-23 12:09:18'),
(70, 'ffgtt', 'deff', '444444444', 'xxx@gmail.com', '$2y$10$6TI25nC5SEGcsJQjNJAHgeAZnoMCMMpop9RwBsEvV47D7KTMrxOsC', 1, 79, 42, 46, 29, 88.00, 55.00, NULL, 'student', NULL, '2024-03-23 12:19:42', '2024-03-23 12:19:42'),
(71, 'asif', 'ahsan', '03066553637', 'asifhas@gmail.com', '$2y$10$s/M3ajFAdTc6Q4AdSenHbeV.zA4fVFF5sM65xhwL76jWDbHwtT8sW', 2, 43, 49, 52, 41, 2222.00, 22.00, NULL, 'student', NULL, '2024-03-27 09:37:07', '2024-03-27 09:37:07'),
(72, 'imran', 'khalil', '03055523231', 'haji@gmail.com', '$2y$10$UzXVjcNZAcctZ8JyBtVMNOkkqejHVkYu4Lhw/OnrN/Nf6pvb2ciZK', 1, 25, 42, 46, 29, 123.00, 12.00, NULL, 'student', NULL, '2024-03-27 09:42:27', '2024-03-27 09:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus_session`
--
ALTER TABLE `campus_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campus_session_campus_id_foreign` (`campus_id`),
  ADD KEY `campus_session_session_id_foreign` (`session_id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_subject`
--
ALTER TABLE `chapter_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapter_subject_chapter_id_foreign` (`chapter_id`),
  ADD KEY `chapter_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom_session`
--
ALTER TABLE `classroom_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_session_classroom_id_foreign` (`classroom_id`),
  ADD KEY `classroom_session_session_id_foreign` (`session_id`);

--
-- Indexes for table `classroom_subject`
--
ALTER TABLE `classroom_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_subject_classroom_id_foreign` (`classroom_id`),
  ADD KEY `classroom_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
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
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_keys`
--
ALTER TABLE `question_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_questions`
--
ALTER TABLE `subject_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_results`
--
ALTER TABLE `submit_results`
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
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `campus_session`
--
ALTER TABLE `campus_session`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chapter_subject`
--
ALTER TABLE `chapter_subject`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `classroom_session`
--
ALTER TABLE `classroom_session`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `classroom_subject`
--
ALTER TABLE `classroom_subject`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `question_keys`
--
ALTER TABLE `question_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1259;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_questions`
--
ALTER TABLE `subject_questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `submit_results`
--
ALTER TABLE `submit_results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campus_session`
--
ALTER TABLE `campus_session`
  ADD CONSTRAINT `campus_session_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `campus_session_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chapter_subject`
--
ALTER TABLE `chapter_subject`
  ADD CONSTRAINT `chapter_subject_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chapter_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classroom_session`
--
ALTER TABLE `classroom_session`
  ADD CONSTRAINT `classroom_session_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_session_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classroom_subject`
--
ALTER TABLE `classroom_subject`
  ADD CONSTRAINT `classroom_subject_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
