-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2023 at 08:51 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issue_name`, `issue_description`, `directorate_id`, `date_assigned`, `date_due`, `status`, `reason`, `se_input`, `dir_responce`, `created_at`, `updated_at`) VALUES
(1, 'Extend MEPARTs to incorporate management issues', 'Ensure all action points from management meetings are tracked', 4, '2022-12-16T09:54', '2023-04-30T09:55', 'Not Done', NULL, NULL, NULL, '2023-04-23 19:55:41', '2023-04-23 19:55:41');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeting_number`, `sesion_id`, `date`, `order_paper`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-03-01', 'ORDER PAPER NUMBER 1.docx', '2022-03-01 09:23:24', '2022-03-01 09:23:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, '2023_02_13_093149_create_issues_table', 2);

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
('kanjoc@gmail.com', '$2y$10$WngSQciARLEYgGfSPywggerTiLz3bJ3YjravqCFqKGxZjTn.YVeLS', '2023-02-27 06:04:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `question`, `meeting_id`, `member_name`, `constituency_id`, `commitment`, `response`, `created_at`, `updated_at`) VALUES
(1, 23, '<p><span style=\"font-size:13.0pt;line-height:107%;\r\nfont-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">Implementation of Chancellorship of Universities\r\nas promised by the HE</span><br></p>', 1, 'Joseph Mwanamveka', 124, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">The\r\nMinistry is already developing a Higher Education Bill which will address the\r\nissue.&nbsp; Prerequisite processes have been\r\ndone and what remains is to engage Ministry of Justice for cleaning and fine\r\ntuning of the document.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">This\r\nvery important so that the process adheres to the legal requirements in\r\naccordance with the tenets of democracy</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;\r\nfont-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">His Excellency the State President remains\r\ncommitted to delegating Chancellorship for some of the public universities in\r\nthe country</span><br></p>', '2022-03-01 09:39:32', '2022-03-01 09:39:32'),
(2, 24, '<p class=\"MsoListParagraph\" style=\"margin-left:14.45pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-14.45pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">- asked the Honourable Minister on what measures are\r\nbeing taken to address the issue of Kafamtandala School whose roof was blown\r\noff and the matter was reported to the Ministry.&nbsp; It was noted that though the matter was\r\nreferred to the Directorate of Basic Education, the issue remains outstanding.&nbsp; The Honourable Minister lamented that\r\ndisasters are nowadays frequent and impacting negatively on education\r\ninfrastructure such that the allocated funds are already exhausted.&nbsp; However, the house was assured that Ministry\r\nhas taken note of the issue and that it will be addressed once resources are\r\nidentified. She therefore appealed to the House to prioritize this budget line\r\nto take care of this growing need.<o:p></o:p></span></p>', 1, 'Benard Kondwani Chitekwe', 92, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">Kamfantandala Primary School whose roof was blown off\r\nin Ntchisi district is on the list of 2020/2021 disaster affected schools that\r\nwere not supported due to resource constraints.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The number of schools being affected by natural\r\ndisaster has been increasing over the past three (3) years.&nbsp; The program started in 2018/2019 Financial\r\nyear with an initial budget provision of MK100 Million for supply and delivery\r\nof the roofing materials and operation costs.&nbsp;\r\nFifty-three (53) disaster affected schools in eight (8) districts, of\r\nMachinga, Ntchisi, Neno, Thyolo, Zomba, Mulanje, Phalombe and Chikwawa were\r\nsupported.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">In 2019/2020 Financial Year, One Hundred and Eleven\r\n(111) disaster affected schools in fourteen (14) districts of Nkhata Bay, Rumphi,\r\nMzimba, Kasungu, Ntchisi, Dowa, Mchinji, Ntcheu, Balaka, Mangochi, Machinga,\r\nZomba, Thyolo, Neno and Chikwawa received support.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">In the 2020/2021 Financial Year, 184 schools in\r\nnineteen (19) districts were affected by natural disaster.&nbsp; However, only twenty – six (26) disaster\r\naffected schools in five (5) districts of Rumphi, Mzimba, Lilongwe Rural East\r\nand West, Thyolo and Chiradzulu were supplied with the iron nails and ridges.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The schools that were not supported are One Hundred\r\nFifty Eight (158) in 21 districts (i.e. those that were affected in 2020/2021\r\nfinancial year).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The budget provision under ORT Budget for maintenance\r\nof buildings has been reducing over the years.&nbsp;\r\nThe budget provision for 2021/2022 Financial year was MK76 Million and\r\nwas used to pay procurement in the previous year, in the 2022/2023, the budget\r\nprovision is MK31,878,099.<o:p></o:p></span></p>', '2022-03-01 14:26:34', '2022-03-01 14:26:34'),
(3, 24, '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">asked the Honourable Minister to consider\r\ninvestigating the payment of examination fees in the region of K34,000 which\r\nmost of the families in the rural areas cannot afford and are seeking her\r\nintervention.&nbsp; The Honourable Minister\r\ntook note of the request and assured the House that she will take the matter to\r\nMANEB as it is within their jurisdiction.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">She however,\r\nassured the House that she will bring a feedback. The Honourable Minister went\r\non to explain that the examination fees are used by MANEB in processing of the\r\nexams. <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:15.55pt;mso-add-space:\r\nauto;text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-ansi-language:EN-US\">&nbsp;</span></p>', 1, 'J. Mwanamveka', 124, 'Test Commitment 2<br>', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"></span></p><h5 class=\"card-title\" style=\"font-family: Nunito;\"><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 15.55pt; text-align: justify; text-indent: -14.15pt;\"><span style=\"font-size: 13pt; line-height: 18.5467px; font-family: \" maiandra=\"\" gd\",=\"\" sans-serif;\"=\"\" lang=\"EN-US\"> The Honorable Minister took note of the request and assured the House that she will take the matter to MANEB as it is within their jurisdiction.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 15.55pt; text-align: justify;\"><span style=\"font-size: 13pt; line-height: 18.5467px; font-family: \" maiandra=\"\" gd\",=\"\" sans-serif;\"=\"\" lang=\"EN-US\">She however, assured the House that she will bring a feedback. The Honourable Minister went on to explain that the examination fees are used by MANEB in processing of the exams.</span></p></h5><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"> </span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" maiandra=\"\" gd\",sans-serif;=\"\" mso-ansi-language:en-us\"=\"\" lang=\"EN-US\"> </span></p>', '2022-03-01 14:28:19', '2023-02-12 14:27:42'),
(4, 24, '<p class=\"MsoListParagraph\" style=\"margin-left:15.55pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-14.15pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-fareast-font-family:&quot;Maiandra GD&quot;;mso-bidi-font-family:&quot;Maiandra GD&quot;;\r\nmso-ansi-language:EN-US\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">asked theHonourable Minister if she would consider\r\nupgrading Msalura CDSS to full boarding secondary school or if that is not\r\npossible for now, consider constructing girls’ hostels at the school to assist\r\ngirls who come from far.&nbsp; Since this\r\nquestion was not on order paper, the Honourable Member of Parliament for Salima\r\ncentral was requested to submit it formally for the Ministry to respond.<o:p></o:p></span></p>', 1, 'Gerald. K. Phiri', 94, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">Msalura CDSS was originally Salima Secondary School\r\nand was established in 1965.&nbsp; This was\r\nthe only District Boarding Secondary school in Salima District.&nbsp; Since 1965, the then Salima Secondary School\r\ngrappled with foods during rainy season.&nbsp;&nbsp;\r\nIn 1989, the floods were very devastating such that hostels were\r\ninhabitable.&nbsp; Consequently, in 1993, the\r\nMinistry reallocated Salima Secondary School from Msalura to the present\r\nlocation.&nbsp; Following this move Msalura\r\npremises were turned into MCDE centre and in 1998 the centre was turned into a\r\nCommunity Day Secondary School (CDSS).<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The water flooding lodging at Msalura CDSS is still a\r\nproblem up to date.&nbsp; Therefore, the\r\nMinistry do not have plans to construct boarding facilities at the said\r\nschool.&nbsp; The Honourable member may bear witness\r\nwith me that what has happened this year at Msalura CDSS is a repeat of what\r\nhappened in 1989 when the school experienced devastating floods.&nbsp; <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p>', '2022-03-01 14:30:31', '2022-03-01 14:30:31'),
(5, 24, '<p><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:\r\n107%;font-family:&quot;Maiandra GD&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">asked the Honourable Minister to consider\r\nregulating the fees being charged by the Private schools because they are too\r\nexpensive and that Malawian children are being reaped off.&nbsp; The Honourable Minister noted the request.\r\nHowever, she explained that if the fees being referred to concerns their\r\ninternational exams then it’s within their domain but if it’s the same MANEB\r\nexams then she will ask the Inspectorate directorate (DQAS) to investigate this\r\nissue and that feedback will be made to the House</span><br></p>', 1, 'Francis Lucky Phiso Phiri', 111, NULL, '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">The Ministry has noted the concern and will soon be\r\nengaging relevant stakeholders to map a better way forward on the issue.&nbsp; These will include Independent Schools\r\nAssociation of Malawi, Competition and Fair Trading Commission, Ministry of\r\nTrade and the Attorney General’s office among others.<o:p></o:p></span></p><p>\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"EN-US\" style=\"font-size:13.0pt;line-height:107%;font-family:&quot;Maiandra GD&quot;,sans-serif;\r\nmso-ansi-language:EN-US\">&nbsp;</span></p>', '2022-03-01 14:33:02', '2022-03-01 14:33:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sesions`
--

INSERT INTO `sesions` (`id`, `sesion_number`, `created_at`, `updated_at`) VALUES
(1, 49, '2022-02-11 11:23:29', '2022-02-11 11:23:29'),
(3, 50, '2022-11-28 13:10:06', '2022-11-28 13:10:06');

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
('kWUVDGVPzGnPkgUHx1vBmyba0qtlPfkY2GfvzoAj', 49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.48', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiM2dwQ1hSRDExdmRiblByakxQSm5wb2p0em9ybklrNTRQWXE1OTJyWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlcnMvY3JlYXRlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDk7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNjgyMjgyMTg0O31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDY5VjFScS5tTEdDYm9XamE1eC8uQi5xN3FnSWd0TWNSTDJNb0x4emdmWW5NbkFHRGhuNkxtIjt9', 1682282699);

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
(1, 'Minister', 'Minister', 'minister@edu.com', 0, 'other', NULL, '2022-02-11 11:23:19', '$2y$10$fE4iyI3/HlfSNUC1ogHxbO.mLyERXJrsYlSZLjH4VN5uLRknrIoiu', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(2, 'Chikondano', 'Mussa', 'chikondano.mussa@education.gov.mw ', 0, 'Admin', NULL, '2022-02-11 11:23:19', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(3, 'Astonie', 'Mukiwa', 'amukiwa@must.ac.mw', 0, 'admin', '2023-04-23 20:28:55', '2022-02-11 11:23:19', '$2y$10$oo.8iMPH0bLf/A9kmscvCO81T6Z6eex0LKX0cFOj3Qx0yLplo1BWm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2023-04-23 20:28:55'),
(4, 'Astonie', 'Mukiwa', 'amukywah@gmail.com', 0, 'director', '2023-04-23 20:29:01', '2022-02-11 11:23:19', '$2y$10$W4B0see7gM3poHYrAZGMyeFB7BWrbYoRn48z2q4i709IzCOT.iaRS', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2023-04-23 20:29:01'),
(5, 'Chomora', 'Mikeka', 'chomora.mikeka@education.gov.mw', 0, 'DSTI', NULL, '2022-02-11 11:23:19', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:19', '2022-02-11 11:23:19'),
(10, 'Joshua', 'Valeta', 'joshua.valeta@education.gov.mw', 0, 'DODEL', NULL, '2022-02-11 11:23:20', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(11, 'Levis', 'Eneya ', 'levis.eneya@education.gov.mw', 0, 'DHE', NULL, '2022-02-11 11:23:20', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2023-04-23 20:28:42'),
(13, 'Florida', 'Banda', 'florida.banda@education.gov.mw', 0, 'DSE', NULL, '2022-02-11 11:23:20', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:20', '2022-02-11 11:23:20'),
(17, 'Cecily', 'kampanje', 'cecily.kampanje@education.gov.mw', 0, 'DHRMD', NULL, '2022-02-11 11:23:21', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(19, 'Lindiwe', 'Chide', 'lindiwe.chide@education.gov.mw', 0, 'DQAS', NULL, '2022-02-11 11:23:22', '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(21, 'Maureen', 'Maguza-Tembo', 'maureen.mkavea@agriculture.gov.mw', 0, 'SHNHA', NULL, '2022-02-11 11:23:22', '$2y$10$bRFmODGfvDp7vwg4QdnWmeekE78M1WHmKJvu.YjaB/gszxkue08pO', NULL, NULL, NULL, NULL, NULL, '2022-02-11 11:23:22', '2022-02-11 11:23:22'),
(23, 'Admin', 'User', 'admin@meparts.edu', 0, 'admin', NULL, NULL, '$2y$10$yf4WsBc.V0bhlfLMnOWkDernm.X1n0aHPOpZ3PhsOdtzgK1Df0Ggq', NULL, NULL, NULL, NULL, NULL, '2022-02-17 10:00:01', '2022-02-17 11:44:43'),
(24, 'Deborah', 'Malola', 'deborahmalola1@gmail.com', 0, 'director', NULL, NULL, '$2y$10$U7Lubee8sgw5rHmK6oyhG.noOkM8ZOAfW.Tn2leobVZdksgvm.Pf2', NULL, NULL, NULL, NULL, NULL, '2022-03-01 08:39:48', '2022-03-01 09:05:15'),
(31, 'Gomani', 'Gomani', 'pchaola3@gmail.com', 0, 'director', '2023-02-06 14:31:26', NULL, '$2y$10$cIubQXmGzKVVfgtb2tBngOao2VLYO1WJsi2ov1z8rETq1o9hAhvH.', NULL, NULL, NULL, NULL, NULL, '2022-03-01 11:13:10', '2023-02-06 14:31:26'),
(33, 'Chrissie', 'Mtonga', 'chrissie.mtonga@education.gov.mw', 0, 'ICT', NULL, NULL, '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-11-25 11:28:20', '2022-11-25 11:28:20'),
(37, 'Sungeni', 'Maleta', 'sungemaleta@gmail.com', 0, 'director', NULL, NULL, '$2y$10$dMYmMGnltKlFcuRrIjGviOiaJtRq.K.BmNeFNx3RiMHXjSXR2tO/6', NULL, NULL, NULL, NULL, NULL, '2022-11-28 12:53:57', '2022-11-28 12:53:57'),
(39, 'Sungeni', 'Maleta', 'sng_maleta@yahoo.co.uk', 0, 'admin', NULL, NULL, '$2y$10$CYRqkxl5HqRe8kqbzz6/7.1oia1bFFidI1Kvfw58jLZW7pa56y76.', NULL, NULL, NULL, NULL, NULL, '2022-11-28 12:55:22', '2022-11-28 12:55:22'),
(41, 'Sungeni', 'Maleta', 'sng_maleta@yahoo.com', 0, 'admin', NULL, NULL, '$2y$10$RzZkc2zeQB4Hrx8cddLpqerDCEbynLAewIfvqow8RMS6lgg16STfS', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:07:45', '2022-11-28 13:07:45'),
(45, 'Wezzie', 'Mlelemba', 'mlelemba@gmail.com', 0, 'director', '2022-11-29 08:42:05', NULL, '$2y$10$T7CQMs2BRJ/ESo2XCQ6Q6Okf8i2O2C3/F0F0kJ7/ReGJAI9.d9Hi6', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:28:12', '2022-11-29 08:42:05'),
(46, 'Siquiqui', 'Gomani', 'siquiquig@yahoo.com', 0, 'admin', NULL, NULL, '$2y$10$7UFsM0HMSzqp25TNiPyZWO7b/HMuL6wtGRgWtMYvETdFdG3AOsdeW', NULL, NULL, NULL, NULL, NULL, '2022-11-28 13:33:00', '2022-11-28 13:33:00'),
(49, 'Chrissy', 'Mtonga', 'kanjo@gmail.com', 0, 'Admin', NULL, NULL, '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:38:18', '2023-02-27 05:49:18'),
(50, 'Mphatso', 'Maseya', 'mphatso.maseya@education.gov.mw', 0, 'Admin', NULL, NULL, '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:40:57', '2022-11-29 08:40:57'),
(51, 'Wezzie', 'Mlelemba', 'wezzie.mlelemba@education.gov.mw', 0, 'director', NULL, NULL, '$2y$10$PAI4cw97zaQFWyhRLXhiG.XFf1jaqcYOknSxVmwBjXCLyIfL4Uc9K', NULL, NULL, NULL, NULL, NULL, '2022-11-29 08:43:03', '2022-11-29 08:43:03'),
(58, 'Arthur', 'Chiphiko', 'arthur.chiphiko@education.gov.mw', 0, 'EIMU', NULL, NULL, '$2y$10$69V1Rq.mLGCboWja5x/.B.q7qgIgtMcRL2MoLxzgfYnMnAGDhn6Lm', NULL, NULL, NULL, NULL, NULL, '2023-02-07 08:38:00', '2023-02-07 08:38:00'),
(62, 'Steven', 'Chikopa', 'steven.chikopa@education.gov.mw', 0, 'Admin', NULL, NULL, '$2y$10$YcLNHL96GlpGz9I/yRLH4eYkTjmGliUD5RpkMLrt2C4ah9D68.LUi', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:28:26', '2023-04-23 20:28:26'),
(63, 'Stonie', 'Chadzunda', 'stonie.chadzunda@education.gov.mw', 0, 'DoF', NULL, NULL, '$2y$10$UDaOJQT2MKHGvNMw87CCUOxSm1Yk42SvQd3vffQwLNvmp3zjJAFLS', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:30:27', '2023-04-23 20:30:27'),
(64, 'Grace', 'Milner', 'grace.milner@education.gov.mw', 0, 'DBE', NULL, NULL, '$2y$10$V0Uw002KbkpbfNRCl4wZWeMgRee9HnACPGIPJfXDrNpdk1rBsfUkW', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:37:13', '2023-04-23 20:37:13'),
(65, 'Golden', 'Msilimba', 'golden.msilimba@education.gov.mw', 0, 'DQAS', NULL, NULL, '$2y$10$FFlpZWq38chDj0K3atHC4em6DMH/0/twAS7xPtUzx5Yf8KggaFlc6', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:38:26', '2023-04-23 20:38:26'),
(66, 'Zizwa', 'Msukuma', 'zizwa.msukuma@education.gov.mw', 0, 'DTED', NULL, NULL, '$2y$10$tGYjPY8kKODLDayvawubjeCH2R4XDUwBijpDFejJkV.z2GE0qnxFK', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:39:23', '2023-04-23 20:39:23'),
(67, 'Victoria', 'Geresomo', 'victoria.geresomo@education.gov.mw', 0, 'DEP', NULL, NULL, '$2y$10$Qb.3bi.kztwqqnhv.g9fV.ShFctKLfHc4LlzYQ8CxHCQkMAk/9W8W', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:40:54', '2023-04-23 20:40:54'),
(68, 'Lucy', 'Magagula', 'lucy.magagula@education.gov.mw', 0, 'DIE', NULL, NULL, '$2y$10$awH5XtNAz9de3P9FVZWoPegdmdtKOEn9cUIBgnWfkJozxN3OVvrvu', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:42:08', '2023-04-23 20:42:08'),
(69, 'Blessing', 'Kaudzu', 'blessings.kaudzu@education.gov.mw', 0, 'Audit', NULL, NULL, '$2y$10$PTcdMG464S0TRH5kBYCDiOA.T1TOpsmi9tV8yOwrBJXMXQOOPGX..', NULL, NULL, NULL, NULL, NULL, '2023-04-23 20:43:16', '2023-04-23 20:43:16');

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
