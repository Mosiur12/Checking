-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2022 at 07:17 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello_super_star_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `acquired_apps`
--

CREATE TABLE `acquired_apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidding_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_admins`
--

CREATE TABLE `assign_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_judges`
--

CREATE TABLE `assign_judges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_judge` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unapproved, 1= approved',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_juries`
--

CREATE TABLE `assign_juries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `jury_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'O = Unactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Product Name',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Post Title',
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_price` int(11) DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bid_from` timestamp NULL DEFAULT NULL,
  `bid_to` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `star_approval` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending,1=approved',
  `product_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unsold,1=sold',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auditions`
--

CREATE TABLE `auditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_rules_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_round_rules_id` bigint(20) UNSIGNED DEFAULT NULL,
  `creater_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `round_status` int(11) DEFAULT NULL,
  `template_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '3 = live',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auditions`
--

INSERT INTO `auditions` (`id`, `category_id`, `audition_rules_id`, `audition_round_rules_id`, `creater_id`, `audition_admin_id`, `manager_admin_id`, `title`, `slug`, `description`, `banner`, `video`, `round_status`, `template_id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 10, 2, 19, NULL, 'Dolore.', 'Quis.', 'Ex voluptas alias optio et non. Qui tempore odio odit.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 3, 7, 9, 2, 20, NULL, 'Tempore.', 'Sunt.', 'Recusandae fuga incidunt et. Consequatur dolore blanditiis id hic ut maxime. Nisi in quo eos nobis.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 1, 1, 7, 2, 15, NULL, 'Est aut.', 'Id.', 'Qui est voluptate qui. Laborum aliquam ducimus temporibus est. Labore nihil aut iure aut quo.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 1, 3, 3, 2, 17, NULL, 'Minima.', 'A.', 'Dolorum qui et et dolor quod repellendus quasi. Consequatur eveniet est sequi vero enim esse.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 8, 7, 2, 19, NULL, 'Amet in.', 'Sequi.', 'Expedita labore dolorem rem assumenda ut soluta sunt. Laboriosam officia velit ut dolorem.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 7, 3, 1, 2, 20, NULL, 'Et.', 'Ut sunt.', 'Et dicta esse earum amet. Necessitatibus quos sunt sint enim officia ipsam.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 1, 8, 3, 2, 16, NULL, 'Ipsum cum.', 'Sunt.', 'Et qui at iure dolores. Delectus sit neque veniam.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 7, 3, 8, 2, 20, NULL, 'Dolores.', 'Expedita.', 'Similique iusto sed est. Non enim quo qui dolorum totam. Molestias voluptate laboriosam itaque eum.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 8, 3, 5, 2, 13, NULL, 'Incidunt.', 'Molestiae.', 'Amet sit laudantium dicta est explicabo quo. Esse aut eum ipsa eaque vel sint expedita.', NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 1, 1, 1, 2, 12, NULL, 'Monir Talent Hunt 2022', 'monir-talent-hunt-2022', '<p>Monir Talent Hunt 2022 . description</p>', 'uploads/images/auditions/1652681593.jpg', 'uploads/videos/auditions/16526815938462.10-sec.mp4', 0, NULL, '2022-05-19 18:00:00', '2022-06-30 18:00:00', 3, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_assign_judges`
--

CREATE TABLE `audition_assign_judges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judge_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_judge` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unapproved, 1= approved, 2 = rejected',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_assign_judges`
--

