-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2022 at 11:25 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meparts`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

CREATE TABLE `constituencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constituencies`
--

INSERT INTO `constituencies` (`id`, `name`) VALUES
(2, '  Chitipa Wenya '),
(10, '  Mzimba Hora '),
(1, ' Chitipa Central'),
(3, ' Chitipa East '),
(5, ' Chitipa North '),
(4, ' Chitipa South '),
(6, ' Kalonga Central '),
(8, ' Kalonga South'),
(9, ' Likoma Islands'),
(21, ' Mzimba Central'),
(18, ' Mzimba City'),
(13, ' Mzimba East'),
(20, ' Mzimba Luwelezi'),
(11, ' Mzimba North'),
(17, ' Mzimba North East'),
(19, ' Mzimba Solola'),
(12, ' Mzimba South'),
(15, ' Mzimba South East'),
(16, ' Mzimba South West'),
(14, ' Mzimba West'),
(22, ' Nkhatabay Central'),
(27, ' Nkhatabay North'),
(25, ' Nkhatabay North West'),
(23, ' Nkhatabay South'),
(24, ' Nkhatabay South East'),
(26, ' Nkhatabay West'),
(99, 'Balaka East '),
(100, 'Balaka North '),
(101, 'Balaka South '),
(102, 'Balaka West '),
(103, 'Blantyre Bangwe'),
(104, 'Blantyre City East'),
(106, 'Blantyre City South'),
(105, 'Blantyre City South East'),
(107, 'Blantyre City West'),
(108, 'Blantyre Kabula'),
(109, 'Blantyre Malabada'),
(111, 'Blantyre North'),
(110, 'Blantyre North East'),
(113, 'Blantyre Rural East'),
(112, 'Blantyre South West'),
(114, 'Blantyre West'),
(115, 'Chikwawa Central'),
(116, 'Chikwawa East'),
(117, 'Chikwawa Mkombezi'),
(118, 'Chikwawa North'),
(119, 'Chikwawa South'),
(120, 'Chiradzulu Central'),
(121, 'Chiradzulu East'),
(123, 'Chiradzulu North'),
(124, 'Chiradzulu South'),
(122, 'Chiradzulu West'),
(37, 'Dedza Central  '),
(36, 'Dedza Central East  '),
(34, 'Dedza East  '),
(32, 'Dedza North  '),
(38, 'Dedza North  West  '),
(33, 'Dedza South  '),
(39, 'Dedza South West  '),
(35, 'Dedza West  '),
(40, 'Dowa Central  '),
(41, 'Dowa East  '),
(42, 'Dowa Ngala  '),
(45, 'Dowa North  '),
(43, 'Dowa North East  '),
(44, 'Dowa South East  '),
(46, 'Dowa West  '),
(7, 'Kalonga Nyungwe'),
(47, 'Kasungu Central  '),
(48, 'Kasungu North  '),
(51, 'Kasungu North East  '),
(52, 'Kasungu North North East  '),
(53, 'Kasungu North West  '),
(49, 'Kasungu South  '),
(54, 'Kasungu South East  '),
(50, 'Kasungu West  '),
(55, 'Lilongwe Central  '),
(69, 'Lilongwe City North  '),
(71, 'Lilongwe City West  '),
(56, 'Lilongwe East  '),
(59, 'Lilongwe Kumachenga  '),
(68, 'Lilongwe Mapuyu North  '),
(61, 'Lilongwe Mpenu  '),
(60, 'Lilongwe Mpenu Nkhoma  '),
(64, 'Lilongwe Msozi North  '),
(65, 'Lilongwe Msozi South  '),
(57, 'Lilongwe North  '),
(66, 'Lilongwe North East  '),
(67, 'Lilongwe North West  '),
(62, 'Lilongwe Nsinja North  '),
(63, 'Lilongwe Nsinja South  '),
(58, 'Lilongwe South  '),
(70, 'Lilongwe South East  '),
(127, 'Machinga  East'),
(131, 'Machinga  South'),
(125, 'Machinga Central'),
(126, 'Machinga Central East'),
(128, 'Machinga Likwenu'),
(129, 'Machinga North East'),
(130, 'Machinga South East'),
(132, 'Mangochi Central'),
(133, 'Mangochi East'),
(134, 'Mangochi Lutende'),
(136, 'Mangochi Malombe'),
(137, 'Mangochi Masongola'),
(138, 'Mangochi Mkungulu'),
(140, 'Mangochi North'),
(139, 'Mangochi North East'),
(141, 'Mangochi South'),
(142, 'Mangochi South West'),
(135, 'Mangochi Town'),
(143, 'Mangochi West'),
(74, 'Mchinji East  '),
(72, 'Mchinji North  '),
(77, 'Mchinji North East  '),
(73, 'Mchinji South  '),
(76, 'Mchinji South West  '),
(75, 'Mchinji West  '),
(144, 'Mulanje Bale'),
(145, 'Mulanje Central'),
(146, 'Mulanje Limbuli'),
(147, 'Mulanje North'),
(148, 'Mulanje Pasani'),
(149, 'Mulanje South'),
(150, 'Mulanje South East'),
(151, 'Mulanje South West'),
(152, 'Mulanje West'),
(153, 'Mwanza Central'),
(154, 'Mwanza West'),
(155, 'Neno North'),
(156, 'Neno South'),
(78, 'Nkhotakota Central  '),
(80, 'Nkhotakota North  '),
(79, 'Nkhotakota North East  '),
(82, 'Nkhotakota South  '),
(81, 'Nkhotakota South East  '),
(157, 'Nsanje Central'),
(158, 'Nsanje Lalanje'),
(159, 'Nsanje North'),
(160, 'Nsanje South'),
(161, 'Nsanje West'),
(83, 'Ntcheu Bwanje North  '),
(84, 'Ntcheu Bwanje South  '),
(85, 'Ntcheu Central  '),
(87, 'Ntcheu North  '),
(86, 'Ntcheu North East  '),
(88, 'Ntcheu South  '),
(89, 'Ntcheu West  '),
(92, 'Ntchisi East  '),
(90, 'Ntchisi North  '),
(93, 'Ntchisi North East  '),
(91, 'Ntchisi South  '),
(162, 'Phalombe Central'),
(163, 'Phalombe East'),
(165, 'Phalombe North'),
(164, 'Phalombe North East'),
(166, 'Phalombe South'),
(28, 'Rumphi Central  '),
(29, 'Rumphi East  '),
(31, 'Rumphi North  '),
(30, 'Rumphi West  '),
(94, 'Salima Central '),
(96, 'Salima North '),
(95, 'Salima North West '),
(98, 'Salima South '),
(97, 'Salima South East '),
(167, 'Thyolo Central'),
(168, 'Thyolo East'),
(169, 'Thyolo North'),
(171, 'Thyolo South'),
(170, 'Thyolo South West'),
(172, 'Thyolo Thava'),
(173, 'Thyolo West'),
(174, 'Zomba Central'),
(175, 'Zomba Changalume'),
(176, 'Zomba Chingale'),
(177, 'Zomba Chisi'),
(178, 'Zomba Likangala'),
(179, 'Zomba Lisanjala'),
(180, 'Zomba Malosa'),
(181, 'Zomba Nsondole'),
(182, 'Zomba Ntonya'),
(183, 'Zomba Thondwe');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_number` int(11) NOT NULL,
  `sesion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL DEFAULT '2022-02-11',
  `order_paper` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_21_019522_create_sesions_table', 1),
(7, '2021_06_21_019523_create_meetings_table', 1),
(8, '2021_06_21_019524_create_constituencies_table', 1),
(9, '2021_06_21_020131_create_questions_table', 1),
(10, '2021_06_21_140926_create_sessions_table', 1),
(11, '2021_07_02_070843_create_roles_table', 1),
(12, '2021_12_06_215320_create_orderpapers', 1),
(13, '2021_12_06_234008_create_events_table', 1),
(14, '2021_12_07_101027_create_announcements_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderpapers`
--

