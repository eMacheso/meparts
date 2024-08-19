-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2024 at 07:48 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meparts_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `announcement`, `attachment`, `created_at`, `updated_at`) VALUES
(2, 'Meparts Training Today', '<p>Hello Team Management</p>', NULL, '2023-02-07 05:57:42', '2023-02-07 05:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

DROP TABLE IF EXISTS `constituencies`;
CREATE TABLE IF NOT EXISTS `constituencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `constituencies_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `directorates`
--

DROP TABLE IF EXISTS `directorates`;
CREATE TABLE IF NOT EXISTS `directorates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `dir_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_name_short` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hod_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hod_sex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directorates`
--

INSERT INTO `directorates` (`id`, `dir_name`, `dir_name_short`, `hod_name`, `hod_sex`, `position`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Basic Education', 'DBE', 'Grace Milner', 'F', 'Director', 'gmilner@educ.com', NULL, NULL),
(2, 'Secondary Education', 'DSE', 'Florida Banda', 'F', 'Director', 'gmilner@educ.com', NULL, NULL),
(3, 'Administration', 'Admin', 'Steven Chikopa', 'M', 'Director', 'admin@education.gov.mw', NULL, NULL),
(4, 'Information Communication and Technology', 'ICT', 'Chrissie Mtonga', 'F', 'Deputy Director', 'ict@education.gov.mw', NULL, NULL),
(5, 'Higher Education', 'DHE', 'Dr Levis Eneya', 'M', 'Director', 'levis.eneya@education.gov.mw', NULL, NULL),
(6, 'Quality Assurance Services', 'DQAS', 'Dr Golden Msilimba', 'M', 'Director', 'golden.msilimba@education.gov.mw', NULL, NULL),
(7, 'Teacher Education and Development', 'DTED', 'Dr Zizwa Msukuma', 'M', 'Director', 'zizwa.msukuma@education.gov.mw', NULL, NULL),
(8, 'School Health and Nutrion', 'SHNHA', 'Ms Maguza Tembo', 'F', 'Deputy Director', 'maureen.mkavea@agriculture.gov.mw', NULL, NULL),
(9, 'Inclusive Education', 'DIE', 'Ms Lucy Magagula', 'F', 'Deputy Director', 'lucy.magagula@education.gov.mw', NULL, NULL),
(10, 'Finance', 'DoF', 'Mr Stonie Chadzunda', 'M', 'Director', 'stornie.chadzunda@education.gov.mw', NULL, NULL),
(11, 'Education Planning', 'DEP', 'Ms Victoria Geresomo', 'F', 'Director', 'victoria.geresomo@education.gov.mw', NULL, NULL),
(12, 'Procurement', 'Procurement', 'Ms Kalonje', 'M', 'CPO', 'kalonje@education.gov.mw', NULL, NULL),
(13, 'Internal Audit', 'Audit', 'Mr Blessings Kaudzu', 'M', 'Deputy Director', 'blessings.kaudzu@education.gov.mw', NULL, NULL),
(14, 'Human Resource Management and Development', 'DHRMD', 'Ms. Cecily Kampanja', 'F', 'Director', 'cecily.kampanje@education.gov.mw', NULL, NULL),
(15, 'Science, Techology and Innovation', 'DSTI', 'Assoc, Prof Chomora Mikeka', 'M', 'Director', 'chomora.mikeka@education.gov.mw', NULL, NULL),
(16, 'Open Distance and eLearning', 'DODEL', 'Dr Joshua Valeta', 'F', 'Director', 'joshua.valeta@education.gov.mw', NULL, NULL),
(17, 'Education Infrastructure Management Unit', 'EIMU', 'Arthur Chipiko', 'M', 'Deputy Director', 'arthur.chiphiko@education.gov.mw', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'Meparts and general ICT Training', '2023-02-07 00:00:00', '2023-02-08 00:00:00', '2023-02-07 05:58:36', '2023-02-07 05:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `issue_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` int NOT NULL,
  `date_assigned` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `se_input` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_responce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issue_name`, `issue_description`, `directorate_id`, `date_assigned`, `date_due`, `status`, `reason`, `se_input`, `dir_responce`, `created_at`, `updated_at`) VALUES
(1, 'Extend MEPARTs to incorporate management issues', 'Ensure all action points from management meetings are tracked', 4, '2022-12-16T09:54', '2023-04-30T09:55', 'Not Done', 'Yet to present the tool to management for adoption', 'Go ahead and book management', NULL, '2023-04-23 19:55:41', '2023-11-05 23:29:37'),
(2, 'P1', 'Project Contract 1', 17, '2023-10-31T01:25', '2023-11-07T01:25', 'Not Done', NULL, NULL, NULL, '2023-11-05 23:26:21', '2023-11-05 23:26:21'),
(3, 'P2', 'Project Contract 2', 17, '2023-10-30T01:26', '2023-11-08T01:26', 'Not Done', NULL, NULL, NULL, '2023-11-05 23:26:54', '2023-11-05 23:26:54'),
(4, 'P3', 'Project Contract 3', 17, '2023-09-06T01:27', '2023-11-04T01:27', 'Not Done', NULL, NULL, NULL, '2023-11-05 23:27:41', '2023-11-05 23:27:41'),
(5, 'P4', 'P Contract 4', 17, '2023-11-01T01:34', '2023-11-22T01:34', 'Done', NULL, NULL, NULL, '2023-11-05 23:34:58', '2023-11-06 00:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `management_direction_orts`
--

DROP TABLE IF EXISTS `management_direction_orts`;
CREATE TABLE IF NOT EXISTS `management_direction_orts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ort_activity_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_direction_orts`
--

INSERT INTO `management_direction_orts` (`id`, `ort_activity_id`, `direction`, `date`, `created_at`, `updated_at`) VALUES
(1, '219', 'include contact management', '2024-03-21T10:27', '2024-03-21 08:28:01', '2024-03-21 08:28:01'),
(2, '228', 'vvvv', '2024-04-26T14:23', '2024-04-09 12:23:51', '2024-04-09 12:23:51'),
(3, '228', 'vvvv', '2024-04-26T14:23', '2024-04-09 12:27:58', '2024-04-09 12:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `management_direction_projects`
--

DROP TABLE IF EXISTS `management_direction_projects`;
CREATE TABLE IF NOT EXISTS `management_direction_projects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_activity_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_direction_projects`
--

INSERT INTO `management_direction_projects` (`id`, `project_activity_id`, `direction`, `date`, `created_at`, `updated_at`) VALUES
(1, '1', 'sefw', '2024-03-25T11:17', '2024-03-25 09:17:39', '2024-03-25 09:17:39'),
(2, '6', 'done ok', '2024-04-09T14:29', '2024-04-09 12:29:39', '2024-04-09 12:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `meeting_number` int NOT NULL,
  `sesion_id` bigint UNSIGNED DEFAULT NULL,
  `date` date NOT NULL DEFAULT '2022-02-11',
  `order_paper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeting_number`, `sesion_id`, `date`, `order_paper`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-03-01', 'ORDER PAPER NUMBER 1.docx', '2022-03-01 09:23:24', '2022-03-01 09:23:24'),
(10, 1, 3, '2022-03-01', 'ORDER PAPER NUMBER 1.docx', '2022-03-01 09:23:24', '2022-03-01 09:23:24'),
(11, 1, 6, '2022-03-01', 'ORDER PAPER NUMBER 1.docx', '2022-03-01 09:23:24', '2022-03-01 09:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, '2021_12_07_101027_create_announcements_table', 1),
(15, '2023_02_13_092855_create_directorates_table', 2),
(16, '2023_02_13_093149_create_issues_table', 2),
(17, '2023_11_07_170100_create_ort_issues_table', 3),
(18, '2023_11_07_170249_create_project_issues_table', 3),
(19, '2023_11_07_171728_create_programmes_table', 3),
(20, '2023_11_07_171815_create_projects_table', 3),
(21, '2023_11_10_115641_create_management_direction_orts_table', 4),
(22, '2023_11_13_161427_create_management_direction_projects_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderpapers`
--

DROP TABLE IF EXISTS `orderpapers`;
CREATE TABLE IF NOT EXISTS `orderpapers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `orderpaper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ort_issues`
--

DROP TABLE IF EXISTS `ort_issues`;
CREATE TABLE IF NOT EXISTS `ort_issues` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `programme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fin_year` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fin_yearO` (`fin_year`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ort_issues`
--

INSERT INTO `ort_issues` (`id`, `programme`, `activity`, `directorate_id`, `fin_year`, `date_due`, `status`, `budget`, `created_at`, `updated_at`) VALUES
(1, 'Management and Support Services', 'Conducting Employee performance Appraisal', '14', '24/25', '31/03/2024 23:59', 'Not Done', '17,500,000.00', '0000-00-00 00:00:00', '2024-01-10 11:53:16'),
(2, 'Management and Support Services', ' Develop and implement the M&E reporting repository and information sharing platform (portal)', '11', '', '31/03/2024 23:59', 'Not Done', '49,080,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Management and Support Services', ' Develop M&E Frameworks for Inclusive Education in the Ministry (Result framework, program assumptions and critical success factors)', '11', '', '31/03/2024 23:59', 'Not Done', '14,615,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Management and Support Services', ' Foreign training', '10', '', '31/03/2024 23:59', 'Not Done', '4,066,666.67', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Management and Support Services', 'Train ICT officers on emerging technologies', '4', '', '31/03/2024 23:59', 'Not Done', '3,750,000.00', '0000-00-00 00:00:00', '2024-01-10 11:12:10'),
(6, 'Basic Education', ' Institutionalize School Management Committees (SMCs)', '1', '', '31/03/2024 23:59', 'Not Done', '80,940,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Management and Support Services', ' Internal Training and Subscriptions', '10', '', '31/03/2024 23:59', 'Not Done', '1,832,258.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Basic Education', ' Introduce Technical Education Subjects in Model Primary Schools', '1', '', '31/03/2024 23:59', 'Not Done', '67,110,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Management and Support Services', ' Maintenance of computers', '10', '', '31/03/2024 23:59', 'Not Done', '3,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Management and Support Services', ' Maintenance of motor vehicles', '10', '', '31/03/2024 23:59', 'Not Done', '2,400,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Management and Support Services', ' Management of terminal benefits and Contributory Pension Scheme to ensure compliance with regulations', '14', '', '31/03/2024 23:59', 'Not Done', '39,300,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Management and Support Services', ' Monitor and Evaluate implementation of policies, strategies and programmes in the Ministry', '11', '', '31/03/2024 23:59', 'Not Done', '29,230,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Management and Support Services', ' Monitor and Evaluate implementation of PSIP projects (Progress at input, output, beneficiaries, outcome and impact level)', '11', '', '31/03/2024 23:59', 'Not Done', '29,230,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Management and Support Services', ' Monitor implementation of SDGs/MIP 1/Reforms interventions in the Ministry', '11', '', '31/03/2024 23:59', 'Not Done', '11,025,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Management and Support Services', 'Prepare and review annual budget', '3', '', '31/03/2024 23:59', 'Done', '10,360,000.00', '0000-00-00 00:00:00', '2024-03-28 12:02:17'),
(16, 'Management and Support Services', ' Procurement of Laptops and Printer', '11', '', '31/03/2024 23:59', 'Not Done', '7,711,999.60', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Management and Support Services', ' Purchase of computers', '10', '', '31/03/2024 23:59', 'Not Done', '5,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Management and Support Services', ' Purchase of consumables', '10', '', '31/03/2024 23:59', 'Not Done', '2,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Management and Support Services', ' Resolve audit queries', '3', '', '31/03/2024 23:59', 'Not Done', '19,300,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Management and Support Services', ' Resolve Land Encroachment issues', '3', '', '31/03/2024 23:59', 'Not Done', '15,200,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Basic Education', ' Review ECE and primary education curriculum to incorporate technical, innovation, creativity,entrepreneuraship and civics education', '1', '', '31/03/2024 23:59', 'Not Done', '76,880,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Basic Education', 'Scale up Home grown School Feeding Programme', '8', '', '31/03/2024 23:59', 'Not Done', '299,961,668.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Management and Support Services', ' staff training ', '11', '', '31/03/2024 23:59', 'Not Done', '13,108,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Management and Support Services', ' Undertake legal issues for the Ministry', '3', '', '31/03/2024 23:59', 'Not Done', '24,741,333.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Secondary Education', 'Adapting content for EDUSPACE', '16', '', '31/03/2024 23:59', 'Not Done', '7,875,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Management and Support Services', 'Advocacy on special needs education in primary schools', '9', '', '31/03/2024 23:59', 'Not Done', '4,920,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Management and Support Services', 'al Office Operations', '4', '', '31/03/2024 23:59', 'Not Done', '29,954,918.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Secondary Education', 'Assessment of schools readiness for TEL', '16', '', '31/03/2024 23:59', 'Not Done', '33,309,404.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Management and Support Services', 'Attending International Conferences on Education', '3', '', '31/03/2024 23:59', 'Not Done', '17,408,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Management and Support Services', 'Attending Local Meetings on Education', '3', '', '31/03/2024 23:59', 'Not Done', '11,880,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Secondary Education', 'Benchmarking QA Framework', '16', '', '31/03/2024 23:59', 'Not Done', '15,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Management and Support Services', 'Capacity building', '11', '', '31/03/2024 23:59', 'Not Done', '20,160,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Management and Support Services', 'Capacity building for internal auditors including audit committees', '13', '', '31/03/2024 23:59', 'Not Done', '13,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Higher Education', 'Capacity building for members of the Directorate', '5', '', '31/03/2024 23:59', 'Not Done', '8,580,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Secondary Education', 'Capacity building for secondary school directorate staff', '2', '', '31/03/2024 23:59', 'Not Done', '3,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Management and Support Services', 'Capacity building in EMIS (Central, District and Zone)', '11', '', '31/03/2024 23:59', 'Not Done', '46,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Basic Education', 'Capacity Building of all stakeholders', '1', '', '31/03/2024 23:59', 'Not Done', '36,640,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Management and Support Services', 'Capacity Building of Sports Personnel', '3', '', '31/03/2024 23:59', 'Not Done', '9,580,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Management and Support Services', 'Carry out internal audit assignments', '13', '', '31/03/2024 23:59', 'Not Done', '37,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Higher Education', 'Carry out operation activities for the Higher Education Directorate', '5', '', '31/03/2024 23:59', 'Not Done', '50,554,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Management and Support Services', 'Carry out operational activities', '3', '', '31/03/2024 23:59', 'Not Done', '492,938,457.67', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Basic Education', 'Carry out operational activities for Basic Primary', '3', '', '31/03/2024 23:59', 'Not Done', '58,960,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Basic Education', 'Commemmorate World Teachers Day', '1', '', '31/03/2024 23:59', 'Not Done', '15,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Secondary Education', 'Commemoration of World Teachers Day', '1', '', '31/03/2024 23:59', 'Not Done', '8,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Management and Support Services', 'Conduct Capacity Building', '2', '', '31/03/2024 23:59', 'Not Done', '41,168,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Management and Support Services', 'Conduct capacity building on Data base of school mapping', '16', '', '31/03/2024 23:59', 'Not Done', '40,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Management and Support Services', 'Conduct Cohort tracking and School Management Records', '3', '', '31/03/2024 23:59', 'Not Done', '31,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Higher Education', 'Conduct consultative meetings with key stakeholders on Higher Education Overarching Bill', '11', '', '31/03/2024 23:59', 'Not Done', '8,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Basic Education', 'Conduct coordination meetings with DEMs and other stakeholders', '11', '', '31/03/2024 23:59', 'Not Done', '8,240,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Management and Support Services', 'Conduct DEPs review processes', '5', '', '31/03/2024 23:59', 'Not Done', '8,100,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Secondary Education', 'Conduct directorate\'s budget review meetings', '1', '', '31/03/2024 23:59', 'Not Done', '7,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Secondary Education', 'Conduct Form One First selection exercise', '11', '', '31/03/2024 23:59', 'Not Done', '28,834,683.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Secondary Education', 'Conduct Form One Second Selection exercise', '16', '', '31/03/2024 23:59', 'Not Done', '14,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Management and Support Services', 'Conduct Joint sector Review meetings', '2', '', '31/03/2024 23:59', 'Not Done', '25,550,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Basic Education', 'Conduct PSIP review meeting', '2', '', '31/03/2024 23:59', 'Not Done', '50,200,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Management and Support Services', 'Conduct Sector Working Group meetings', '11', '', '31/03/2024 23:59', 'Not Done', '7,120,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Management and Support Services', 'Conduct short and long term internal training', '1', '', '31/03/2024 23:59', 'Not Done', '5,050,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Management and Support Services', 'Conduct short term external training', '11', '', '31/03/2024 23:59', 'Not Done', '8,820,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Management and Support Services', 'Conduct stakeholders meetings with officials from various Departments/Sections', '14', '', '31/03/2024 23:59', 'Not Done', '27,356,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Management and Support Services', 'Conduct Training Needs Assessment and develop Staff Development and Training Plans', '14', '', '31/03/2024 23:59', 'Not Done', '17,300,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Basic Education', 'Conduct TWG meetings ', '10', '', '31/03/2024 23:59', 'Not Done', '4,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Secondary Education', 'conducting  awareness meetings on technical and vocational subjects', '14', '', '31/03/2024 23:59', 'Not Done', '20,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Management and Support Services', 'Conducting Appointment and Disciplinary Committee Meetings', '8', '', '31/03/2024 23:59', 'Not Done', '14,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Management and Support Services', 'Conducting Functional Review', '2', '', '31/03/2024 23:59', 'Not Done', '39,300,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Management and Support Services', 'Conducting recruitment and selection', '14', '', '31/03/2024 23:59', 'Not Done', '48,465,317.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Management and Support Services', 'Coordinate development of sector budget and align it to sector priorities and plans (Conduct Pre-Budget, Half-Year Reviews and Post Budget workshops)', '2', '', '31/03/2024 23:59', 'Not Done', '52,160,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Basic Education', 'Coordinate MoEST HIV & AIDS Workplace Programs ', '2', '', '31/03/2024 23:59', 'Not Done', '5,960,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Basic Education', 'Coordinate national SHNHA review meetings ', '11', '', '31/03/2024 23:59', 'Not Done', '10,180,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Management and Support Services', 'Coordinate Sports Programmes', '8', '', '31/03/2024 23:59', 'Not Done', '6,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Basic Education', 'Coordinate staff domestic trainings ', '8', '', '31/03/2024 23:59', 'Not Done', '6,492,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Basic Education', 'Coordinate staff external trainings ', '3', '', '31/03/2024 23:59', 'Not Done', '10,261,333.33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Management and Support Services', 'Coordinating SEACMEQ survey', '8', '', '31/03/2024 23:59', 'Not Done', '57,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Basic Education', 'Cordination of primary curriculum', '11', '', '31/03/2024 23:59', 'Not Done', '65,950,000.30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Basic Education', 'Cordination of secondary school curriculum', '11', '', '31/03/2024 23:59', 'Not Done', '79,024,999.99', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Basic Education', 'Cordination of TTC  curriculum', '6', '', '31/03/2024 23:59', 'Not Done', '76,799,999.99', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Management and Support Services', 'Create and strengthen existing anti-corruption systems', '6', '', '31/03/2024 23:59', 'Not Done', '33,440,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Management and Support Services', 'Conduct assessment of Education Institutions for Free broad Band Internet Services', '4', '', '31/03/2024 23:59', 'Not Done', '4,100,000.00', '0000-00-00 00:00:00', '2024-01-10 11:40:18'),
(78, 'Management and Support Services', 'Education ICT Policy Stakeholder Consultations', '4', '', '31/03/2024 23:59', 'Not Done', '41,750,000.00', '0000-00-00 00:00:00', '2024-01-10 11:10:25'),
(79, 'Management and Support Services', 'Quarterly Activity Review Meetings', '4', '', '31/03/2024 23:59', 'Not Done', '3,800,000.00', '0000-00-00 00:00:00', '2024-01-10 11:41:43'),
(80, 'Management and Support Services', 'Data Collection processing and reporting of annual school census', '11', '', '31/03/2024 23:59', 'Not Done', '43,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Management and Support Services', 'Decentralize of EMIS to districts and zones', '11', '', '31/03/2024 23:59', 'Not Done', '26,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Secondary Education', 'Develop and disseminate the National ODeL Quality Assurance Framework', '11', '', '31/03/2024 23:59', 'Not Done', '28,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Basic Education', 'Develop and implement compulsory education strategy', '16', '', '31/03/2024 23:59', 'Not Done', '100,837,333.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Management and Support Services', 'Develop PSIP', '1', '', '31/03/2024 23:59', 'Not Done', '6,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Secondary Education', 'Developing learning analytics frameworkn to support EDUSPACE', '9', '', '31/03/2024 23:59', 'Not Done', '7,875,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Secondary Education', 'Development of guidelines to schools for TEL ', '16', '', '31/03/2024 23:59', 'Not Done', '6,250,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Management and Support Services', 'Enhance coordination at decentralized levels', '16', '', '31/03/2024 23:59', 'Not Done', '5,945,618.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Management and Support Services', 'Enhance IIC activities', '16', '', '31/03/2024 23:59', 'Not Done', '12,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Basic Education', 'Ensure provision of IE specialized teachers and TLMs-Primary', '11', '', '31/03/2024 23:59', 'Not Done', '300,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Secondary Education', 'Ensure provision of IE specialized teachers and TLMs-Secondary', '3', '', '31/03/2024 23:59', 'Not Done', '350,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Basic Education', 'Establish new CBE Learning Centres', '9', '', '31/03/2024 23:59', 'Not Done', '13,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Secondary Education', 'Establishing MoE Student support centre', '9', '', '31/03/2024 23:59', 'Not Done', '3,100,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Higher Education', 'Facilitate  development and operationalisation of a research policy', '1', '', '31/03/2024 23:59', 'Not Done', '15,750,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Higher Education', 'Facilitate and monitor the establishment of the delinked universities', '16', '', '31/03/2024 23:59', 'Not Done', '2,590,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Management and Support Services', 'Facilitate Asset Management', '5', '', '31/03/2024 23:59', 'Not Done', '17,100,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Management and Support Services', 'Facilitate declaration of Assets', '5', '', '31/03/2024 23:59', 'Not Done', '10,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Higher Education', 'Facilitate establishment of SADC virtual University of Transformation', '3', '', '31/03/2024 23:59', 'Not Done', '12,670,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Management and Support Services', 'Facilitate IPDC meetings and provide for Office Operations ', '3', '', '31/03/2024 23:59', 'Not Done', '1,200,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Management and Support Services', 'Facilitate review of legal frameworks', '5', '', '31/03/2024 23:59', 'Not Done', '10,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Management and Support Services', 'Facilitate Technical Working Group meetings ', '11', '', '31/03/2024 23:59', 'Not Done', '7,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Higher Education', 'Facilitate the development and operationalisation of the Higher Education Financing Model', '16', '', '31/03/2024 23:59', 'Not Done', '16,250,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Higher Education', 'Facilitate the establisment Open University of Malawi', '11', '', '31/03/2024 23:59', 'Not Done', '40,631,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Management and Support Services', 'Facilitate the implementation of the communication strategy', '5', '', '31/03/2024 23:59', 'Not Done', '7,560,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Management and Support Services', 'Facilitating application, interpretation and enforcement of rules and regulations', '3', '', '31/03/2024 23:59', 'Not Done', '23,543,306.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Secondary Education', 'Facilitating the establishment of Open University of Malawi (OUM)', '16', '', '31/03/2024 23:59', 'Not Done', '9,120,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Secondary Education', 'Facilitation of office operations', '14', '', '31/03/2024 23:59', 'Not Done', '36,100,600.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Management and Support Services', 'General Office Operations', '16', '', '31/03/2024 23:59', 'Not Done', '3,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Management and Support Services', 'Identification of learners with diverse needs', '16', '', '31/03/2024 23:59', 'Not Done', '2,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Secondary Education', 'Induction of ODeL officers in government operations', '9', '', '31/03/2024 23:59', 'Not Done', '15,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Basic Education', 'Inspect primary schools', '2', '', '31/03/2024 23:59', 'Not Done', '93,001,298.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Basic Education', 'Inspect secondary schools', '16', '', '31/03/2024 23:59', 'Not Done', '81,251,298.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Basic Education', 'Inspection of TTCs', '6', '', '31/03/2024 23:59', 'Not Done', '23,400,000.01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Management and Support Services', 'Institutional strengthening and capacity buidling for coordination structures of the Education Sector ', '6', '', '31/03/2024 23:59', 'Not Done', '19,663,144.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Management and Support Services', 'Manage office operation for DEP and DDEP ', '16', '', '31/03/2024 23:59', 'Not Done', '16,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Management and Support Services', 'Managing an efficient and effective personnel records management system ', '16', '', '31/03/2024 23:59', 'Not Done', '19,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Management and Support Services', 'Monitor and Manage Administrative Systems', '11', '', '31/03/2024 23:59', 'Not Done', '12,940,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Management and Support Services', 'Monitor and supervise budget implementation', '14', '', '31/03/2024 23:59', 'Not Done', '7,080,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Higher Education', 'Monitor bridging courses in institutions of Higher Education and establishment of Resource Centres for Inclusive education', '3', '', '31/03/2024 23:59', 'Not Done', '6,400,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Basic Education', 'Monitor CBE implementation', '11', '', '31/03/2024 23:59', 'Not Done', '8,400,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Higher Education', 'Monitor establishment of students support services and ODeL Programmes in universities', '1', '', '31/03/2024 23:59', 'Not Done', '6,625,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Higher Education', 'Monitor expansion of infrastructure and internet band width in public HEIs including construction of Inkosi ya Makhosi M\'mbelwa University and establishement of centres of excellencein public', '2', '', '31/03/2024 23:59', 'Not Done', '9,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Higher Education', 'Monitor implementation of Higher Education Informatiom Mnagement System (HEMIS)', '5', '', '31/03/2024 23:59', 'Not Done', '8,250,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Basic Education', 'Monitor implementation of programs and activities in primary schools', '5', '', '31/03/2024 23:59', 'Not Done', '49,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Higher Education', 'Monitor implementation of selection policy and collaboration strategec framework between HEIs and industry', '5', '', '31/03/2024 23:59', 'Not Done', '14,250,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Management and Support Services', 'Monitor Sporting Activities', '1', '', '31/03/2024 23:59', 'Not Done', '8,400,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Management and Support Services', 'Monitor web-based data base ', '5', '', '31/03/2024 23:59', 'Not Done', '31,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Secondary Education', 'Monitoring distribution of TEL gadgets ', '3', '', '31/03/2024 23:59', 'Not Done', '37,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Basic Education', 'Monitoring gender & child protection interventions in schools ', '16', '', '31/03/2024 23:59', 'Not Done', '7,250,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Basic Education', 'Monitoring implementation of education in emergency interventions ', '2', '', '31/03/2024 23:59', 'Not Done', '6,890,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Basic Education', 'Monitoring implementation of school health hygiene & sanitation interventions ', '8', '', '31/03/2024 23:59', 'Not Done', '9,255,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Secondary Education', 'Monitoring MASHA activities ', '8', '', '31/03/2024 23:59', 'Not Done', '8,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Secondary Education', 'Monitoring of National Examinations( MSCE)', '8', '', '31/03/2024 23:59', 'Not Done', '11,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Secondary Education', 'Monitoring of National Examinations(JCE)', '2', '', '31/03/2024 23:59', 'Not Done', '8,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Basic Education', 'Monitoring school nutrition interventions including school meals ', '2', '', '31/03/2024 23:59', 'Not Done', '10,680,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Management and Support Services', 'Monitoring schools with SNE learning centres', '2', '', '31/03/2024 23:59', 'Not Done', '12,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Secondary Education', 'Monitoring Sports Activities in Schools', '8', '', '31/03/2024 23:59', 'Not Done', '4,200,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Secondary Education', 'Monitoring Students Councils ', '9', '', '31/03/2024 23:59', 'Not Done', '6,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Secondary Education', 'Monitoring students enrolment', '2', '', '31/03/2024 23:59', 'Not Done', '8,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Management and Support Services', 'Coordinate the development of standards and specifications for ICT Centres in Schools', '4', '', '31/03/2024 23:59', 'Not Done', '4,950,000.00', '0000-00-00 00:00:00', '2024-01-10 11:38:11'),
(140, 'Secondary Education', 'office operation', '2', '', '31/03/2024 23:59', 'Not Done', '30,400,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Management and Support Services', 'Office Operations', '4', '', '31/03/2024 23:59', 'Not Done', '10,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Management and Support Services', 'Develop an Education ICT Recovery Plan', '4', '', '31/03/2024 23:59', 'Not Done', '7,000,000.00', '0000-00-00 00:00:00', '2024-01-10 11:44:32'),
(143, 'Management and Support Services', 'Develop Enterprise Architecture and Interoperability Framework', '4', '', '31/03/2024 23:59', 'Not Done', '4,450,000.00', '0000-00-00 00:00:00', '2024-01-10 11:45:20'),
(144, 'Management and Support Services', 'Operational activities for audit activities', '13', '', '31/03/2024 23:59', 'Not Done', '22,585,154.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Basic Education', 'Operationalise of Teacher\'s Council ', '6', '', '31/03/2024 23:59', 'Not Done', '222,906,804.60', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Secondary Education', 'Orientation of new technical teachers deployed o ISEM constructed Techinical Wings', '13', '', '31/03/2024 23:59', 'Not Done', '20,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Management and Support Services', 'Participate in budget monitoring in all the subsectors', '2', '', '31/03/2024 23:59', 'Not Done', '19,640,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Higher Education', 'Participate in international foras such as (African Union(AU), United Nations for Education Scientific Cultural Organisation(UNESCO)', '16', '', '31/03/2024 23:59', 'Not Done', '6,850,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Management and Support Services', 'Particitate in Pre-Budget, Half-Year Reviews and Post Budget workshops', '10', '', '31/03/2024 23:59', 'Not Done', '14,730,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Secondary Education', 'Pocurement of Science Consumables', '5', '', '31/03/2024 23:59', 'Not Done', '53,999,952.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Secondary Education', 'Preparation of budget', '10', '', '31/03/2024 23:59', 'Not Done', '1,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Management and Support Services', 'Preparation of procurement plan and review  ', '2', '', '31/03/2024 23:59', 'Not Done', '10,150,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Management and Support Services', 'preparation of quarterly Reports', '2', '', '31/03/2024 23:59', 'Not Done', '4,700,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Management and Support Services', 'Prepare financial reports (Bank reconciliation, Financial Statements ,Expenditure returns, Cash Controls)', '12', '', '31/03/2024 23:59', 'Not Done', '10,115,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Management and Support Services', 'Print and distribute Census Report', '12', '', '31/03/2024 23:59', 'Not Done', '11,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Secondary Education', 'Procure and distribute learners', '10', '', '31/03/2024 23:59', 'Not Done', '1,130,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Basic Education', 'Procure and supply TLMs in all schools including SNE, Sports and technical subjects', '11', '', '31/03/2024 23:59', 'Not Done', '1,257,314,674.33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Basic Education', 'Procure motor vehicle', '2', '', '31/03/2024 23:59', 'Not Done', '60,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Basic Education', 'Procure Teaching and Learning Materials', '1', '', '31/03/2024 23:59', 'Not Done', '300,160,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Management and Support Services', 'Procurement of materials and resources for office operations', '1', '', '31/03/2024 23:59', 'Not Done', '63,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Management and Support Services', 'Provide ceremonious leadership', '2', '', '31/03/2024 23:59', 'Not Done', '16,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Management and Support Services', 'Provide ceremonious leadership (attending ground breaking ceremonies, opening new institutions, (schools and colleges))', '2', '', '31/03/2024 23:59', 'Not Done', '11,880,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Management and Support Services', 'Provide for office operations', '3', '', '31/03/2024 23:59', 'Not Done', '47,066,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Basic Education', 'Provide for office operations ', '3', '', '31/03/2024 23:59', 'Not Done', '29,070,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Management and Support Services', 'Provide Policy Direction and Guidance', '2', '', '31/03/2024 23:59', 'Not Done', '24,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Secondary Education', 'Purchase of TEL gadgets', '9', '', '31/03/2024 23:59', 'Not Done', '680,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Management and Support Services', 'Review and develop policies', '8', '', '31/03/2024 23:59', 'Not Done', '11,016,973.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Management and Support Services', 'Review and develop sector plans', '3', '', '31/03/2024 23:59', 'Not Done', '11,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Basic Education', 'Review and maintain existing learning centres', '16', '', '31/03/2024 23:59', 'Not Done', '7,520,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Management and Support Services', 'Selection and admission activities for SNE students moving into secondary schools', '11', '', '31/03/2024 23:59', 'Not Done', '6,800,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Management and Support Services', 'Smooth office operations', '11', '', '31/03/2024 23:59', 'Not Done', '25,390,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Basic Education', 'Strengthen capacity of officers in the Directorate of Basic Education', '9', '', '31/03/2024 23:59', 'Not Done', '54,256,666.67', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Secondary Education', 'Strengtherning BoGs in  secondary schools', '1', '', '31/03/2024 23:59', 'Not Done', '9,600,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Secondary Education', 'Strengtherning cluster systems in secondary schools', '9', '', '31/03/2024 23:59', 'Not Done', '8,000,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Basic Education', 'Train learning centre governing structures (Learning Centre management Committee', '12', '', '31/03/2024 23:59', 'Not Done', '11,700,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Management and Support Services', 'Train officers in Financial Management', '1', '', '31/03/2024 23:59', 'Not Done', '44,090,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Management and Support Services', 'Train officers in policy and planning and programming', '2', '', '31/03/2024 23:59', 'Not Done', '27,500,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Management and Support Services', 'Training of officers in procurement', '1', '', '31/03/2024 23:59', 'Not Done', '25,011,247.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Management and Support Services', 'Training of teachers in maintenance of assistive devises', '10', '', '31/03/2024 23:59', 'Not Done', '4,014,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Management and Support Services', 'Training of teachers in Malawi Sign language', '11', '', '31/03/2024 23:59', 'Not Done', '17,080,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Management and Support Services', 'Update and disseminate the Service Charter', '12', '', '31/03/2024 23:59', 'Not Done', '11,460,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Management and Support Services', 'Visit to Education Division offices and institutions of Higher learning to collect data on staff on study leave', '9', '', '31/03/2024 23:59', 'Not Done', '6,200,000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Secondary Education', 'General Office Administration', '12', '', '31/03/2024 23:59', 'Not Done', ' 22,000,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Secondary Education', 'Monitorig the distributed teaching and learning materials like desks to all Education Institutions', '12', '', '31/03/2024 23:59', 'Not Done', ' 108,500,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Secondary Education', ' Spearhead the review of the 2002 Science and Technology Policy ', '15', '', '31/03/2024 23:59', 'Not Done', ' 24,400,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Secondary Education', 'Capacity building program for DSTI members of staff', '15', '', '31/03/2024 23:59', 'Not Done', ' 11,000,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Secondary Education', 'Conduct capacity building program on Virtual Science Laboratories for STEM in secondary schools', '15', '', '31/03/2024 23:59', 'Not Done', ' 19,900,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Secondary Education', 'Conduct Continous Proffessional Development Programs (CPD) in STI for Primary School Teachers', '15', '', '31/03/2024 23:59', 'Not Done', ' 5,820,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Secondary Education', 'Conduct Continous Proffessional Development Programs (CPD) in STI for Secondary School Teachers', '15', '', '31/03/2024 23:59', 'Not Done', ' 5,820,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Secondary Education', 'Conduct Innovation Awards Program', '15', '', '31/03/2024 23:59', 'Not Done', ' 9,320,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Secondary Education', 'Conduct MiLab consutative meetings', '15', '', '31/03/2024 23:59', 'Not Done', ' 9,700,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Secondary Education', 'Conduct Research in Education, Science and Technology to inform policy', '15', '', '31/03/2024 23:59', 'Not Done', ' 12,640,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Secondary Education', 'Develop and Validate Innovation Recodial Management System for STI', '15', '', '31/03/2024 23:59', 'Not Done', ' 19,960,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Secondary Education', 'Development and implemenation of guidelines on STEM  in teachers curriculum education ', '15', '', '31/03/2024 23:59', 'Not Done', ' 17,520,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Secondary Education', 'Development of MiLab  Modules ', '15', '', '31/03/2024 23:59', 'Not Done', ' 41,440,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Secondary Education', 'Establish and Strenthen linkages between industries, tertiary institutions, Government Ministries inorder to adress industrial needs', '15', '', '31/03/2024 23:59', 'Not Done', ' 7,880,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Secondary Education', 'Implement science technology and innovation capacity building programs for  students in   schools  through  organising Junior Science fair targetting primary schools', '15', '', '31/03/2024 23:59', 'Not Done', ' 17,900,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Secondary Education', 'Implement science technology and innovation capacity building programs for  students in   schools  through provision of research  grants ', '15', '', '31/03/2024 23:59', 'Not Done', ' 5,380,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Secondary Education', 'Implement science technology and innovation capacity building programs for  students through the establishment of   Science, Technology and Innovation clubs in Secondary schools', '15', '', '31/03/2024 23:59', 'Not Done', ' 10,640,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Secondary Education', 'Implement science technology and innovation capacity building programs for  students through the establishment of  Junior Science, Technology and Innovation clubs and Innovation Garages in pr', '15', '', '31/03/2024 23:59', 'Not Done', ' 20,480,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Secondary Education', 'Monitor and evaluate  the use of virtual science laboratories for STEM   in secondary schools', '15', '', '31/03/2024 23:59', 'Not Done', ' 15,820,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Secondary Education', 'Procure gadgets for virtual Science Laboratories for STEM in secondary schools', '15', '', '31/03/2024 23:59', 'Not Done', ' 15,750,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Secondary Education', 'Procure office operations', '15', '', '31/03/2024 23:59', 'Not Done', ' 57,661,111.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Secondary Education', 'Sensitising stakeholders on Innovation Recodial Management System', '15', '', '31/03/2024 23:59', 'Not Done', ' 5,320,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Basic Education', 'Assess implementation of National Standards for Teacher Education and mentorship program', '7', '', '31/03/2024 23:59', 'Not Done', ' 3,860,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Basic Education', 'Capacity building for Teachers and Teacher Trainers', '7', '', '31/03/2024 23:59', 'Not Done', ' 82,707,501.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Basic Education', 'Commemoration of World Teachers\' Day', '7', '', '31/03/2024 23:59', 'Not Done', ' 40,800,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Basic Education', 'Conduct and coordinate monitoring activities ', '7', '', '31/03/2024 23:59', 'Not Done', ' 16,790,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Basic Education', 'Coordinate and conduct TTIs management meetings', '7', '', '31/03/2024 23:59', 'Not Done', ' 18,220,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Basic Education', 'Implement recruitment procedures that ensure equity in enrolment', '7', '', '31/03/2024 23:59', 'Not Done', ' 11,800,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Basic Education', 'Implement STEM, Reaserch, ICT, Science and Technology in Teachers Development and Curriculum', '7', '', '31/03/2024 23:59', 'Not Done', ' 5,520,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Basic Education', 'Improve General Office Operations', '7', '', '31/03/2024 23:59', 'Not Done', ' 135,670,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Basic Education', 'Improve management and coordination of departments and institutions that are involved in teacher education and development', '7', '', '31/03/2024 23:59', 'Not Done', ' 3,090,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Basic Education', 'Introduce Diploma and Degree certificates', '7', '', '31/03/2024 23:59', 'Not Done', ' 40,300,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Basic Education', 'Review and implement NSTED and CPD Framework', '7', '', '31/03/2024 23:59', 'Not Done', ' 7,560,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Basic Education', 'Strengthen partneship between Teacher Education Institutions (TEI) and the private organisations through Public Private partnership (PPP) policy', '7', '', '31/03/2024 23:59', 'Not Done', ' 2,620,000.00 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Management and Support Services', 'Develop for us Management Tool', '4', '', '2024-04-27T10:25', 'Pending', '5000', '2024-03-21 08:26:19', '2024-03-21 08:28:01'),
(220, 'Management and Support Services', 'ict March', '4', '', '2024-07-27T11:00', 'Not Done', 'wewe', '2024-03-25 09:01:07', '2024-03-25 09:01:07'),
(221, 'Management and Support Services', 'Develop Management Tool', '16', '', '2024-03-12T10:10', 'Not Done', '5000', '2024-03-26 19:06:56', '2024-03-26 19:06:56'),
(222, 'Basic Education', 'MoE _ RegGen', '4', '', '2024-03-08T21:07', 'Not Done', 'kk', '2024-03-26 19:07:30', '2024-03-26 19:07:30'),
(223, 'Management and Support Services', 'dddd', '14', '', '2024-03-30T13:55', 'Not Done', '45', '2024-03-28 11:55:22', '2024-03-28 11:55:22'),
(224, 'Management and Support Services', 'Chrissie Mtonga', '4', '', '2024-03-30T14:20', 'Not Done', 'fgdfgdf', '2024-03-28 12:20:49', '2024-03-28 12:20:49'),
(225, 'Basic Education', 'reeeee', '4', '', '2024-04-06T14:21', 'Not Done', 'Chrissie Mtonga', '2024-03-28 12:22:01', '2024-03-28 12:22:01'),
(226, 'Management and Support Services', 'with fin year', '4', '24/25', '2024-05-11T11:57', 'Not Done', '567', '2024-04-09 09:57:15', '2024-04-09 09:57:15'),
(227, 'Management and Support Services', 'sdg', '4', '24/25', '2024-05-12T11:58', 'Not Done', '46', '2024-04-09 09:58:17', '2024-04-09 09:58:17'),
(228, 'Basic Education', 'niow', '4', '24/25', '2024-05-05T14:20', 'Done', '234', '2024-04-09 12:20:58', '2024-05-14 06:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('amukywah@gmail.com', '$2y$10$NB8HDMiB/Tv4JXnemBhuCeJ4VZBPvT6pwRY/RryehzfAX7JBUsg8G', '2022-02-17 07:28:38'),
('katemugh@gmail.com', '$2y$10$FKv6xauZbl8SBZjJNo.TTOr0cvaIr7vegQ7syG95BtqDv.2vwQxVa', '2022-11-28 16:36:47'),
('kanjoc@gmail.com', '$2y$10$WngSQciARLEYgGfSPywggerTiLz3bJ3YjravqCFqKGxZjTn.YVeLS', '2023-02-27 06:04:00'),
('chrissie.mtonga@education.gov.mw', '$2y$10$9ojgqQse5cV4eqwkOJTz9OpZbj9CSdtRZ7Ua6pKvf.P.9Dp.U92tS', '2023-11-21 11:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

DROP TABLE IF EXISTS `programmes`;
CREATE TABLE IF NOT EXISTS `programmes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `programme_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_issues`
--

DROP TABLE IF EXISTS `project_issues`;
CREATE TABLE IF NOT EXISTS `project_issues` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directorate_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fin_year` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fin_year` (`fin_year`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_issues`
--

INSERT INTO `project_issues` (`id`, `project_name`, `activity`, `directorate_id`, `fin_year`, `date_due`, `status`, `budget`, `created_at`, `updated_at`) VALUES
(1, 'SAVE', 'hemis', '4', NULL, '2025-02-01T11:14', 'Pending', '234', '2024-03-25 09:15:01', '2024-03-25 09:17:39'),
(2, 'SAVE', 'dddd', '4', NULL, '2024-04-06T13:42', 'Not Done', 'r555', '2024-03-28 11:42:50', '2024-03-28 11:42:50'),
(3, 'BEFIT', 'dd', '4', NULL, '2024-03-29T14:07', 'Not Done', '5675', '2024-03-28 12:07:29', '2024-03-28 12:07:29'),
(4, 'BEFIT', 'Chrissie Mtonga', '4', NULL, '2024-03-30T14:15', 'Not Done', '45.89', '2024-03-28 12:15:32', '2024-03-28 12:15:32'),
(5, 'SAVE', 'sfdsd', '4', '24/25', '2024-04-27T12:01', 'Not Done', '455', '2024-04-09 10:01:55', '2024-04-09 10:01:55'),
(6, 'SAVE', 'now', '4', '24/25', '2024-06-30T14:21', 'Done', '234', '2024-04-09 12:22:02', '2024-04-09 12:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` bigint UNSIGNED NOT NULL,
  `member_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constituency_id` bigint UNSIGNED NOT NULL,
  `commitment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_user_id_foreign` (`user_id`),
  KEY `questions_meeting_id_foreign` (`meeting_id`),
  KEY `questions_constituency_id_foreign` (`constituency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `question`, `meeting_id`, `member_name`, `constituency_id`, `commitment`, `response`, `created_at`, `updated_at`) VALUES
(1, 23, '<p><span style=\"font-size:13.0pt;line-height:107%;\r\nfont-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">Implementation of Chancellorship of Universities\r\nas promised by the HE</span><br></p>', 1, 'Joseph Mwanamveka', 124, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">The\r\nMinistry is already developing a Higher Education Bill which will address the\r\nissue.&nbsp; Prerequisite processes have been\r\ndone and what remains is to engage Ministry of Justice for cleaning and fine\r\ntuning of the document.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">This\r\nvery important so that the process adheres to the legal requirements in\r\naccordance with the tenets of democracy</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;\r\nfont-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">His Excellency the State President remains\r\ncommitted to delegating Chancellorship for some of the public universities in\r\nthe country</span><br></p>', '2022-03-01 09:39:32', '2022-03-01 09:39:32'),
(2, 24, '<p class=\"MsoListParagraph\" style=\"margin-left:14.45pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-14.45pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">- asked the Honourable Minister on what measures are\r\nbeing taken to address the issue of Kafamtandala School whose roof was blown\r\noff and the matter was reported to the Ministry.&nbsp; It was noted that though the matter was\r\nreferred to the Directorate of Basic Education, the issue remains outstanding.&nbsp; The Honourable Minister lamented that\r\ndisasters are nowadays frequent and impacting negatively on education\r\ninfrastructure such that the allocated funds are already exhausted.&nbsp; However, the house was assured that Ministry\r\nhas taken note of the issue and that it will be addressed once resources are\r\nidentified. She therefore appealed to the House to prioritize this budget line\r\nto take care of this growing need.<o:p></o:p></span></p>', 1, 'Benard Kondwani Chitekwe', 92, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">Kamfantandala Primary School whose roof was blown off\r\nin Ntchisi district is on the list of 2020/2021 disaster affected schools that\r\nwere not supported due to resource constraints.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The number of schools being affected by natural\r\ndisaster has been increasing over the past three (3) years.&nbsp; The program started in 2018/2019 Financial\r\nyear with an initial budget provision of MK100 Million for supply and delivery\r\nof the roofing materials and operation costs.&nbsp;\r\nFifty-three (53) disaster affected schools in eight (8) districts, of\r\nMachinga, Ntchisi, Neno, Thyolo, Zomba, Mulanje, Phalombe and Chikwawa were\r\nsupported.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">In 2019/2020 Financial Year, One Hundred and Eleven\r\n(111) disaster affected schools in fourteen (14) districts of Nkhata Bay, Rumphi,\r\nMzimba, Kasungu, Ntchisi, Dowa, Mchinji, Ntcheu, Balaka, Mangochi, Machinga,\r\nZomba, Thyolo, Neno and Chikwawa received support.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">In the 2020/2021 Financial Year, 184 schools in\r\nnineteen (19) districts were affected by natural disaster.&nbsp; However, only twenty – six (26) disaster\r\naffected schools in five (5) districts of Rumphi, Mzimba, Lilongwe Rural East\r\nand West, Thyolo and Chiradzulu were supplied with the iron nails and ridges.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The schools that were not supported are One Hundred\r\nFifty Eight (158) in 21 districts (i.e. those that were affected in 2020/2021\r\nfinancial year).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The budget provision under ORT Budget for maintenance\r\nof buildings has been reducing over the years.&nbsp;\r\nThe budget provision for 2021/2022 Financial year was MK76 Million and\r\nwas used to pay procurement in the previous year, in the 2022/2023, the budget\r\nprovision is MK31,878,099.<o:p></o:p></span></p>', '2022-03-01 14:26:34', '2022-03-01 14:26:34'),
(3, 24, '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">asked the Honourable Minister to consider\r\ninvestigating the payment of examination fees in the region of K34,000 which\r\nmost of the families in the rural areas cannot afford and are seeking her\r\nintervention.&nbsp; The Honourable Minister\r\ntook note of the request and assured the House that she will take the matter to\r\nMANEB as it is within their jurisdiction.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">She however,\r\nassured the House that she will bring a feedback. The Honourable Minister went\r\non to explain that the examination fees are used by MANEB in processing of the\r\nexams. <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">&nbsp;</span></p>', 1, 'J. Mwanamveka', 124, 'Test Commitment 2 3 and 4<br>', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"></span></p><h5 class=\"card-title\" style=\"font-family: Nunito;\"><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 15.55pt; text-align: justify; text-indent: -14.15pt;\"><span style=\"font-size: 13pt; line-height: 18.5467px; font-family: \" maiandra=\"\" gd\",=\"\" sans-serif;\"=\"\" lang=\"EN-US\"> The Honorable Minister took note of the request and assured the House that she will take the matter to MANEB as it is within their jurisdiction.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 15.55pt; text-align: justify;\"><span style=\"font-size: 13pt; line-height: 18.5467px; font-family: \" maiandra=\"\" gd\",=\"\" sans-serif;\"=\"\" lang=\"EN-US\">She however, assured the House that she will bring a feedback. The Honourable Minister went on to explain that the examination fees are used by MANEB in processing of the exams.</span></p></h5><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"> </span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"> </span></p>', '2022-03-01 14:28:19', '2023-11-06 07:34:24'),
(4, 24, '<p class=\"MsoListParagraph\" style=\"margin-left:15.55pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">asked theHonourable Minister if she would consider\r\nupgrading Msalura CDSS to full boarding secondary school or if that is not\r\npossible for now, consider constructing girls’ hostels at the school to assist\r\ngirls who come from far.&nbsp; Since this\r\nquestion was not on order paper, the Honourable Member of Parliament for Salima\r\ncentral was requested to submit it formally for the Ministry to respond.<o:p></o:p></span></p>', 1, 'Gerald. K. Phiri', 94, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">Msalura CDSS was originally Salima Secondary School\r\nand was established in 1965.&nbsp; This was\r\nthe only District Boarding Secondary school in Salima District.&nbsp; Since 1965, the then Salima Secondary School\r\ngrappled with foods during rainy season.&nbsp;&nbsp;\r\nIn 1989, the floods were very devastating such that hostels were\r\ninhabitable.&nbsp; Consequently, in 1993, the\r\nMinistry reallocated Salima Secondary School from Msalura to the present\r\nlocation.&nbsp; Following this move Msalura\r\npremises were turned into MCDE centre and in 1998 the centre was turned into a\r\nCommunity Day Secondary School (CDSS).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The water flooding lodging at Msalura CDSS is still a\r\nproblem up to date.&nbsp; Therefore, the\r\nMinistry do not have plans to construct boarding facilities at the said\r\nschool.&nbsp; The Honourable member may bear witness\r\nwith me that what has happened this year at Msalura CDSS is a repeat of what\r\nhappened in 1989 when the school experienced devastating floods.&nbsp; <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p>', '2022-03-01 14:30:31', '2022-03-01 14:30:31'),
(5, 24, '<p><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">asked the Honourable Minister to consider\r\nregulating the fees being charged by the Private schools because they are too\r\nexpensive and that Malawian children are being reaped off.&nbsp; The Honourable Minister noted the request.\r\nHowever, she explained that if the fees being referred to concerns their\r\ninternational exams then it’s within their domain but if it’s the same MANEB\r\nexams then she will ask the Inspectorate directorate (DQAS) to investigate this\r\nissue and that feedback will be made to the House</span><br></p>', 1, 'Francis Lucky Phiso Phiri', 111, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The Ministry has noted the concern and will soon be\r\nengaging relevant stakeholders to map a better way forward on the issue.&nbsp; These will include Independent Schools\r\nAssociation of Malawi, Competition and Fair Trading Commission, Ministry of\r\nTrade and the Attorney General’s office among others.<o:p></o:p></span></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p>', '2022-03-01 14:33:02', '2022-03-01 14:33:02'),
(14, 49, '<p>Question 1</p>', 11, 'kanjo', 10, NULL, NULL, '2023-11-06 07:38:17', '2023-11-06 07:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'director', NULL, NULL, NULL),
(3, 'other', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sesions`
--

DROP TABLE IF EXISTS `sesions`;
CREATE TABLE IF NOT EXISTS `sesions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sesion_number` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sesions`
--

INSERT INTO `sesions` (`id`, `sesion_number`, `created_at`, `updated_at`) VALUES
(1, 49, '2022-02-11 11:23:29', '2022-02-11 11:23:29'),
(3, 50, '2022-11-28 13:10:06', '2022-11-28 13:10:06'),
(6, 51, '2023-05-23 10:31:27', '2023-05-23 10:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IuDpPMNxF2PuYnC5UGWk9huf5sWXF5LzK8BW9v29', 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMHZYVDI1SXZYNnQ3UXFSN09hbmpDQjdidGhFZnlLaFU1QzI0ZGE3ayI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvaXNzdWVzL21uZ3Rpc3N1ZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0OTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTI2NjQ4Mjc7fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkQkV1M2NtdDZ2UFJ5cTcxN29qRHlDdW91eGM0ejE5Vno2NzdQZ1l2SVhaSElTUVJZVW9BaHUiO30=', 1712669800),
('lxJw4KrN0rk2uX6P2OhxBBXaHlr4agT0Ace7TNFK', 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMExZZGlncmNFT2pqb2ltb3dicUxPRzBlNjRTSG51TDdkWFBqRDlNciI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvaXNzdWVzL3Byb2plY3Rpc3N1ZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0OTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTU2Njg5MDk7fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkQkV1M2NtdDZ2UFJ5cTcxN29qRHlDdW91eGM0ejE5Vno2NzdQZ1l2SVhaSElTUVJZVW9BaHUiO30=', 1715669819),
('vPQSL8f4oqE7tl6lSUkNYgElGZWwV6r687jYMkSS', 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNFM4bGhSQkJKRjBxTWJtQzhJZ2lOdWVSSWZONVdBckloTUh0bHhUayI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbWRhc2hib2FyZC9pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ5O3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTcxNTUwOTg1NTt9czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRCRXUzY210NnZQUnlxNzE3b2pEeUN1b3V4YzR6MTlWejY3N1BnWXZJWFpISVNRUllVb0FodSI7fQ==', 1715509877);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'WILL BE GETTING SHORT NAME OF DIRECTORATE',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `is_admin`, `role`, `deleted_at`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Minister', 'Minister', 'minister@edu.com', 0, 'other', NULL, '2022-02-11 11:23:19', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(2, 'Chikondano', 'Mussa', 'chikondano.mussa@education.gov.mw ', 0, 'Admin', NULL, '2022-02-11 11:23:19', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(3, 'Astonie', 'Mukiwa', 'amukiwa@must.ac.mw', 0, 'admin', '2023-04-23 20:28:55', '2022-02-11 11:23:19', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2023-04-23 20:28:55'),
(4, 'Astonie', 'Mukiwa', 'amukywah@gmail.com', 0, 'director', '2023-04-23 20:29:01', '2022-02-11 11:23:19', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2023-04-23 20:29:01'),
(5, 'Chomora', 'Mikeka', 'chomora.mikeka@education.gov.mw', 0, 'DSTI', NULL, '2022-02-11 11:23:19', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(10, 'Joshua', 'Valeta', 'joshua.valeta@education.gov.mw', 0, 'DODEL', NULL, '2022-02-11 11:23:20', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2024-01-10 09:09:32'),
(11, 'Levis', 'Eneya ', 'levis.eneya@education.gov.mw', 0, 'DHE', NULL, '2022-02-11 11:23:20', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2023-04-23 20:28:42'),
(13, 'Florida', 'Banda', 'florida.banda@education.gov.mw', 0, 'DSE', NULL, '2022-02-11 11:23:20', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(17, 'Cecily', 'kampanje', 'cecily.kampanje@education.gov.mw', 0, 'DHRMD', NULL, '2022-02-11 11:23:21', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(19, 'Lindiwe', 'Chide', 'lindiwe.chide@education.gov.mw', 0, 'DQAS', NULL, '2022-02-11 11:23:22', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(21, 'Maureen', 'Maguza-Tembo', 'maureen.mkavea@agriculture.gov.mw', 0, 'SHNHA', NULL, '2022-02-11 11:23:22', '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(23, 'Admin', 'User', 'admin@meparts.edu', 0, 'admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-02-17 10:00:01', '2022-02-17 11:44:43'),
(24, 'Deborah', 'Malola', 'deborahmalola1@gmail.com', 0, 'director', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-03-01 08:39:48', '2022-03-01 09:05:15'),
(31, 'Gomani', 'Gomani', 'pchaola3@gmail.com', 0, 'director', '2023-02-06 14:31:26', NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-03-01 11:13:10', '2023-02-06 14:31:26'),
(33, 'Chrissie', 'Mtonga', 'chrissie.mtonga@education.gov.mw', 0, 'ICT', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-25 11:28:20', '2022-11-25 11:28:20'),
(37, 'Sungeni', 'Maleta', 'sungemaleta@gmail.com', 0, 'director', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 12:53:57', '2022-11-28 12:53:57'),
(39, 'Sungeni', 'Maleta', 'sng_maleta@yahoo.co.uk', 0, 'admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 12:55:22', '2022-11-28 12:55:22'),
(41, 'Sungeni', 'Maleta', 'sng_maleta@yahoo.com', 0, 'admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:07:45', '2022-11-28 13:07:45'),
(45, 'Wezzie', 'Mlelemba', 'mlelemba@gmail.com', 0, 'director', '2022-11-29 08:42:05', NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:28:12', '2022-11-29 08:42:05'),
(46, 'Siquiqui', 'Gomani', 'siquiquig@yahoo.com', 0, 'admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:33:00', '2022-11-28 13:33:00'),
(49, 'Chrissy', 'Mtonga', 'kanjo@gmail.com', 0, 'Admin', NULL, NULL, '$2y$10$BEu3cmt6vPRyq717ojDyCuouxc4z19Vz677PgYvIXZHISQRYUoAhu', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:38:18', '2023-11-20 11:30:45'),
(50, 'Mphatso', 'Maseya', 'mphatso.maseya@education.gov.mw', 0, 'Admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:40:57', '2022-11-29 08:40:57'),
(51, 'Wezzie', 'Mlelemba', 'wezzie.mlelemba@education.gov.mw', 0, 'director', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:43:03', '2022-11-29 08:43:03'),
(58, 'Arthur', 'Chiphiko', 'arthur.chiphiko@education.gov.mw', 0, 'EIMU', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-02-07 08:38:00', '2023-02-07 08:38:00'),
(62, 'Steven', 'Chikopa', 'steven.chikopa@education.gov.mw', 0, 'Admin', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:28:26', '2023-04-23 20:28:26'),
(63, 'Stonie', 'Chadzunda', 'stonie.chadzunda@education.gov.mw', 0, 'DoF', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:30:27', '2023-04-23 20:30:27'),
(64, 'Grace', 'Milner', 'grace.milner@education.gov.mw', 0, 'DBE', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:37:13', '2023-04-23 20:37:13'),
(65, 'Golden', 'Msilimba', 'golden.msilimba@education.gov.mw', 0, 'DQAS', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:38:26', '2023-04-23 20:38:26'),
(66, 'Zizwa', 'Msukuma', 'zizwa.msukuma@education.gov.mw', 0, 'DTED', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:39:23', '2023-04-23 20:39:23'),
(67, 'Victoria', 'Geresomo', 'victoria.geresomo@education.gov.mw', 0, 'DEP', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:40:54', '2023-04-23 20:40:54'),
(68, 'Lucy', 'Magagula', 'lucy.magagula@education.gov.mw', 0, 'DIE', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:42:08', '2023-04-23 20:42:08'),
(69, 'Blessing', 'Kaudzu', 'blessings.kaudzu@education.gov.mw', 0, 'Audit', NULL, NULL, '$2y$10$GOtvvIxcUD4v9wZn2cMBJOmuwlxiJx9idZUdygu/.1xpKp8D4S3/.', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:43:16', '2023-04-23 20:43:16');

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