INSERT INTO `audition_assign_judges` (`id`, `judge_id`, `judge_admin_id`, `audition_id`, `approved_by_judge`, `status`, `created_at`, `updated_at`) VALUES
(1, 44, NULL, 10, 1, 0, '2022-05-15 18:08:12', '2022-05-15 18:08:12'),
(2, 43, NULL, 10, 1, 0, '2022-05-15 18:08:12', '2022-05-15 18:08:12'),
(3, 42, NULL, 10, 1, 0, '2022-05-15 18:08:12', '2022-05-15 18:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `audition_assign_juries`
--

CREATE TABLE `audition_assign_juries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_jury` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_assign_juries`
--

INSERT INTO `audition_assign_juries` (`id`, `audition_id`, `jury_id`, `approved_by_jury`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 31, 0, 0, '2022-05-15 18:08:12', '2022-05-15 18:08:12'),
(2, 10, 30, 0, 0, '2022-05-15 18:08:12', '2022-05-15 18:08:12'),
(3, 10, 29, 0, 0, '2022-05-15 18:08:12', '2022-05-15 18:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `audition_comments`
--

CREATE TABLE `audition_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `react_no` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_comments`
--

INSERT INTO `audition_comments` (`id`, `audition_event_id`, `user_id`, `parent_comment_id`, `comment`, `react_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Et animi aut et ut.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 4, NULL, 'Modi quisquam.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 3, NULL, 'Veritatis impedit.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 4, NULL, 'Provident labore.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 2, NULL, 'Perspiciatis nemo.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 4, NULL, 'At beatae ipsam.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 1, NULL, 'Ad hic sapiente ex.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 3, NULL, 'Qui optio sed.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 1, NULL, 'Cupiditate eum.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 1, NULL, 'Ea quas et quia qui.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 4, NULL, 'Officiis alias.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 4, NULL, 'Aut ratione et sed.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 3, NULL, 'Amet aspernatur.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 3, NULL, 'Dolor sed minima.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 4, NULL, 'Quia rerum dolore.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 4, NULL, 'Velit hic.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 2, NULL, 'Veniam maiores.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 2, NULL, 'Quia aut error.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 4, NULL, 'Animi optio labore.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 3, NULL, 'Sint dolor iste.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_events`
--

CREATE TABLE `audition_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = deactive, 1 = active',
  `total_amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_events`
--

INSERT INTO `audition_events` (`id`, `created_by_id`, `star_id`, `title`, `registration_end_date`, `registration_start_date`, `description`, `venue`, `total_seat`, `banner`, `participant_number`, `video`, `date`, `time`, `fee`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 'Sunt.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Sunt est alias nostrum.', 'Aruba', 316, 'https://via.placeholder.com/300x200.png/0022ff?text=a', 101, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 496.00, 1, 107.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 4, 4, 'Sapiente.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Voluptas sequi dolores tempora quis.', 'Mauritius', 430, 'https://via.placeholder.com/300x200.png/0088cc?text=quo', 190, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 487.00, 1, 115.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 5, 5, 'Maiores.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Quam quasi non corrupti soluta nostrum ipsam.', 'Malawi', 290, 'https://via.placeholder.com/300x200.png/00ee77?text=eum', 149, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 402.00, 1, 105.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 4, 'Voluptate.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Magnam deserunt quos quia fugit.', 'Sweden', 478, 'https://via.placeholder.com/300x200.png/00ee99?text=doloremque', 136, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 471.00, 1, 103.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 4, 'Enim.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'In eius omnis numquam aliquam autem nostrum.', 'Guinea', 396, 'https://via.placeholder.com/300x200.png/003366?text=rerum', 145, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 458.00, 1, 149.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 4, 5, 'Optio.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Quo magnam eaque et reprehenderit ex quibusdam.', 'Gibraltar', 401, 'https://via.placeholder.com/300x200.png/00dddd?text=corrupti', 170, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 436.00, 1, 122.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 5, 4, 'Similique.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Magnam esse occaecati officiis harum.', 'Eritrea', 467, 'https://via.placeholder.com/300x200.png/003388?text=quam', 183, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 421.00, 1, 116.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 5, 4, 'Aut esse.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Excepturi aut sed fugit modi animi eius ut.', 'Bhutan', 253, 'https://via.placeholder.com/300x200.png/005577?text=et', 162, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 463.00, 1, 123.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 4, 5, 'Qui.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Veniam sit sequi nesciunt id.', 'Lesotho', 284, 'https://via.placeholder.com/300x200.png/008855?text=dolorem', 116, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 467.00, 1, 106.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 4, 5, 'Nihil ut.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Explicabo quidem et esse voluptatibus omnis.', 'Monaco', 379, 'https://via.placeholder.com/300x200.png/002255?text=qui', 196, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 479.00, 1, 119.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 4, 4, 'Maiores.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Magni voluptatum aut et quisquam vel.', 'Djibouti', 258, 'https://via.placeholder.com/300x200.png/000055?text=eos', 145, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 457.00, 1, 149.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 5, 4, 'Et et.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Voluptatem occaecati cum laborum ut illum eos.', 'Portugal', 403, 'https://via.placeholder.com/300x200.png/008899?text=illo', 131, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 424.00, 1, 143.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 4, 5, 'Aut et.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Qui est nihil consequatur hic dolor sapiente.', 'Kenya', 454, 'https://via.placeholder.com/300x200.png/001100?text=perspiciatis', 152, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 495.00, 1, 114.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 5, 4, 'Totam.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Maxime ipsam optio atque eum harum.', 'Belgium', 374, 'https://via.placeholder.com/300x200.png/002222?text=aperiam', 187, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 466.00, 1, 114.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 4, 4, 'Amet.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Reprehenderit beatae ducimus id ex facere.', 'Djibouti', 279, 'https://via.placeholder.com/300x200.png/00cc00?text=autem', 129, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 444.00, 1, 106.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 4, 5, 'Numquam.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Et sequi sed quam accusantium voluptas.', 'Singapore', 433, 'https://via.placeholder.com/300x200.png/005577?text=necessitatibus', 150, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 483.00, 1, 109.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 4, 4, 'Cumque.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Qui vitae officiis velit molestias eum.', 'Austria', 453, 'https://via.placeholder.com/300x200.png/00dd88?text=eos', 128, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 455.00, 1, 114.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 5, 5, 'Quis.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Autem adipisci laudantium in labore enim eum.', 'Zimbabwe', 225, 'https://via.placeholder.com/300x200.png/0022dd?text=quasi', 107, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 457.00, 1, 126.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 4, 5, 'Illo.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Non modi quae saepe libero amet.', 'Malawi', 341, 'https://via.placeholder.com/300x200.png/0088dd?text=sint', 117, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 432.00, 1, 115.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 4, 4, 'Facere ab.', '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Voluptatem rerum iure voluptates velit esse id.', 'Turks and Caicos Islands', 292, 'https://via.placeholder.com/300x200.png/007733?text=impedit', 159, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', 419.00, 1, 113.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_event_registrations`
--

CREATE TABLE `audition_event_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_event_registrations`
--

INSERT INTO `audition_event_registrations` (`id`, `audition_event_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `image`, `video`, `comment_count`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 'Aut culpa.', 1, '2022-05-19 00:05:10', 579.00, 'Prof. Marley Schaefer PhD', '(952) 285-2333', 'https://via.placeholder.com/300x200.png/00ffcc?text=in', 'https://youtu.be/lyXjeJN9lyg', 5, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 7, 4, 'Et.', 1, '2022-05-19 00:05:10', 633.00, 'Edison Blanda', '+1 (518) 771-6157', 'https://via.placeholder.com/300x200.png/004400?text=sunt', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 4, 3, 'Et.', 1, '2022-05-19 00:05:10', 546.00, 'Fanny Oberbrunner', '928.834.2583', 'https://via.placeholder.com/300x200.png/0044dd?text=dignissimos', 'https://youtu.be/lyXjeJN9lyg', 9, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 6, 4, 'Quo.', 1, '2022-05-19 00:05:10', 565.00, 'Vern Bailey', '1-364-231-5050', 'https://via.placeholder.com/300x200.png/008899?text=enim', 'https://youtu.be/lyXjeJN9lyg', 6, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 4, 2, 'Nihil et.', 1, '2022-05-19 00:05:10', 938.00, 'Aurelia Greenfelder', '(234) 549-0617', 'https://via.placeholder.com/300x200.png/0099dd?text=debitis', 'https://youtu.be/lyXjeJN9lyg', 9, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 11, 3, 'Deleniti.', 1, '2022-05-19 00:05:10', 752.00, 'Anderson Prohaska I', '+1-561-981-6220', 'https://via.placeholder.com/300x200.png/0055dd?text=assumenda', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 18, 4, 'Sed.', 1, '2022-05-19 00:05:10', 921.00, 'Raymundo Rowe', '+1.279.874.9788', 'https://via.placeholder.com/300x200.png/00dd44?text=eos', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 2, 1, 'Veniam.', 1, '2022-05-19 00:05:10', 722.00, 'Gudrun Johns', '678.247.1323', 'https://via.placeholder.com/300x200.png/0022ee?text=quia', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 3, 4, 'Omnis.', 1, '2022-05-19 00:05:10', 837.00, 'Yolanda Reinger', '1-541-726-3860', 'https://via.placeholder.com/300x200.png/001155?text=nesciunt', 'https://youtu.be/lyXjeJN9lyg', 6, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 18, 3, 'Illo.', 1, '2022-05-19 00:05:10', 566.00, 'Sonia Jast', '540.251.3955', 'https://via.placeholder.com/300x200.png/008833?text=alias', 'https://youtu.be/lyXjeJN9lyg', 5, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 14, 2, 'Ducimus.', 1, '2022-05-19 00:05:10', 608.00, 'Drake Wuckert', '+1 (252) 509-8250', 'https://via.placeholder.com/300x200.png/00bb22?text=ea', 'https://youtu.be/lyXjeJN9lyg', 10, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 19, 1, 'Et.', 1, '2022-05-19 00:05:10', 713.00, 'Lewis Cole', '+1-551-628-2323', 'https://via.placeholder.com/300x200.png/007700?text=hic', 'https://youtu.be/lyXjeJN9lyg', 7, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 15, 3, 'Iusto.', 1, '2022-05-19 00:05:10', 579.00, 'Mr. Cloyd Stiedemann', '+1-410-424-9124', 'https://via.placeholder.com/300x200.png/002200?text=dolor', 'https://youtu.be/lyXjeJN9lyg', 9, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 5, 1, 'Enim qui.', 1, '2022-05-19 00:05:10', 752.00, 'Mya Kerluke', '+1-520-531-5488', 'https://via.placeholder.com/300x200.png/003355?text=illum', 'https://youtu.be/lyXjeJN9lyg', 10, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 3, 2, 'Et.', 1, '2022-05-19 00:05:10', 802.00, 'Jacques Schaefer', '(475) 687-4736', 'https://via.placeholder.com/300x200.png/00bbaa?text=nihil', 'https://youtu.be/lyXjeJN9lyg', 6, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 7, 2, 'Corporis.', 1, '2022-05-19 00:05:10', 580.00, 'Deion Harvey', '940.991.2597', 'https://via.placeholder.com/300x200.png/007777?text=voluptatem', 'https://youtu.be/lyXjeJN9lyg', 9, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 14, 2, 'Possimus.', 1, '2022-05-19 00:05:10', 615.00, 'Jasen Jacobson', '704-452-0851', 'https://via.placeholder.com/300x200.png/00bb33?text=cum', 'https://youtu.be/lyXjeJN9lyg', 5, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 7, 4, 'Magnam.', 1, '2022-05-19 00:05:10', 915.00, 'Seamus Bednar', '1-415-581-2452', 'https://via.placeholder.com/300x200.png/0099bb?text=doloribus', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 13, 4, 'Et iste.', 1, '2022-05-19 00:05:10', 985.00, 'Eldridge Simonis', '929.475.8138', 'https://via.placeholder.com/300x200.png/00ff00?text=reprehenderit', 'https://youtu.be/lyXjeJN9lyg', 8, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 16, 2, 'Rerum.', 1, '2022-05-19 00:05:10', 806.00, 'Gracie Mraz', '+1 (701) 821-4776', 'https://via.placeholder.com/300x200.png/009999?text=ut', 'https://youtu.be/lyXjeJN9lyg', 9, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_interects`
--

CREATE TABLE `audition_interects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_judge_instructions`
--

CREATE TABLE `audition_judge_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `round_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `time_boundary` timestamp NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_judge_instructions`
--

INSERT INTO `audition_judge_instructions` (`id`, `audition_id`, `star_id`, `round_id`, `title`, `banner`, `video`, `status`, `description`, `time_boundary`, `date`, `created_at`, `updated_at`) VALUES
(1, 10, 44, 1, 'fvb kb dfbgdb dbhfdb', 'uploads/images/auditions/9TsP4nyDlXLOpyhPxzK6-1652682816.jpg', 'uploads/videos/auditions/qgJF2QPBlj5W2VBuCVd5-1652682816.png', 1, 'asdfhbsd sdgbdxbgdkbg', '2022-05-20 00:32:51', NULL, '2022-05-15 18:33:36', '2022-05-15 18:33:36'),
(2, 10, 43, 1, 'fvb kb dfbgdb dbhfdb', 'uploads/images/auditions/9TsP4nyDlXLOpyhPxzK6-1652682816.jpg', 'uploads/videos/auditions/qgJF2QPBlj5W2VBuCVd5-1652682816.png', 1, 'asdfhbsd sdgbdxbgdkbg', '2022-05-20 00:32:51', NULL, '2022-05-15 18:33:36', '2022-05-15 18:33:36'),
(3, 10, 42, 1, 'fvb kb dfbgdb dbhfdb', 'uploads/images/auditions/9TsP4nyDlXLOpyhPxzK6-1652682816.jpg', 'uploads/videos/auditions/qgJF2QPBlj5W2VBuCVd5-1652682816.png', 1, 'asdfhbsd sdgbdxbgdkbg', '2022-05-20 00:32:51', NULL, '2022-05-15 18:33:36', '2022-05-15 18:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `audition_judge_marks`
--

CREATE TABLE `audition_judge_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_judge_marks`
--

INSERT INTO `audition_judge_marks` (`id`, `judge_id`, `participant_id`, `marks`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 2, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 9, 1, 4, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 8, 9, 1, 'Miss', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 3, 9, 5, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 2, 3, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 3, 5, 4, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 10, 9, 4, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 5, 2, 4, 'Mr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 1, 5, 1, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 2, 4, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_judge_panels`
--

CREATE TABLE `audition_judge_panels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_marks`
--

CREATE TABLE `audition_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `participant_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = rejected, 1= selected',
  `selected_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = selected, 1= rejected',
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_participants`
--

CREATE TABLE `audition_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_round_rules_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wining_status` int(11) DEFAULT NULL,
  `certificates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_participants`
--

INSERT INTO `audition_participants` (`id`, `audition_round_rules_id`, `user_id`, `audition_id`, `wining_status`, `certificates`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 10, 1, NULL, 0, '2022-05-16 05:20:53', '2022-05-17 04:05:55'),
(2, 1, 52, 10, NULL, NULL, 0, '2022-05-17 04:02:15', '2022-05-17 04:05:55'),
(3, 1, 53, 10, NULL, NULL, 0, '2022-05-17 04:03:06', '2022-05-17 04:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `audition_participant_notifications`
--

CREATE TABLE `audition_participant_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` bigint(20) DEFAULT NULL,
  `perticipant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `round_status` int(11) DEFAULT NULL COMMENT ' 0 = 1st round , 1 = 2nd round, 3 = 3rd round',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_payments`
--

CREATE TABLE `audition_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_reacts`
--

CREATE TABLE `audition_reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `react` int(11) NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_reacts`
--

INSERT INTO `audition_reacts` (`id`, `audition_event_id`, `user_id`, `react`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 3, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 4, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 1, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 3, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 1, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 3, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 4, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 4, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 4, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 2, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_round_rules`
--

CREATE TABLE `audition_round_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_rules_id` bigint(20) UNSIGNED NOT NULL,
  `judge_mark` double DEFAULT NULL,
  `jury_mark` double DEFAULT NULL,
  `user_vote_mark` double DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `video_instruction` text COLLATE utf8mb4_unicode_ci,
  `video_start_time` text COLLATE utf8mb4_unicode_ci,
  `video_end_time` text COLLATE utf8mb4_unicode_ci,
  `instruction` text COLLATE utf8mb4_unicode_ci,
  `num_of_videos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploade_date` timestamp NULL DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_round_rules`
--

INSERT INTO `audition_round_rules` (`id`, `audition_rules_id`, `judge_mark`, `jury_mark`, `user_vote_mark`, `title`, `description`, `video_instruction`, `video_start_time`, `video_end_time`, `instruction`, `num_of_videos`, `uploade_date`, `banner`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 40, 60, 0, 'sdfsdaasdf Please Follow the instruction', '\r\n\r\n            Upload good quality of videos\r\n            do not upload sexual video\r\n            video upload max size is 5mb\r\n            ', NULL, NULL, NULL, NULL, '2', '2022-05-17 09:57:19', 'uploads/images/auditions/instructions/1652781545.jpg', 'uploads/videos/auditions/instructions/1652781545613.ami_probashi.mp4', 2, '2022-05-15 18:05:09', '2022-05-17 04:05:55'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-24 22:40:50', '2022-04-24 22:40:50'),
(3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-04-24 22:40:50', '2022-04-24 22:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `audition_rules`
--

CREATE TABLE `audition_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `round_num` int(11) NOT NULL,
  `judge_num` int(11) NOT NULL,
  `jury_num` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_rules`
--

INSERT INTO `audition_rules` (`id`, `category_id`, `round_num`, `judge_num`, `jury_num`, `month`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 3, 3, 1, 12, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 0, 3, 3, 5, 3, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 0, 3, 2, 3, 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 0, 3, 2, 8, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 0, 3, 3, 7, 22, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 0, 4, 5, 7, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 0, 2, 2, 2, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 0, 4, 4, 4, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audition_templates`
--

CREATE TABLE `audition_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_upload_videos`
--

CREATE TABLE `audition_upload_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `round_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_status` int(11) DEFAULT '0' COMMENT '0 = not reviewed , 1 = approved, 2 = rejected',
  `jury_approval_status` int(11) DEFAULT '0',
  `judge_approval_status` int(11) DEFAULT '0',
  `audition_admin_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judge_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jury_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jury_mark_deadline` timestamp NULL DEFAULT NULL,
  `jury_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judge_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_vote_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_upload_videos`
--

INSERT INTO `audition_upload_videos` (`id`, `audition_id`, `user_id`, `round_id`, `jury_id`, `judge_id`, `audition_admin_id`, `video`, `approval_status`, `jury_approval_status`, `judge_approval_status`, `audition_admin_comment`, `judge_comment`, `jury_comment`, `jury_mark_deadline`, `jury_mark`, `judge_mark`, `user_vote_mark`, `created_at`, `updated_at`) VALUES
(1, 10, 53, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278180624360.Nature Beautiful short video 720p HD.mp4', 1, 1, 0, 'c fifcicg', NULL, 'hgfuivui', NULL, '30', NULL, NULL, '2022-05-17 04:03:26', '2022-05-19 00:48:10'),
(2, 10, 53, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278180658481.ami_probashi.mp4', 2, 2, 0, 'fhj', NULL, 'not good', NULL, '50', NULL, NULL, '2022-05-17 04:03:26', '2022-05-22 03:53:32'),
(3, 10, 10, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278303645250.Nature Beautiful short video 720p HD.mp4', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 04:23:56', '2022-05-17 04:23:56'),
(4, 10, 10, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278303646291.ami_probashi.mp4', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 04:23:56', '2022-05-17 04:23:56'),
(5, 10, 52, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278312727250.audition.mp4', 0, 1, 0, NULL, NULL, 'valo', NULL, '55', NULL, NULL, '2022-05-17 04:25:27', '2022-05-19 00:51:58'),
(6, 10, 52, 1, 31, NULL, NULL, 'uploads/videos/auditions/165278312796731.ami_probashi.mp4', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 04:25:27', '2022-05-17 04:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `audition_user_votings`
--

CREATE TABLE `audition_user_votings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `round_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_user_votings`
--

INSERT INTO `audition_user_votings` (`id`, `video_id`, `audition_id`, `user_id`, `round_id`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 4, 5, 6, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 9, 9, 6, 1, 'Ms.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 5, 7, 3, 7, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 7, 2, 8, 10, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 8, 3, 3, 8, 'Mr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 2, 9, 3, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 5, 4, 8, 3, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 7, 6, 5, 4, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 5, 7, 3, 'Dr.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 4, 10, 10, 6, 'Prof.', 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `audtion_appeals`
--

CREATE TABLE `audtion_appeals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `appeal_date_line` date DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biddings`
--

CREATE TABLE `biddings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `auction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `notify_status` int(11) NOT NULL DEFAULT '0',
  `win_status` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'Sports', 'https://via.placeholder.com/200x200.png/005511?text=enim', 'https://via.placeholder.com/300x200.png/00cc22?text=fugit', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 'Music', 'Music', 'https://via.placeholder.com/200x200.png/00bbaa?text=quam', 'https://via.placeholder.com/300x200.png/007788?text=dignissimos', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 'Drama', 'Drama', 'https://via.placeholder.com/200x200.png/00dd00?text=error', 'https://via.placeholder.com/300x200.png/00bbee?text=commodi', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 'Movie', 'Movie', 'https://via.placeholder.com/200x200.png/00ccee?text=et', 'https://via.placeholder.com/300x200.png/00aa11?text=ipsum', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 'Comedy', 'Comedy', 'https://via.placeholder.com/200x200.png/00bb88?text=dolorem', 'https://via.placeholder.com/300x200.png/00ccee?text=quibusdam', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 'Tech', 'Tech', 'https://via.placeholder.com/200x200.png/0011cc?text=velit', 'https://via.placeholder.com/300x200.png/006666?text=deserunt', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 'Polytics', 'Polytics', 'https://via.placeholder.com/200x200.png/002233?text=pariatur', 'https://via.placeholder.com/300x200.png/002299?text=nisi', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 'Dance', 'Dance', 'https://via.placeholder.com/200x200.png/001199?text=eum', 'https://via.placeholder.com/300x200.png/0011bb?text=in', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `choice_lists`
--

CREATE TABLE `choice_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_reacts`
--

CREATE TABLE `comment_reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_profiles`
--

CREATE TABLE `event_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fan_groups`
--

CREATE TABLE `fan_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `min_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_star_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_user_join` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_user_join` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_approval_status` int(11) DEFAULT NULL,
  `post_approval_status` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fan_group_messages`
--

CREATE TABLE `fan_group_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fan_posts`
--

CREATE TABLE `fan_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fan__group__joins`
--

CREATE TABLE `fan__group__joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approveStatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filter_videos`
--

CREATE TABLE `filter_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `accept_status` int(11) DEFAULT NULL COMMENT '0 = rejected, 1 = accepted',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `greetings`
--

CREATE TABLE `greetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT '1',
  `star_approve_status` int(11) NOT NULL DEFAULT '0' COMMENT '1 = star approve | 2 = super Admin Approved',
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `greetings_registrations`
--

CREATE TABLE `greetings_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `greeting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `request_time` timestamp NULL DEFAULT NULL,
  `greeting_contex` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_message` longtext COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `greeting_types`
--

CREATE TABLE `greeting_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `greeting_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interest_topics`
--

CREATE TABLE `interest_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Inctive, 1 = Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interest_types`
--

CREATE TABLE `interest_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `judge_marks`
--

CREATE TABLE `judge_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_status` tinyint(1) DEFAULT NULL COMMENT '0=Rejected,1=Selected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jury_boards`
--

CREATE TABLE `jury_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED NOT NULL,
  `manager_admin_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jury_boards`
--

INSERT INTO `jury_boards` (`id`, `star_id`, `manager_admin_id`, `category_id`, `sub_category_id`, `terms_and_condition`, `description`, `qr_code`, `image`, `agreement`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 22, 1, NULL, 'Dignissimos qui blanditiis quia enim. Ducimus asperiores qui harum et autem eos pariatur.', 'Illo itaque fuga repudiandae. Molestiae incidunt dolor quis et rerum sint tempore. Illo ut voluptatem cupiditate dolore beatae qui. Corporis quis eos id omnis possimus.', '624806', NULL, NULL, 0, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(2, 23, 23, 1, NULL, 'Reiciendis voluptatem ad quia quia eveniet repudiandae. Dolorem veritatis ipsum vel officia necessitatibus ut omnis. Similique expedita repellat vel modi excepturi est.', 'Quidem unde veritatis laboriosam illum. Eius eaque tenetur voluptatem iure voluptas enim et voluptas. Vero veritatis et incidunt.', '588857', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(3, 24, 24, 1, NULL, 'Tenetur aut expedita suscipit perferendis facere ratione. Reprehenderit quos a ut est ducimus. Veniam eos unde quia laudantium possimus non. Quae rerum placeat est est.', 'Deleniti exercitationem ut in voluptatem voluptas dolorum velit adipisci. Officiis voluptas voluptatem placeat ullam.', '965361', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(4, 25, 25, 1, NULL, 'Rerum tenetur sint qui deserunt ex magnam et. A tempora eum aut ad cum debitis totam. Repellat possimus sed facilis fugiat corporis. Adipisci accusantium aliquam rerum aliquid.', 'Facere ullam quia laudantium officia mollitia. Architecto molestias sit eligendi qui atque.', '479336', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(5, 26, 26, 1, NULL, 'Aliquam quisquam architecto delectus eum vero tempora. Aliquid aut ut voluptate. Harum voluptatem ex natus dignissimos.', 'Enim aut iste ex dolorem explicabo ipsam. Aliquid minus inventore est magni ut aut. Nihil vel qui iusto iusto autem et. Aut ex ut vel similique ex voluptate commodi. Qui saepe qui dolorum qui eum.', '499958', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(6, 27, 27, 1, NULL, 'Natus in quis architecto omnis possimus accusamus assumenda beatae. Eveniet harum quos officia. Fugit qui praesentium aliquid unde a. Et vitae molestiae ex laborum id neque et.', 'Debitis aliquam sint quo. Id perspiciatis odit delectus et. Impedit aut amet eos eum. Nesciunt ipsum quisquam et et ipsum. Et ut sint officia dolorum. Necessitatibus necessitatibus nam qui dolor.', '149742', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(7, 28, 28, 1, NULL, 'Blanditiis qui blanditiis et quaerat. Cum accusamus iusto placeat. Assumenda et autem cupiditate corporis ut non ut doloribus.', 'Rerum accusantium totam aut. Voluptate sit est sint commodi et doloremque quas. Quia sunt quia iure hic accusantium sed deserunt. Praesentium ducimus perspiciatis culpa porro eius totam.', '277494', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(8, 29, 29, 1, NULL, 'Unde magni ipsum voluptatem corrupti molestiae autem dolores. Nulla ad esse rem modi qui blanditiis maiores. Sit debitis id nihil repellendus tempore eveniet. Perspiciatis ut ullam eos aspernatur.', 'Sunt recusandae est ipsam quibusdam eligendi ratione. Alias natus sint omnis illum quod. Corrupti dolor occaecati itaque necessitatibus temporibus.', '799432', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(9, 30, 30, 1, NULL, 'Velit commodi qui quaerat veniam aliquid voluptatem ea. Quasi voluptatum consequatur fugit. Debitis voluptatum labore numquam sit perspiciatis et et. Aut fugit officiis est odit in.', 'Magni dolorum natus tempore reiciendis voluptas dolore sunt. Rerum aut quam occaecati neque magni maiores. Sed itaque et provident nemo. Sed nisi at at deserunt est.', '928844', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(10, 31, 31, 1, NULL, 'Repellendus et dolorem debitis adipisci. Illo voluptas omnis quia quae. Quia et veritatis officia nihil praesentium ut. Debitis qui quis est aperiam sed id. Neque rem eum quam aut quia.', 'Commodi aut rerum laborum commodi non sequi. Et est pariatur perspiciatis mollitia ratione aut. Porro similique qui repellendus cumque asperiores.', '278263', NULL, NULL, 0, '2022-05-19 00:05:08', '2022-05-19 00:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `learning_sessions`
--

CREATE TABLE `learning_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `room_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_approval` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '0 = deactive, 1 = active',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = deactive, 1 = active',
  `total_amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning_sessions`
--

INSERT INTO `learning_sessions` (`id`, `created_by_id`, `star_id`, `category_id`, `title`, `slug`, `registration_end_date`, `registration_start_date`, `description`, `venue`, `total_seat`, `banner`, `participant_number`, `video`, `date`, `start_time`, `end_time`, `fee`, `room_id`, `star_approval`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 4, NULL, 'Cumque.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Sunt consequatur voluptas ut et.', 'Montenegro', 288, 'https://via.placeholder.com/300x200.png/001122?text=ullam', 168, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 458.00, NULL, 0.00, 1, 108.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 1, 5, NULL, 'Ipsam.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Iusto est laboriosam quis.', 'Montenegro', 417, 'https://via.placeholder.com/300x200.png/00aa55?text=voluptas', 122, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 422.00, NULL, 0.00, 1, 147.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 5, NULL, 'Quam eius.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Sequi eos maxime ea enim.', 'Burundi', 400, 'https://via.placeholder.com/300x200.png/004488?text=ut', 124, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 414.00, NULL, 0.00, 1, 147.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 5, NULL, 'Aliquam.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Perspiciatis dolore at enim ipsam.', 'Ghana', 205, 'https://via.placeholder.com/300x200.png/003311?text=dolores', 142, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 404.00, NULL, 0.00, 1, 144.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 1, 4, NULL, 'Alias.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Alias nobis iusto velit laboriosam iusto.', 'Montenegro', 301, 'https://via.placeholder.com/300x200.png/0066cc?text=occaecati', 112, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 495.00, NULL, 0.00, 1, 142.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 2, 5, NULL, 'Ex non.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Rerum aut maiores quasi fuga.', 'Taiwan', 479, 'https://via.placeholder.com/300x200.png/004455?text=sunt', 197, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 454.00, NULL, 0.00, 1, 115.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 3, 5, NULL, 'Soluta.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Est et iusto quia vero et.', 'Switzerland', 475, 'https://via.placeholder.com/300x200.png/00ee11?text=eum', 177, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 431.00, NULL, 0.00, 1, 101.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 1, 5, NULL, 'Et.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Quia quia qui aliquam et.', 'Saint Barthelemy', 269, 'https://via.placeholder.com/300x200.png/00bb33?text=non', 104, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 450.00, NULL, 0.00, 1, 125.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 4, 5, NULL, 'Ut.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Modi adipisci accusamus laborum qui.', 'Saint Barthelemy', 252, 'https://via.placeholder.com/300x200.png/002233?text=quo', 106, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 464.00, NULL, 0.00, 1, 132.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 4, 5, NULL, 'Magnam.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Sequi magni blanditiis eos voluptatem.', 'Dominica', 366, 'https://via.placeholder.com/300x200.png/002200?text=magni', 184, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 451.00, NULL, 0.00, 1, 142.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 2, 4, NULL, 'Culpa et.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Cupiditate ea qui sint non molestiae illo hic.', 'Ireland', 491, 'https://via.placeholder.com/300x200.png/009966?text=ad', 191, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 409.00, NULL, 0.00, 1, 150.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 2, 5, NULL, 'Ut cum.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Sit quisquam voluptas dicta quis.', 'Jersey', 438, 'https://via.placeholder.com/300x200.png/0033dd?text=autem', 124, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 492.00, NULL, 0.00, 1, 133.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 4, 5, NULL, 'Rem.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Cum et voluptas aliquid excepturi sit.', 'Netherlands', 228, 'https://via.placeholder.com/300x200.png/008888?text=saepe', 188, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 490.00, NULL, 0.00, 1, 104.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 2, 5, NULL, 'Iusto.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Impedit aut beatae sit aut perferendis.', 'Jamaica', 418, 'https://via.placeholder.com/300x200.png/00cc66?text=repudiandae', 125, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 411.00, NULL, 0.00, 1, 101.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 3, 5, NULL, 'Sint vero.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Ut officia iusto aut unde.', 'Latvia', 395, 'https://via.placeholder.com/300x200.png/008866?text=omnis', 104, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 478.00, NULL, 0.00, 1, 105.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 2, 5, NULL, 'Nulla.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Minus ut ipsum tenetur nihil deleniti.', 'Equatorial Guinea', 360, 'https://via.placeholder.com/300x200.png/0044ee?text=qui', 194, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 409.00, NULL, 0.00, 1, 110.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 4, 4, NULL, 'Aut.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Eum qui quam dolorem.', 'Zimbabwe', 457, 'https://via.placeholder.com/300x200.png/004488?text=exercitationem', 194, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 410.00, NULL, 0.00, 1, 103.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 4, 5, NULL, 'Tempora.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Quo et et alias praesentium.', 'Latvia', 412, 'https://via.placeholder.com/300x200.png/009933?text=est', 184, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 470.00, NULL, 0.00, 1, 140.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 2, 4, NULL, 'Est et.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Cupiditate aut eos labore corrupti est.', 'Lebanon', 245, 'https://via.placeholder.com/300x200.png/00aadd?text=voluptatibus', 171, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 429.00, NULL, 0.00, 1, 137.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 3, 4, NULL, 'Rerum ex.', NULL, '2022-05-17 00:05:10', '2022-05-09 00:05:10', 'Vel et sint ut mollitia.', 'Cambodia', 332, 'https://via.placeholder.com/300x200.png/0000bb?text=possimus', 160, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19 00:05:10', '22:32:05', '00:32:05', 422.00, NULL, 0.00, 1, 135.00, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `learning_session_registrations`
--

CREATE TABLE `learning_session_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `learning_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning_session_registrations`
--

INSERT INTO `learning_session_registrations` (`id`, `learning_session_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Nesciunt.', 1, '2022-05-19 00:05:10', 703.00, 'Madilyn Gorczany DVM', '(820) 904-1568', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 15, 2, 'Occaecati.', 1, '2022-05-19 00:05:10', 862.00, 'Mr. Cyrus Nicolas DDS', '828.215.7921', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 14, 4, 'Id sed.', 1, '2022-05-19 00:05:10', 909.00, 'Daphnee Smitham', '(573) 419-9400', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 1, 1, 'Et sunt.', 1, '2022-05-19 00:05:10', 876.00, 'Christophe Rowe', '678-450-1836', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 14, 4, 'Nesciunt.', 1, '2022-05-19 00:05:10', 919.00, 'Rachelle Spinka', '352.681.7158', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 10, 1, 'Quae.', 1, '2022-05-19 00:05:10', 681.00, 'Treva Ziemann', '732-468-3810', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 6, 1, 'Ut.', 1, '2022-05-19 00:05:10', 560.00, 'Hosea Yost', '+1 (341) 494-8334', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 15, 3, 'Debitis.', 1, '2022-05-19 00:05:10', 702.00, 'Tanner Nolan', '740.845.5253', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 11, 1, 'Similique.', 1, '2022-05-19 00:05:10', 842.00, 'Kole Graham Sr.', '+1-478-422-4179', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 5, 2, 'Alias.', 1, '2022-05-19 00:05:10', 517.00, 'Jerald McGlynn', '1-364-627-3141', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 18, 1, 'Alias qui.', 1, '2022-05-19 00:05:10', 661.00, 'Deshaun Cruickshank', '(539) 494-6786', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 9, 4, 'Alias.', 1, '2022-05-19 00:05:10', 952.00, 'Gudrun Fay', '469.784.3140', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 15, 4, 'Et.', 1, '2022-05-19 00:05:10', 699.00, 'Ernesto Lueilwitz PhD', '769.508.2002', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 2, 3, 'Enim.', 1, '2022-05-19 00:05:10', 881.00, 'Kaitlin Johnston', '+1.530.383.0028', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 6, 3, 'Non.', 1, '2022-05-19 00:05:10', 681.00, 'Carson Rippin', '+15028603172', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 17, 3, 'Vero quam.', 1, '2022-05-19 00:05:10', 552.00, 'Alexis Roberts', '1-678-538-6699', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 11, 4, 'Sed est.', 1, '2022-05-19 00:05:10', 577.00, 'Abraham Huels PhD', '+1 (539) 562-1067', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 15, 4, 'Quaerat.', 1, '2022-05-19 00:05:10', 550.00, 'Prof. Ubaldo Anderson', '+1 (361) 667-5378', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 14, 3, 'Hic et.', 1, '2022-05-19 00:05:10', 865.00, 'Deangelo Casper II', '(320) 266-3687', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 6, 2, 'Et.', 1, '2022-05-19 00:05:10', 749.00, 'Trey Fadel', '+19297244421', '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `live_chats`
--

CREATE TABLE `live_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `date` timestamp NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `slot_counter` bigint(20) UNSIGNED DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `total_amount` double(8,2) DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `max_time_per_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT '1',
  `star_approve_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_chats`
--

INSERT INTO `live_chats` (`id`, `created_by_id`, `category_id`, `star_id`, `admin_id`, `title`, `slug`, `description`, `date`, `start_time`, `end_time`, `slot_counter`, `banner`, `video`, `total_seat`, `total_amount`, `fee`, `participant_number`, `registration_start_date`, `registration_end_date`, `max_time_per_person`, `publish_status`, `star_approve_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 7, 3, 'Demo live chat title -1', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 2940.00, 20, '2022-05-07 00:05:09', '2022-05-07 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(2, 4, 2, 7, 3, 'Demo live chat title -2', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 3192.00, 20, '2022-04-25 00:05:09', '2022-04-25 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(3, 9, 3, 7, 3, 'Demo live chat title -3', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 2244.00, 20, '2022-04-13 00:05:09', '2022-04-13 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(4, 3, 3, 5, 3, 'Demo live chat title -4', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 3542.00, 20, '2022-04-01 00:05:09', '2022-04-01 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(5, 4, 1, 7, 3, 'Demo live chat title -5', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 1293.00, 20, '2022-03-20 00:05:09', '2022-03-20 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(6, 1, 5, 7, 3, 'Demo live chat title -6', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:09', '2022-05-24 00:15:09', '2022-05-24 00:45:09', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 4414.00, 20, '2022-03-08 00:05:09', '2022-03-08 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(7, 6, 1, 7, 3, 'Demo live chat title -7', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:10', '2022-05-24 00:15:10', '2022-05-24 00:45:10', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 3735.00, 20, '2022-02-24 00:05:09', '2022-02-24 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 3, 7, 3, 'Demo live chat title -8', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:10', '2022-05-24 00:15:10', '2022-05-24 00:45:10', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 4130.00, 20, '2022-02-12 00:05:09', '2022-02-12 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 2, 5, 3, 'Demo live chat title -9', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:10', '2022-05-24 00:15:10', '2022-05-24 00:45:10', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 3473.00, 20, '2022-01-31 00:05:09', '2022-01-31 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 6, 5, 5, 3, 'Demo live chat title -10', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '2022-05-24 00:05:10', '2022-05-24 00:15:10', '2022-05-24 00:45:10', NULL, 'demo_image/banner.jpg', 'https://youtu.be/gvyUuxdRdR4', 40, 39.00, 3988.00, 20, '2022-01-19 00:05:09', '2022-01-19 00:05:09', '90', 1, 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_comments`
--

CREATE TABLE `live_chat_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_reacts`
--

CREATE TABLE `live_chat_reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `live_chat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `react` int(11) NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_registrations`
--

CREATE TABLE `live_chat_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `live_chat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat_start_time` timestamp NULL DEFAULT NULL,
  `live_chat_end_time` timestamp NULL DEFAULT NULL,
  `live_chat_date` timestamp NULL DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `publish_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_chat_registrations`
--

INSERT INTO `live_chat_registrations` (`id`, `live_chat_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `live_chat_start_time`, `live_chat_end_time`, `live_chat_date`, `video`, `comment_count`, `publish_status`, `created_at`, `updated_at`) VALUES
(1, 2, 7, NULL, 1, '2022-05-17 00:05:10', 612.00, 'Petra Dare V', '(478) 325-2410', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 9, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 5, 10, NULL, 1, '2022-05-17 00:05:10', 653.00, 'Mrs. Mara Frami', '(803) 556-3923', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 5, 7, NULL, 1, '2022-05-17 00:05:10', 756.00, 'Prof. Alex Keeling Jr.', '+1 (336) 948-7108', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 9, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 7, 9, NULL, 1, '2022-05-17 00:05:10', 824.00, 'Lorenza Ryan', '830-822-2683', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 2, 8, NULL, 1, '2022-05-17 00:05:10', 837.00, 'Mr. Jayde Schneider Jr.', '1-540-769-5529', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 3, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 5, 6, NULL, 1, '2022-05-17 00:05:10', 610.00, 'Zander Hauck', '+1.270.407.3748', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 2, 8, NULL, 1, '2022-05-17 00:05:10', 827.00, 'Aurelio Collins', '743-664-3595', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 6, 8, NULL, 1, '2022-05-17 00:05:10', 666.00, 'Shyanne Ankunding', '203-841-3116', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 9, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 5, 6, NULL, 1, '2022-05-17 00:05:10', 703.00, 'Jacinto Stracke', '1-614-520-4769', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 8, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 1, 8, NULL, 1, '2022-05-17 00:05:10', 684.00, 'Oda Mills', '1-478-564-7723', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 5, 10, NULL, 1, '2022-05-17 00:05:10', 828.00, 'Greyson Schulist', '1-681-742-9204', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 8, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 6, 9, NULL, 1, '2022-05-17 00:05:10', 719.00, 'Mrs. Stephanie Moen', '1-712-298-6719', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 5, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 6, 7, NULL, 1, '2022-05-17 00:05:10', 892.00, 'Dr. Alan White DVM', '+17435238364', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 10, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 6, 10, NULL, 1, '2022-05-17 00:05:10', 756.00, 'Mrs. Amara Murazik', '660.376.4462', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 2, 6, NULL, 1, '2022-05-17 00:05:10', 672.00, 'Ludie Bruen', '(769) 351-1755', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 6, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 1, 8, NULL, 1, '2022-05-17 00:05:10', 889.00, 'Terrence McLaughlin', '+1.283.245.5442', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 5, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 3, 8, NULL, 1, '2022-05-17 00:05:10', 683.00, 'Miss Kaylie Walter', '212.577.3325', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 6, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 7, 9, NULL, 1, '2022-05-17 00:05:10', 900.00, 'Gerson Harber V', '+19128238053', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 7, 8, NULL, 1, '2022-05-17 00:05:10', 753.00, 'Miss Wava Emard', '+1 (228) 362-8619', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 7, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 5, 8, NULL, 1, '2022-05-17 00:05:10', 856.00, 'Keely Schmitt', '979.433.5357', '2022-05-24 01:45:10', '2022-05-24 01:50:10', '2022-05-24 00:05:10', NULL, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `marketplaces`
--

CREATE TABLE `marketplaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_items` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_selling` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetup_events`
--

CREATE TABLE `meetup_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meetup_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_link` text COLLATE utf8mb4_unicode_ci,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `star_approval` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = approved',
  `manager_approval` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = approved',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = deactive, 1 = active',
  `total_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetup_events`
--

INSERT INTO `meetup_events` (`id`, `created_by_id`, `star_id`, `category_id`, `meetup_type`, `title`, `event_link`, `start_time`, `end_time`, `description`, `venue`, `total_seat`, `banner`, `participant_number`, `video`, `date`, `time`, `fee`, `star_approval`, `manager_approval`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 3, 5, NULL, 'Offline', 'Quaerat.', NULL, '06:05:10', '06:05:10', 'Hic dolorem ab aperiam est.', 'Canada', 201, 'https://via.placeholder.com/300x200.png/003377?text=officiis', 103, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 464.00, 0, 0, 1, 147, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 1, 4, NULL, 'Offline', 'Itaque.', NULL, '06:05:10', '06:05:10', 'Quia facere nobis ducimus quos.', 'Guadeloupe', 220, 'https://via.placeholder.com/300x200.png/005566?text=magnam', 194, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 473.00, 0, 0, 1, 103, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 4, 5, NULL, 'Offline', 'Ut.', NULL, '06:05:10', '06:05:10', 'Ut occaecati qui totam ut delectus dolores earum.', 'Rwanda', 204, 'https://via.placeholder.com/300x200.png/005577?text=ut', 107, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 474.00, 0, 0, 1, 100, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 4, NULL, 'Offline', 'Quis.', NULL, '06:05:10', '06:05:10', 'Fuga facilis voluptas similique.', 'Mayotte', 415, 'https://via.placeholder.com/300x200.png/0000ee?text=voluptas', 114, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 451.00, 0, 0, 1, 125, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 3, 5, NULL, 'Offline', 'Eos.', NULL, '06:05:10', '06:05:10', 'Neque sed autem dicta.', 'Tuvalu', 409, 'https://via.placeholder.com/300x200.png/007777?text=itaque', 150, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 453.00, 0, 0, 1, 131, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 1, 5, NULL, 'Offline', 'Sunt.', NULL, '06:05:10', '06:05:10', 'Est tempore vel sit beatae.', 'Grenada', 328, 'https://via.placeholder.com/300x200.png/007711?text=rerum', 116, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 461.00, 0, 0, 1, 144, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 1, 4, NULL, 'Offline', 'Qui ut et.', NULL, '06:05:10', '06:05:10', 'Ut autem sed et voluptatibus ducimus.', 'Montserrat', 426, 'https://via.placeholder.com/300x200.png/00ff99?text=natus', 123, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 461.00, 0, 0, 1, 118, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 3, 5, NULL, 'Offline', 'Et aut.', NULL, '06:05:10', '06:05:10', 'Maiores quisquam voluptate blanditiis.', 'Guyana', 237, 'https://via.placeholder.com/300x200.png/000000?text=debitis', 136, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 421.00, 0, 0, 1, 109, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 3, 5, NULL, 'Offline', 'Harum in.', NULL, '06:05:10', '06:05:10', 'Id ipsum ratione ut non.', 'Cuba', 466, 'https://via.placeholder.com/300x200.png/008899?text=vitae', 123, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 479.00, 0, 0, 1, 133, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 4, 4, NULL, 'Offline', 'Repellat.', NULL, '06:05:10', '06:05:10', 'Enim qui hic aut ut.', 'Palau', 208, 'https://via.placeholder.com/300x200.png/000099?text=nesciunt', 119, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 499.00, 0, 0, 1, 131, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 1, 4, NULL, 'Offline', 'Non et et.', NULL, '06:05:10', '06:05:10', 'Rerum hic est quidem.', 'Palestinian Territories', 205, 'https://via.placeholder.com/300x200.png/00aa66?text=accusamus', 187, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 468.00, 0, 0, 1, 134, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 1, 4, NULL, 'Offline', 'Non.', NULL, '06:05:10', '06:05:10', 'Quasi et maiores nobis ut.', 'French Southern Territories', 494, 'https://via.placeholder.com/300x200.png/00ddff?text=blanditiis', 162, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 413.00, 0, 0, 1, 138, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 4, 4, NULL, 'Offline', 'Maiores.', NULL, '06:05:10', '06:05:10', 'Alias praesentium rerum amet mollitia neque qui.', 'Timor-Leste', 453, 'https://via.placeholder.com/300x200.png/008800?text=modi', 100, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 466.00, 0, 0, 1, 102, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 3, 4, NULL, 'Offline', 'Unde amet.', NULL, '06:05:10', '06:05:10', 'Officiis earum et consequatur illum sequi enim.', 'Svalbard & Jan Mayen Islands', 295, 'https://via.placeholder.com/300x200.png/00eebb?text=consequuntur', 189, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 459.00, 0, 0, 1, 143, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 2, 5, NULL, 'Offline', 'Dolorem.', NULL, '06:05:10', '06:05:10', 'Et eos est labore hic voluptatem voluptatem.', 'Dominican Republic', 358, 'https://via.placeholder.com/300x200.png/002233?text=repellat', 127, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 459.00, 0, 0, 1, 132, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 2, 5, NULL, 'Offline', 'Labore.', NULL, '06:05:10', '06:05:10', 'Qui corrupti nemo minus omnis.', 'Cayman Islands', 209, 'https://via.placeholder.com/300x200.png/00aa77?text=autem', 155, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 498.00, 0, 0, 1, 122, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 4, 5, NULL, 'Offline', 'Vel quo.', NULL, '06:05:10', '06:05:10', 'Fugiat ducimus qui est tenetur.', 'Thailand', 333, 'https://via.placeholder.com/300x200.png/00bb11?text=et', 113, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 436.00, 0, 0, 1, 145, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 3, 4, NULL, 'Offline', 'Dolorum.', NULL, '06:05:10', '06:05:10', 'Sed quisquam sit cumque distinctio.', 'Israel', 259, 'https://via.placeholder.com/300x200.png/00ee33?text=pariatur', 123, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 437.00, 0, 0, 1, 108, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 2, 5, NULL, 'Offline', 'Et.', NULL, '06:05:10', '06:05:10', 'Ad rem commodi omnis nihil molestiae itaque.', 'Palau', 314, 'https://via.placeholder.com/300x200.png/0077ee?text=ducimus', 159, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 488.00, 0, 0, 1, 109, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 4, 5, NULL, 'Offline', 'Excepturi.', NULL, '06:05:10', '06:05:10', 'Quo nihil rerum id eum minus quia vel.', 'Denmark', 384, 'https://via.placeholder.com/300x200.png/00dd88?text=ut', 198, 'https://youtu.be/lyXjeJN9lyg', '2022-05-19', '22:32:05', 409.00, 0, 0, 1, 135, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `meetup_event_registrations`
--

CREATE TABLE `meetup_event_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meetup_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetup_event_registrations`
--

INSERT INTO `meetup_event_registrations` (`id`, `meetup_event_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Id dicta.', 1, '2022-05-19 06:05:10', 587.00, 'Anais Roob PhD', '530.423.1375', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 10, 2, 'Nesciunt.', 1, '2022-05-19 06:05:10', 613.00, 'Alexie Brekke', '(380) 322-4095', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 10, 1, 'Aliquid.', 1, '2022-05-19 06:05:10', 668.00, 'Retha Abernathy I', '+1.909.444.0306', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 9, 3, 'Adipisci.', 1, '2022-05-19 06:05:10', 686.00, 'Johnathon Feil', '857.314.1894', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 1, 1, 'Voluptas.', 1, '2022-05-19 06:05:10', 834.00, 'Hoyt Hand', '+1-520-970-8835', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 7, 1, 'Est.', 1, '2022-05-19 06:05:10', 793.00, 'Aniya Dare', '727.824.3166', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 3, 'Sint.', 1, '2022-05-19 06:05:10', 921.00, 'Brayan Gleason IV', '+1 (762) 912-3280', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 7, 1, 'Facere.', 1, '2022-05-19 06:05:10', 739.00, 'Roma McGlynn', '+1-734-912-4756', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 12, 4, 'In.', 1, '2022-05-19 06:05:10', 746.00, 'Lucienne Schinner V', '+1-646-341-9493', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 11, 4, 'Itaque.', 1, '2022-05-19 06:05:10', 911.00, 'Pasquale Walker', '346-336-7647', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 18, 1, 'Sed.', 1, '2022-05-19 06:05:10', 855.00, 'Reynold Simonis', '+1-606-967-4864', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 6, 2, 'Omnis eum.', 1, '2022-05-19 06:05:10', 955.00, 'Prof. Lysanne Champlin DVM', '240-354-9624', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 20, 1, 'Et id.', 1, '2022-05-19 06:05:10', 753.00, 'Zetta Harvey', '909-320-2319', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 10, 4, 'Facilis.', 1, '2022-05-19 06:05:10', 557.00, 'Kellie Ortiz', '234-371-1944', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 5, 2, 'Dolore.', 1, '2022-05-19 06:05:10', 902.00, 'Miss Marjorie Steuber DDS', '415.294.3172', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 17, 4, 'Est.', 1, '2022-05-19 06:05:10', 629.00, 'Ms. Naomi Swaniawski', '310.498.4950', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 9, 2, 'Maiores.', 1, '2022-05-19 06:05:10', 958.00, 'Alfred Schmeler', '(559) 402-4002', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 6, 1, 'Maiores.', 1, '2022-05-19 06:05:10', 662.00, 'Nona Boyer', '+18322851804', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 2, 2, 'Quaerat.', 1, '2022-05-19 06:05:10', 946.00, 'Lavinia Nienow', '484-850-7147', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 16, 3, 'Quo.', 1, '2022-05-19 06:05:10', 986.00, 'Dr. Vinnie Lowe', '+1-845-929-2115', '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_18_051832_create_static_options_table', 1),
(6, '2021_11_27_113718_create_categories_table', 1),
(7, '2021_11_28_052134_create_sub_categories_table', 1),
(8, '2021_11_28_052804_create_sliders_table', 1),
(9, '2021_11_28_053130_create_user_infos_table', 1),
(10, '2021_11_28_053331_create_payment_methods_table', 1),
(11, '2021_11_28_054517_create_interest_topics_table', 1),
(12, '2021_11_28_055220_create_user_interests_table', 1),
(13, '2021_11_28_060755_create_user_education_table', 1),
(14, '2021_11_28_065801_create_user_employments_table', 1),
(15, '2021_11_28_071930_create_live_chats_table', 1),
(16, '2021_11_28_084159_create_reports_table', 1),
(17, '2021_11_28_094156_create_souvenirs_table', 1),
(18, '2021_11_28_100901_create_souvenir_images_table', 1),
(19, '2021_11_28_105139_create_star_followings_table', 1),
(20, '2021_11_28_114554_create_star_categories_table', 1),
(21, '2021_11_29_045556_create_wallets_table', 1),
(22, '2021_11_29_050046_create_souvenir_orders_table', 1),
(23, '2021_11_29_050815_create_souvenir_payments_table', 1),
(24, '2021_11_29_054121_create_posts_table', 1),
(25, '2021_11_29_055620_create_post_reacts_table', 1),
(26, '2021_11_29_060443_create_post_images_table', 1),
(27, '2021_11_29_060941_create_post_videos_table', 1),
(28, '2021_11_29_061804_create_post_comments_table', 1),
(29, '2021_11_29_062753_create_comment_reacts_table', 1),
(30, '2021_12_01_100616_create_packages_table', 1),
(31, '2021_12_01_100833_create_package_infos_table', 1),
(32, '2021_12_01_101309_create_package_buys_table', 1),
(33, '2021_12_01_103125_create_meetup_events_table', 1),
(34, '2021_12_01_104601_create_meetup_event_registrations_table', 1),
(35, '2021_12_01_105736_create_learning_sessions_table', 1),
(36, '2021_12_01_111319_create_learning_session_registrations_table', 1),
(37, '2021_12_01_111758_create_audition_events_table', 1),
(38, '2021_12_01_111944_create_audition_event_registrations_table', 1),
(39, '2021_12_01_113520_create_audition_reacts_table', 1),
(40, '2021_12_01_113904_create_audition_comments_table', 1),
(41, '2021_12_01_114542_create_audition_judge_panels_table', 1),
(42, '2021_12_01_121440_create_live_chat_registrations_table', 1),
(43, '2021_12_01_122501_create_live_chat_reacts_table', 1),
(44, '2021_12_02_063033_create_live_chat_comments_table', 1),
(45, '2021_12_02_064204_create_star_time_schedules_table', 1),
(46, '2021_12_08_102255_create_super_stars_table', 1),
(47, '2022_01_04_052100_create_greetings_table', 1),
(48, '2022_01_25_045813_create_schedules_table', 1),
(49, '2022_01_30_044101_create_event_profiles_table', 1),
(50, '2022_01_31_071627_create_greetings_registrations_table', 1),
(51, '2022_02_01_092321_create_choice_lists_table', 1),
(52, '2022_02_05_110512_create_simple_posts_table', 1),
(53, '2022_02_06_093232_create_notification_texts_table', 1),
(54, '2022_02_06_093343_create_notifications_table', 1),
(55, '2022_02_07_081047_create_reacts_table', 1),
(56, '2022_02_16_083845_create_greeting_types_table', 1),
(57, '2022_02_17_045215_create_interest_types_table', 1),
(58, '2022_02_22_064350_create_marketplaces_table', 1),
(59, '2022_02_23_050603_create_countries_table', 1),
(60, '2022_02_23_050957_create_states_table', 1),
(61, '2022_02_23_051228_create_cities_table', 1),
(62, '2022_02_23_065653_create_auctions_table', 1),
(63, '2022_02_23_083800_create_biddings_table', 1),
(64, '2022_02_23_092937_create_acquired_apps_table', 1),
(65, '2022_03_09_064111_create_assign_judges_table', 1),
(66, '2022_03_09_064136_create_audition_marks_table', 1),
(67, '2022_03_09_064154_create_audtion_appeals_table', 1),
(68, '2022_03_09_064215_create_filter_videos_table', 1),
(69, '2022_03_09_064255_create_audition_templates_table', 1),
(70, '2022_03_09_065326_create_audition_participant_notifications_table', 1),
(71, '2022_03_09_071641_create_audition_payments_table', 1),
(72, '2022_03_09_071702_create_audition_interects_table', 1),
(73, '2022_03_10_061239_create_assign_admins_table', 1),
(74, '2022_03_12_114837_create_orders_table', 1),
(75, '2022_03_21_072449_create_fan_groups_table', 1),
(76, '2022_03_22_085322_create_activities_table', 1),
(77, '2022_03_24_053621_create_jury_boards_table', 1),
(78, '2022_03_29_090818_create_fan__group__joins_table', 1),
(79, '2022_03_31_111917_create_fan_posts_table', 1),
(80, '2022_04_04_075521_create_assign_juries_table', 1),
(81, '2022_04_06_084904_create_messages_table', 1),
(82, '2022_04_12_041620_create_judge_marks_table', 1),
(83, '2022_04_12_083403_create_fan_group_messages_table', 1),
(84, '2022_04_13_083252_create_audition_rules_table', 1),
(85, '2022_04_17_070900_create_promo_videos_table', 1),
(86, '2022_04_23_053328_create_audition_round_rules_table', 1),
(87, '2022_04_23_053339_create_audition_judge_instructions_table', 1),
(88, '2022_04_23_055258_create_auditions_table', 1),
(89, '2022_04_23_055547_create_audition_upload_videos_table', 1),
(90, '2022_04_23_062114_create_audition_user_votings_table', 1),
(91, '2022_04_23_063036_create_payments_table', 1),
(92, '2022_04_23_064139_create_audition_judge_marks_table', 1),
(93, '2022_04_23_065127_create_audition_assign_juries_table', 1),
(94, '2022_04_23_065407_create_audition_assign_judges_table', 1),
(95, '2022_04_23_070414_create_audition_participants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `view_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketplace_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_points` int(11) DEFAULT NULL,
  `auditions` int(11) NOT NULL DEFAULT '0',
  `learning_session` int(11) NOT NULL DEFAULT '0',
  `live_chats` int(11) NOT NULL DEFAULT '0',
  `meetup` int(11) NOT NULL DEFAULT '0',
  `greetings` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_buys`
--

CREATE TABLE `package_buys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = deactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_infos`
--

CREATE TABLE `package_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = deactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `round_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `event_id`, `round_id`, `event_type`, `payment_type`, `card_holder_name`, `card_number`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 4, 'audition', 'cash', 'Selena McLaughlin', '276067', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 5, 2, 3, 'audition', 'cash', 'Martin Bahringer IV', '400156', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 5, 3, 10, 'audition', 'cash', 'Letha Boyer', '549540', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 10, 1, 2, 'audition', 'cash', 'Keyshawn Stanton', '145901', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 9, 6, 8, 'audition', 'cash', 'Mattie McCullough', '74216', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 4, 7, 6, 'audition', 'cash', 'Ivy Weimann', '375365', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 2, 3, 10, 'audition', 'cash', 'Mateo Blick', '940499', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 2, 4, 9, 'audition', 'cash', 'Travis Oberbrunner', '43048', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 5, 2, 9, 'audition', 'cash', 'Haylie Sawayn DDS', '555446', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 4, 1, 2, 'audition', 'cash', 'Nash Mueller Jr.', '186757', '2022-05-19 00:05:10', '0', '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 31, 'jury10@gmail.com_StarToken', '6642b3e0718a28903593d69522f0756275cd9f675316f358ade33da67c5e68de', '[\"server:audition-admin\"]', '2022-05-19 00:06:02', '2022-05-19 00:05:51', '2022-05-19 00:06:02'),
(2, 'App\\Models\\User', 31, 'jury10@gmail.com_StarToken', 'd76cbdca10591e682600000ee021059b18f9de023e455d1af3580639051431af', '[\"server:audition-admin\"]', '2022-05-19 00:51:59', '2022-05-19 00:06:21', '2022-05-19 00:51:59'),
(3, 'App\\Models\\User', 12, 'audition-admin1@gmail.com_StarToken', 'a4b8662be4129d8b5a7441cb1cd0db8ad7e0653a3ec0456c22d030f01f93123f', '[\"server:audition-admin\"]', '2022-05-22 03:53:48', '2022-05-22 03:53:00', '2022-05-22 03:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `sub_category_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_number` int(11) NOT NULL DEFAULT '0',
  `react_number` int(11) NOT NULL DEFAULT '0',
  `share_number` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `share_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `react_provider` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `user_id`, `event_id`, `category_id`, `sub_category_id`, `comment_number`, `react_number`, `share_number`, `title`, `details`, `share_link`, `react_provider`, `status`, `created_at`, `updated_at`) VALUES
(1, 'meetup', 4, 15, 1, 0, 3, 3, 4, 'Voluptatem in et.', 'Et rerum aut quidem qui voluptatum repellendus cum. Quo praesentium quas unde a ut tempore.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(2, 'meetup', 3, 18, 1, 0, 4, 5, 1, 'Doloremque.', 'Aperiam illo ut id non. Molestiae ab aut temporibus. Tempora eos veniam est explicabo ea.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(3, 'meetup', 1, 4, 1, 0, 4, 5, 2, 'Corrupti illum.', 'Delectus velit laborum expedita. Eum voluptatem dolore dignissimos rem.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(4, 'meetup', 3, 18, 1, 0, 3, 4, 4, 'Est nihil repellat.', 'Odit sequi et quis eum. Perferendis repellat non doloremque ut saepe cumque.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(5, 'meetup', 4, 13, 1, 0, 4, 2, 5, 'Praesentium.', 'Et at sed qui recusandae maiores aperiam. Eum sunt ut quis impedit fugiat ut.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(6, 'meetup', 2, 3, 1, 0, 2, 1, 4, 'Dolores eligendi.', 'Atque nam et fugiat deleniti excepturi. Sint rerum aut aliquam accusantium quia aperiam dolores.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(7, 'meetup', 3, 18, 1, 0, 5, 5, 4, 'Itaque nihil ut.', 'Aut ut error sit. Doloribus et mollitia sit cum totam.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(8, 'meetup', 4, 8, 1, 0, 5, 3, 2, 'Temporibus alias.', 'Minus eveniet nam soluta in nam animi. Quia numquam vel adipisci et et provident.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(9, 'meetup', 2, 15, 1, 0, 3, 2, 3, 'Atque quia.', 'Vero nihil doloremque perferendis quibusdam ratione. Ut molestiae doloremque delectus enim.', NULL, NULL, 1, '2022-05-17 03:48:11', '2022-05-17 03:48:11'),
(10, 'audition', 1, 10, 1, 0, 0, 0, 0, 'Monir Talent Hunt 2022', '\r\n\r\n            Monir Talent Hunt 2022 . description\r\n\r\n            ', NULL, NULL, 1, '2022-05-17 03:49:53', '2022-05-17 03:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `react_no` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `parent_comment_id`, `comment`, `react_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 'Animi et et quis.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 3, NULL, 'Neque soluta sed.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 2, NULL, 'Expedita in.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 3, NULL, 'Officiis incidunt.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 2, NULL, 'Ea atque.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 4, NULL, 'Maiores accusamus.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 4, NULL, 'Quidem ullam.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 1, NULL, 'In animi modi ab id.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 4, NULL, 'Enim possimus est.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 2, NULL, 'Ut quibusdam in.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 4, NULL, 'Sit iure.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 1, NULL, 'Illo dolores enim.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 4, NULL, 'Ad voluptas.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 3, NULL, 'Molestias quia amet.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 4, NULL, 'Non dolore nulla.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 3, NULL, 'Eos ratione animi.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 2, NULL, 'Qui qui aut ut.', 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 2, NULL, 'Temporibus qui.', 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 2, NULL, 'Recusandae optio.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 1, NULL, 'Omnis et ratione.', 0, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://via.placeholder.com/300x200.png/00ddff?text=consequuntur', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 'https://via.placeholder.com/300x200.png/00ff33?text=consequatur', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 'https://via.placeholder.com/300x200.png/00bb99?text=fugit', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 'https://via.placeholder.com/300x200.png/0022ff?text=placeat', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 'https://via.placeholder.com/300x200.png/008855?text=similique', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 'https://via.placeholder.com/300x200.png/00ccbb?text=molestiae', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 'https://via.placeholder.com/300x200.png/0088bb?text=id', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 'https://via.placeholder.com/300x200.png/001166?text=voluptas', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 'https://via.placeholder.com/300x200.png/000011?text=aut', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 'https://via.placeholder.com/300x200.png/00aa77?text=quaerat', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 'https://via.placeholder.com/300x200.png/00aa88?text=eum', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 'https://via.placeholder.com/300x200.png/009955?text=explicabo', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 'https://via.placeholder.com/300x200.png/005577?text=et', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 'https://via.placeholder.com/300x200.png/006699?text=dolor', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 'https://via.placeholder.com/300x200.png/007755?text=id', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 'https://via.placeholder.com/300x200.png/00bb66?text=est', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 'https://via.placeholder.com/300x200.png/0011aa?text=consectetur', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 'https://via.placeholder.com/300x200.png/00ee55?text=animi', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 'https://via.placeholder.com/300x200.png/004488?text=nam', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 'https://via.placeholder.com/300x200.png/00ee00?text=non', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_reacts`
--

CREATE TABLE `post_reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `react` int(11) NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_reacts`
--

INSERT INTO `post_reacts` (`id`, `post_id`, `user_id`, `react`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 4, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 3, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 1, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 2, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 1, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 3, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 3, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 4, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 4, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 4, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 1, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 2, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 2, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 4, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 3, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 3, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 3, 2, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 4, 0, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_videos`
--

CREATE TABLE `post_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_videos`
--

INSERT INTO `post_videos` (`id`, `post_id`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 5, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 6, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 7, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 8, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 9, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 10, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(11, 11, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 12, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 13, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 14, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(15, 15, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(16, 16, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(17, 17, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(18, 18, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(19, 19, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(20, 20, 'https://youtu.be/lyXjeJN9lyg', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `promo_videos`
--

CREATE TABLE `promo_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_approval` tinyint(1) DEFAULT NULL COMMENT '0=pending,1=approved',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reacts`
--

CREATE TABLE `reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reported_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `against_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `issue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = closed , 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simple_posts`
--

CREATE TABLE `simple_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_approval` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `souvenirs`
--

CREATE TABLE `souvenirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = running , 1 = closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_images`
--

CREATE TABLE `souvenir_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `souvenir_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_orders`
--

CREATE TABLE `souvenir_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `souvenir_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `delivery_status` int(11) DEFAULT NULL,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_payments`
--

CREATE TABLE `souvenir_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `souvenir_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ccv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `star_categories`
--

CREATE TABLE `star_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `star_followings`
--

CREATE TABLE `star_followings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `star_time_schedules`
--

CREATE TABLE `star_time_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'uploads/images/logo.png', '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(3, 'user', 'uploads/images/setting/user.png', '2022-05-19 00:05:06', '2022-05-19 00:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Football', 'football', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 1, 'Cricket', 'cricket', 'uploads/category/icon/tIJUBSq67x1o03zWRi00-1639890035.png', 'uploads/category/icon/tIJUBSq67x1o03zWRi00-1639890035.png', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 1, 'Tennis', 'Tennis', 'uploads/category/icon/ripCtvWh2gH5cNaoR905-1639890829.png', 'uploads/category/icon/ripCtvWh2gH5cNaoR905-1639890829.png', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 1, 'Others', 'others', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `super_stars`
--

CREATE TABLE `super_stars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED NOT NULL,
  `star_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_stars`
--

INSERT INTO `super_stars` (`id`, `star_id`, `star_type`, `admin_id`, `category_id`, `sub_category_id`, `terms_and_condition`, `description`, `qr_code`, `image`, `agreement`, `status`, `created_at`, `updated_at`) VALUES
(1, 42, NULL, 1, 1, NULL, 'Exercitationem molestiae modi ut aliquid. Ipsa non ipsam sed voluptatem rerum voluptas occaecati qui. Est harum et rerum ipsa. Voluptatem esse voluptatum voluptatem quae hic inventore nisi.', NULL, '64933173', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(2, 43, NULL, 1, 1, NULL, 'Totam sequi et est ut necessitatibus. Quas quasi aut similique laborum ipsa sint. Asperiores quis tempore et sunt. Et sed est enim culpa sed est debitis.', NULL, '61364170', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(3, 44, NULL, 1, 1, NULL, 'Quos vero dolorum quam blanditiis vero. Fuga blanditiis et dolor molestias consequatur non. Rerum voluptatem fuga deserunt.', NULL, '27022567', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(4, 45, NULL, 1, 1, NULL, 'Aliquam non asperiores pariatur sed itaque. Enim commodi ducimus consequatur hic doloribus commodi quam. Quae dolorem aut voluptatem perspiciatis dolor.', NULL, '56750599', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(5, 46, NULL, 1, 1, NULL, 'Quod quia eos consequatur beatae at rerum sint. Fugiat sit voluptas nisi. Sint possimus suscipit suscipit et.', NULL, '29415646', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(6, 47, NULL, 1, 1, NULL, 'Ratione ut magnam itaque et culpa labore. Architecto ea aut nihil corrupti nostrum. Quis temporibus quia distinctio doloribus.', NULL, '56001959', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(7, 48, NULL, 1, 1, NULL, 'Debitis itaque quia neque et odio. Odit sunt doloremque ut qui dolorem optio vitae et. Unde qui ipsum cum at optio quos. Omnis ut provident quam nihil mollitia quod ut voluptatem.', NULL, '91194411', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(8, 49, NULL, 1, 1, NULL, 'Dolores dolor aliquam in sapiente ex voluptas porro. Fuga eaque quam laboriosam hic. A impedit rerum corporis quo.', NULL, '25287823', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(9, 50, NULL, 1, 1, NULL, 'Aut dignissimos a ut modi rerum laborum quia. Corrupti est et dolores voluptatem quia non qui. Sit nulla necessitatibus perferendis ipsam. Est soluta eius quidem vitae amet occaecati tempore ea.', NULL, '90205170', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(10, 51, NULL, 1, 1, NULL, 'Quisquam voluptas animi saepe accusamus. Minima similique molestiae dolores optio quis numquam itaque corporis. Praesentium repellendus blanditiis et at animi aut esse. Et mollitia modi qui deserunt.', NULL, '81332642', NULL, NULL, 0, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(11, 4, NULL, 1, 1, 2, NULL, 'Velit exercitationem explicabo aut molestiae rerum. Quaerat nihil odit molestias quidem aliquid et. Amet architecto blanditiis quaerat consectetur voluptatibus.', NULL, 'uploads/images/star/sakib.png', NULL, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(12, 8, NULL, 1, 1, 2, NULL, 'Velit quis et perferendis et. Reprehenderit eveniet non alias eius. Mollitia dignissimos dolorem dignissimos voluptatem veritatis. Officia libero eaque et.', NULL, 'uploads/images/star/tamim.png', NULL, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(13, 9, NULL, 1, 1, 2, NULL, 'Adipisci aspernatur omnis sunt omnis. Nihil ipsa asperiores natus libero voluptas autem fuga.', NULL, 'uploads/images/star/musfiqur.png', NULL, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(14, 4, NULL, 1, 1, 2, NULL, 'Sit qui rem aspernatur non. Iste quo architecto eum exercitationem. Voluptate possimus fugit repellat et at adipisci voluptatum. Nihil tempore rem iste ea quia. Veritatis vel neque qui.', NULL, 'uploads/images/star/sakib.png', NULL, 1, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email_send_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_user` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `phone`, `birth`, `email`, `otp`, `otp_verified_at`, `image`, `fan_group`, `cover_photo`, `status`, `email_send_status`, `user_type`, `password`, `parent_user`, `category_id`, `is_online`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mr. Super', ' Admin', '01700000000', NULL, 'superadmin@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'super-admin', '$2y$10$/1ccmtOQ21qQJea5dn6uc.YPOPhCWacT5T6yGnPiD3hPhr5.AhcLe', NULL, NULL, 0, NULL, '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(2, NULL, 'Manager Admin ', ' (sports)', '01700000001', NULL, 'manager-admin-sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'manager-admin', '$2y$10$hMrOd2M05ohm.hBnkiiGF.YvhtyqDxR8LLkt8eLKeG2RLX1jZuzLS', NULL, 1, 0, NULL, '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(3, NULL, 'Shakib', 'Al Hasan', '01700000003', NULL, 'shakib75@gmail.com', '123456', NULL, '', NULL, NULL, 1, NULL, 'star', '$2y$10$0tAufzW1y76bZSWt8/t/JOmmVDqSAZ0jG22P4uo6s3L5KABJoDKbe', NULL, NULL, 0, NULL, '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(4, NULL, 'Mizanur Rahman', 'Raihan', '01700000002', NULL, 'raihan@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'admin', '$2y$10$.7zxeC68aEQqfZODGsg5tOAa/iLtlhvI4hWoSHDGA8rRGp.Gr430W', NULL, NULL, 0, NULL, '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(5, NULL, 'Mizanur Rahman', 'Azhari', '01700000004', NULL, 'azhari@gmail.com', '123456', NULL, 'uploads/images/users/1642919728.jpg', NULL, NULL, 1, NULL, 'star', '$2y$10$avdCtzCmQHtzVGlRn1HqQOaveIePuR/3kBAxwOaYtnw0JCUzQ.BLy', NULL, NULL, 0, NULL, '2022-05-19 00:05:06', '2022-05-19 00:05:06'),
(6, NULL, 'Momtaz', 'Begum', '01700000005', NULL, 'momtaj@gmail.com', '123456', NULL, 'uploads/images/users/Momtaz-Begum-photo.jpg', NULL, NULL, 1, NULL, 'star', '$2y$10$fJ9u84yhwPtcCYrGHk/7me2Cna5QX1bPsnRSfwQeUQmZxJhzCXLXe', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(7, NULL, 'Srabanti', 'Chatterjee', '01700000006', NULL, 'star-movie@gmail.com', '123456', NULL, 'uploads/images/users/srabanti.jpg', NULL, NULL, 1, NULL, 'star', '$2y$10$b8LGz9ErUKR6cZ3ZYTJkpuG1II4VzBaeDe5V6DhkpYyLPzr6mQHQy', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(8, NULL, 'Tamim', 'Hasan', '01700000007', NULL, 'cricket3-movie@gmail.com', '123456', NULL, 'uploads/images/star/tamim.png', NULL, NULL, 1, NULL, 'star', '$2y$10$ruWIZJatipz7H.idQ.KTDO3nzA1Oe.hR8OJrhIKOSG.s1OUVyP7f.', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(9, NULL, 'Musfiq', 'Hasan', '01700000008', NULL, 'cricket5-movie@gmail.com', '123456', NULL, 'uploads/images/star/musfiqur.png', NULL, NULL, 1, NULL, 'star', '$2y$10$9bbB3eRYJIAIeGsoK.Lch.m9c0g.4I1NHFPY4rFDE.qK0H5bhcY.u', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(10, NULL, 'Mr.', 'User', '01700000009', NULL, 'user1@gmail.com', '123456', NULL, 'uploads/images/users/lzg-1643882523.jpg', NULL, 'uploads/images/users/1642659396.jpg', 1, NULL, 'user', '$2y$10$3ZVYFrC8gSvJJ0rDSoJDR.c/vuxHYUkrYAa6d06scz.YgHmqQtQ.m', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(11, NULL, 'Mr.', 'Jury', '01700000010', NULL, 'jury@gmail.com', '123456', NULL, NULL, NULL, 'uploads/images/users/1642659396.jpg', 1, NULL, 'jury', '$2y$10$D/MTg.eN09kSAcIWkjddDOjjfDYK1l2dm9qGmrLGHs3Qkvw8VzPY2', NULL, NULL, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(12, NULL, 'Mr. Audition', 'Admin 1', '0160000001', NULL, 'audition-admin1@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$XgdYhTQFk5hbreLuTD3DJus/dzWOmZ/XR/k9mIV9IlktNFqhJxWZK', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(13, NULL, 'Mr. Audition', 'Admin 2', '0160000002', NULL, 'audition-admin2@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$Q6TupsczA/4jbbtB5SgnG.bjv2svCqt5/.dP7mzoNvBWCLCbnp5Q.', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(14, NULL, 'Mr. Audition', 'Admin 3', '0160000003', NULL, 'audition-admin3@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$3bGjsRFJD8Zy56dOPXJC1uF/rg0e6IM3HA8XlE.XanG9h/3gC2jvu', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(15, NULL, 'Mr. Audition', 'Admin 4', '0160000004', NULL, 'audition-admin4@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$UJQItCVGLRrwSkzMCjUBGec7UqwO7SmXBvi5sMiXqZSOvCHCB1w8G', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(16, NULL, 'Mr. Audition', 'Admin 5', '0160000005', NULL, 'audition-admin5@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$x7NuINnfYMHrmfIqFuJFS.jyEVSUku3KdFUcnOUpGTKy/U3ofibxa', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(17, NULL, 'Mr. Audition', 'Admin 6', '0160000006', NULL, 'audition-admin6@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$PZeDq7VT1FegNx4YpQceg.dW2tGzohOAUyCTsDSucATKjEJUAolQW', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(18, NULL, 'Mr. Audition', 'Admin 7', '0160000007', NULL, 'audition-admin7@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$jXgmZCK.wLls5/857Zh2mOAHuCkqii5JLisQqqFzO9S1mqBz/ranK', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(19, NULL, 'Mr. Audition', 'Admin 8', '0160000008', NULL, 'audition-admin8@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$2I/SMxcZ2j49tj8Q0BQTKu7jr80pIiXtIgTzHSXUV9DYuTBeA5Bbi', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(20, NULL, 'Mr. Audition', 'Admin 9', '0160000009', NULL, 'audition-admin9@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$SpEMk0jbItCvm8MBZHDx7O2fEJoBNVPWUjeaVO9q/60nfEbOdLo7.', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(21, NULL, 'Mr. Audition', 'Admin 10', '01600000010', NULL, 'audition-admin10@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'audition-admin', '$2y$10$dZzE/TtdLR5zOt8SFrcszuSbgxkFxVDxKG.8Qsa1ykC59gBuZ3cy6', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(22, NULL, 'Mr. ', 'Jury 1', '0161100001', NULL, 'jury1@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$.e5BKccKpZYzCBCq77YzyekmTFaHz/RLGBf0Vu4chXVYgT8f3UwV2', NULL, 1, 0, NULL, '2022-05-19 00:05:07', '2022-05-19 00:05:07'),
(23, NULL, 'Mr. ', 'Jury 2', '0161100002', NULL, 'jury2@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$n/tsivYud8gPBBEL2ALPeuI3VWfCkEPQvCpWNdqAD44xrlE9IWFve', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(24, NULL, 'Mr. ', 'Jury 3', '0161100003', NULL, 'jury3@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$0PtJ68jBihy1sKuih4kqCO4Wy4ZZcu3d/T8w8Mf7lCulsxY9QMqMa', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(25, NULL, 'Mr. ', 'Jury 4', '0161100004', NULL, 'jury4@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$BsDn2SUjNPoiH1.NtRv3ZuvmNBxy/aahIjlSXPec/e3vB2//I7Nb.', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(26, NULL, 'Mr. ', 'Jury 5', '0161100005', NULL, 'jury5@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$jGN9k4ieJ77idz2CagYUiePUy6eUIGVvv0MDCBi/KJmUpn2esn2Uq', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(27, NULL, 'Mr. ', 'Jury 6', '0161100006', NULL, 'jury6@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$S9PKlFUsqdJlam/YmYkJ2uWderlTHyVA7/PnaklmKpX8T71nua3o6', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(28, NULL, 'Mr. ', 'Jury 7', '0161100007', NULL, 'jury7@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$tkW3JMixug6yva948DeRXu9oSdrBG3ywmnNnjHsvSY3N9brkUPdHO', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(29, NULL, 'Mr. ', 'Jury 8', '0161100008', NULL, 'jury8@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$D0cWZJasTSryIwfRcj1ysOP3eWeAUSsZG35tqviWMvfbViKLYWzTK', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(30, NULL, 'Mr. ', 'Jury 9', '0161100009', NULL, 'jury9@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$4KJtigO4T3WizWlAcuD1nOB29NgPiUfI45kGqtCzqYYnEBMt/IxyO', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(31, NULL, 'Mr. ', 'Jury 10', '01611000010', NULL, 'jury10@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'jury', '$2y$10$kqFwYe/HX4FIJ626XtSO5.ZEvo29sgve2hD5wzF2WrjFAWyE4foM.', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(32, NULL, 'Star 1', '(Sports)', '0110000001', NULL, 'star1sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$PizQ1x.bVqGF.B5c4YbdjOqLkwRx9g7SdkVw0pfhPf/SoEiOBbEL.', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(33, NULL, 'Star 2', '(Sports)', '0110000002', NULL, 'star2sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$sJAoJvz45ZvVcMJTdwfch.VzDQHIY6E37Rk3Dr8n/wy.DNGdQvHAO', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(34, NULL, 'Star 3', '(Sports)', '0110000003', NULL, 'star3sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$zZg.7WlzAxNz49bItW/PxOXCCmJvG9XDOgRn7tktSAHpMx1FARzg.', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(35, NULL, 'Star 4', '(Sports)', '0110000004', NULL, 'star4sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$6BLz7DmojDOFs6Ztd4DuKOUaawexoaB2R5N7EgZIzMroyY8Wm/DPK', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(36, NULL, 'Star 5', '(Sports)', '0110000005', NULL, 'star5sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$GkFTaS87ueBetWtCX0aIj.hiAnKQWVmyM4xaUvYEnFAiW5gq/kSZW', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(37, NULL, 'Star 6', '(Sports)', '0110000006', NULL, 'star6sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$xr99qbTIrBfhoD/BkEUSb.qJEBh4cLKRWenPnG53J.eqgYYv6k1/a', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(38, NULL, 'Star 7', '(Sports)', '0110000007', NULL, 'star7sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$5EYArYx3EinMPJgh5g6is.Ya8bl8DJsAxMpKDaniDIoaF/NBJY8uO', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(39, NULL, 'Star 8', '(Sports)', '0110000008', NULL, 'star8sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$AsO7FYCtsNyru2vT6xjT1.xJYtCT13hTEYVZ7ppMYNChkd/F38mvu', NULL, 1, 0, NULL, '2022-05-19 00:05:08', '2022-05-19 00:05:08'),
(40, NULL, 'Star 9', '(Sports)', '0110000009', NULL, 'star9sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$BwqnzX9FnOpYrjawdfYmvuhEHOAMsmetibC6wxSiGnULsiZQDhvcC', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(41, NULL, 'Star 10', '(Sports)', '01100000010', NULL, 'star10sports@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$kgTtENZotmZNT/CUsvuxQ.vVzl/TUv84and88W3ALjyp7P3btqy7m', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(42, NULL, 'Mr. ', 'Judge 1', '0161100221', NULL, 'judge1@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$Ej3R6OaklXWl9DwPQn/hCOfXqLOtCy4HBW5lx6eMvM1hf5ztZrFvS', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(43, NULL, 'Mr. ', 'Judge 2', '0161100222', NULL, 'judge2@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$Xg0LkIPUTUb62Rlte8YnyejYkEpJhhzn6.iw5MAvm.KIaf1Wri8t6', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(44, NULL, 'Mr. ', 'Judge 3', '0161100223', NULL, 'judge3@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$mVRebdGUac.HTc7sD7X47uHuWypvkNwfU2UdVaDCGAYQWX0m026hm', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(45, NULL, 'Mr. ', 'Judge 4', '0161100224', NULL, 'judge4@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$/hwxAJnXE8.weYbVGzJzZuue2k8Kri3xEp7e1485UK6ZJtg2cvDsC', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(46, NULL, 'Mr. ', 'Judge 5', '0161100225', NULL, 'judge5@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$29RJsj4aenorfPbIAybip.BgWETZ/wuhDNcfitCM3U1O/reXiXKSi', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(47, NULL, 'Mr. ', 'Judge 6', '0161100226', NULL, 'judge6@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$IoBOm8GtjUcmD69kwtZGceY8HWhod01/vl3U5m0vUQRO9jt.91nDO', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(48, NULL, 'Mr. ', 'Judge 7', '0161100227', NULL, 'judge7@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$HjgALYOtnbpuX2l7mHhpM.F1bSQXQq5N7nAmaMFbrk.r3EiXr1Pd2', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(49, NULL, 'Mr. ', 'Judge 8', '0161100228', NULL, 'judge8@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$jYD4ZlaeYZl62vGgrNVnqu1JurqY.IIt6qQF0K9QUIqSKFRAMfbBe', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(50, NULL, 'Mr. ', 'Judge 9', '0161100229', NULL, 'judge9@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$anlq5ECM/MG9jVnX9Taq5O.317OB3HPzijIgAoxTRNXl20sMo2Gg.', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(51, NULL, 'Mr. ', 'Judge 10', '01611002210', NULL, 'judge10@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'star', '$2y$10$kPDAN2JRETbpemRLSlCl1ewAen5vru8jJA/rJXacKLjLTg4xirLM6', NULL, 1, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(52, NULL, 'Mr.', 'User 2', '0170010002', NULL, 'user2@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'user', '$2y$10$kV5flEtCbPXyQSvX4eB3a.7PtXSZaoYMTnkxe8wt0nx7Zmg5SAVUC', NULL, NULL, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(53, NULL, 'Mr.', 'User 3', '0170010003', NULL, 'user3@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'user', '$2y$10$dy4TCd1g2dOhIhVS9HJ11OIQQ2H19j5yUtqaTqgcyR8iQbY/k9Guu', NULL, NULL, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(54, NULL, 'Mr.', 'User 4', '0170010004', NULL, 'user4@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'user', '$2y$10$qK3r3zp/5d2mGbhLaKzB.eK4cdjVAlij5MrZ3bK.CNY2xkqYzhvsS', NULL, NULL, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(55, NULL, 'Mr.', 'User 5', '0170010005', NULL, 'user5@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'user', '$2y$10$Qiufs6NShNE8.do6RBl/PesTYihJuBfno2L7Z34w1rKaQCl/tffZO', NULL, NULL, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09'),
(56, NULL, 'Mr.', 'User 6', '0170010006', NULL, 'user6@gmail.com', '123456', NULL, NULL, NULL, NULL, 1, NULL, 'user', '$2y$10$fCvmpS3Abw/.axw1giZUr.ELZMw60ZARPUjpJKCcbcgJSC90YwBni', NULL, NULL, 0, NULL, '2022-05-19 00:05:09', '2022-05-19 00:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_education`
--

CREATE TABLE `user_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_year` timestamp NULL DEFAULT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_education`
--

INSERT INTO `user_education` (`id`, `user_id`, `subject`, `institute`, `passing_year`, `grade`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quis.', 'Est iure.', '2009-01-30 18:00:00', '2', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, 'Nobis.', 'Laborum.', '2009-01-30 18:00:00', '3', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, 'At et.', 'Iure.', '2009-01-30 18:00:00', '3', '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 4, 'Officia.', 'Tenetur.', '2009-01-30 18:00:00', '2', '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_employments`
--

CREATE TABLE `user_employments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double(8,2) DEFAULT NULL,
  `yearly_income` double(8,2) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` text COLLATE utf8mb4_unicode_ci,
  `edu_level` text COLLATE utf8mb4_unicode_ci,
  `institute` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `position` text COLLATE utf8mb4_unicode_ci,
  `salery_range` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `nid`, `passport`, `gender`, `country`, `dob`, `occupation`, `edu_level`, `institute`, `subject`, `position`, `salery_range`, `created_at`, `updated_at`) VALUES
(1, 4, '+1 (910) 845-9809', '1-534-346-9550', '0', 'Wallis and Futuna', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(2, 2, '+1.256.602.9592', '(859) 363-1386', '1', 'Faroe Islands', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(3, 3, '1-626-508-2010', '+1 (269) 244-2053', '1', 'Cocos (Keeling) Islands', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(4, 3, '+1-571-323-0164', '1-213-558-9234', '1', 'Albania', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(5, 3, '+12819266221', '+1-484-848-8909', '0', 'Jamaica', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(6, 2, '(813) 417-2926', '+14076918493', '1', 'Vanuatu', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(7, 1, '+1 (856) 482-9255', '+1-650-743-7235', '0', 'United Arab Emirates', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(8, 2, '(321) 521-9967', '1-516-304-7416', '0', 'Slovenia', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(9, 3, '571-410-3831', '878.998.1410', '1', 'Belize', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10'),
(10, 2, '1-772-992-2830', '+14585745724', '1', 'Holy See (Vatican City State)', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 00:05:10', '2022-05-19 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interest_topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `club_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audition_cost` double(8,2) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acquired_apps`
--
ALTER TABLE `acquired_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_admins`
--
ALTER TABLE `assign_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_judges`
--
ALTER TABLE `assign_judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_juries`
--
ALTER TABLE `assign_juries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auditions`
--
ALTER TABLE `auditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_assign_judges`
--
ALTER TABLE `audition_assign_judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_assign_juries`
--
ALTER TABLE `audition_assign_juries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_comments`
--
ALTER TABLE `audition_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_events`
--
ALTER TABLE `audition_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_event_registrations`
--
ALTER TABLE `audition_event_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_interects`
--
ALTER TABLE `audition_interects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_judge_instructions`
--
ALTER TABLE `audition_judge_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_judge_marks`
--
ALTER TABLE `audition_judge_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_judge_panels`
--
ALTER TABLE `audition_judge_panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_marks`
--
ALTER TABLE `audition_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_participants`
--
ALTER TABLE `audition_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_participant_notifications`
--
ALTER TABLE `audition_participant_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_payments`
--
ALTER TABLE `audition_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_reacts`
--
ALTER TABLE `audition_reacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_round_rules`
--
ALTER TABLE `audition_round_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_rules`
--
ALTER TABLE `audition_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_templates`
--
ALTER TABLE `audition_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_upload_videos`
--
ALTER TABLE `audition_upload_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audition_user_votings`
--
ALTER TABLE `audition_user_votings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audtion_appeals`
--
ALTER TABLE `audtion_appeals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biddings`
--
ALTER TABLE `biddings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `choice_lists`
--
ALTER TABLE `choice_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_reacts`
--
ALTER TABLE `comment_reacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_profiles`
--
ALTER TABLE `event_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fan_groups`
--
ALTER TABLE `fan_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fan_group_messages`
--
ALTER TABLE `fan_group_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fan_posts`
--
ALTER TABLE `fan_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fan__group__joins`
--
ALTER TABLE `fan__group__joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_videos`
--
ALTER TABLE `filter_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greetings`
--
ALTER TABLE `greetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greetings_registrations`
--
ALTER TABLE `greetings_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greeting_types`
--
ALTER TABLE `greeting_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_topics`
--
ALTER TABLE `interest_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_types`
--
ALTER TABLE `interest_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_marks`
--
ALTER TABLE `judge_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jury_boards`
--
ALTER TABLE `jury_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_sessions`
--
ALTER TABLE `learning_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_session_registrations`
--
ALTER TABLE `learning_session_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chats`
--
ALTER TABLE `live_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_comments`
--
ALTER TABLE `live_chat_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_reacts`
--
ALTER TABLE `live_chat_reacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_registrations`
--
ALTER TABLE `live_chat_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplaces`
--
ALTER TABLE `marketplaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetup_events`
--
ALTER TABLE `meetup_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetup_event_registrations`
--
ALTER TABLE `meetup_event_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_buys`
--
ALTER TABLE `package_buys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_infos`
--
ALTER TABLE `package_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_reacts`
--
ALTER TABLE `post_reacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_videos`
--
ALTER TABLE `post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_videos`
--
ALTER TABLE `promo_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reacts`
--
ALTER TABLE `reacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_posts`
--
ALTER TABLE `simple_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenirs`
--
ALTER TABLE `souvenirs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir_images`
--
ALTER TABLE `souvenir_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir_orders`
--
ALTER TABLE `souvenir_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir_payments`
--
ALTER TABLE `souvenir_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star_categories`
--
ALTER TABLE `star_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star_followings`
--
ALTER TABLE `star_followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star_time_schedules`
--
ALTER TABLE `star_time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `super_stars`
--
ALTER TABLE `super_stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_education`
--
ALTER TABLE `user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_employments`
--
ALTER TABLE `user_employments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acquired_apps`
--
ALTER TABLE `acquired_apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_admins`
--
ALTER TABLE `assign_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_judges`
--
ALTER TABLE `assign_judges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_juries`
--
ALTER TABLE `assign_juries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auditions`
--
ALTER TABLE `auditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audition_assign_judges`
--
ALTER TABLE `audition_assign_judges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_assign_juries`
--
ALTER TABLE `audition_assign_juries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_comments`
--
ALTER TABLE `audition_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `audition_events`
--
ALTER TABLE `audition_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `audition_event_registrations`
--
ALTER TABLE `audition_event_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `audition_interects`
--
ALTER TABLE `audition_interects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_judge_instructions`
--
ALTER TABLE `audition_judge_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_judge_marks`
--
ALTER TABLE `audition_judge_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audition_judge_panels`
--
ALTER TABLE `audition_judge_panels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_marks`
--
ALTER TABLE `audition_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_participants`
--
ALTER TABLE `audition_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_participant_notifications`
--
ALTER TABLE `audition_participant_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_payments`
--
ALTER TABLE `audition_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_reacts`
--
ALTER TABLE `audition_reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `audition_round_rules`
--
ALTER TABLE `audition_round_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_rules`
--
ALTER TABLE `audition_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audition_templates`
--
ALTER TABLE `audition_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_upload_videos`
--
ALTER TABLE `audition_upload_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audition_user_votings`
--
ALTER TABLE `audition_user_votings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audtion_appeals`
--
ALTER TABLE `audtion_appeals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biddings`
--
ALTER TABLE `biddings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `choice_lists`
--
ALTER TABLE `choice_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_reacts`
--
ALTER TABLE `comment_reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_profiles`
--
ALTER TABLE `event_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fan_groups`
--
ALTER TABLE `fan_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fan_group_messages`
--
ALTER TABLE `fan_group_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fan_posts`
--
ALTER TABLE `fan_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fan__group__joins`
--
ALTER TABLE `fan__group__joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter_videos`
--
ALTER TABLE `filter_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `greetings`
--
ALTER TABLE `greetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `greetings_registrations`
--
ALTER TABLE `greetings_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `greeting_types`
--
ALTER TABLE `greeting_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest_topics`
--
ALTER TABLE `interest_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest_types`
--
ALTER TABLE `interest_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `judge_marks`
--
ALTER TABLE `judge_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jury_boards`
--
ALTER TABLE `jury_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `learning_sessions`
--
ALTER TABLE `learning_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `learning_session_registrations`
--
ALTER TABLE `learning_session_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `live_chats`
--
ALTER TABLE `live_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `live_chat_comments`
--
ALTER TABLE `live_chat_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_reacts`
--
ALTER TABLE `live_chat_reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_registrations`
--
ALTER TABLE `live_chat_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `marketplaces`
--
ALTER TABLE `marketplaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetup_events`
--
ALTER TABLE `meetup_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `meetup_event_registrations`
--
ALTER TABLE `meetup_event_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_buys`
--
ALTER TABLE `package_buys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_infos`
--
ALTER TABLE `package_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_reacts`
--
ALTER TABLE `post_reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_videos`
--
ALTER TABLE `post_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `promo_videos`
--
ALTER TABLE `promo_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reacts`
--
ALTER TABLE `reacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simple_posts`
--
ALTER TABLE `simple_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `souvenirs`
--
ALTER TABLE `souvenirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `souvenir_images`
--
ALTER TABLE `souvenir_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `souvenir_orders`
--
ALTER TABLE `souvenir_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `souvenir_payments`
--
ALTER TABLE `souvenir_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `star_categories`
--
ALTER TABLE `star_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `star_followings`
--
ALTER TABLE `star_followings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `star_time_schedules`
--
ALTER TABLE `star_time_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `super_stars`
--
ALTER TABLE `super_stars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_employments`
--
ALTER TABLE `user_employments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_interests`
--
ALTER TABLE `user_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