CREATE TABLE `orderpapers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderpaper` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constituency_id` bigint(20) UNSIGNED NOT NULL,
  `commitment` text COLLATE utf8mb4_unicode_ci,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL, NULL),
(2, 'director', NULL, NULL, NULL),
(3, 'other', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sesions`
--

CREATE TABLE `sesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sesion_number` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sesions`
--

INSERT INTO `sesions` (`id`, `sesion_number`, `created_at`, `updated_at`) VALUES
(1, 49, '2022-02-11 11:23:29', '2022-02-11 11:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role` enum('admin','director','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'director',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `is_admin`, `role`, `deleted_at`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Minister', 'Minister', 'minister@edu.com', 0, 'other', NULL, '2022-02-11 11:23:19', '$2y$10$fE4iyI3/HlfSNUC1ogHxbO.mLyERXJrsYlSZLjH4VN5uLRknrIoiu', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(2, 'Chikondano', 'Mussa', 'secretary@edu.gov.mw ', 0, 'admin', NULL, '2022-02-11 11:23:19', '$2y$10$hinPg7BKRptOtX5wHQgkO.n3VvD0ifSLpvQ8oomRkqNI5lP9SvMGS', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(3, 'Astonie', 'Mukiwa', 'amukiwa@must.ac.mw', 0, 'admin', NULL, '2022-02-11 11:23:19', '$2y$10$oo.8iMPH0bLf/A9kmscvCO81T6Z6eex0LKX0cFOj3Qx0yLplo1BWm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(4, 'Astonie', 'Mukiwa', 'amukywah@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:19', '$2y$10$W4B0see7gM3poHYrAZGMyeFB7BWrbYoRn48z2q4i709IzCOT.iaRS', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(5, 'Chomora', 'Mikeka', 'chomora@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:19', '$2y$10$E3fO9Q/JXj9VuB288hJaXuzO7hDlS5LoV6Pyqmg7fierSl.gHT0v6', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(6, 'Chikondano', 'Kadzamira Mussa', 'chikodbkd@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:19', '$2y$10$DgOHBJzAscHuK6Oc8jjw5uzNypMpGgDnrxAx2oOQeoR4D.PmX6CaC', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(7, 'Kettie', 'Mughogho  Chiweza', 'katemugh@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:19', '$2y$10$rTDMDhjE5KBiILBRhvvkbehz.NocAFnSOn6yC6e6YxgDwFG8opjwS', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(8, 'Godfrey', 'Kafere', 'kafereray@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$bC7NaClsf0CbAVHEbxcWu.2uuH5anE65GJZ0wI6URo745VyOzZxeK', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(9, 'James', 'Manyetera', 'manyeteraj@yahoo.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$h/mWfc0dud7Rn8.eJkiab.Lzz7rMaErYV4mssP7z9SmoSv.oLLrFC', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(10, 'Joshua', 'Valeta', 'jvaleta32@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$heUY.JQ7yw5tda/WVXYxM.iUneyy09eKT4.p4eVZza2j4pXqjX5Ty', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(11, 'Levis', 'Eneya ', 'levis.eneya@education.gov.mw', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$MZb79SJjWV4uAJg.ZyCOxOgE4cbXk1ZdKPvSFvsUJIhdsryKGvsvS', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(12, 'Francis', 'Zhuwao', 'wadidinkhumphedza@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$BWrzMvQL3fuHH.lJyRlf7eIfm5OjYYEAsrPGP0DSRdIpiQCYodWES', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(13, 'Florida', 'Banda', 'fkbanda@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$JfosxGc444TCBPQbbZ8B3uxLuIYnd98ta9gnWoROuq81drO4XdUwy', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(14, 'Anna', 'Kamende', 'annakamende@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:20', '$2y$10$Y6crgpYtkjh2650wyx2Emub9a8m81brzmsNsAXip5MdmoiSCnq/N2', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:21', '2022-02-11 11:23:21'),
(15, 'Noel', 'Mwango', 'noelmwango1000@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:21', '$2y$10$hdWk3fzO.g0uPoGX3wXrLupKfv96HMDNt3aJuYaG7iL0jFyaOIqKq', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:21', '2022-02-11 11:23:21'),
(16, 'Precious', 'Mtotha', 'preciousmtotha@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:21', '$2y$10$AiL9x0CSxVT4y5a5vXimqOGb/WNvCFGcfwkAma2eSLSQL21YTi4.e', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:21', '2022-02-11 11:23:21'),
(17, 'Cecily', 'kampanje', 'cfkampanje@yahoo.com', 0, 'director', NULL, '2022-02-11 11:23:21', '$2y$10$zn6ifc09XetC5ClVMCBi/eYTZnB6Xmu1wSzBJuAUMejagnFYykCcu', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(18, 'Roslyn', 'Mwenye', 'mwenyeroslyn@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:22', '$2y$10$rs5qqxrmzIooZqObqNjmeOam9H4zi9feQYUd4GUCDArOOogqG70ZG', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(19, 'Lindiwe', 'Chide', 'lichide@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:22', '$2y$10$wbNAefcCTJF3UH1pOPFSzejRBXC5ERyEpqD5bfRAcEQoiEBmFq9Q.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(20, 'Misheck', 'Munthali', 'mwayangwe.yagontha@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:22', '$2y$10$mF/SnYzqDTu3Nyu65yAClez5FLV/Y4QZKwpgfp02LatMlFPSinYlO', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(21, 'Maureen', 'Maguza-Tembo', 'mcmtembo@gmail.com', 0, 'director', NULL, '2022-02-11 11:23:22', '$2y$10$bRFmODGfvDp7vwg4QdnWmeekE78M1WHmKJvu.YjaB/gszxkue08pO', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constituencies`
--
ALTER TABLE `constituencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `constituencies_name_unique` (`name`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderpapers`
--
ALTER TABLE `orderpapers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_user_id_foreign` (`user_id`),
  ADD KEY `questions_meeting_id_foreign` (`meeting_id`),
  ADD KEY `questions_constituency_id_foreign` (`constituency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesions`
--
ALTER TABLE `sesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constituencies`
--
ALTER TABLE `constituencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderpapers`
--
ALTER TABLE `orderpapers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sesions`
--
ALTER TABLE `sesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituencies` (`id`),
  ADD CONSTRAINT `questions_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`),
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
