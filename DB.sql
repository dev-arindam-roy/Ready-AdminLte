-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2021 at 04:01 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_module`
--

DROP TABLE IF EXISTS `dashboard_module`;
CREATE TABLE IF NOT EXISTS `dashboard_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dashboard_module`
--

INSERT INTO `dashboard_module` (`id`, `name`, `order_no`) VALUES
(1, 'Admin Management', 1),
(2, 'Banner Management', 2),
(3, 'CMS Page Management', 3),
(4, 'FAQ Management', 4),
(5, 'Menu Management', 5),
(6, 'Event Management', 7),
(7, 'Career Management', 8),
(8, 'Image Gallery Management', 9),
(9, 'Video Gallery Management', 10),
(10, 'Email Template Management', 11),
(11, 'Social Link Management', 12),
(12, 'General Settings', 13),
(13, 'Project Management', 6),
(14, 'Popup Management', 4);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_tagline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_favicon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_per_page` tinyint(4) NOT NULL DEFAULT 25,
  `site_footer_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dd-mm-YY',
  `timezone_id` tinyint(4) NOT NULL DEFAULT 0,
  `search_visibility` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_tagline`, `site_logo`, `site_favicon`, `site_description`, `display_per_page`, `site_footer_text`, `date_format`, `timezone_id`, `search_visibility`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'MLM CRM', 'MLM CRM', 'site_logo_1632582361.png', 'site_favicon_1632582363.png', 'MLM CRM', 10, 'Copyright © MLM CRM', 'dd-mm-YY', 0, 0, 0, 0, '2019-01-15 00:26:27', '2021-09-25 09:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_03_05_064612_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(5, 'App\\Models\\Users', 1),
