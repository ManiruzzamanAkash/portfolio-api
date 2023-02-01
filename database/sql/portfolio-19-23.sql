-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2023 at 09:53 AM
-- Server version: 10.3.37-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `parent_category_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Null if category is parent, else parent id',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>active, 0=>inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `banner_image`, `logo_image`, `description`, `meta_description`, `parent_category_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'web-design', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(2, 'Web Development', 'web-development', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(3, 'App Development', 'app-development', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not seen, 1=seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `subject`, `phone`, `is_seen`, `created_at`, `updated_at`) VALUES
(39, 'Jahangir', 'jahangiralamraju20@gmail.com', 'I need to develop an ERP software', 'I need to develop an ERP software', '01951233084', 0, '2022-06-11 05:49:01', '2022-06-11 05:49:01'),
(40, 'ashenafitadesse', 'ashenafitadesse2012@gmail.com', 'simple relationship in laravel', 'accc', '251920307441', 0, '2022-07-14 05:51:10', '2022-07-14 05:51:10'),
(41, 'Jahangir', 'jahangiralamraju20@gmail.com', 'Bhai, Please check', 'Bhai, Please check', '01951233084', 0, '2022-08-02 10:44:28', '2022-08-02 10:44:28'),
(42, 'somo', 'narshundadigitalit01@gmail.com', 'gfghfggfgfgf', 'php', '01948773475', 0, '2022-08-28 07:35:32', '2022-08-28 07:35:32'),
(43, 'dj', 'jhv@gmail.com', 'hv', 'uvj', '97979799797', 0, '2022-10-16 02:49:12', '2022-10-16 02:49:12'),
(44, 'Cedric Jay Masilang', 'mcedricjay11@gmail.com', 'Hello sir, do u have a tutorial for news portal with role access? thank you!', 'Source Code For News Portal', '09560067034', 0, '2022-10-26 04:41:34', '2022-10-26 04:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `extra_activities`
--

CREATE TABLE `extra_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('programming_skill','social','others') NOT NULL DEFAULT 'others',
  `description` text DEFAULT NULL,
  `online_link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `online_link_text` varchar(255) DEFAULT NULL,
  `order_priority` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Priority, how the data will be displayed',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_activities`
--

INSERT INTO `extra_activities` (`id`, `title`, `type`, `description`, `online_link`, `image`, `online_link_text`, `order_priority`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'URI Online Judge', 'programming_skill', 'Total Solved : <strong>152+</strong><br />\r\nRank : <strong>3,737º</strong>', 'https://www.urionlinejudge.com.br/judge/en/profile/67800', NULL, 'View Profile', 1, 1, '2020-05-03 16:54:43', '2020-05-03 16:54:43'),
(2, 'UVA Online Judge', 'programming_skill', 'Total Solved : <strong>21+</strong><br />\r\nRank : <strong>-</strong>', 'https://uhunt.onlinejudge.org/id/694922', NULL, 'View Profile', 3, 1, '2020-05-03 16:54:43', '2020-05-03 16:54:43'),
(3, 'Hacker Rank Online Judge', 'programming_skill', 'Total Solved : <strong>55+</strong><br />\r\nRank : <strong>-</strong>', 'https://www.hackerrank.com/AkashPSTU', NULL, 'View Profile', 2, 1, '2020-05-03 16:54:43', '2020-05-03 16:54:43'),
(4, 'StackOverflow', 'others', NULL, 'https://stackoverflow.com/users/5543577/maniruzzaman-akash', 'https://stackoverflow.com/users/flair/5543577.png', 'View Profile', 10, 1, '2020-05-03 16:58:08', '2020-05-03 16:58:08'),
(5, 'Youtube Channel', 'social', 'Channel : <strong>Maniruzzaman Akash</strong><br />\r\nSubscriber: <strong>4.2K</strong>', 'https://www.youtube.com/channel/UCHNblf0ynrP1DvoIO-ikgGg', NULL, 'View Channel', 20, 1, '2020-05-03 16:58:08', '2020-05-03 16:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `life_stories`
--

CREATE TABLE `life_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `order_priority` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Priority, how the data will be displayed',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `life_stories`
--

INSERT INTO `life_stories` (`id`, `institution`, `position`, `department`, `short_description`, `long_description`, `start_date`, `end_date`, `is_current`, `order_priority`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Patuakhali Science & Technology University', 'Student', 'Computer Science and Engineering', 'Graduated and completed my Bachelor of Science degree', 'I\'ve completed my Bachelor of Science degree from this repoted university of Bangladesh.', '2015-01-01', '2018-11-30', 0, 1, 1, '2020-04-22 11:25:49', '2020-04-22 11:25:49'),
(2, 'Freelance', 'Web Developer', NULL, 'My Freelancing career start from this year with Web Programming Technology', 'My Freelancing career start from this year with Web Programming Technology.', '2017-05-01', '2018-11-30', 0, 2, 1, '2020-04-22 11:25:49', '2020-04-22 11:25:49'),
(3, 'Agami Soft Ltd.', 'Web Developer', NULL, 'My First Job Career as a full stack web developer with PHP, Vue JS', 'My First Job Career as a full stack web developer with PHP, Vue JS.', '2018-12-01', '2019-05-03', 0, 3, 1, '2020-04-22 11:25:49', '2020-04-22 11:25:49'),
(4, 'Akij Group Ltd.', 'Software Engineer', 'Information Technology', 'My Web career enhance with a new Web Trend, Laravel, Vue JS, React JS, React Native, Dot Net Core', 'My Web career enhance with a new web trend, Laravel, Vue JS, React JS. I\'m now a full time React, React Native Developer.\r\n<br />\r\nIn here, I\'ve done  plenty of projects by this time. \r\n<br />\r\nLike: \r\n<br />\r\n<ul>\r\n<li>\r\nAkij City Center Point of Sale (POS) system using <code>Laravel</code>, <code>Jquery</code>\r\n</li>\r\n<li>\r\niBOS - A Big ERP Solution using <code>React</code>, <code>JavaScript</code>\r\n</li>\r\n</ul>', '2019-05-04', NULL, 0, 4, 1, '2020-04-22 11:25:49', '2020-04-22 11:25:49'),
(5, 'WeDevs Ltd.', 'Software Engineer', 'Software Engineering', 'Enter into the world of standard coding pattern, advance database concept, PHP oop, Wordpress, Vue JS, React JS and more...', 'Enter into the world of standard coding pattern, advance database concept, PHP oop, Wordpress, Vue JS, React JS and more...', '2021-03-03', NULL, 1, 5, 1, '2020-04-22 11:25:49', '2020-04-22 11:25:49');

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
(30, '2014_10_12_000000_create_users_table', 1),
(31, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(32, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(33, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(34, '2016_06_01_000004_create_oauth_clients_table', 1),
(35, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2020_03_14_073845_create_categories_table', 1),
(38, '2020_03_14_073913_create_settings_table', 1),
(39, '2020_03_27_134545_create_permission_tables', 1),
(40, '2020_04_22_145814_create_portfolios_table', 1),
(41, '2020_04_22_145859_create_portfolio_images_table', 1),
(42, '2020_04_22_162139_create_life_stories_table', 1),
(43, '2020_04_22_165808_create_programming_technologies_table', 1),
(44, '2020_04_22_165957_create_portfolio_programming_technologies_table', 1),
(45, '2020_04_24_145140_create_contacts_table', 2),
(47, '2020_05_03_163630_create_extra_activities_table', 3);

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
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
(1, 'porftfolio_category.create', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(2, 'porftfolio_category.edit', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(3, 'porftfolio_category.delete', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(4, 'porftfolio.create', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(5, 'porftfolio.edit', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(6, 'porftfolio.delete', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `live_link` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `is_running` tinyint(1) DEFAULT NULL,
  `order_priority` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `start_date`, `end_date`, `category_id`, `user_id`, `image`, `logo`, `live_link`, `github_link`, `short_description`, `long_description`, `client`, `is_running`, `order_priority`, `created_at`, `updated_at`) VALUES
(1, 'iBOS - A Big ERP Solution', 'ibos', '2020-02-01', NULL, 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos.webp', 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-logo.png', 'https://webappdev.akij.net/', 'https://github.com/ManiruzzamanAkash', 'iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution using <code>React JS</code>', 'iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution', 'Akij Group Ltd.', 1, 10, '2020-04-22 11:25:48', '2020-05-03 23:05:08'),
(2, 'PSTU - A University Website', 'pstu', '2018-02-02', '2018-06-30', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/pstu/pstu.png', 'https://akash.devsenv.com/api/public/images/portfolios/pstu/pstu-logo.png', 'https://pstu.ac.bd/', NULL, 'The Main website of every management of Patuakhali Science and Technolgy University', 'This is the main website of Patuakhali Science and Technology. \r\nThe website included all the informations of Patuakhali Science and Technology University Teachers, Employees, Notices and all..', 'Patuakhali Science and Technology University', 0, 12, '2020-04-22 11:25:48', '2020-05-03 23:05:08'),
(3, 'Akij City - A POS Solution', 'akij-city-pos-solution', '2019-05-05', '2019-08-31', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/akij-city/akij-city-pos.png', 'https://akash.devsenv.com/api/public/images/portfolios/akij-city/akij-city-logo.png', NULL, NULL, 'A Point of Sales System for Akij City Center, one of the brother organization of Akij Group.', 'Akij City Center POS solution is a full inventory system of Akij City Center full shopping center.\r\n<br />\r\nIt includes:\r\n<br />\r\n<ul>\r\n<li>Inventory Management</li>\r\n<li>Stock Management</li>\r\n<li>User & Role Management</li>\r\n<li>POS Printing Machine included system</li>\r\n<li>Many more reports...</li>\r\n</ul>', 'Akij Group Ltd.', 0, 55, '2020-04-24 18:10:41', '2020-05-03 23:05:08'),
(4, 'Your Shop - An Ecommerce Template', 'ecommerce-template', '2018-05-01', '2018-06-01', 1, 1, 'https://akash.devsenv.com/api/public/images/portfolios/ecommerce-template/ecommerce-template.jpg', 'https://akash.devsenv.com/api/public/images/portfolios/ecommerce-template/ecommerce-template-logo.png', 'https://maniruzzamanakash.github.io/EcommerceTemplateBootstrap', 'https://github.com/ManiruzzamanAkash/EcommerceTemplateBootstrap', 'A Multi Purpose Ecommerce Template for open source using <code>HTML</code>, <code>CSS</code>, <code>JavaScript</code>, <code>Bootstrap CSS </code> and so on..', 'A Multi Purpose Ecommerce Template for open source using <code>HTML</code>, <code>CSS</code>, <code>JavaScript</code>, <code>Bootstrap CSS </code> and so on..\r\n<br />\r\nThe following pages includes here:\r\n<br />\r\n<ul>\r\n<li>Products Page</li>\r\n<li>Products Search Page</li>\r\n<li>Add to Cart Page</li>\r\n<li>Checkout Page</li>\r\n<li>Account Page</li>\r\n<li>Order List Page</li>\r\n<li>Registration Page</li>\r\n<li>Login Page</li>\r\n<li>& More...</li>\r\n</ul>', 'Personal', 0, 80, '2020-04-24 18:37:48', '2020-05-03 23:05:08'),
(5, 'TEAM - A Trade Marketing App', 'team-app', '2019-11-01', '2019-12-01', 3, 1, 'https://akash.devsenv.com/api/public/images/portfolios/team-app/team-app.png', 'https://akash.devsenv.com/api/public/images/portfolios/team-app/team-app-logo.png', 'https://play.google.com/store/apps/details?id=com.akij.team&hl=en', NULL, 'TEAM - A bigger trade Marketing app for Akij Food Ltd using <code>React JS</code>, <code>React Native</code>', 'TEAM - A bigger trade Marketing app for Akij Food Ltd using <code>React JS</code>, <code>React Native</code>.\r\n<br />\r\nFeatures Lincludes:\r\n<ul>\r\n<li>Territory Officer Login</li>\r\n<li>Outlet Registration</li>\r\n<li>Outlet Profiling</li>\r\n<li>Store Requisition</li>\r\n<li>Agenda Generation</li>\r\n<li>Performance Meter</li>\r\n<li>& Many more...</li>\r\n</ul>', 'Akij Food & Beverage Ltd.', 0, 45, '2020-04-24 18:47:34', '2020-05-03 23:05:08'),
(6, 'Hire Galaxy - A Job Portal Site', 'hire-galaxy', '2019-03-01', '2019-04-01', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/hire-gallaxy/hire-gallaxy.png', 'https://akash.devsenv.com/api/public/images/portfolios/hire-gallaxy/hire-gallaxy-logo.jpg', 'http://hiregallaxy.com', NULL, 'Hire Galaxy is a canadian Job Portal Site \r\n and developed using <code>Laravel</code>, <code>Vue JS</code>', 'Hire Galaxy is a canadian Job Portal Site \r\n and developed using <code>Laravel</code>, <code>Vue JS</code>\r\n<br />\r\nFeatures Lincludes:\r\n<ul>\r\n<li>Client Login</li>\r\n<li>Client Registration</li>\r\n<li>Job Seeker Login</li>\r\n<li>Job Seeker Registration</li>\r\n<li>Job Posting</li>\r\n<li>Job Apply</li>\r\n<li>Job Searching</li>\r\n<li>Job Crawling</li>\r\n<li>& Many more...</li>\r\n</ul>', 'Hier Galaxy', 0, 100, '2020-04-24 19:00:30', '2020-05-03 23:05:08'),
(7, 'ACCL Engineers - Akij Cement Engineers App', 'accl-engineers-app', '2019-08-01', '2019-09-30', 3, 1, 'https://akash.devsenv.com/api/public/images/portfolios/accl-engineers/accl-engineers-app.png', 'https://akash.devsenv.com/api/public/images/portfolios/accl-engineers/accl-engineers-app-logo.webp', 'https://play.google.com/store/apps/details?id=com.acclengineering', NULL, 'Akij Cement Engineers app for Akij Grup\'s external Engineers, developed using <code>React JS</code>, <code>React Native</code>', 'Akij Cement Engineers app for Akij Grup\'s external Engineers, developed using <code>React JS</code>, <code>React Native</code>\r\n<br />\r\nFeatures includes:\r\n<ul>\r\n<li>Engineers Login</li>\r\n<li>Engineers Registration</li>\r\n<li>Cement Calculator</li>\r\n<li>Order Taking</li>\r\n<li>Complain Taking</li>\r\n<li>& Many more...</li>\r\n</ul>', 'Akij Cement Ltd.', 0, 20, '2020-04-24 19:19:58', '2020-05-03 23:05:08'),
(8, 'Maccaf - An Ecommerce Store', 'ecommerce-maccaf', '2019-05-01', '2019-06-01', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/maccaf/maccaf.png', 'https://akash.devsenv.com/api/public/images/portfolios/maccaf/logo.png', 'http://ecommerce.devsenv.com/', NULL, 'A Multi Purpose Ecommerce website developed using <code>HTML</code>, <code>CSS</code>, <code>JavaScript</code>, <code>Bootstrap CSS </code>,<code>Laravel</code>, <code>Vue JS</code> and so on..', 'A Multi Purpose Ecommerce website developed using <code>HTML</code>, <code>CSS</code>, <code>JavaScript</code>, <code>Bootstrap CSS </code>,<code>Laravel</code>, <code>Vue JS</code> and so on..\r\n<br />\r\nThe following pages includes here:\r\n<br />\r\n<ul>\r\n<li>Products Page</li>\r\n<li>Products Search Page</li>\r\n<li>Add to Cart Page</li>\r\n<li>Checkout Page</li>\r\n<li>Account Page</li>\r\n<li>Order List Page</li>\r\n<li>Registration Page</li>\r\n<li>Login Page</li>\r\n<li>& More...</li>\r\n</ul>', 'Arman Hossain CEO of Maccaf', 0, 40, '2020-05-03 16:10:43', '2020-05-03 23:05:08'),
(9, 'Akij Cement - App of Akij Cement Ltd.', 'akij-cement-app', '2019-09-01', '2019-09-30', 3, 1, 'https://akash.devsenv.com/api/public/images/portfolios/akij-cement/akij-cement.png', 'https://akash.devsenv.com/api/public/images/portfolios/akij-cement/akij-cement-logo.webp', 'https://play.google.com/store/apps/details?id=com.accl_sales', NULL, 'Akij Cement app for Akij Cement Ltd\'s employees , developed using <code>React JS</code>, <code>React Native</code>', 'Akij Cement app for Akij Cement Ltd\'s employees , developed using <code>React JS</code>, <code>React Native</code>\r\n<br />\r\nFeatures includes:\r\n<ul>\r\n<li>Employee Login</li>\r\n<li>Sales Process</li>\r\n<li>Delivery Process</li>\r\n<li>Transport Process</li>\r\n<li>HR</li>\r\n<li>Leave Management</li>\r\n<li>Attendance</li>\r\n<li>& Many more...</li>\r\n</ul>', 'Akij Cement Ltd.', 0, 70, '2020-05-03 16:18:10', '2020-05-03 23:05:08'),
(10, 'PSTU Library - Central Library Website of PSTU', 'pstu-library', '2018-07-01', '2018-09-30', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/pstu-library/library.png', 'https://akash.devsenv.com/api/public/images/portfolios/pstu-library/logo.png', 'http://codinghousebd.com/library/public/', NULL, 'The Main library website of Patuakhali Science and Technology University', 'The Main library website of Patuakhali Science and Technology University.\r\n<br />\r\nDeveloped using <code>Laravel</code> and <code>Vue Js</code>', 'Patuakhali Science and Technology University', 0, 60, '2020-05-03 16:26:56', '2020-05-03 23:05:08'),
(11, 'My Tender - Tender Website Design', 'my-tender', '2017-10-01', '2017-10-05', 1, 1, 'https://akash.devsenv.com/api/public/images/portfolios/tender/tender.png', 'https://akash.devsenv.com/api/public/images/portfolios/tender/logo.png', 'http://akash.codinghousebd.com/projects/myTender/', NULL, 'The Design of a tender website using <code>Bootstrap CSS</code>', 'The Design of a tender website using <code>Bootstrap CSS</code>', 'Personal', 0, 10, '2020-05-03 16:33:26', '2020-05-03 23:05:08'),
(12, 'Pipe Line Admin Panel Design', 'pipeline-admin-panel-design', '2020-10-01', '2020-10-15', 1, 1, 'https://i.ibb.co/DfGqqtp/01-Home-Page-Dashboard.png', 'https://i.ibb.co/nRbgy1Z/logo.png', NULL, NULL, 'Pipe line is a issue tracking admin dashboard.', 'Designed with <br />\r\n1. HTML<br />\r\n2. CSS<br />\r\n3. Bootstrap CSS<br />\r\n4. jQuery<br />\r\n5. Webpack<br />', NULL, 0, 25, '2020-12-16 10:23:32', '2020-12-16 10:23:32'),
(13, 'iApp - Intelligent Business App', 'iapp', '2020-05-01', NULL, 3, 1, 'https://i.ibb.co/WgMTCYH/playstore-demo.png', 'https://i.ibb.co/Y2tsCJz/logo.png', 'https://play.google.com/store/apps/details?id=com.akij.iapp', NULL, 'iApp - Intelligent Business App developed with React, React Native, Redux.', 'A Business app (android/ios) for  of Akij Group.<br />\r\nIt is done with React, React Native, Redux for frontend and Laravel as API backend.<br /><br />\r\n\r\nFeatures include -<br />\r\n1. HR<br />\r\ni) Employee Management<br />\r\nii) Leave Management<br />\r\niii) Movement Management<br />\r\niv) Attendance Management<br />\r\nv) Salary Management<br />\r\nvi) Task Management<br />\r\n2. Sales<br />\r\ni) Primary Sales<br />\r\na) Create Sales Order<br />\r\nb) Create Sales Requisition<br />\r\nc) View Sales Order and Approve<br />\r\nii) Secondary Sales<br />\r\n3. Distribution<br />\r\n4. Supplier Management<br />\r\ni) Transport Supplier<br />\r\nii) Raw Material Supplier<br />\r\niii) Other<br />\r\niv) Supplier Accounts<br />\r\n5. Customer Management<br />\r\ni) Customer Accounts<br />\r\n6. Customer Portal<br />\r\n7. Supplier Portal<br />\r\n8. Many More...<br />', 'Akij Group Ltd.', 1, 15, '2020-12-16 10:23:32', '2020-12-16 10:23:32'),
(14, 'Crew Management - Akij Shipping Lines Ltd.', 'crew-management', '2020-10-01', '2020-11-30', 2, 1, 'https://i.ibb.co/3RbjWHN/0-Login-Page.png', 'http://crew.akijshipping.com/media/logos/logo.png', 'http://crew.akijshipping.com', NULL, 'Akij Shippings Crew Website using React, Redux, Redux-thunk, Jwt Auth', 'Akij Shipping Lines Ltd.\'s Crew Management Work.<br /><br />\r\n\r\nFeatures include -<br />\r\n1. HR <br />\r\ni) Employee Management<br />\r\nii) Signing Management<br />\r\niii) Profiling Management<br />\r\n<br />\r\n2. Vessel Management<br />\r\ni) Akij Shipping Lines Vessel Management\r\n<br /><br />\r\n3. Procurement Management<br />\r\n4. Salary Managment<br />\r\n5. Bulk Data Management<br />\r\n6. Many More Reports<br />\r\n', 'Akij Shipping Lines Ltd.', 0, 20, '2020-12-16 10:23:32', '2020-12-16 10:23:32'),
(15, 'React Advanced CRUD', 'react-advanced-crud', '2020-12-13', '2020-12-19', 2, 1, 'https://i.ibb.co/sjTwS2L/3-Dashboard-Page.png', 'https://react-crud.devsenv.com/logo192.png', 'https://react-crud.devsenv.com', 'https://github.com/ManiruzzamanAkash/React-Basic-CRUD', 'An Advanced CRUD application using React, Redux, Jwt Auth, Module Based development and API with Laravel.\r\n', 'An Advanced CRUD application using React, Redux, Jwt Auth, Module Based development and API with Laravel..<br /><br />\r\n\r\nFeatures include -<br />\r\nPublic Module<br />\r\n Publicly Product Access<br />\r\nAuth Module<br />\r\n Sign Up<br />\r\n Email Unique Validation<br />\r\n Frontend Validation<br />\r\n Backend Validation<br />\r\n Login to User Panel<br />\r\nProduct Module<br />\r\n Product List View<br />\r\n Product Pagination<br />\r\n Product Searching<br />\r\n Product Detail View/Less Show in List<br />\r\n Product Details<br />\r\n Backup Image while loading fail<br />\r\n Create Product<br />\r\n Add HTML Text Editor<br />\r\n Image Upload System<br />\r\n Image Preview System<br />\r\n Frontend/Server Validation<br />\r\n Edit Product<br />\r\n Same as Create<br />\r\n Delete Product<br />\r\n Sweet Alert Integrate<br />\r\n', 'Personal', 0, 12, '2020-12-16 10:23:32', '2020-12-16 10:23:32'),
(16, 'DMWords - A Big Dictionary Project', 'dmwords', '2021-01-01', '2021-06-30', 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/dmwords/dmwords-home.png', 'https://akash.devsenv.com/api/public/images/portfolios/dmwords/dmwords-logo.png', 'https://dmwords.com/', NULL, 'DM words (Dictionary with 1000 words) is created to solve many immigration issues for governments, companies who deal with foreign labor force and basic needs in everyday life for all groups of immigrant using <code>Laravel</code> &<code>React JS</code>', 'DM words (Dictionary with 1000 words) is created to solve many immigration issues for governments, companies who deal with foreign labor force and basic needs in everyday life for all groups of immigrant', 'Faton Krasniqi', 0, 5, '2021-07-16 10:30:31', '2021-07-16 10:30:31'),
(17, 'DeshiBazaarBD - A Multi vendor Ecommerce market place', 'deshibazaarbd', '2021-05-01', NULL, 2, 1, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/desi-homepage.png', 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/deshi-logo.png\r\n', 'https://lacefeeta.com/', NULL, 'Deshibazaarbd is a upcoming multi vendor market place in Bangladesh with various fields. It\'s developed using <code>Laravel</code> &<code>React JS</code>', 'Deshibazaarbd is a upcoming multi vendor market place in Bangladesh with various fields', 'Deshi Bazaar Corp.', 1, 5, '2021-07-16 10:30:31', '2021-07-16 10:30:31'),
(18, 'Dokan - Multi-vendor Plugin for Woocommerce', 'dokan', '2021-10-01', NULL, 2, 1, 'https://wedevs.com/_ipx/img/dokan/front-page/dokan-interface-vendor.png?w=1026&f=webp', 'https://wedevs.com/_ipx/img/logos/dokan-logo.svg?f=webp&q=100\r\n', 'https://wedevs.com/dokan/', NULL, 'Dokan - Multivendor Ecommerce Plugin for Woocommerce and WordPress. It\'s developed using <code>PHP</code>,<code>WordPress</code>, <code>JavaScript</code>', 'Dokan - Multivendor Ecommerce Plugin for Woocommerce', 'weDevs Ltd.', 1, 2, '2021-07-16 10:30:31', '2021-07-16 10:30:31'),
(19, 'WP ERP - ERP Plugin for WordPress', 'wp-erp', '2021-04-01', NULL, 2, 1, 'https://cdn.wperp.com/uploads/2018/04/home-feature-thumb.png', 'https://cdn.wperp.com/app/themes/wp-erp/assets/images/wperp-white-logo.svg', 'https://wperp.com/', NULL, 'WP ERP is human resource management plugin for WordPress. It\'s developed using <code>PHP</code>,<code>WordPress</code>, <code>JavaScript</code>', 'WP ERP is human resource management plugin for WordPress. It\'s developed using <code>PHP</code>,<code>WordPress</code>, <code>JavaScript</code>', 'weDevs Ltd.', 1, 3, '2021-07-16 10:30:31', '2021-07-16 10:30:31'),
(20, 'WP Project Manager - Project Management Plugin for WordPress', 'wp-project-manager', '2021-03-01', NULL, 2, 1, 'https://wedevs.com/img/pm/pm-banner-feature-image.svg', 'https://wedevs.com/_ipx/img/logos/pm-logo.svg?f=webp&q=100', 'https://wedevs.com/wp-project-manager-pro/', NULL, 'WP Project Manager is a Project Management tool like Jira. It\'s developed using <code>WordPress</code> &<code>PHP</code>', 'WP Project Manager is a Project Management tool like Jira. It\'s developed using WordPress', 'weDevs Ltd.', 1, 4, '2021-07-16 10:30:31', '2021-07-16 10:30:31'),
(21, 'CartPulse - Abandoned Cart Recovery Plugin for Woocommerce and WordPress', 'cartpulse', '2022-01-01', NULL, 2, 1, 'https://cartpulse.co/wp-content/uploads/2022/07/complete-dashboard__2x.png', 'https://cartpulse.co/wp-content/uploads/2022/06/CartPulse-1.png', 'https://cartpulse.co/', NULL, 'CartPulse - Abandoned Cart Recovery Plugin for Woocommerce and WordPress. It\'s developed using <code>PHP</code>,<code>WordPress</code>, <code>JavaScript</code>, <code>React JS</code>, <code>TypeScript</code>,  & <code>Tailwind CSS</code>', 'CartPulse - Abandoned Cart Recovery Plugin for Woocommerce and WordPress. It\'s developed using WordPress', 'weDevs Ltd.', 1, 0, '2021-07-16 10:30:31', '2021-07-16 10:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `image`, `caption`, `details`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(1, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-sales-page.png', 'Sales Order Screen', 'Sales Order Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(2, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-business-unit.png', 'Business Unit Create', 'Business Unit Create Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(3, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-configuration-page.png', 'iBOS Configuration Page', 'iBOS Configuration Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(4, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-dashboard-page.png', 'iBOS Dashboard Page', 'iBOS Dashboard Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(5, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-login-page.png', 'iBOS Login Page', 'iBOS Login Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(6, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-multilanguage.png', 'iBOS Multi Language Page', 'iBOS Multi Language Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(7, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-invoicing.png', 'iBOS Invoicing Page', 'iBOS Invoicing Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(8, 'https://akash.devsenv.com/api/public/images/portfolios/ibos/ibos-sales-page-list.png', 'iBOS Sales List Page', 'iBOS Sales List Page Screen of iBOS web application', 1, '2020-04-23 14:34:22', '2020-05-03 23:05:08'),
(9, 'https://akash.devsenv.com/api/public/images/portfolios/hire-gallaxy/home-page.png', 'Hire Galaxy Home Page', 'This is the home page of Hire Galaxy', 6, '2020-04-24 19:11:37', '2020-05-03 23:05:08'),
(10, 'https://akash.devsenv.com/api/public/images/portfolios/hire-gallaxy/search-jobs-page.png', 'Hire Galaxy Search Page', 'This is the job search page of Hire Galaxy', 6, '2020-04-24 19:11:37', '2020-05-03 23:05:08'),
(11, 'https://akash.devsenv.com/api/public/images/portfolios/hire-gallaxy/sign-up-page.png', 'Hire Galaxy Sign Up Page', 'This is the sign up page of Hire Galaxy. Employer, Employee bot can sign up via this.', 6, '2020-04-24 19:11:37', '2020-05-03 23:05:08'),
(12, 'https://i.ibb.co/DfGqqtp/01-Home-Page-Dashboard.png', 'Dashboard Page', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(13, 'https://i.ibb.co/VCSpXLK/02-Home-Page-Dashboard-2.png', 'Dashboard Page - 2', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(14, 'https://i.ibb.co/k2tYTzx/03-Home-Page-Dashboard-3.png', 'Dashboard Page - 3', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(15, 'https://i.ibb.co/bL6GkbX/04-Discover-Page.png', 'Discover Page', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(16, 'https://i.ibb.co/zQRsLGQ/04-Discover-Page-Table.png', 'Discover Page - 2', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(17, 'https://i.ibb.co/xMSqZBY/05-Alerts-Page.png', 'Reports Page', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(18, 'https://i.ibb.co/TW8m0y5/07-Settings-Page.png', 'Settings Page', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(19, 'https://i.ibb.co/RDq5JhT/10-Settings-Page-Create-Usert.png', 'Settings Page - Create User', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(20, 'https://i.ibb.co/SwwDLc0/11-Settings-Page-User-List.png', 'Settings Page - User List', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(21, 'https://i.ibb.co/mvQCr6t/09-Settings-Page-Change-Password.png', 'Settings Page - Change Password', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(22, 'https://i.ibb.co/YttxdtN/08-Settings-Page-Categories.png', 'Settings Page - Categories', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(23, 'https://i.ibb.co/x3cZxNH/06-Reports-Page.png', 'Settings Page - Reports', NULL, 12, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(24, 'https://i.ibb.co/3RbjWHN/0-Login-Page.png', 'Login Page', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(25, 'https://i.ibb.co/4dHw6M2/1-Employee-Create.png', 'Create Employee Page', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(26, 'https://i.ibb.co/H43wCv0/2-Salary-Info.png', 'Salary', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(27, 'https://i.ibb.co/51GK7pc/3-Vessel-Management.png', 'Vessel Management', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(28, 'https://i.ibb.co/YZQGXfW/4-Procurement.png', 'Procurement Management', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(29, 'https://i.ibb.co/cgfM2pD/5-Employee-Signing.png', 'Employee Sign In Out', NULL, 14, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(30, 'https://i.ibb.co/m4pFMrm/1-Login.png', 'Login Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(31, 'https://i.ibb.co/B3hB4Bt/2-Sign-Up.png', 'Signup Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(32, 'https://i.ibb.co/2tfwvzQ/5-Product-List-Page.png', 'Product List Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(33, 'https://i.ibb.co/1ZqRz8L/6-Product-Create-Page-2.png', 'Product Create Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(34, 'https://i.ibb.co/s5dSgzr/8-Product-Detail-Page.png', 'Product Detail Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(35, 'https://i.ibb.co/v3CMDfv/0-Home-Page-Without-Login.png', 'Product Page', NULL, 15, '2020-12-16 10:29:48', '2020-12-16 10:29:48'),
(36, 'https://akash.devsenv.com/api/public/images/portfolios/dmwords/dmwords-home.png', 'Home Page of DM Words', '', 16, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(37, 'https://akash.devsenv.com/api/public/images/portfolios/dmwords/dmwords-category.png', 'Category Page of DM Words', '', 16, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(38, 'https://akash.devsenv.com/api/public/images/portfolios/dmwords/dmwords-detail.png', 'Category Detail Page of DM Words', '', 16, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(39, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/desi-homepage.png', 'Home Page of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(40, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/desi-home-sect.png', 'Home Page Section of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(41, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/product-detail.png', 'Product Detail of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(42, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/product-list.png', 'Product List of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(43, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/product-modal.png', 'Product Modal of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(44, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/cart.png', 'Cart of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(45, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/checkout-step1.png', 'Checkout Page of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(46, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/account.png', 'Account Page of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(47, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/seller-login.png', 'Seller Login Page of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30'),
(48, 'https://akash.devsenv.com/api/public/images/portfolios/deshibazaarbd/search.png', 'Search Portion of DeshiBazaarBD', '', 17, '2021-07-16 10:32:30', '2021-07-16 10:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_programming_technologies`
--

CREATE TABLE `portfolio_programming_technologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `pt_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_programming_technologies`
--

INSERT INTO `portfolio_programming_technologies` (`id`, `portfolio_id`, `pt_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(2, 1, 2, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(3, 1, 4, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(4, 1, 7, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(5, 1, 8, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(6, 2, 1, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(7, 2, 2, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(8, 2, 4, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(9, 2, 5, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(10, 2, 6, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(11, 2, 8, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(12, 3, 5, '2020-04-24 18:29:58', '2020-04-24 18:29:58'),
(13, 3, 6, '2020-04-24 18:29:58', '2020-04-24 18:29:58'),
(14, 4, 1, '2020-04-24 18:38:44', '2020-04-24 18:38:44'),
(15, 4, 2, '2020-04-24 18:38:44', '2020-04-24 18:38:44'),
(16, 4, 8, '2020-04-24 18:39:19', '2020-04-24 18:39:19'),
(17, 5, 4, '2020-04-24 18:48:21', '2020-04-24 18:48:21'),
(18, 5, 7, '2020-04-24 18:48:21', '2020-04-24 18:48:21'),
(19, 3, 11, '2020-04-24 18:48:36', '2020-04-24 18:48:36'),
(20, 5, 11, '2020-04-24 18:53:18', '2020-04-24 18:53:18'),
(21, 6, 5, '2020-04-24 19:01:01', '2020-04-24 19:01:01'),
(22, 6, 6, '2020-04-24 19:01:01', '2020-04-24 19:01:01'),
(23, 7, 7, '2020-04-24 19:20:28', '2020-04-24 19:20:28'),
(24, 7, 11, '2020-04-24 19:20:28', '2020-04-24 19:20:28'),
(25, 8, 5, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(26, 8, 6, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(27, 9, 7, '2020-05-03 16:18:32', '2020-05-03 16:18:32'),
(28, 9, 11, '2020-05-03 16:18:47', '2020-05-03 16:18:47'),
(29, 10, 5, '2020-05-03 16:27:09', '2020-05-03 16:27:09'),
(30, 10, 6, '2020-05-03 16:27:09', '2020-05-03 16:27:09'),
(31, 11, 8, '2020-05-03 16:33:45', '2020-05-03 16:33:45'),
(32, 12, 1, '2020-12-16 10:24:24', '2020-12-16 10:24:24'),
(33, 12, 2, '2020-12-16 10:24:24', '2020-12-16 10:24:24'),
(34, 12, 8, '2020-12-16 10:24:24', '2020-12-16 10:24:24'),
(35, 12, 4, '2020-12-16 10:24:24', '2020-12-16 10:24:24'),
(36, 12, 9, '2020-12-16 10:24:24', '2020-12-16 10:24:24'),
(37, 13, 1, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(38, 13, 2, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(39, 13, 4, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(40, 13, 7, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(41, 13, 11, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(42, 13, 12, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(43, 14, 7, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(44, 14, 4, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(45, 14, 2, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(46, 14, 12, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(47, 14, 5, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(48, 15, 7, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(49, 15, 4, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(50, 15, 12, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(51, 15, 8, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(52, 16, 8, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(53, 16, 7, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(54, 16, 5, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(55, 17, 5, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(56, 17, 4, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(57, 17, 8, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(58, 17, 7, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(59, 17, 12, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(60, 17, 3, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(61, 17, 2, '2020-05-03 16:13:06', '2020-05-03 16:13:06'),
(62, 18, 13, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(63, 18, 3, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(64, 21, 3, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(65, 21, 13, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(66, 21, 7, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(67, 21, 15, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(68, 21, 14, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(69, 21, 12, '2020-04-22 11:25:48', '2020-04-22 11:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `programming_technologies`
--

CREATE TABLE `programming_technologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programming_technologies`
--

INSERT INTO `programming_technologies` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'html', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(2, 'CSS', 'css', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(3, 'PHP', 'php', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(4, 'JavaScript', 'javascript', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(5, 'Laravel', 'laravel', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(6, 'Vue JS', 'vue-js', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(7, 'React JS', 'react-js', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(8, 'Bootstrap CSS', 'bootstrap-css', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(9, 'JQuery', 'jquery', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48'),
(11, 'React Native', 'react-native', NULL, '2020-04-24 18:47:49', '2020-04-24 18:47:49'),
(12, 'Redux', 'redux', NULL, '2020-12-16 10:44:24', '2020-12-16 10:44:24'),
(13, 'WordPress', 'wordpress', NULL, '2020-12-16 10:44:24', '2020-12-16 10:44:24'),
(14, 'Gutenberg', 'gutenberg', NULL, '2020-12-16 10:44:24', '2020-12-16 10:44:24'),
(15, 'TypeScript', 'typescript', NULL, '2020-12-16 10:44:24', '2020-12-16 10:44:24');

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
(1, 'User', 'web', '2020-04-22 11:25:48', '2020-04-22 11:25:48');

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
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Maniruzzaman Akash',
  `logo` varchar(255) NOT NULL DEFAULT 'logo.png',
  `profile_image` varchar(255) NOT NULL DEFAULT 'profile.png',
  `favicon` varchar(255) NOT NULL DEFAULT 'favicon.ico',
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `welcome_message` text DEFAULT NULL,
  `is_welcome_enable` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'True means welcome text will be visible, invisible otherwise',
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `contact_no_primary` varchar(255) DEFAULT NULL,
  `contact_no_secondary` varchar(255) DEFAULT NULL,
  `contact_no_all` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `cv_file` varchar(100) DEFAULT NULL,
  `instagram_link` varchar(191) DEFAULT NULL,
  `custom_data1` varchar(255) DEFAULT NULL,
  `custom_data2` varchar(255) DEFAULT NULL,
  `custom_data3` varchar(255) DEFAULT NULL,
  `custom_data4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `profile_image`, `favicon`, `short_description`, `description`, `copyright_text`, `welcome_message`, `is_welcome_enable`, `meta_description`, `meta_keywords`, `meta_author`, `contact_no_primary`, `contact_no_secondary`, `contact_no_all`, `phone`, `email`, `address`, `github_link`, `facebook_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `cv_file`, `instagram_link`, `custom_data1`, `custom_data2`, `custom_data3`, `custom_data4`, `created_at`, `updated_at`) VALUES
(1, 'Maniruzzaman Akash', 'https://akash.devsenv.com/api/public/images/logo.png', 'https://akash.devsenv.com/api/public/images/profile/profile.png', 'https://akash.devsenv.com/api/public/images/favicon.ico', 'Hi, I\'m Maniruzzaman Akash', 'I\'m a full stack web developer experiencing more than 5+ years with <br /><code>PHP</code>, <code>WordPress</code>, <code>Gutenberg Block Development</code>, <code>Laravel</code>, <code>JavaScript</code>,<code>React Js</code>, <code>TypeScript</code>, <code>Next JS</code>, <code>MySQL</code>,  <br />and many more..', '&copy; 2020 all rights reserved - Maniruzzaman Akash', 'Welcome to my portfolio', 1, 'Maniruzzaman Akash, Software Engineer with Laravel, Vue and React js', 'Maniruzzaman Akash, React Developer, Laravel Developer, Vue Developer', 'Maniruzzaman Akash', '+8801951233084', '+8801314925185', '01711287849', NULL, 'manirujjamanakash@gmail.com', '87/ka Mohakhali, Dhaka, Banani, Dhaka-1213', 'https://github.com/ManiruzzamanAkash', 'https://www.facebook.com/maniruzzaman.akash', 'https://www.youtube.com/channel/UCHNblf0ynrP1DvoIO-ikgGg', 'https://twitter.com/ManiruzzamanAk', 'https://www.linkedin.com/in/maniruzzamanakash', 'https://akash.devsenv.com/cv.pdf', 'https://www.instagram.com/maniruzzamanakash', NULL, NULL, NULL, NULL, '2020-04-22 11:25:49', '2020-05-03 23:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maniruzzaman', 'Akash', 'maniruzzman', '+8801951233084', 'manirujjamanakash@gmail.com', NULL, '$2y$10$hpeY0d9x1a2M.3n3ESJjfOGMb0Q5MLZZNmusPYfnwUp9k8JfY7CES', NULL, '2020-04-22 11:25:48', '2020-04-22 11:25:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `index_status` (`status`),
  ADD KEY `index_slug` (`slug`),
  ADD KEY `index_deleted_at` (`deleted_at`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_activities`
--
ALTER TABLE `extra_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `life_stories`
--
ALTER TABLE `life_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `life_stories_user_id_foreign` (`user_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_slug_unique` (`slug`),
  ADD KEY `portfolios_category_id_foreign` (`category_id`),
  ADD KEY `portfolios_user_id_foreign` (`user_id`),
  ADD KEY `index_order_priority` (`order_priority`),
  ADD KEY `index_is_running` (`is_running`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_images_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `portfolio_programming_technologies`
--
ALTER TABLE `portfolio_programming_technologies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_programming_technologies_portfolio_id_foreign` (`portfolio_id`),
  ADD KEY `portfolio_programming_technologies_pt_id_foreign` (`pt_id`);

--
-- Indexes for table `programming_technologies`
--
ALTER TABLE `programming_technologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_first_name_index` (`first_name`),
  ADD KEY `users_phone_no_index` (`phone_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `extra_activities`
--
ALTER TABLE `extra_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `life_stories`
--
ALTER TABLE `life_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `portfolio_programming_technologies`
--
ALTER TABLE `portfolio_programming_technologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `programming_technologies`
--
ALTER TABLE `programming_technologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `extra_activities`
--
ALTER TABLE `extra_activities`
  ADD CONSTRAINT `extra_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `life_stories`
--
ALTER TABLE `life_stories`
  ADD CONSTRAINT `life_stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD CONSTRAINT `portfolio_images_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio_programming_technologies`
--
ALTER TABLE `portfolio_programming_technologies`
  ADD CONSTRAINT `portfolio_programming_technologies_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolio_programming_technologies_pt_id_foreign` FOREIGN KEY (`pt_id`) REFERENCES `programming_technologies` (`id`) ON DELETE CASCADE;

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