(5, 'App\\Models\\Users', 60),
(6, 'App\\Models\\Users', 1),
(6, 'App\\Models\\Users', 60),
(6, 'App\\Models\\Users', 62),
(7, 'App\\Models\\Users', 1),
(7, 'App\\Models\\Users', 60),
(7, 'App\\Models\\Users', 62),
(8, 'App\\Models\\Users', 1),
(8, 'App\\Models\\Users', 60),
(8, 'App\\Models\\Users', 62),
(9, 'App\\Models\\Users', 1),
(9, 'App\\Models\\Users', 60),
(9, 'App\\Models\\Users', 62),
(10, 'App\\Models\\Users', 1),
(10, 'App\\Models\\Users', 60),
(10, 'App\\Models\\Users', 62),
(11, 'App\\Models\\Users', 1),
(11, 'App\\Models\\Users', 60),
(11, 'App\\Models\\Users', 62),
(12, 'App\\Models\\Users', 1),
(12, 'App\\Models\\Users', 60),
(12, 'App\\Models\\Users', 62),
(13, 'App\\Models\\Users', 1),
(13, 'App\\Models\\Users', 60),
(13, 'App\\Models\\Users', 62),
(14, 'App\\Models\\Users', 1),
(14, 'App\\Models\\Users', 60),
(14, 'App\\Models\\Users', 62),
(15, 'App\\Models\\Users', 1),
(15, 'App\\Models\\Users', 60),
(15, 'App\\Models\\Users', 61),
(16, 'App\\Models\\Users', 1),
(16, 'App\\Models\\Users', 60),
(16, 'App\\Models\\Users', 61),
(17, 'App\\Models\\Users', 1),
(17, 'App\\Models\\Users', 60),
(17, 'App\\Models\\Users', 61),
(18, 'App\\Models\\Users', 1),
(18, 'App\\Models\\Users', 60),
(18, 'App\\Models\\Users', 61),
(19, 'App\\Models\\Users', 1),
(19, 'App\\Models\\Users', 60),
(20, 'App\\Models\\Users', 1),
(20, 'App\\Models\\Users', 60),
(21, 'App\\Models\\Users', 1),
(21, 'App\\Models\\Users', 60),
(22, 'App\\Models\\Users', 1),
(22, 'App\\Models\\Users', 60),
(23, 'App\\Models\\Users', 1),
(23, 'App\\Models\\Users', 60),
(24, 'App\\Models\\Users', 1),
(24, 'App\\Models\\Users', 60),
(25, 'App\\Models\\Users', 1),
(25, 'App\\Models\\Users', 60),
(26, 'App\\Models\\Users', 1),
(26, 'App\\Models\\Users', 60),
(27, 'App\\Models\\Users', 1),
(27, 'App\\Models\\Users', 60),
(28, 'App\\Models\\Users', 1),
(28, 'App\\Models\\Users', 60),
(29, 'App\\Models\\Users', 1),
(29, 'App\\Models\\Users', 60),
(30, 'App\\Models\\Users', 1),
(30, 'App\\Models\\Users', 60),
(31, 'App\\Models\\Users', 1),
(31, 'App\\Models\\Users', 60),
(31, 'App\\Models\\Users', 61),
(31, 'App\\Models\\Users', 62),
(32, 'App\\Models\\Users', 1),
(32, 'App\\Models\\Users', 60),
(32, 'App\\Models\\Users', 61),
(32, 'App\\Models\\Users', 62),
(33, 'App\\Models\\Users', 1),
(33, 'App\\Models\\Users', 60),
(33, 'App\\Models\\Users', 61),
(33, 'App\\Models\\Users', 62),
(34, 'App\\Models\\Users', 1),
(34, 'App\\Models\\Users', 60),
(34, 'App\\Models\\Users', 61),
(34, 'App\\Models\\Users', 62),
(35, 'App\\Models\\Users', 1),
(35, 'App\\Models\\Users', 60),
(35, 'App\\Models\\Users', 61),
(35, 'App\\Models\\Users', 62),
(36, 'App\\Models\\Users', 1),
(36, 'App\\Models\\Users', 60),
(36, 'App\\Models\\Users', 61),
(36, 'App\\Models\\Users', 62),
(37, 'App\\Models\\Users', 1),
(37, 'App\\Models\\Users', 60),
(37, 'App\\Models\\Users', 61),
(37, 'App\\Models\\Users', 62),
(38, 'App\\Models\\Users', 1),
(38, 'App\\Models\\Users', 60),
(38, 'App\\Models\\Users', 61),
(38, 'App\\Models\\Users', 62),
(39, 'App\\Models\\Users', 1),
(39, 'App\\Models\\Users', 60),
(40, 'App\\Models\\Users', 1),
(40, 'App\\Models\\Users', 60),
(41, 'App\\Models\\Users', 1),
(41, 'App\\Models\\Users', 60),
(42, 'App\\Models\\Users', 1),
(42, 'App\\Models\\Users', 60),
(43, 'App\\Models\\Users', 1),
(43, 'App\\Models\\Users', 60),
(43, 'App\\Models\\Users', 62),
(44, 'App\\Models\\Users', 1),
(44, 'App\\Models\\Users', 60),
(44, 'App\\Models\\Users', 62),
(45, 'App\\Models\\Users', 1),
(45, 'App\\Models\\Users', 60),
(45, 'App\\Models\\Users', 62),
(46, 'App\\Models\\Users', 1),
(46, 'App\\Models\\Users', 60),
(46, 'App\\Models\\Users', 62),
(47, 'App\\Models\\Users', 1),
(47, 'App\\Models\\Users', 60),
(48, 'App\\Models\\Users', 1),
(48, 'App\\Models\\Users', 60),
(49, 'App\\Models\\Users', 1),
(49, 'App\\Models\\Users', 60),
(50, 'App\\Models\\Users', 1),
(50, 'App\\Models\\Users', 60),
(51, 'App\\Models\\Users', 1),
(51, 'App\\Models\\Users', 60),
(52, 'App\\Models\\Users', 1),
(52, 'App\\Models\\Users', 60),
(53, 'App\\Models\\Users', 1),
(53, 'App\\Models\\Users', 60),
(54, 'App\\Models\\Users', 1),
(54, 'App\\Models\\Users', 60),
(55, 'App\\Models\\Users', 1),
(55, 'App\\Models\\Users', 60),
(56, 'App\\Models\\Users', 1),
(56, 'App\\Models\\Users', 60),
(56, 'App\\Models\\Users', 62),
(57, 'App\\Models\\Users', 1),
(57, 'App\\Models\\Users', 60),
(59, 'App\\Models\\Users', 1),
(60, 'App\\Models\\Users', 1),
(61, 'App\\Models\\Users', 1),
(62, 'App\\Models\\Users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\Users', 1),
(1, 'App\\Models\\Users', 57),
(1, 'App\\Models\\Users', 58),
(1, 'App\\Models\\Users', 59);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'sanjoy.das@karmicksolutions.com', 'C1vOuRStyfANunJcTRBw6rEAP9Q1qchudffQVYENkHbdliHyZMx51cQzCor5', '2020-03-27 05:35:38', NULL),
(2, 'sanjoy.das@karmicksolutions.com', 'gq8iv3gDFumRmKWkiUf0YoTLE7jxNVIOBOp0ZEk8GNaLvaNDRzKY21gxqUy0', '2020-03-27 05:53:17', NULL),
(3, 'arindamspon@yopmail.com', 'IquA2ET0xavLRyhXzs3R4k7ZlCHlLpbGV7OrnAXMK6oSw0gnCOAtXE7ZIbQZ', '2020-04-03 01:11:48', NULL),
(4, 'arindamspon@yopmail.com', 'Hr1q1FGHzSqzaLUc9PA78wicHeCmRgaM1eIDiGvpTJrTcD7Lm5sbdukLP4og', '2020-04-03 01:19:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `display_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 1, 'admin-create', 'Create New Admin', NULL, 'web', '2020-04-20 12:27:38', NULL),
(6, 1, 'admin-view', 'View Admin List', NULL, 'web', '2020-04-20 12:28:34', NULL),
(7, 1, 'admin-edit', 'Edit Admin Details', NULL, 'web', '2020-04-20 12:29:18', NULL),
(8, 1, 'admin-active-inactive', 'Active Inactive Admin Account', NULL, 'web', '2020-04-20 12:29:45', NULL),
(9, 1, 'admin-password-reset', 'Admin Password Reset', NULL, 'web', '2020-04-20 12:31:40', NULL),
(10, 2, 'banner-create', 'Create New Banner', NULL, 'web', '2020-04-20 12:32:11', NULL),
(11, 2, 'banner-view', 'Banner List View', NULL, 'web', '2020-04-20 12:32:23', NULL),
(12, 2, 'banner-edit', 'Edit Banner Details ', NULL, 'web', '2020-04-20 12:32:35', NULL),
(13, 2, 'banner-delete', 'Delete Banner', NULL, 'web', '2020-04-20 12:32:58', NULL),
(14, 1, 'admin-delete', 'Delete Admin', NULL, 'web', '2020-04-20 12:33:05', NULL),
(15, 3, 'cms-page-create', 'Create New CMS Page ', NULL, 'web', '2020-04-20 12:33:42', NULL),
(16, 3, 'cms-page-view', 'CMS Page List View', NULL, 'web', '2020-04-20 12:33:56', NULL),
(17, 3, 'cms-page-edit', 'Edit CMS Page', NULL, 'web', '2020-04-20 12:34:05', NULL),
(18, 3, 'cms-page-delete', 'Delete CMS Page', NULL, 'web', '2020-04-20 12:34:13', NULL),
(19, 4, 'faq-create', 'Create New FAQ', NULL, 'web', '2020-04-20 12:34:24', NULL),
(20, 4, 'faq-view', 'FAQ List View ', NULL, 'web', '2020-04-20 12:34:37', NULL),
(21, 4, 'faq-edit', 'Edit FAQ Details', NULL, 'web', '2020-04-20 12:35:09', NULL),
(22, 4, 'faq-delete', 'Delete FAQ', NULL, 'web', '2020-04-20 12:35:24', NULL),
(23, 5, 'menu-create', 'Create Menu', NULL, 'web', '2020-04-20 12:36:33', NULL),
(24, 5, 'menu-view', 'View Header Menu', NULL, 'web', '2020-04-20 12:36:42', NULL),
(25, 5, 'menu-edit', 'Edit Menu and Submenu', NULL, 'web', '2020-04-20 12:36:55', NULL),
(26, 5, 'menu-delete', 'Delete Menu', NULL, 'web', '2020-04-20 12:37:05', NULL),
(27, 6, 'event-create', 'Create New Event', NULL, 'web', '2020-04-20 12:37:40', NULL),
(28, 6, 'event-view', 'Event List View', NULL, 'web', '2020-04-20 12:37:53', NULL),
(29, 6, 'event-edit', 'Edit Event Details', NULL, 'web', '2020-04-20 12:38:05', NULL),
(30, 6, 'event-delete', 'Delete Events', NULL, 'web', '2020-04-20 12:38:13', NULL),
(31, 13, 'project-create', 'Create New Project', NULL, 'web', '2020-04-20 12:45:15', NULL),
(32, 13, 'project-view', 'Project List View', NULL, 'web', '2020-04-20 12:45:26', NULL),
(33, 13, 'project-edit', 'Edit Project Details', NULL, 'web', '2020-04-20 12:45:42', NULL),
(34, 13, 'project-delete', 'Delete Project', NULL, 'web', '2020-04-20 12:45:51', NULL),
(35, 7, 'job-create', 'Create New Job', NULL, 'web', '2020-04-20 12:46:15', NULL),
(36, 7, 'job-view', 'Job List View', NULL, 'web', '2020-04-20 12:46:25', NULL),
(37, 7, 'job-edit', 'Edit Job', NULL, 'web', '2020-04-20 12:46:35', NULL),
(38, 7, 'job-delete', 'Delete Job', NULL, 'web', '2020-04-20 12:46:47', NULL),
(39, 8, 'image-gallery-create', 'Create New Image Gallery', NULL, 'web', '2020-04-20 12:47:00', NULL),
(40, 8, 'image-gallery-view', 'View Image Gallery List', NULL, 'web', '2020-04-20 12:47:12', NULL),
(41, 8, 'image-gallery-edit', 'Edit Image Gallery', NULL, 'web', '2020-04-20 12:47:24', NULL),
(42, 8, 'image-gallery-delete', 'Delete Image Gallery', NULL, 'web', '2020-04-20 12:47:35', NULL),
(43, 9, 'video-gallery-create', 'Create New Video Gallery', NULL, 'web', '2020-04-20 12:47:46', NULL),
(44, 9, 'video-gallery-view', 'View Video Gallery List', NULL, 'web', '2020-04-20 12:48:11', NULL),
(45, 9, 'video-gallery-edit', 'Edit Video Gallery', NULL, 'web', '2020-04-20 12:48:28', NULL),
(46, 9, 'video-gallery-delete', 'Delete Video Gallery', NULL, 'web', '2020-04-20 12:48:41', NULL),
(47, 10, 'email-template-create', 'Create New Email Template', NULL, 'web', '2020-04-20 12:49:11', NULL),
(48, 10, 'email-template-view', 'Email Template List View', NULL, 'web', '2020-04-20 12:49:23', NULL),
(49, 10, 'email-template-edit', 'Edit Email Template', NULL, 'web', '2020-04-20 12:49:34', NULL),
(50, 10, 'email-template-delete', 'Delete Email Template', NULL, 'web', '2020-04-20 12:49:44', NULL),
(51, 11, 'social-link-create', 'Create New Social Link', NULL, 'web', '2020-04-20 12:49:58', NULL),
(52, 11, 'social-link-view', 'Social Link List View', NULL, 'web', '2020-04-20 12:50:10', NULL),
(53, 11, 'social-link-edit', 'Edit Social Link', NULL, 'web', '2020-04-20 12:50:34', NULL),
(54, 11, 'social-link-delete', 'Delete Social Link', NULL, 'web', '2020-04-20 12:50:44', NULL),
(55, 12, 'general-settings-access', 'Edit and Update General Settings', NULL, 'web', '2020-04-20 12:51:23', NULL),
(56, 1, 'manage-permissions', 'Manage Admin Permissions', NULL, 'web', '2020-04-21 00:02:04', NULL),
(57, 4, 'faq-category', 'Manage FAQ Category', NULL, 'web', '2020-04-21 08:59:01', NULL),
(59, 14, 'popup-create', 'Add New Popup', NULL, 'web', '2020-04-22 00:10:14', NULL),
(60, 14, 'popup-view', 'View All Popups', NULL, 'web', '2020-04-22 00:10:22', NULL),
(61, 14, 'popup-edit', 'Edit Popup', NULL, 'web', '2020-04-22 00:10:32', NULL),
(62, 14, 'popup-delete', 'Delete Popup', NULL, 'web', '2020-04-22 00:10:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'All Access', 'All access to this system.', 'web', '2019-09-12 07:21:48', '2020-01-23 03:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '1=MLM Super Admin, 5=MLM User',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` datetime DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rerf_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `my_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `timestamp_id`, `user_type`, `first_name`, `last_name`, `email_id`, `contact_no`, `password`, `sex`, `dob`, `image`, `address`, `status`, `email_verified_at`, `last_login`, `created_by`, `updated_by`, `created_at`, `updated_at`, `remember_token`, `rerf_code`, `my_code`, `parent_id`) VALUES
(1, 'e3a56040f07b19a1585bc0c42b958ed6', 1, 'Super Admin', 'Master', 'admin@cs.com', '90000000009', 'e10adc3949ba59abbe56e057f20f883e', 'Male', NULL, 'user_1547631159.png', 'Kolkata, India', 1, NULL, NULL, 0, 1, '2019-01-15 06:07:54', '2020-06-04 06:25:53', 'dqGEFRbJeoWPBBk0di7MKxx9U8qq9Uf6A51UGx03TWpGCmQg9EwJ4fMerxJU', 'AXAXA00001', 'AMBXL00009', 0),
(74, 'e60fc922d5efa73c9c2cea0ca6c4fcaf', 5, 'Agent', 'One', 'ag@one.in', '8988787676', '487583957c55bf7713a0b7d001453e61', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, '2021-09-25 10:19:55', '2021-09-25 10:19:55', NULL, 'AMBXL00009', 'J0twkoqV', 1);

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
