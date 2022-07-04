-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2022 at 11:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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
  `status` tinyint(1) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `type`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(6, 'learningSession', 10, 32, '2022-03-22 06:07:24', '2022-03-22 06:07:24'),
(7, 'liveChat', 10, 33, '2022-03-22 06:11:07', '2022-03-22 06:11:07'),
(9, 'learningSession', 10, 34, '2022-03-29 05:26:40', '2022-03-29 05:26:40'),
(10, 'meetup', 11, 43, '2022-04-09 02:51:37', '2022-04-09 02:51:37'),
(11, 'meetup', 10, 44, '2022-04-09 02:52:50', '2022-04-09 02:52:50'),
(12, 'meetup', 10, 45, '2022-04-09 03:07:21', '2022-04-09 03:07:21'),
(14, 'audition', 10, 2, '2022-05-09 02:48:23', '2022-05-09 02:48:23'),
(15, 'audition', 10, 1, '2022-05-10 04:43:17', '2022-05-10 04:43:17'),
(16, 'audition', 52, 1, '2022-05-11 06:22:25', '2022-05-11 06:22:25'),
(17, 'audition', 11, 1, '2022-05-12 06:27:06', '2022-05-12 06:27:06'),
(18, 'learningSession', 10, 33, '2022-05-16 05:32:32', '2022-05-16 05:32:32'),
(19, 'learningSession', 10, 33, '2022-05-16 05:32:41', '2022-05-16 05:32:41'),
(20, 'liveChat', 10, 20, '2022-05-16 07:28:47', '2022-05-16 07:28:47'),
(21, 'liveChat', 10, 21, '2022-05-16 07:30:53', '2022-05-16 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `assign_admins`
--

CREATE TABLE `assign_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(255) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_price` int(11) NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bid_from` timestamp NULL DEFAULT NULL,
  `bid_to` timestamp NULL DEFAULT NULL,
  `created_by_id` int(191) DEFAULT NULL,
  `star_approval` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `product_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unsold,1=sold',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auctions`
--

INSERT INTO `auctions` (`id`, `star_id`, `category_id`, `name`, `title`, `keyword`, `type`, `owner_id`, `buyer_id`, `base_price`, `details`, `product_image`, `banner`, `bid_from`, `bid_to`, `created_by_id`, `star_approval`, `status`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 17, 0, 'Women\'s Fashion', 'efsef', 'efesf', NULL, NULL, NULL, 2000, '<p>serfgesfges</p>', 'uploads/images/auction/16489026567193.png-transparent-computer-icons-user-avatar-woman-avatar-computer-business-conversation-thumbnail.png', 'uploads/images/auction/16489026567508.Photo-2012121135.jpg', '2022-04-02 12:30:28', '2022-04-18 12:30:28', 16, 1, 1, 0, '2022-04-02 06:30:56', '2022-04-02 06:33:50'),
(2, 17, 0, 'T-SHIRT DESIGN-SHAKIB 75', 'T-SHIRT DESIGN-SHAKIB 75', 'T-SHIRT DESIGN-SHAKIB 75', NULL, NULL, NULL, 2000, '<h4>T-SHIRT DESIGN-SHAKIB 75T-SHIRT DESIGN-SHAKIB 75T-SHIRT DESIGN-SHAKIB 75</h4>', 'uploads/images/auction/16498346703852.560.jpg', 'uploads/images/auction/16498346706884.560.jpg', '2022-04-14 07:23:46', '2022-04-23 07:23:46', 16, 1, 1, 0, '2022-04-13 01:24:30', '2022-04-13 01:26:23');

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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auditions`
--

INSERT INTO `auditions` (`id`, `category_id`, `audition_rules_id`, `audition_round_rules_id`, `creater_id`, `audition_admin_id`, `title`, `slug`, `description`, `banner`, `video`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 2, 43, 'Demo Title', 'xdfgvfsdg', '<p>srgfrg ukik fhtgrfhfrt<br>&nbsp;</p>', 'uploads/images/auditions/1652178767.jpeg', 'uploads/videos/auditions/instructions/16522615683723.audition.mp4', '2022-04-27 06:09:29', '2022-07-29 06:09:29', 1, NULL, '2022-05-18 05:54:09'),
(2, 2, 2, 2, 2, 43, 'uiolgiu', 'iulkiu', '<p>iugiu</p>', 'uploads/images/auditions/1651923355.jpg', 'uploads/videos/auditions/instructions/16522615683723.audition.mp4', '2022-04-20 07:22:03', '2022-04-30 07:22:03', 3, '2022-04-27 07:22:03', '2022-05-08 00:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `audition_assign_judges`
--

CREATE TABLE `audition_assign_judges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `judge_admin_id` int(191) DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_judge` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unapproved, 1= approved, 2 = rejected',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_assign_judges`
--

INSERT INTO `audition_assign_judges` (`id`, `judge_id`, `judge_admin_id`, `audition_id`, `approved_by_judge`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 0, 1, 1, 0, NULL, '2022-05-19 00:06:59'),
(2, 8, 0, 1, 1, 0, NULL, NULL),
(3, 9, 0, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audition_assign_juries`
--

CREATE TABLE `audition_assign_juries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by_jury` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
  `total_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_event_registrations`
--

CREATE TABLE `audition_event_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_event_registrations`
--

INSERT INTO `audition_event_registrations` (`id`, `audition_event_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `image`, `video`, `comment_count`, `created_at`, `updated_at`) VALUES
(2, 2, 10, NULL, '1', '2022-05-09 08:48:23', NULL, 'Alamin man', '123456789', NULL, NULL, NULL, '2022-05-09 02:48:23', '2022-05-09 02:48:23'),
(3, 1, 10, NULL, '1', '2022-05-10 10:43:17', NULL, 'rthr', '415635643', NULL, NULL, NULL, '2022-05-10 04:43:17', '2022-05-10 04:43:17'),
(4, 1, 52, NULL, '1', '2022-05-11 12:22:25', NULL, 'Emdadul@fddasf.afsasf', '65465', NULL, NULL, NULL, '2022-05-11 06:22:25', '2022-05-11 06:22:25'),
(5, 1, 11, NULL, '1', '2022-05-12 12:27:06', NULL, 'werf', '5725673263', NULL, NULL, NULL, '2022-05-12 06:27:06', '2022-05-12 06:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `audition_interects`
--

CREATE TABLE `audition_interects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `like` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_boundary` timestamp NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_judge_marks`
--

CREATE TABLE `audition_judge_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_judge_panels`
--

CREATE TABLE `audition_judge_panels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `marks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
  `participant_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = rejected, 1= selected',
  `selected_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = selected, 1= rejected',
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audition_participants`
--

CREATE TABLE `audition_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wining_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_status` int(10) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_participants`
--

INSERT INTO `audition_participants` (`id`, `user_id`, `audition_id`, `wining_status`, `certificates`, `accept_status`, `status`, `created_at`, `updated_at`) VALUES
(2, 10, 2, NULL, NULL, 0, 0, '2022-05-09 02:48:23', '2022-05-09 02:48:23'),
(3, 10, 1, NULL, NULL, 0, 0, '2022-05-10 04:43:17', '2022-05-10 04:43:17'),
(4, 52, 1, NULL, NULL, 0, 0, '2022-05-11 06:22:25', '2022-05-11 06:22:25'),
(5, 11, 1, NULL, NULL, 0, 0, '2022-05-12 06:27:06', '2022-05-12 06:27:06');

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
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `react` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_videos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_start_time` timestamp NULL DEFAULT NULL,
  `video_end_time` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_round_rules`
--

INSERT INTO `audition_round_rules` (`id`, `audition_rules_id`, `judge_mark`, `jury_mark`, `user_vote_mark`, `description`, `instruction`, `video_instruction`, `num_of_videos`, `video_start_time`, `video_end_time`, `status`, `created_at`, `updated_at`) VALUES
(76, 2, 60, 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-10 04:12:23', '2022-05-12 06:19:41'),
(77, 2, 0, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-10 04:12:23', '2022-05-10 04:12:55'),
(78, 2, 0, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-10 04:12:23', '2022-05-10 04:12:55'),
(79, 10, 0, 20, 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-12 02:53:29', '2022-05-12 02:58:57'),
(80, 10, 0, 20, 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-12 02:53:29', '2022-05-12 02:58:57'),
(81, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-12 06:15:56', '2022-05-12 06:15:56'),
(82, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-05-12 06:18:07', '2022-05-12 06:18:07');

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
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 = unactive, 1= active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audition_rules`
--

INSERT INTO `audition_rules` (`id`, `category_id`, `round_num`, `judge_num`, `jury_num`, `month`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 0, 3, 3, 5, 3, 1, '2022-04-24 00:04:03', '2022-04-25 04:25:28'),
(2, 1, 5, 5, 5, 5, 0, 1, '2022-04-24 00:04:03', '2022-05-12 06:18:07'),
(3, 4, 0, 3, 2, 3, 1, 1, '2022-04-24 00:04:03', '2022-04-24 00:04:03'),
(4, 5, 0, 3, 2, 8, 7, 1, '2022-04-24 00:04:03', '2022-04-24 00:04:03'),
(5, 6, 0, 4, 5, 7, 7, 1, '2022-04-24 00:04:03', '2022-04-24 01:39:39'),
(7, 3, 0, 3, 3, 7, 22, 1, '2022-04-24 00:04:03', '2022-04-24 02:28:30'),
(9, 2, 0, 2, 2, 2, 2, 1, '2022-04-24 00:58:42', '2022-04-24 00:58:42'),
(10, 8, 2, 4, 4, 4, 4, 1, '2022-04-24 01:00:02', '2022-05-12 02:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `audition_templates`
--

CREATE TABLE `audition_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audtion_appeals`
--

CREATE TABLE `audtion_appeals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `appeal_date_line` date DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `amount` int(11) NOT NULL,
  `notify_status` int(10) NOT NULL DEFAULT 0,
  `win_status` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biddings`
--

INSERT INTO `biddings` (`id`, `user_id`, `auction_id`, `name`, `amount`, `notify_status`, `win_status`, `status`, `created_at`, `updated_at`) VALUES
(102, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:17:46', '2022-04-04 02:17:46'),
(103, 10, 1, 'Mr.', 3500, 0, 0, NULL, '2022-04-04 02:17:54', '2022-04-04 02:17:54'),
(104, 10, 1, 'Mr.', 3200, 0, 0, NULL, '2022-04-04 02:17:59', '2022-04-04 02:17:59'),
(105, 10, 1, 'Mr.', 4200, 0, 0, NULL, '2022-04-04 02:18:06', '2022-04-04 02:18:06'),
(106, 10, 1, 'Mr.', 3250, 0, 0, NULL, '2022-04-04 02:18:37', '2022-04-04 02:18:37'),
(107, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:52:08', '2022-04-04 02:52:08'),
(108, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:52:42', '2022-04-04 02:52:42'),
(109, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:53:52', '2022-04-04 02:53:52'),
(110, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:55:17', '2022-04-04 02:55:17'),
(111, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 02:55:43', '2022-04-04 02:55:43'),
(112, 10, 1, 'Mr.', 3220, 0, 0, NULL, '2022-04-04 02:58:28', '2022-04-04 02:58:28'),
(113, 10, 1, 'Mr.', 3260, 0, 0, NULL, '2022-04-04 02:58:35', '2022-04-04 02:58:35'),
(114, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 03:03:39', '2022-04-04 03:03:39'),
(115, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 03:11:30', '2022-04-04 03:11:30'),
(116, 10, 1, 'Mr.', 3000, 0, 0, NULL, '2022-04-04 03:12:16', '2022-04-04 03:12:16'),
(117, 16, 1, 'Mizanur Rahman', 5000, 0, 0, NULL, '2022-04-04 03:22:01', '2022-04-04 03:22:01'),
(118, 16, 1, 'Mizanur Rahman', 4800, 0, 0, NULL, '2022-04-04 03:23:00', '2022-04-04 03:23:00'),
(119, 10, 1, 'Mr.', 4500, 0, 0, NULL, '2022-04-04 03:23:19', '2022-04-04 03:23:19'),
(120, 16, 1, 'Mizanur Rahman', 4800, 0, 0, NULL, '2022-04-04 03:26:41', '2022-04-04 03:26:41'),
(121, 10, 1, 'Mr.', 4950, 0, 0, NULL, '2022-04-04 03:37:48', '2022-04-04 03:37:48'),
(122, 10, 1, 'Mr.', 4500, 0, 0, NULL, '2022-04-04 03:38:43', '2022-04-04 03:38:43'),
(123, 10, 1, 'Mr.', 6000, 0, 0, NULL, '2022-04-04 03:41:01', '2022-04-04 03:41:01'),
(124, 16, 1, 'Mizanur Rahman', 7500, 0, 0, NULL, '2022-04-04 03:41:32', '2022-04-04 03:41:32'),
(125, 16, 1, 'Mizanur Rahman', 3500, 0, 0, NULL, '2022-04-04 03:45:24', '2022-04-04 03:45:24'),
(126, 16, 1, 'Mizanur Rahman', 3500, 0, 0, NULL, '2022-04-04 03:45:32', '2022-04-04 03:45:32'),
(127, 16, 1, 'Mizanur Rahman', 7520, 0, 0, NULL, '2022-04-04 03:45:44', '2022-04-04 03:45:44'),
(128, 16, 1, 'Mizanur Rahman', 7500, 0, 0, NULL, '2022-04-04 03:47:14', '2022-04-04 03:47:14'),
(129, 16, 1, 'Mizanur Rahman', 7580, 0, 0, NULL, '2022-04-04 03:47:44', '2022-04-04 03:47:44'),
(130, 10, 1, 'Mr.', 8000, 0, 0, NULL, '2022-04-04 22:46:06', '2022-04-04 22:46:06'),
(131, 10, 1, 'Mr.', 7800, 0, 0, NULL, '2022-04-04 22:46:13', '2022-04-04 22:46:13'),
(132, 10, 1, 'Mr.', 7820, 0, 0, NULL, '2022-04-04 22:46:19', '2022-04-04 22:46:19'),
(133, 10, 1, 'Mr.', 7600, 0, 0, NULL, '2022-04-04 23:10:16', '2022-04-04 23:10:16'),
(134, 10, 1, 'Mr.', 7600, 0, 0, NULL, '2022-04-04 23:10:26', '2022-04-04 23:10:26'),
(135, 10, 1, 'Mr.', 8100, 0, 0, NULL, '2022-04-04 23:11:46', '2022-04-04 23:11:46'),
(136, 10, 1, 'Mr.', 8200, 0, 0, NULL, '2022-04-04 23:42:18', '2022-04-04 23:42:18'),
(137, 10, 1, 'Mr.', 8300, 0, 0, NULL, '2022-04-04 23:42:35', '2022-04-04 23:42:35'),
(138, 10, 1, 'Mr.', 8250, 0, 0, NULL, '2022-04-04 23:46:24', '2022-04-04 23:46:24'),
(139, 10, 1, 'Mr.', 8280, 0, 0, NULL, '2022-04-05 00:23:31', '2022-04-05 00:23:31'),
(140, 10, 1, 'Mr.', 2200, 0, 0, NULL, '2022-04-05 00:25:26', '2022-04-05 00:25:26'),
(141, 10, 1, 'Mr.', 8270, 0, 0, NULL, '2022-04-05 03:53:12', '2022-04-05 03:53:12'),
(142, 10, 1, 'Mr.', 8270, 0, 0, NULL, '2022-04-05 03:53:41', '2022-04-05 03:53:41'),
(143, 10, 1, 'Mr.', 8500, 0, 0, NULL, '2022-04-05 03:54:51', '2022-04-05 03:54:51'),
(144, 10, 1, 'Mr.', 8350, 0, 0, NULL, '2022-04-05 03:55:02', '2022-04-05 03:55:02'),
(145, 10, 1, 'Mr.', 8400, 0, 0, NULL, '2022-04-05 03:55:08', '2022-04-05 03:55:08'),
(146, 10, 1, 'Mr.', 8450, 0, 0, NULL, '2022-04-05 23:03:05', '2022-04-05 23:03:05'),
(147, 10, 1, 'Mr.', 8460, 0, 0, NULL, '2022-04-06 23:07:24', '2022-04-06 23:07:24'),
(148, 10, 1, 'Mr.', 8900, 0, 0, NULL, '2022-04-13 01:13:51', '2022-04-13 01:13:51'),
(149, 10, 2, 'Mr.', 2200, 0, 0, NULL, '2022-04-13 01:28:25', '2022-04-13 01:28:25'),
(150, 11, 2, 'Mr. ', 2300, 0, 0, NULL, '2022-04-13 01:28:37', '2022-04-13 01:28:37'),
(151, 10, 2, 'Mr.', 2400, 0, 0, NULL, '2022-04-13 01:31:30', '2022-04-13 01:31:30'),
(152, 11, 2, 'Mr. ', 2600, 0, 0, NULL, '2022-04-13 01:32:07', '2022-04-13 01:32:07'),
(153, 10, 2, 'Mr.', 2650, 0, 0, NULL, '2022-04-13 01:42:03', '2022-04-13 01:42:03'),
(154, 10, 1, 'Mr.', 9000, 0, 0, NULL, '2022-04-13 02:00:49', '2022-04-13 02:00:49'),
(155, 10, 2, 'Mr.', 2800, 0, 0, NULL, '2022-04-13 02:15:50', '2022-04-13 02:15:50'),
(156, 11, 2, 'Mr. ', 2810, 0, 0, NULL, '2022-04-13 02:16:00', '2022-04-13 02:16:00'),
(157, 11, 2, 'Mr. ', 2700, 0, 0, NULL, '2022-04-13 02:16:12', '2022-04-13 02:16:12'),
(158, 10, 2, 'Mr.', 2820, 0, 0, NULL, '2022-04-13 02:18:59', '2022-04-13 02:18:59'),
(159, 10, 2, 'Mr.', 3000, 0, 0, NULL, '2022-04-13 02:24:16', '2022-04-13 02:24:16'),
(160, 11, 2, 'Mr. ', 3500, 0, 0, NULL, '2022-04-13 02:24:29', '2022-04-13 02:24:29'),
(161, 11, 2, 'Mr. ', 2600, 0, 0, NULL, '2022-04-13 02:24:47', '2022-04-13 02:24:47'),
(162, 10, 2, 'Mr.', 3600, 0, 0, NULL, '2022-04-13 02:49:58', '2022-04-13 02:49:58'),
(163, 10, 2, 'Mr.', 3200, 0, 0, NULL, '2022-04-13 02:50:14', '2022-04-13 02:50:14'),
(164, 11, 2, 'Mr. ', 3550, 0, 0, NULL, '2022-04-13 02:50:26', '2022-04-13 02:50:26'),
(165, 11, 1, 'Mr. ', 8800, 0, 0, NULL, '2022-04-13 02:51:05', '2022-04-13 02:51:05'),
(166, 11, 1, 'Mr. ', 9001, 0, 0, NULL, '2022-04-13 02:53:12', '2022-04-13 02:53:12'),
(167, 11, 1, 'Mr. ', 9001, 0, 0, NULL, '2022-04-13 02:53:16', '2022-04-13 02:53:16'),
(168, 11, 1, 'Mr. ', 9002, 0, 0, NULL, '2022-04-13 02:53:25', '2022-04-13 02:53:25'),
(169, 11, 1, 'Mr. ', 9002, 0, 0, NULL, '2022-04-13 02:53:27', '2022-04-13 02:53:27'),
(170, 11, 1, 'Mr. ', 9003, 0, 0, NULL, '2022-04-13 02:53:52', '2022-04-13 02:53:52'),
(171, 10, 1, 'Mr.', 9004, 1, 0, NULL, '2022-04-13 02:54:01', '2022-04-23 02:13:10'),
(172, 10, 2, 'Mr.', 3650, 0, 0, NULL, '2022-04-13 02:54:23', '2022-04-13 02:54:23'),
(173, 10, 2, 'Mr.', 3660, 0, 0, NULL, '2022-04-13 02:54:50', '2022-04-13 02:54:50'),
(174, 11, 1, 'Mr. ', 9005, 0, 0, NULL, '2022-04-13 02:55:29', '2022-04-23 02:11:24'),
(175, 11, 2, 'Mr. ', 3700, 0, 0, NULL, '2022-04-13 02:55:50', '2022-04-13 02:55:50'),
(176, 10, 2, 'Mr.', 3800, 0, 0, NULL, '2022-04-13 02:56:00', '2022-04-13 02:56:00'),
(177, 10, 2, 'Mr.', 4800, 0, 0, NULL, '2022-04-13 03:10:21', '2022-04-21 03:34:16'),
(178, 11, 1, 'Mr. ', 7800, 0, 0, NULL, '2022-04-13 03:10:52', '2022-04-13 03:10:52'),
(179, 11, 2, 'Mr. ', 4000, 0, 0, NULL, '2022-04-13 03:11:17', '2022-04-21 03:32:14'),
(180, 10, 2, 'Mr.', 4900, 1, 0, NULL, '2022-04-15 22:21:51', '2022-04-23 02:24:21'),
(181, 16, 2, 'Mizanur Rahman', 5000, 1, 0, NULL, '2022-04-22 23:51:24', '2022-04-23 02:24:20'),
(182, 16, 1, 'Mizanur Rahman', 9006, 0, 0, NULL, '2022-04-23 00:08:44', '2022-04-23 02:11:25'),
(183, 16, 2, 'Mizanur Rahman', 5500, 1, 0, NULL, '2022-04-23 00:09:46', '2022-04-23 02:24:17');

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
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'sports', 'uploads/category/icon/OawTiMHGlWBc3w1S8RGS-1645089639.jpg', 'uploads/category/image/qGc8uVubDF0kBuQtRPry-1645090124.jpg', 1, '2022-01-09 23:15:25', '2022-02-17 03:28:44'),
(2, 'Music', 'music', 'uploads/category/icon/lWiX0BtlzdnPii0Kmx2y-1645089502.jpeg', 'uploads/category/image/0qm3yK5be1bNYw80Nrro-1645090099.jpeg', 1, '2022-01-09 23:15:25', '2022-02-17 03:28:19'),
(4, 'Education', 'education', 'uploads/category/icon/LiVS6YwkHeB7by26fX6S-1645089468.jpeg', 'uploads/category/image/MLwwlHwWm0vvU1isqZy5-1645089468.jpeg', 1, '2022-01-09 23:15:25', '2022-02-17 03:17:48'),
(5, 'Entertainment', 'entertainment', 'uploads/category/icon/b1MalfTk5wvg0cG4gYla-1645089404.jpg', 'uploads/category/image/2PfgpLp4NzhFzZKJhKkd-1645089404.jpg', 1, '2022-01-09 23:15:25', '2022-02-17 03:16:44'),
(7, 'Politics', 'politics', 'uploads/category/icon/RZrajjzPIzKwrRjAb778-1645089521.jpg', 'uploads/category/image/zIRup8aqNDeVjvGVDcA5-1645089521.jpg', 1, '2022-01-09 23:15:25', '2022-02-17 03:18:41'),
(8, 'Religion', 'religion', 'uploads/category/icon/xRyZewsEFaT648ROyeai-1645089600.jpg', 'uploads/category/image/xMIftafDAxCdh2WeN29l-1645089600.jpg', 1, '2022-01-09 23:15:25', '2022-02-17 03:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `choice_lists`
--

CREATE TABLE `choice_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choice_lists`
--

INSERT INTO `choice_lists` (`id`, `user_id`, `category`, `subcategory`, `star_id`, `created_at`, `updated_at`) VALUES
(26, 16, '[7,5,8,1]', '[1,2,3]', '[1,2,3,6,9]', '2022-02-01 23:57:22', '2022-04-22 23:44:13'),
(27, 22, '[1,2]', '[2,3]', '[1]', '2022-02-02 08:43:08', '2022-02-02 08:46:07'),
(28, 25, '[1,2]', '[1,2,3]', NULL, '2022-02-02 23:46:53', '2022-02-02 23:55:29'),
(29, 28, '[1,2]', '[2]', '[1]', '2022-02-03 01:41:21', '2022-02-03 01:41:28'),
(30, 29, '[1,2]', '[1,2]', '[1,2]', '2022-02-03 01:49:16', '2022-02-03 01:49:27'),
(31, 31, '[1,2,7,8]', '[1,2,3]', '[2,3,6]', '2022-02-03 02:44:35', '2022-02-03 02:44:50'),
(32, 33, '[1,2]', '[2]', '[1]', '2022-02-03 07:24:58', '2022-02-03 07:47:09'),
(33, 10, '[1]', '[]', '[]', '2022-02-06 23:38:23', '2022-05-16 07:42:05'),
(34, 39, '[2,4,5,8]', NULL, NULL, '2022-03-16 02:32:06', '2022-03-16 02:32:06'),
(35, 43, NULL, NULL, NULL, '2022-05-10 23:30:35', '2022-05-10 23:30:35'),
(36, 52, '[1,2,4]', '[]', '[]', '2022-05-11 04:20:00', '2022-05-11 22:31:13'),
(37, 53, '[1,8]', NULL, NULL, '2022-05-11 22:42:30', '2022-05-11 22:42:30'),
(38, 11, '[1,5]', '[]', '[]', '2022-05-12 06:24:55', '2022-05-12 06:25:56');

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
  `created_by_id` int(191) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_profiles`
--

INSERT INTO `event_profiles` (`id`, `created_by_id`, `title`, `description`, `banner`, `video`, `cost`, `type`, `created_at`, `updated_at`) VALUES
(3, 16, 'Live Chat With Sakib75', '<p>Shakib Al Hasan was born on 24 March 1987. His birth place is in Magura, Khulna in Bangladesh. He holds Bangladeshi nationality. Shakib Al Hasan’s father Khondokar Masroor Reza was a footballer while his mother Shirin Reza is a housewife.Shakib Al Hassan is a married man. He is married to Bangladeshi American Umme Ahmed Shishir. They got married in December 2012. Shakib first met in England in 2011, while Shakib was playing county cricket for Worcestershire in England. They have a daughter, Alaina Hasan Abri, born in 2015.</p>', 'uploads/images/live_chat/1643519775.jpg', NULL, 2500, 'livechat', '2022-01-29 23:16:16', '2022-01-29 23:16:16');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fan_groups`
--

CREATE TABLE `fan_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `min_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_user_join` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_user_join` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_star_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_star_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_approval_status` int(10) DEFAULT NULL,
  `post_approval_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fan_groups`
--

INSERT INTO `fan_groups` (`id`, `group_name`, `slug`, `description`, `start_date`, `end_date`, `min_member`, `max_member`, `created_by`, `my_star`, `my_user_join`, `another_user_join`, `my_star_status`, `another_star`, `another_star_admin_id`, `another_star_status`, `banner`, `join_approval_status`, `post_approval_status`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Shakib vs Tamim', 'shakib-vs-tamim', '<p>Shakib vs Tamim Shakib vs Tamim Shakib vs Tamim Shakib vs Tamim Shakib vs Tamim</p>', '2022-04-11 06:35:50', '2022-04-20 06:35:50', '1', '100', '16', '17', '[10,11]', '', '1', '42', '41', '1', 'uploads/images/fangroup/1649573204.jpg', 0, '0', '1', '2022-04-10 00:46:44', '2022-04-11 02:33:46'),
(3, 'Sakib vs Mushiq', 'sakib-vs-mushiq', '<p>rsgrgrsdgr</p>', '2022-04-13 07:09:50', '2022-04-12 07:09:50', NULL, NULL, '16', '17', '[10,11]', '[10]', '1', '9', NULL, '1', 'uploads/images/fangroup/1649747433.png', 0, '0', '1', '2022-04-12 01:10:33', '2022-04-12 23:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `fan_group_messages`
--

CREATE TABLE `fan_group_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fan_group_messages`
--

INSERT INTO `fan_group_messages` (`id`, `sender_id`, `group_id`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 3, 'hi i am new at this group', NULL, '2022-04-12 02:44:14', '2022-04-12 02:44:14'),
(2, 10, 3, 'hlw', NULL, '2022-04-12 02:44:27', '2022-04-12 02:44:27'),
(3, 10, 2, 'hlww sakib & tamim', NULL, '2022-04-12 02:45:21', '2022-04-12 02:45:21'),
(4, 11, 2, 'i am new user2', NULL, '2022-04-12 02:46:00', '2022-04-12 02:46:00'),
(5, 10, 2, 'kati dey', NULL, '2022-04-12 02:46:25', '2022-04-12 02:46:25'),
(6, 11, 2, 'ken kati dey?', NULL, '2022-04-12 02:46:35', '2022-04-12 02:46:35'),
(7, 10, 3, '351', NULL, '2022-04-12 02:47:41', '2022-04-12 02:47:41'),
(8, 11, 3, 'fdxgvfd', NULL, '2022-04-12 03:02:52', '2022-04-12 03:02:52'),
(9, 10, 3, 'dfvbfdv', NULL, '2022-04-12 03:02:55', '2022-04-12 03:02:55'),
(10, 10, 3, 'vcbvc', NULL, '2022-04-12 03:03:14', '2022-04-12 03:03:14'),
(11, 11, 2, 'cvbvcb', NULL, '2022-04-12 03:03:17', '2022-04-12 03:03:17'),
(12, 10, 3, '55', NULL, '2022-04-12 03:03:23', '2022-04-12 03:03:23'),
(13, 11, 2, '88', NULL, '2022-04-12 03:03:27', '2022-04-12 03:03:27'),
(14, 11, 2, 'dfgfd', NULL, '2022-04-12 03:03:45', '2022-04-12 03:03:45'),
(15, 10, 2, 'dfgfdg', NULL, '2022-04-12 03:03:47', '2022-04-12 03:03:47'),
(16, 10, 3, 'dfgfd', NULL, '2022-04-12 03:03:59', '2022-04-12 03:03:59'),
(17, 11, 3, 'dfgfdg', NULL, '2022-04-12 03:04:01', '2022-04-12 03:04:01'),
(18, 10, 2, 'cfbg', NULL, '2022-04-12 03:04:08', '2022-04-12 03:04:08'),
(19, 11, 2, 'cgbg', NULL, '2022-04-12 03:04:16', '2022-04-12 03:04:16'),
(20, 10, 2, 'dfgdf', NULL, '2022-04-12 03:25:03', '2022-04-12 03:25:03'),
(21, 10, 2, 'gfbfd', NULL, '2022-04-12 03:25:07', '2022-04-12 03:25:07'),
(22, 11, 2, 'ghhjnhg', NULL, '2022-04-12 03:56:09', '2022-04-12 03:56:09'),
(23, 10, 3, 'ghjng', NULL, '2022-04-12 03:56:12', '2022-04-12 03:56:12'),
(24, 10, 3, 'hgnhgn', NULL, '2022-04-12 03:56:20', '2022-04-12 03:56:20'),
(25, 10, 3, 'ghjhn', NULL, '2022-04-12 03:56:33', '2022-04-12 03:56:33'),
(26, 11, 3, 'hgnhgn', NULL, '2022-04-12 03:56:39', '2022-04-12 03:56:39'),
(27, 10, 3, 'tyhy', NULL, '2022-04-12 03:56:48', '2022-04-12 03:56:48'),
(28, 11, 3, 'gtnhgn', NULL, '2022-04-12 03:56:51', '2022-04-12 03:56:51'),
(29, 10, 3, 'gghdng', NULL, '2022-04-12 03:57:00', '2022-04-12 03:57:00'),
(30, 10, 3, 'ghnh', NULL, '2022-04-12 03:57:33', '2022-04-12 03:57:33'),
(31, 11, 3, 'gnhgng', NULL, '2022-04-12 03:57:40', '2022-04-12 03:57:40'),
(32, 10, 3, 'htf', NULL, '2022-04-12 23:17:20', '2022-04-12 23:17:20'),
(33, 10, 3, 'errtgreg', NULL, '2022-04-13 00:11:26', '2022-04-13 00:11:26'),
(34, 11, 3, 'dtght', NULL, '2022-04-13 00:12:14', '2022-04-13 00:12:14'),
(35, 10, 3, 'dghd', NULL, '2022-04-13 00:12:23', '2022-04-13 00:12:23'),
(36, 10, 3, 'sonet', NULL, '2022-04-13 00:12:35', '2022-04-13 00:12:35'),
(37, 11, 3, 'edfds', NULL, '2022-04-13 00:12:40', '2022-04-13 00:12:40'),
(38, 11, 3, 'truyh', NULL, '2022-04-13 00:37:41', '2022-04-13 00:37:41'),
(39, 10, 3, 'ytjytj', NULL, '2022-04-13 00:37:43', '2022-04-13 00:37:43'),
(40, 10, 3, 'dghd', NULL, '2022-04-15 22:40:49', '2022-04-15 22:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `fan_posts`
--

CREATE TABLE `fan_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fan_posts`
--

INSERT INTO `fan_posts` (`id`, `user_id`, `fan_group_id`, `description`, `image`, `star_id`, `star_name`, `like_count`, `video`, `status`, `created_at`, `updated_at`) VALUES
(52, '11', '3', 'Alison Baker', 'uploads/images/fanpost/1649831882.jpg', '17', 'Sakib AL Hasan', '0', NULL, '0', '2022-04-13 00:38:02', '2022-04-13 00:38:02'),
(53, '10', '3', 'Shakib Al Hasan Wedding Anniversary', 'uploads/images/fanpost/1649831917.jpg', '17', 'Sakib AL Hasan', '0', NULL, '0', '2022-04-13 00:38:37', '2022-04-13 00:38:37');

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

--
-- Dumping data for table `fan__group__joins`
--

INSERT INTO `fan__group__joins` (`id`, `user_id`, `fan_group_id`, `star_id`, `star_name`, `warning_count`, `approveStatus`, `created_at`, `updated_at`) VALUES
(12, '10', '3', '17', 'Sakib AL Hasan', '0', '1', '2022-04-12 23:13:40', '2022-04-12 23:13:40'),
(13, '11', '3', '9', 'Musfiq Hasan', '0', '1', '2022-04-12 23:13:50', '2022-04-12 23:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `filter_videos`
--

CREATE TABLE `filter_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `participant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = unactive, 1= active',
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
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 1,
  `star_approve_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `greetings`
--

INSERT INTO `greetings` (`id`, `created_by_id`, `category_id`, `star_id`, `admin_id`, `title`, `description`, `banner`, `video`, `cost`, `date`, `participant_number`, `registration_start_date`, `registration_end_date`, `publish_status`, `star_approve_status`, `status`, `created_at`, `updated_at`) VALUES
(12, 16, NULL, 17, NULL, 'greetings vedio by sakhib al hasna', '<p>Test debut vs India at Zahur Ahmed Chowdhury Stadium, May   t before the 2007 second Test in Grenada against a depleted  when Bangladesh achieved a whitewash over New Zealand in 2010</p>', 'uploads/images/greetings/1645357936.jpeg', NULL, 7000, NULL, NULL, '2022-02-20 11:50:46', '2022-02-20 11:50:46', 1, 1, NULL, '2022-02-20 05:52:16', '2022-02-20 05:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `greetings_registrations`
--

CREATE TABLE `greetings_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `greeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `request_time` timestamp NULL DEFAULT NULL,
  `greeting_contex` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notification_at` timestamp(1) NULL DEFAULT NULL,
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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `greeting_types`
--

INSERT INTO `greeting_types` (`id`, `greeting_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Marriage Anniversary', '0', '2022-02-16 22:38:42', '2022-02-16 22:39:46'),
(2, 'Birthday Wish', '1', '2022-02-16 22:39:08', '2022-02-16 22:39:08'),
(3, 'Congratulation', '1', '2022-02-16 22:39:22', '2022-02-16 22:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `interest_topics`
--

CREATE TABLE `interest_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Inctive, 1 = Active',
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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_types`
--

INSERT INTO `interest_types` (`id`, `interest_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Movie', '1', '2022-02-19 02:46:05', '2022-02-19 02:46:05'),
(2, 'Drama', '1', '2022-02-19 02:46:12', '2022-02-19 02:46:12'),
(3, 'Politics', '1', '2022-02-19 02:46:19', '2022-02-19 02:46:19'),
(4, 'Tech', '1', '2022-02-19 02:46:33', '2022-02-19 02:46:33'),
(5, 'Education', '1', '2022-02-19 02:46:45', '2022-02-19 02:46:45'),
(6, 'Social Influencer', '1', '2022-02-19 02:46:55', '2022-02-19 02:46:55');

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
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_sessions`
--

CREATE TABLE `learning_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `room_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_approval` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
  `total_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learning_sessions`
--

INSERT INTO `learning_sessions` (`id`, `created_by_id`, `star_id`, `title`, `slug`, `registration_end_date`, `registration_start_date`, `description`, `venue`, `total_seat`, `banner`, `participant_number`, `video`, `date`, `start_time`, `end_time`, `time`, `fee`, `room_id`, `star_approval`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(16, 16, NULL, 'jyjty', 'jyjty', NULL, NULL, '<p>jytjtyj</p>', NULL, NULL, 'uploads/images/post/1644314641.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2022-02-08 04:04:02', '2022-02-08 04:04:02'),
(22, 16, 17, 'মাল্টি এক্সপার্ট প্লেয়ার', 'malti-ekspart-plezar', '2022-02-27 18:00:00', '2022-02-19 18:00:00', '<p><font color=\"#f7f7f7\"><span style=\"font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px; white-space: break-spaces;\">প্রথম টি-টোয়েন্টিতে ব্যাট-বলে দারুণ করেও জেতাতে পারেননি দলকে। সেই অতৃপ্তিটা ঘুচল দ্বিতীয় ম্যাচে,</span><span style=\"font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px; white-space: break-spaces;\"> দুর্দান্ত অলরাউন্ড নৈপুণ্যে সিরিজে সমতা আনল বাংলাদেশ। শুরুতে শামসুর আউট হয়ে যাওয়ার পর সাকিবের ব্যাটেই বাংলাদেশ পায় বড় ইনিংস গড়ার ভিত। দ্বিতীয় উইকেটে তামিমকে নিয়ে গড়েছেন ৮২ রানের জুটি। ২৮ বলে ৪০ রানের ঝোড়ো ইনিংসে ৬টি চারের পাশাপাশি মেরেছেন একটি ছয়ও। তবে আসল ভেলকিটা দেখিয়েছেন বল হাতেই, ৪ ওভারে ২২ রান দিয়ে তুলে নিয়েছেন ৪ উইকেট। ম্যান অব দ্য ম্যাচের পাশাপাশি ম্যান অব দ্য সিরিজের পুরস্কারটাও তাই উঠেছে সাকিবের হাতে।</span></font><br></p>', NULL, NULL, 'uploads/images/learning_session/1645354611.jpeg', '2', NULL, '2022-03-09 18:00:00', '22:30:00', NULL, NULL, 8000.00, NULL, 1, 1, NULL, '2022-02-08 04:29:01', '2022-02-20 04:56:51'),
(23, 16, 17, 'dbdfbhfd', 'dbdfbhfd', '2022-02-19 18:00:00', '2022-02-15 18:00:00', '<p>dfbdfbdfb</p>', NULL, NULL, 'uploads/images/learning_session/1644316995.jpg', '200', NULL, '2022-02-14 18:00:00', '20:30:00', NULL, NULL, 750.00, NULL, 1, 0, NULL, '2022-02-08 04:43:16', '2022-02-09 04:00:25'),
(25, 16, 17, 'jm', 'jm', '2022-02-19 18:00:00', '2022-02-09 18:00:00', '<p>yumjuymuy</p><p>uymuymuy</p>', NULL, NULL, 'uploads/images/learning_session/1644317800.jpg', '200', NULL, '2022-02-27 18:00:00', '22:00:00', NULL, NULL, 550.00, NULL, 1, 0, NULL, '2022-02-08 04:56:40', '2022-02-20 02:44:39'),
(26, 16, 17, 'sdrgerg rgrgrs sregrgr', 'sdrgerg rgrgrs sregrgr', '2022-02-15 18:00:00', '2022-02-09 18:00:00', '<p>gsrdgrgr</p><p>grgrsdgrgrgrgrdg</p><p>rgrgrg</p><p>rdgrgrdgrdg</p><p>rdgrgrg</p>', NULL, NULL, 'uploads/images/learning_session/1644320371.jpg', '200', NULL, '2022-02-19 18:00:00', '22:00:00', '12:00:00', NULL, 450.00, NULL, 1, 0, NULL, '2022-02-08 05:39:31', '2022-02-09 04:00:42'),
(29, 16, 17, 'MY FIRST NET SESSION OF THE SEASON BATTING', 'my-first-net-session-of-the-season-batting', '2022-02-11 18:00:00', '2022-02-05 18:00:00', '<p><font face=\"BentonSans, Arial, Noto Sans, sans-serif\"><span style=\"letter-spacing: -0.1px;\">stepping back from the game, I will always remain connected to it. Cricket has shaped so many aspects of my life and has been hugely positive. I want more people to have the opportunity to experience the joy that playing this wonderful sport brought to my life. From the moment I received my first proper cricket bat with the intense smell of linseed oil on English willow, to the sensation of hitting my first six right out of the sweet spot of that bat, to learning the difficult art of bowling a wrong\'un or learning how to take a two-handed diving catch and finish</span></font><br></p>', NULL, '30', 'uploads/images/learning_session/1645354320.jpeg', '30', NULL, '2022-02-21 18:00:00', '05:30:00', '06:30:00', NULL, 5000.00, NULL, 1, 1, NULL, '2022-02-08 23:23:32', '2022-02-20 04:52:49'),
(30, 16, 17, 'Shakib Al Hasan and Sabbir Rahman incidents overshadow on-field action', 'shakib-al-hasan-and-sabbir-rahman-incidents-overshadow-on-field-action', '2022-03-09 18:00:00', '2022-02-27 18:00:00', '<p>Mohammedan Sporting Club, Sheikh Jamal Dhanmondi Club and Gazi Group Cricketers are also in the Super League, but they have a lot of catching-up to do against the top three in the table. They are on 14, 13 and 13 points respectively.</p><p></p><p></p><p></p><p>The big surprise is that the big-spending Legends of Rupganj have been fighting to stave off relegation after finishing with seven points from 11 matches. They will play Old DOHS Sports Club and Partex Sporting Club in the playoffs, where the bottom two will be relegated to the Dhaka First Division Cricket League.</p><p></p>', NULL, NULL, 'uploads/images/learning_session/1645352742.jpg', '100', NULL, '2022-03-03 18:00:00', '11:25:00', '21:29:00', NULL, 7000.00, NULL, 1, 1, NULL, '2022-02-20 04:25:42', '2022-02-20 04:40:11'),
(31, 16, 17, 'আরেকটি অলরাউন্ড কৃতিত্বে সাকিব অনন্য হয়ে আছেন', 'arekti-olraund-krrititwe-sakib-onnz-hye-achen', '2022-02-27 18:00:00', '2022-02-20 18:00:00', '<p>ক্রীড়া-পাগল এক পরিবার থেকে উঠে এলেও সাকিবের খেলোয়াড় হতে চাওয়া সহজ ছিল না। নতুন সহস্রাব্দের শুরুতেও খেলাধুলাকে ক্যারিয়ার হিসেবে নিতে পারার কথা মধ্যবিত্ত পরিবারের অনেকে ভাবতে পারতেন না। সেখান থেকে একে একে সাফল্যের সিঁড়ি ভেঙে সাকিব বাংলাদেশের সবচেয়ে দামি তারকার একজন হয়ে উঠেছেন। আইপিএলের মতো টি-টোয়েন্টি লিগের সেরা তারকাদের একজন হিসেবে নিজেকে প্রতিষ্ঠা করেছেন। ২০১১ সালে ৪ লাখ ২৫ হাজার ডলারে সাকিবকে কিনে নিয়েছিল কলকাতা নাইট রাইডার্স।</p>', NULL, NULL, 'uploads/images/learning_session/1645353178.jpeg', '70', NULL, '2022-03-02 18:00:00', '08:32:00', '22:32:00', NULL, 900.00, NULL, 0, 0, NULL, '2022-02-20 04:32:58', '2022-02-20 04:32:58'),
(32, 16, 17, 'Shakib Al Hasan Profile - ICC Ranking, Age, Career Info & Stats', 'shakib-al-hasan-profile-icc-ranking-age-career-info-stats', '2022-02-27 18:00:00', '2022-02-23 18:00:00', '<p>Shakib Al Hasan is a Bangladeshi international cricketer and businessman. His aggressive left-handed batting style in the middle order and controlled slow left-arm orthodox bowling has made him arguably Bangladesh&#x27;s greatest cricketer.He is widely considered to be one of the greatest all-rounders of all time.</p>', NULL, NULL, 'uploads/images/learning_session/1645703662.webp', '70', NULL, '2022-03-04 18:00:00', '17:54:00', '18:55:00', NULL, 500.00, NULL, 1, 1, NULL, '2022-02-24 05:54:23', '2022-02-24 06:06:56'),
(33, 16, 17, 'New Learning Session With Live Stream Link 1', 'new-learning-session-with-live-stream-link-1', '2022-03-22 18:00:00', '2022-03-23 18:00:00', '<p>New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1New Learning Session With Live Stream Link 1</p>', NULL, NULL, 'uploads/images/learning_session/1647328360.jpg', '200', NULL, '2022-03-29 18:00:00', '13:18:00', '18:12:00', NULL, 750.00, '-MyBNgvGsBWJu6cp7RaM', 1, 1, NULL, '2022-03-15 01:12:40', '2022-03-16 00:19:44'),
(34, 17, NULL, 'efswefes', 'efswefes', '2022-03-24 18:00:00', '2022-03-15 18:00:00', '<p>esfesafsd</p>', NULL, NULL, NULL, '200', NULL, '2022-03-24 18:00:00', '21:00:00', '22:00:00', NULL, 2500.00, NULL, 0, 0, NULL, '2022-03-24 04:58:57', '2022-03-24 04:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `learning_session_registrations`
--

CREATE TABLE `learning_session_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `learning_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 9, 2, 'Facilis.', '1', '2022-01-10 05:15:25', 545.00, 'Dr. Janis Aufderhar', '+13804004179', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 5, 2, 'Corrupti.', '1', '2022-01-10 05:15:25', 659.00, 'Carmella Stark', '614.949.5466', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 3, 'Ea amet.', '1', '2022-01-10 05:15:25', 884.00, 'Bessie Abernathy IV', '+1 (510) 521-6977', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 18, 2, 'Ut est.', '1', '2022-01-10 05:15:25', 907.00, 'Shaylee Doyle', '+1-404-368-0110', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 12, 3, 'Assumenda.', '1', '2022-01-10 05:15:25', 958.00, 'Rosina Weimann', '+1.916.956.3095', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 9, 1, 'Qui.', '1', '2022-01-10 05:15:25', 880.00, 'Dr. Magnolia Champlin Jr.', '351-264-9459', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 7, 2, 'Natus.', '1', '2022-01-10 05:15:25', 876.00, 'Floyd Harber', '(682) 682-5602', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 13, 2, 'Hic.', '1', '2022-01-10 05:15:25', 880.00, 'Maureen Sanford', '726-521-5638', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 20, 1, 'Esse.', '1', '2022-01-10 05:15:25', 691.00, 'Dr. Anjali Carroll II', '+1-317-355-2297', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 12, 2, 'Sapiente.', '1', '2022-01-10 05:15:25', 652.00, 'Dr. Norma Ward I', '810-491-6947', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(11, 11, 1, 'Aut.', '1', '2022-01-10 05:15:25', 741.00, 'Torrance Eichmann', '+1-820-590-4210', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(12, 11, 2, 'Assumenda.', '1', '2022-01-10 05:15:25', 829.00, 'Wendy Kirlin', '540.264.6315', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(13, 3, 4, 'In.', '1', '2022-01-10 05:15:25', 695.00, 'Mike Kub', '(931) 943-3270', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(14, 15, 2, 'Quam.', '1', '2022-01-10 05:15:25', 609.00, 'Mrs. Sylvia Donnelly', '832.364.0228', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(15, 2, 1, 'Quis.', '1', '2022-01-10 05:15:25', 538.00, 'Clarabelle Anderson', '808-539-4827', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 16, 2, 'Harum ut.', '1', '2022-01-10 05:15:25', 694.00, 'Mrs. Patsy Strosin', '+1 (234) 551-6250', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(17, 7, 2, 'Quia sed.', '1', '2022-01-10 05:15:25', 547.00, 'Miss Kallie Bartoletti PhD', '1-757-399-5243', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(18, 4, 1, 'Commodi.', '1', '2022-01-10 05:15:25', 709.00, 'Bret Beier', '1-938-972-9350', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(19, 4, 1, 'Minus aut.', '1', '2022-01-10 05:15:25', 572.00, 'Obie Casper', '+13413957861', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(20, 20, 1, 'Sed.', '1', '2022-01-10 05:15:25', 820.00, 'Tyler Herman Jr.', '534-334-1339', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(26, 33, 16, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16 00:20:15', '2022-03-16 00:20:15'),
(27, 33, 39, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16 02:32:45', '2022-03-16 02:32:45'),
(32, 33, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-22 06:07:24', '2022-03-22 06:07:24'),
(34, 33, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-29 05:26:40', '2022-03-29 05:26:40'),
(35, 33, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:32:32', '2022-05-16 05:32:32'),
(36, 33, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 05:32:41', '2022-05-16 05:32:41');

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `slot_counter` bigint(20) UNSIGNED DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `participant_number` int(11) DEFAULT NULL,
  `registration_start_date` timestamp NULL DEFAULT NULL,
  `registration_end_date` timestamp NULL DEFAULT NULL,
  `max_time_per_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 1,
  `star_approve_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_chats`
--

INSERT INTO `live_chats` (`id`, `created_by_id`, `category_id`, `star_id`, `admin_id`, `title`, `slug`, `description`, `date`, `start_time`, `end_time`, `slot_counter`, `banner`, `video`, `total_seat`, `total_amount`, `fee`, `participant_number`, `registration_start_date`, `registration_end_date`, `max_time_per_person`, `publish_status`, `star_approve_status`, `status`, `created_at`, `updated_at`) VALUES
(19, 16, 1, 17, 16, 'Live Chat With Sakib in First Fridat', 'Live Chat With Sakib in First Fridat', '<p>Bangladesh has played three games in the Super 12 stage and are still searching for a win. Shakib&#x27;s injury is a major dent in the Asian side&#x27;s hopes in the showpiece event.</p><p>Earlier this week, the Event Technical Committee of the tournament approved Rubel Hossain as a replacement for Mohammad Saifuddin in the Bangladesh squad.</p><p>Fast bowler Rubel, who has played 159 international matches including 28 T20Is, was named as a replacement after Saifuddin was ruled out due to a back injury. Rubel was a reserve as per the allowance for teams to travel with extra players in view of Covid-19 quarantine requirements.</p>', '2022-01-31 18:00:00', '2022-01-20 11:00:00', '2022-01-20 14:00:00', NULL, 'uploads/images/live_chat/1642660388.jpg', NULL, NULL, NULL, 1250, NULL, NULL, NULL, NULL, 1, 1, 1, '2022-01-20 00:33:08', '2022-01-30 02:53:16'),
(20, 16, 1, 17, 16, 'Special Session On IPL', 'Special Session On IPL', '<p>He starred for the team during the recent World Cup in England, where he scored over 600 runs and picked 11 wickets.<br/>In the World Cup, he also became the fastest and only the fifth cricketer to reach 5,000 runs and 250 wickets in ODIs.<br/>Shakib will be free to resume international cricket October 29, 2020 subject to him satisfying the conditions in respect of the suspended part of the sanction, the ICC said.<br/>“I am obviously extremely sad to have been banned from the game I love, but I completely accept my sanction for not reporting the approaches,” Shakib was quoted as saying in the ICC</p>', '2022-01-29 18:00:00', '2022-01-20 08:30:00', '2022-01-20 10:30:00', 5, 'uploads/images/live_chat/1642660457.jpg', NULL, NULL, NULL, 560, NULL, NULL, NULL, NULL, 1, 1, 1, '2022-01-20 00:34:17', '2022-03-22 05:30:38'),
(21, 16, 1, 17, 16, 'Discussion about BPL', 'Discussion about BPL', '<p>He starred for the team during the recent World Cup in England, where he scored over 600 runs and picked 11 wickets.<br/>In the World Cup, he also became the fastest and only the fifth cricketer to reach 5,000 runs and 250 wickets in ODIs.<br/>Shakib will be free to resume international cricket October 29, 2020 subject to him satisfying the conditions in respect of the suspended part of the sanction, the ICC said.<br/>“I am obviously extremely sad to have been banned from the game I love, but I completely accept my sanction for not reporting the approaches,” Shakib was quoted as saying in the ICC</p>', '2022-01-24 18:00:00', '2022-01-20 09:40:00', '2022-01-20 11:40:00', NULL, 'uploads/images/live_chat/1642660512.jpeg', NULL, NULL, NULL, 860, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-20 00:35:12', '2022-01-20 00:35:12'),
(22, 16, 1, 17, 16, 'Meet With Sakib', 'Meet With Sakib', '<p>&quot;The team management will have to continue to persist with them. Shreyas Iyer has been in and out. There was a phase in his career where he was getting regular chances... and then we already saw the opportunities that Pant got and the kind of impact he&#x27;s had in Test match cricket. He is yet to come good and put in such performances in One-day Internationals, which was expected to be the case when he first came to the scene,&quot; said Bangar during the post-match show on Star Sports.</p>', '2022-03-05 18:00:00', '2022-01-20 10:40:00', '2022-01-20 12:42:00', 2, 'uploads/images/live_chat/1642660580.jpg', NULL, NULL, NULL, 550, NULL, NULL, NULL, NULL, 1, 1, 1, '2022-01-20 00:36:20', '2022-02-14 23:09:56'),
(23, 16, 1, 17, 16, 'Demo Live Chat One', 'Demo Live Chat One', '<p>\"The team management will have to continue to persist with them. Shreyas Iyer has been in and out. There was a phase in his career where he was getting regular chances... and then we already saw the opportunities that Pant got and the kind of impact he\'s had in Test match cricket. </p><p><br></p><p>He is yet to come good and put in such performances in One-day Internationals, which was expected to be the case when he first came to the scene,\" said Bangar during the post-match show on Star Sports.</p>', '2022-01-22 18:00:00', '2022-01-20 12:36:00', '2022-01-20 14:36:00', 7, 'uploads/images/live_chat/1642660627.jpg', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-01-20 00:37:07', '2022-02-14 02:19:38'),
(24, 20, 1, 21, 20, 'Live Chat 1', 'Live Chat 1', '<p>Mustafizur Rahman, also known as The Fizz, is a Bangladeshi international cricketer. He is specialized as a left-arm fast-medium bowler. He has taken the most wickets in a debut One Day International series. He is the first player to win the ‘Man of the Match’ award on both Test as well as ODI debuts</p>', '2022-01-23 18:00:00', '2022-01-23 11:00:00', '2022-01-23 14:00:00', 2, 'uploads/images/live_chat/1642921230.png', NULL, NULL, NULL, 450, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-01-23 01:00:30', '2022-02-10 03:34:48'),
(25, 16, 1, 17, 16, 'eeee', NULL, '<p>efwedfe</p>', '2022-01-08 18:00:00', '2022-01-29 13:24:00', '2022-01-29 14:25:00', 5, 'uploads/images/live_chat/1643614153.jpg', NULL, NULL, NULL, 750, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-29 05:22:26', '2022-03-22 06:11:07'),
(26, 16, 1, 17, 16, 'Live Meetup on Live 10th February', 'Live Meetup on Live 10th February', '<p><strong>Know Shakib Al Hasan bio, career, debut, wife, children, age, height, awards, favorite things, body measurements, dating history, net worth, car collection, address, date of birth, school, residence, religion, father, mother, siblings, and much more. </strong></p>', '2022-02-09 18:00:00', '2022-01-30 08:00:00', '2022-01-30 10:00:00', NULL, 'uploads/images/live_chat/1644148033.png', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-01-30 00:13:07', '2022-02-06 05:47:13'),
(27, 16, 1, 17, 16, 'Live Chat  (Mr. Raihan)', 'Live Chat  (Mr. Raihan)', '<p>Shakib first represented Bangladesh at the Under-19 level in November 2005 in the 2005 Afro-Asia Under-19 Cup against India Under-19. In his debut he scored 24 of 23 balls with four 4s and also achieving a bowling figure of 2/26 in 10 overs with 2 maidens by taking his first wicket of Tanmay Srivastava.[15] In the tournament, Shakib played 5 matches scoring 138 runs at an average of 38.50 and getting 5 wickets at an average of 25.20.[16] On 30 November 2005, 15-years-old Shakib guided Bangladesh to a four-wicket win over England in the opening match of the tri-nation Under-19 tournament (involving England and Sri Lanka) with his 82 of 62.[17] During the final of a tri-nation tournament, Shakib scored an 86-ball century and took three wickets to lead his team to victory.[18][19] In his 18 youth One Day Internationals, he has scored 563 runs at an average of 35.18 with three 50s and one 100 and a high score of 100 and took 22 wickets at an average of 20.18 with an economy of 3.68 and a best figure of 4/34.[20][21]</p>', '2022-02-13 18:00:00', '2022-01-30 13:39:00', '2022-01-30 14:40:00', NULL, 'uploads/images/live_chat/1643538997.jpg', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-01-30 04:36:37', '2022-01-31 01:02:08'),
(28, 16, 1, 17, 16, '56eu767', '56eu767', '<p>rt6u65uj6r7</p>', '2022-02-21 18:00:00', '2022-02-02 05:30:00', '2022-02-02 05:31:00', NULL, 'uploads/images/live_chat/1643779627.jpg', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-02-01 23:27:07', '2022-02-01 23:28:03'),
(29, 16, 1, 17, 16, 'Eu facere adipisicin', 'Eu facere adipisicin', 'null', '2022-02-05 18:00:00', '2022-02-01 20:39:00', '2022-02-02 10:43:00', 5, 'uploads/images/live_chat/1643797471.jpeg', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL, 1, 1, 1, '2022-02-02 04:24:31', '2022-02-02 04:31:11'),
(30, 16, 1, 17, 16, 'Demo live Chat', 'Demo live Chat', '<p>Shakib Al Hasan is a Bangladeshi international cricketer. He is widely considered to be one of the greatest all-rounders of all time. His aggressive left-handed batting style in the middle order, controlled slow left-arm orthodox bowling has made him a consistent player for Bangladesh</p>', '2022-02-01 18:00:00', '2022-02-02 03:25:00', '2022-02-02 04:25:00', 9, 'uploads/images/live_chat/1643815589.jpg', NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL, 1, 1, 1, '2022-02-02 09:26:29', '2022-02-09 06:28:12'),
(31, 16, 1, 17, 16, 'Live Chat With Sakib 12 February', 'Live Chat With Sakib 12 February', '<p>Born in Magura, Khulna, Shakib started playing cricket at an early age. According to Prothom Alo sports editor Utpal Shuvro, Shakib &quot;was fairly proficient at cricket and was often hired to play for different villages and teams&quot;.[10][11] In one of those matches, Shakib impressed an umpire who arranged for him to practice with the Islampur Para Club, a team in the Magura Cricket League. During the practice session, Shakib batted aggressively and bowled fast, as he usually did, but also chose to experiment with spin bowling which proved to be not so effective. He was picked to play for Islampur and took a wicket with his first ball; it was his first delivery with a proper cricket ball, having previously played with a taped tennis ball.[10][11] He spent six months training at Bangladesh Krira Shikkha Protishtan,[10][11] a government-run sports institute.[12]</p>', '2022-02-11 18:00:00', '2022-02-03 14:30:00', '2022-02-03 16:30:00', 5, 'uploads/images/live_chat/1643880094.jpg', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, 1, 1, NULL, '2022-02-03 03:21:35', '2022-02-03 03:31:09'),
(32, 16, 1, 17, 16, 'Today Live chat at 6.00 PM', 'Today Live chat at 6.00 PM', '<p>artech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this coartech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this coartech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this coartech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this coartech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this co<br></p>', '2022-02-19 18:00:00', '2022-02-08 11:30:00', '2022-02-08 06:30:00', 2, 'uploads/images/live_chat/1645355845.webp', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-08 04:27:33', '2022-02-20 05:17:25'),
(33, 16, 1, 17, 16, 'Shakib Al Hasan Live Chat with Users', 'Shakib Al Hasan Live Chat with Users', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">\"I think he is probably hitting the gym,\" Nurul said later. \"We had an optional practice session yesterday. I think it\'s the management\'s decision to send me here. I don\'t know more than that.\"</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Nurul was then informed of Shakib\'s \'stomach upset\'. When asked about that, Nurul replied, \"I said that it was the management\'s decision. I saw him in the gym in the morning. I don\'t know what happened after that.\"\"I think he is probably hitting the gym,\" Nurul said later. \"We had an optional practice session yesterday. I think it\'s the management\'s decision to send me here. I don\'t know more than that.\"</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Nurul was then informed of Shakib\'s \'stomach upset\'. When asked about that, Nurul replied, \"I said that it was the management\'s decision. I saw him in the gym in the morning. I don\'t know what happened after that.\"\"I think he is probably hitting the gym,\" Nurul said later. \"We had an optional practice session yesterday. I think it\'s the management\'s decision to send me here. I don\'t know more than that.\"</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Nurul was then informed of Shakib\'s \'stomach upset\'. When asked about that, Nurul replied, \"I said that it was the management\'s decision. I saw him in the gym in the morning. I don\'t know what happened after that.\"</p>', '2022-02-01 18:00:00', '2022-02-17 12:57:00', '2022-02-17 14:59:00', NULL, 'uploads/images/live_chat/1645355679.jpg', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-02-17 04:55:26', '2022-02-20 05:14:40');

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
  `react` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
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
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat_start_time` timestamp NULL DEFAULT NULL,
  `live_chat_end_time` timestamp NULL DEFAULT NULL,
  `live_chat_date` timestamp NULL DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_chat_registrations`
--

INSERT INTO `live_chat_registrations` (`id`, `live_chat_id`, `user_id`, `payment_method`, `payment_status`, `payment_date`, `amount`, `card_holder_name`, `account_no`, `live_chat_start_time`, `live_chat_end_time`, `live_chat_date`, `video`, `comment_count`, `publish_status`, `created_at`, `updated_at`) VALUES
(33, 25, 10, NULL, '1', '2022-03-22 12:11:07', 1500.00, NULL, NULL, '2022-01-29 13:29:00', '2022-01-29 13:31:00', '2022-01-08 18:00:00', NULL, NULL, '1', '2022-03-22 06:11:07', '2022-03-22 06:11:07'),
(34, 20, 10, NULL, '1', '2022-05-16 13:28:47', 560.00, 'Emdadul@fddasf.afsasf', '7896546', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 07:28:47', '2022-05-16 07:28:47'),
(35, 21, 10, NULL, '1', '2022-05-16 13:30:53', 860.00, 'Emdad Man', '456456', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 07:30:53', '2022-05-16 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `marketplaces`
--

CREATE TABLE `marketplaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_items` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_selling` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superstar_admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `approved_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketplaces`
--

INSERT INTO `marketplaces` (`id`, `title`, `category_id`, `slug`, `description`, `unit_price`, `total_items`, `total_selling`, `superstar_id`, `superstar_admin_id`, `keywords`, `post_status`, `status`, `image`, `created_by`, `approved_date`, `created_at`, `updated_at`) VALUES
(1, 'Shakib Al Hasan T-Shirt', 0, 'shakib-al-hasan-t-shirt', '<p>SHAKIB AL HASAN T-SHIRT DESIGN-SHAKIB 75</p>', '2000', '5', '0', '17', '16', 't-shirt, Shakib', '0', '0', 'uploads/images/marketplace/1649834594.jpg', 16, NULL, '2022-04-13 01:23:14', '2022-04-13 01:23:14'),
(2, 'yguik', NULL, 'yguik', '<p>uyiuyiuyi</p>', '200', '20', '0', '17', '16', 'yuiuyiuy', '0', '0', 'uploads/images/marketplace/1652875450.jpg', 16, NULL, '2022-05-18 06:04:10', '2022-05-18 06:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `meetup_events`
--

CREATE TABLE `meetup_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `star_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meetup_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_seat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `fee` double(8,2) DEFAULT NULL,
  `star_approval` int(191) DEFAULT 0,
  `manager_approval` int(191) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
  `total_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetup_events`
--

INSERT INTO `meetup_events` (`id`, `created_by_id`, `star_id`, `meetup_type`, `title`, `start_time`, `end_time`, `description`, `event_link`, `venue`, `total_seat`, `banner`, `participant_number`, `video`, `date`, `time`, `fee`, `star_approval`, `manager_approval`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(21, 16, 17, 'Online', 'Meet With Sakib Al Hasan Super Star', '14:30:00', '17:30:00', '<p>https://star-meetup.herokuapp.com?room=Sakib_Online Meet Up link_6e1ylz6a42The departure of Iyer and Pant in quick succession led to debutant Venkatesh Iyer and seasoned off-spinner Ravichandran Ashwin taking charge of the run-chase. But their stay at the crease was short-lived. </p><p>Shardul Thakur ended up scoring unbeaten 50 off 43 deliveries but the visitors managed to notch up just 265 for eight on the scoreboard. The second match of the ODI rubber will be played at the same venue on Friday, and the third and final one in Cape Town on Sunday.</p>', 'https://star-meetup.herokuapp.com?room=Sakib_Online Meet Up link_6e1ylz6a42', NULL, '25', 'uploads/images/meetup/1642660862.jpg', NULL, NULL, '2022-01-10', NULL, 2500.00, 1, 1, 1, NULL, '2022-01-20 00:41:02', '2022-01-20 01:04:07'),
(22, 16, 17, 'Offline', 'Happy New Year Celebration', '12:44:00', '16:42:00', '<p>The ICC said in its statement that the player did not report two approaches he received during a tri-series involving Bangladesh, Sri Lanka and Zimbabwe in January 2018 and one more over a 2018 Indian Premier League match between Sunrisers Hyderabad and Kings XI Punjab.</p><p>&quot;I am obviously extremely sad to have been banned from the game I love,&quot; Shakib said.</p><p>&quot;I completely accept my sanction for not reporting the approaches.</p><p>&quot;Like the majority of players and fans around the world, I want cricket to be a corruption free sport and I am looking forward to working with the ICC ACU (Anti-Corruption Unit) team to support their education program and ensure young players don&#x27;t make the same mistake I did.&quot;</p>', 'https://star-meetup.herokuapp.com?room=Sakib_Online Meet Up link_g1pag9yl5e', NULL, '30', 'uploads/images/meetup/1642660976.jpg', NULL, NULL, '2022-01-05', NULL, 750.00, 1, 1, 1, NULL, '2022-01-20 00:42:56', '2022-01-20 01:03:55'),
(23, 16, 17, 'Offline', 'Meetup Session With Sakib75', '14:30:00', '16:30:00', '<p>https://star-meetup.herokuapp.com?room=Dubai_Meet_6yhriaomldo&quot;Like the majority of players and fans around the world, I want cricket to be a corruption free sport and I am looking forward to working with the ICC ACU (Anti-Corruption Unit) team to support their education program and ensure young players don&#x27;t make the same mistake I did.&quot;</p><p>ICC head of integrity Alex Marshall said Shakib should have known better.</p><p>&quot;Shakib al-Hasan is a highly experienced international cricketer. He has attended many education sessions and knows his obligations under the Code. He should have reported each of these approaches,&quot; he said.</p><p>&quot;Shakib has accepted his errors and cooperated fully with the investigation. He has offered to assist the integrity unit in future education, to help younger players to learn from his mistakes. I am happy to accept this offer.&quot;</p>', 'https://star-meetup.herokuapp.com?room=Dubai_Meet_6yhriaomldo', NULL, '25', 'uploads/images/meetup/1642661060.jpg', NULL, NULL, '2022-01-10', NULL, 200.00, 1, 1, 1, NULL, '2022-01-20 00:44:20', '2022-01-20 01:04:28'),
(24, 16, 17, 'Online', 'Meet in Dubai', '14:20:00', '22:46:00', '<p>https://star-meetup.herokuapp.com?room=Rakib_i59ef3mnn3Shakib recently led a strike by Bangladesh&#x27;s cricketers, which they called off a week ago when the country&#x27;s cricket board accepted most of their demands including pay rises and other benefits.</p><p>BCB president Nazmul Hassan said the board was &quot;shocked and extremely disappointed&quot; that an experienced player like Shakib failed to report corrupt approaches on multiple occasions, but that they would support Shakib during his ban.</p><p>&quot;We hope he will come back as a better and wiser cricketer and serve Bangladesh for many more years when his sanction will be over,&quot; he added.</p><p>&quot;During the suspension the BCB will continue to support his efforts at returning to cricket.&quot;</p><p>Not everyone was so forgiving though, with former England captain Michael Vaughan showing no sympathy.</p>', NULL, NULL, '20', 'uploads/images/meetup/1642661260.jpg', NULL, NULL, '2022-01-25', NULL, 650.00, 0, 0, 0, NULL, '2022-01-20 00:47:40', '2022-01-20 00:47:40'),
(25, 16, 17, 'Online', 'Shakib Al Hasan Century', '14:51:00', '16:49:00', '<p>Shakib recently led a strike by Bangladesh\'s cricketers, which they called off a week ago when the country\'s cricket board accepted most of their demands including pay rises and other benefits.</p><p>BCB president Nazmul Hassan said the board was \"shocked and extremely disappointed\" that an experienced player like Shakib failed to report corrupt approaches on multiple occasions, but that they would support Shakib during his ban.</p><p>\"We hope he will come back as a better and wiser cricketer and serve Bangladesh for many more years when his sanction will be over,\" he added.</p><p>\"During the suspension the BCB will continue to support his efforts at returning to cricket.\"</p>', 'https://star-meetup.herokuapp.com?room=apu_b7rs1ickay', NULL, '25', 'uploads/images/meetup/1642661500.jpg', NULL, NULL, '2022-01-21', NULL, 220.00, 1, 1, 1, NULL, '2022-01-20 00:51:40', '2022-01-31 02:43:11'),
(26, 20, 21, 'Offline', 'Meetup With Cutter Fizz', '16:42:00', '18:42:00', '<p>Mustafizur Rahman, also known as The Fizz, is a Bangladeshi international cricketer. He is specialized as a left-arm fast-medium bowler. He has taken the most wickets in a debut One Day International series. He is the first player to win the ‘Man of the Match’ award on both Test as well as ODI debut</p><p>arm fast-medium bowler. He has taken the most wickets in a debut One Day International series. He is the first player to win the ‘Man of the Match’ award on both Test as well as ODI debut</p><p><span style=\"font-size: 1rem;\">arm fast-medium bowler. He has taken the most wickets in a debut One Day International series. He is the first player to win the ‘Man of the Match’ award on both Test as well as ODI debut</span><br></p>', 'https://star-meetup.herokuapp.com?room=Test_8nq84grgoto', NULL, '30', 'uploads/images/meetup/1643609089.jpg', NULL, NULL, '2022-01-23', NULL, 400.00, 1, 0, 0, NULL, '2022-01-23 00:42:43', '2022-01-31 02:31:16'),
(27, 20, 21, 'Online', 'Cutter Fizz', '15:00:00', '17:00:00', '<p>Mustafizur Rahman, also known as The Fizz, is a Bangladeshi international cricketer. He is specialized as a left-arm fast-medium bowler. He has taken the most wickets in a debut One Day International series. He is the first player to win the ‘Man of the Match’ award on both Test as well as ODI deb</p>', 'https://star-meetup.herokuapp.com?room=mustafiz_7ddomhds90g', NULL, '32', 'uploads/images/meetup/1643609602.jpg', NULL, NULL, '2022-01-24', NULL, 750.00, 1, 0, 0, NULL, '2022-01-23 00:56:47', '2022-01-31 00:32:09'),
(28, 20, 21, 'Online', 'BPL Final Mustafiz Meetup', '16:04:00', '17:20:00', '<p>In the month of November, Bangladesh hosted Zimbabwe for three ODIs and two T20s. Mustafizur played a salient role in the ODI matches, taking a total of 8 wickets.[32] For his performances in 2015, he was named in the World ODI XI by ICC.[33] He was also named in the ODI XI of the year 2015 by ESPNcricinfo and Cricbuzz.[34] He captured his third five-wicket haul in the last game.[35][36] He could not contribute much in the T20 series, though he bowled economically, which resulted both sides sharing a win.[37] The next year in January, Bangladesh again played with Zimbabwe in four T20s. Mustafizur played in the first two matches, which they won. While bowling in the second T20I against Zimbabwe in January 2016, Mustafizur injured his shoulder. Following that, he was dropped from the squad for the first time since debut.[38][39]</p>', 'https://star-meetup.herokuapp.com?room=Dubai_Meet_117uxhfqpu2c', NULL, '25', 'uploads/images/meetup/1642922215.jpg', NULL, NULL, '2022-01-25', NULL, 750.00, 1, 0, 0, NULL, '2022-01-23 01:16:56', '2022-01-23 01:17:35'),
(29, 16, 17, 'Offline', 'Shakib 2nd February', '17:18:00', '18:18:00', '<p>Born in Magura, Khulna, Shakib started playing cricket at an early age. According to Prothom Alo sports editor Utpal Shuvro, Shakib &quot;was fairly proficient at cricket and was often hired to play for different villages and teams&quot;.[10][11] In one of those matches, Shakib impressed an umpire who arranged for him to practice with the Islampur Para Club, a team in the Magura Cricket League. During the practice session, Shakib batted aggressively and bowled fast, as he usually did, but also chose to experiment with spin bowling which proved to be not so effective. He was picked to play for Islampur and took a wicket with his first ball; it was his first delivery with a proper cricket ball, having previously played with a taped tennis ball.[10][11] He spent six months training at Bangladesh Krira Shikkha Protishtan,[10][11] a government-run sports institute.[12]</p><p>Shakib played his debut Under-17 match against UAE Under-17s in 2003 in the ACC Under-17 Cup where he got a bowling figure of 3–18 in 8 overs (with 2 maiden overs).[13]</p><p>In May 2004, at the age of 17, Shakib made his first-class debut for Khulna where he got a bowling figure of 0/116 of 30 overs in the 1st innings and 3/92 of 28 overs in the 2nd innings. He also scored 13 of 11 with three 4s in the 1st innings and 16 of 43 in the 2nd innings. His 1st first-class wicket was Rakibul Hasan.[14]</p>', 'https://star-meetup.herokuapp.com?room=Dubai_Meet_4mfe19ruh6r', NULL, NULL, 'uploads/images/meetup/1643530561.jpg', NULL, NULL, '2022-02-02', NULL, 500.00, 0, 1, 1, NULL, '2022-01-30 02:16:01', '2022-02-12 02:20:19'),
(30, 16, 17, 'Online', 'Develop a Successful Marketing Tech Startup Business Hackathon Entrepreneurship Hackathon', '05:36:00', '06:36:00', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.5rem;\">Learn to Develop a Successful Smart Marketing Tech Startup Business Today!\r\n\r\nMartech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this course is martech e-marketplace, martech algorithms and martech dashboards and much more exciting tech startup ideas in the marketing technology industry\r\n\r\nFor more detailed information go to: Atechup Tech Entrepreneurship Page\r\n\r\nAccomplish 10X Performance Results compared to other Startups\r\nReceive 10X Return Of Investment (ROI) than a college education\r\nOur Tech Startup Program contains jam-packed with practical market &amp; industry insights\r\nOur team has done the market/industry research so you won\'t need to\r\nSave 10X of Your Time\r\nLearn to Develop a Six-Figure Tech Startup from Scratch\r\nDiscover the Potential with Emerging Technologies &amp; Trends\r\nGet a foot into a Billion Dollar Industry\r\nFull Tech Startup Entrepreneur Mentorship\r\nTech Entrepreneurship Certification/Diploma\r\nGo From Beginner To Advanced Entrepreneur in No Time\r\nStep by Step Instructions for Future Entrepreneurs\r\nComplete Tech Startup Business Setup: From Zero To Hero In No Time\r\nNo Previous programming or tech background needed except an open mindset\r\nGenerate Tech Sales in a B2B environment\r\nGet a holistic overview of different Tech Startup processes\r\nDiscover new strategies and perspectives on developing your Startup\r\nIncrease Your Creativity &amp; Innovation IQ\r\nOn-Demand Access 24/7\r\n4K/1080p Full HD Video Quality\r\nBecome a fully Certified Entrepreneur in Atechup\r\nStep by Step Instructions to become an Futuristic Entrepreneur\r\nLearn the Scientific Way about your Entrepreneur Habits\r\nFollow through the The Entrepreneur Startup Checklist\r\nSupercharging Your Entrepreneurship Productivity\r\nSave money instead of taking loan for a college or university degree\r\nExplore 100+ Smart Marketing Startup Ideas in Emerging Markets &amp; Industries\r\nDuring this Smart Marketing Tech Startup Workshop we will cover:\r\n\r\nSession 1: Smart Marketing Tech Entrepreneur Startup Basics\r\n\r\nDuring this session we will explore the very foundation and the basic systems and platforms for you to integrate into your own tech startup process.</p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">Learn to Develop a Successful Smart Marketing Tech Startup Business Today!</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">Martech or also marketing technology is the next evolutionary step in the marketing industry. With our hi-tech focused marketing startup program you will learn everything necessary to develop your own marketing tech startup business. Among many topics and tech startup ideas we will cover during this course is martech e-marketplace, martech algorithms and martech dashboards and much more exciting tech startup ideas in the marketing technology industry</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">For more detailed information go to:&nbsp;<a href=\"https://www.atechup.com/courses/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" style=\"box-sizing: border-box; cursor: pointer; padding-top: 0px;\">Atechup Tech Entrepreneurship&nbsp;</a>Page</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"></p><ul style=\"box-sizing: border-box; margin: 0px; orphans: 2; text-align: left; text-indent: 0px; widows: 2; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px 2em; list-style-position: initial; list-style-image: initial; line-height: 1.5rem;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box;\">Accomplish 10X Performance Results compared to other Startups</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Receive 10X Return Of Investment (ROI) than a college education</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Our Tech Startup Program contains jam-packed with practical market &amp; industry insights</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Our team has done the market/industry research so you won\'t need to</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Save 10X of Your Time</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Learn to Develop a Six-Figure Tech Startup from Scratch</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Discover the Potential with Emerging Technologies &amp; Trends</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Get a foot into a Billion Dollar Industry</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Full Tech Startup Entrepreneur Mentorship</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Tech Entrepreneurship Certification/Diploma</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Go From Beginner To Advanced Entrepreneur in No Time</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Step by Step Instructions for Future Entrepreneurs</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Complete Tech Startup Business Setup: From Zero To Hero In No Time</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">No Previous programming or tech background needed except an open mindset</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Generate Tech Sales in a B2B environment</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Get a holistic overview of different Tech Startup processes</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Discover new strategies and perspectives on developing your Startup</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Increase Your Creativity &amp; Innovation IQ</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">On-Demand Access 24/7</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">4K/1080p Full HD Video Quality</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Become a fully Certified Entrepreneur in Atechup</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Step by Step Instructions to become an Futuristic Entrepreneur</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Learn the Scientific Way about your Entrepreneur Habits</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Follow through the The Entrepreneur Startup Checklist</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Supercharging Your Entrepreneurship Productivity</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Save money instead of taking loan for a college or university degree</span></li><li style=\"box-sizing: border-box; margin: 0px; padding: 5px 0px 0px;\"><span style=\"box-sizing: border-box;\">Explore 100+ Smart Marketing Startup Ideas in Emerging Markets &amp; Industries</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.5rem;\"><br></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">During this Smart Marketing Tech Startup Workshop we will cover:</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">Session 1: Smart Marketing Tech Entrepreneur Startup Basics</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"><span style=\"box-sizing: border-box;\">During this session we will explore the very foundation and the basic systems and platforms for you to integrate into your own tech startup process.</span></p><p style=\"box-sizing: border-box; margin: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; padding: 10px 0px 0px; line-height: 1.5rem;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.5rem;\"><br class=\"Apple-interchange-newline\"><span style=\"background-color: rgb(0, 0, 0);\"></span></p>', 'https://star-meetup.herokuapp.com?room=Dubai_Meet_zsmvmnw7wsf', NULL, NULL, 'uploads/images/meetup/1643798228.jpg', NULL, NULL, '2022-02-02', NULL, 5000.00, 1, 1, 1, NULL, '2022-02-02 04:37:08', '2022-02-20 04:56:50'),
(31, 16, 17, 'Offline', 'Shakib being Shakib: Is the Fortune Barishal captain above the rules?', '18:42:00', '21:42:00', '<h6 style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\" class=\"\">But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>There can be no doubt that Shakib Al Hasan is the greatest and most accomplished cricketer that Bangladesh has ever produced.&nbsp;<br>But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>Fortune Barishal\'s team manager Sabbir Khan told the media&nbsp;that Shakib missed the photo because he had an upset stomach.</h6><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>There can be no doubt that Shakib Al Hasan is the greatest and most accomplished cricketer that Bangladesh has ever produced.&nbsp;<br>But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>Fortune Barishal\'s team manager Sabbir Khan told the media&nbsp;that Shakib missed the photo because he had an upset stomach.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>There can be no doubt that Shakib Al Hasan is the greatest and most accomplished cricketer that Bangladesh has ever produced.&nbsp;<br>But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>Fortune Barishal\'s team manager Sabbir Khan told the media&nbsp;that Shakib missed the photo because he had an upset stomach.<br></p>', NULL, 'Banani', '25', 'uploads/images/meetup/1645354438.jpg', NULL, NULL, '2022-02-02', NULL, 550.00, 1, 1, 1, NULL, '2022-02-02 04:42:41', '2022-02-20 04:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `meetup_event_registrations`
--

CREATE TABLE `meetup_event_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meetup_event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(43, 31, 11, NULL, '1', NULL, 550.00, NULL, NULL, '2022-04-09 02:51:37', '2022-04-09 02:51:37'),
(44, 30, 10, NULL, '1', NULL, 5000.00, NULL, NULL, '2022-04-09 02:52:50', '2022-04-09 02:52:50'),
(45, 23, 10, NULL, '1', NULL, 200.00, 'Emdad Man', '456365436543', '2022-04-09 03:07:21', '2022-04-09 03:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `conversation_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 11, 12, 1, 'hi, i am Sonet', '2022-04-06 02:55:46', '2022-04-06 02:55:46'),
(2, 10, 12, 1, 'hiii i am sonet', '2022-04-06 03:02:39', '2022-04-06 03:02:39'),
(3, 11, 12, 1, 'tgdfg', '2022-04-06 03:03:04', '2022-04-06 03:03:04'),
(4, 11, 12, 1, 'dcfdsc', '2022-04-06 03:03:18', '2022-04-06 03:03:18'),
(5, 10, 11, 1, 'sonet i m', '2022-04-06 03:19:04', '2022-04-06 03:19:04'),
(6, 11, 11, 1, 'hiii', '2022-04-06 03:19:23', '2022-04-06 03:19:23'),
(7, 10, 11, 1, 'dfgfdsg', '2022-04-06 03:19:30', '2022-04-06 03:19:30'),
(8, 10, 11, 1, 'rfdgrtd', '2022-04-06 03:19:40', '2022-04-06 03:19:40'),
(9, 11, 12, 1, 'Sonet', '2022-04-06 03:50:53', '2022-04-06 03:50:53'),
(10, 10, 11, 1, 'Siam', '2022-04-06 03:50:58', '2022-04-06 03:50:58'),
(11, 11, 12, 1, 'Akash', '2022-04-06 03:51:06', '2022-04-06 03:51:06'),
(12, 11, 12, 1, 'Batash', '2022-04-06 03:51:37', '2022-04-06 03:51:37'),
(13, 11, 12, 1, 'hawa', '2022-04-06 03:51:42', '2022-04-06 03:51:42'),
(14, 10, 12, 1, 'Hii', '2022-04-06 03:57:20', '2022-04-06 03:57:20'),
(15, 11, 12, 1, 'hello', '2022-04-06 03:57:27', '2022-04-06 03:57:27'),
(16, 11, 12, 1, 'Man', '2022-04-06 23:09:10', '2022-04-06 23:09:10'),
(17, 10, 12, 1, 'Man Cholo', '2022-04-06 23:09:19', '2022-04-06 23:09:19'),
(18, 10, 12, 1, 'tomay rid majhare rakhibo', '2022-04-06 23:24:04', '2022-04-06 23:24:04'),
(19, 10, 12, 1, 'my name is Sonet', '2022-04-06 23:31:28', '2022-04-06 23:31:28'),
(20, 11, 12, 1, 'to ki korbo ami?', '2022-04-06 23:31:48', '2022-04-06 23:31:48'),
(21, 11, 12, 1, 'hi jaber vai', '2022-04-06 23:36:05', '2022-04-06 23:36:05'),
(22, 11, 12, 1, 'hii', '2022-04-06 23:40:18', '2022-04-06 23:40:18'),
(23, 10, 12, 1, 'dgdf', '2022-04-06 23:40:40', '2022-04-06 23:40:40'),
(24, 10, 12, 1, 'sdfdsf', '2022-04-06 23:40:44', '2022-04-06 23:40:44'),
(25, 11, 12, 1, 'sdfgdr', '2022-04-06 23:41:05', '2022-04-06 23:41:05'),
(26, 10, 12, 1, 'eee', '2022-04-06 23:41:12', '2022-04-06 23:41:12'),
(27, 10, 12, 1, 'efdsfds', '2022-04-06 23:42:45', '2022-04-06 23:42:45'),
(28, 10, 12, 1, 'Fida', '2022-04-06 23:44:53', '2022-04-06 23:44:53'),
(29, 10, 12, 1, 'wefwerf', '2022-04-06 23:45:17', '2022-04-06 23:45:17'),
(30, 10, 12, 1, 'fdsfds', '2022-04-06 23:45:23', '2022-04-06 23:45:23'),
(31, 10, 12, 1, 'habib', '2022-04-06 23:49:26', '2022-04-06 23:49:26'),
(32, 10, 12, 1, 'gmkofd', '2022-04-06 23:55:33', '2022-04-06 23:55:33'),
(33, 10, 12, 1, 'di', '2022-04-06 23:57:24', '2022-04-06 23:57:24'),
(34, 10, 12, 1, 'new message', '2022-04-06 23:57:57', '2022-04-06 23:57:57'),
(35, 10, 12, 1, 'diu', '2022-04-07 00:01:20', '2022-04-07 00:01:20'),
(36, 10, 12, 1, 'Shakib Al hasan', '2022-04-07 00:08:20', '2022-04-07 00:08:20'),
(37, 10, 12, 1, 'naqnan kaje besto', '2022-04-07 00:10:50', '2022-04-07 00:10:50'),
(38, 10, 12, 1, 'adi onto', '2022-04-07 00:12:17', '2022-04-07 00:12:17'),
(39, 10, 12, 1, 'siam', '2022-04-07 00:17:41', '2022-04-07 00:17:41'),
(40, 10, 12, 1, 'kamrul', '2022-04-07 00:19:03', '2022-04-07 00:19:03'),
(41, 10, 12, 1, 'record', '2022-04-07 00:20:59', '2022-04-07 00:20:59'),
(42, 10, 12, 1, 'rakhte', '2022-04-07 00:21:24', '2022-04-07 00:21:24'),
(43, 10, 12, 1, 'hobe', '2022-04-07 00:21:52', '2022-04-07 00:21:52'),
(44, 10, 12, 1, 'hi, yoo man', '2022-04-07 00:24:02', '2022-04-07 00:24:02'),
(45, 10, 12, 1, 'hlw', '2022-04-07 00:26:00', '2022-04-07 00:26:00'),
(46, 10, 12, 1, 'go up', '2022-04-07 00:28:18', '2022-04-07 00:28:18'),
(47, 10, 12, 1, 'hii', '2022-04-07 00:28:49', '2022-04-07 00:28:49'),
(48, 10, 12, 1, 'hlw', '2022-04-07 00:28:55', '2022-04-07 00:28:55'),
(49, 10, 12, 1, 'ki hlw', '2022-04-07 00:29:07', '2022-04-07 00:29:07'),
(50, 10, 12, 1, 'eryger', '2022-04-07 00:33:55', '2022-04-07 00:33:55'),
(51, 10, 12, 1, 'are vai', '2022-04-07 00:34:07', '2022-04-07 00:34:07'),
(52, 10, 12, 1, 'sdfsdfsd', '2022-04-07 00:34:18', '2022-04-07 00:34:18'),
(53, 10, 12, 1, 'ki ekta 1', '2022-04-07 00:34:28', '2022-04-07 00:34:28'),
(54, 10, 12, 1, '15 din', '2022-04-07 00:35:10', '2022-04-07 00:35:10'),
(55, 10, 12, 1, '15 fan', '2022-04-07 00:35:19', '2022-04-07 00:35:19'),
(56, 10, 12, 1, 'hai', '2022-04-07 00:35:30', '2022-04-07 00:35:30'),
(57, 10, 12, 1, 'joy bangla', '2022-04-07 00:36:16', '2022-04-07 00:36:16'),
(58, 10, 12, 1, 'robin', '2022-04-07 00:38:14', '2022-04-07 00:38:14'),
(59, 10, 12, 1, 'mon', '2022-04-07 00:38:26', '2022-04-07 00:38:26'),
(60, 10, 12, 1, 'kygihy8u', '2022-04-07 00:44:01', '2022-04-07 00:44:01'),
(61, 10, 12, 1, 'dgfg', '2022-04-07 00:44:43', '2022-04-07 00:44:43'),
(62, 10, 12, 1, 'salman Sir', '2022-04-07 00:54:03', '2022-04-07 00:54:03'),
(63, 11, 11, 1, 'rtgrg', '2022-04-07 01:13:10', '2022-04-07 01:13:10'),
(64, 10, 11, 1, 'sdcfdsf', '2022-04-07 01:13:23', '2022-04-07 01:13:23'),
(65, 10, 11, 1, 'Ali bukhari', '2022-04-07 01:13:36', '2022-04-07 01:13:36'),
(66, 10, 11, 1, 'gfhdfg', '2022-04-07 01:16:07', '2022-04-07 01:16:07'),
(67, 10, 11, 1, 'bfxcb', '2022-04-07 01:17:28', '2022-04-07 01:17:28'),
(68, 10, 11, 1, 'boshe nai', '2022-04-07 01:19:58', '2022-04-07 01:19:58'),
(69, 11, 11, 1, 'arehh', '2022-04-07 01:20:09', '2022-04-07 01:20:09'),
(70, 10, 11, 1, 'ki chai', '2022-04-07 01:22:49', '2022-04-07 01:22:49'),
(71, 11, 11, 1, 'guru guru', '2022-04-07 01:23:02', '2022-04-07 01:23:02'),
(72, 11, 11, 1, 'hi', '2022-04-07 01:23:38', '2022-04-07 01:23:38'),
(73, 10, 11, 1, 'hlw', '2022-04-07 01:23:47', '2022-04-07 01:23:47'),
(74, 11, 11, 1, 'sds', '2022-04-07 01:23:59', '2022-04-07 01:23:59'),
(75, 10, 11, 1, 'dcdescds', '2022-04-07 01:24:03', '2022-04-07 01:24:03'),
(76, 11, 11, 1, 'dzvcdz', '2022-04-07 01:24:11', '2022-04-07 01:24:11'),
(77, 11, 11, 1, 'q', '2022-04-07 01:24:18', '2022-04-07 01:24:18'),
(78, 10, 11, 1, 'w', '2022-04-07 01:24:23', '2022-04-07 01:24:23'),
(79, 11, 11, 1, 'awdwafdawfeafeasfeafe awdfefefew', '2022-04-07 01:24:40', '2022-04-07 01:24:40'),
(80, 10, 11, 1, 'alamin', '2022-04-07 01:29:27', '2022-04-07 01:29:27'),
(81, 10, 11, 1, 'eta kono kotha', '2022-04-07 01:29:43', '2022-04-07 01:29:43'),
(82, 10, 11, 1, 'sfdf', '2022-04-07 01:31:11', '2022-04-07 01:31:11'),
(83, 10, 11, 1, 'dzczd', '2022-04-07 01:31:33', '2022-04-07 01:31:33'),
(84, 10, 11, 1, 'blv', '2022-04-07 01:32:08', '2022-04-07 01:32:08'),
(85, 10, 11, 1, 'koro', '2022-04-07 01:32:22', '2022-04-07 01:32:22'),
(86, 10, 11, 1, 'ds', '2022-04-07 01:32:28', '2022-04-07 01:32:28'),
(87, 11, 11, 1, 'd', '2022-04-07 01:32:34', '2022-04-07 01:32:34'),
(88, 10, 11, 1, 'ds', '2022-04-07 01:32:39', '2022-04-07 01:32:39'),
(89, 10, 11, 1, 'dddd', '2022-04-07 01:32:44', '2022-04-07 01:32:44'),
(90, 11, 11, 1, 'dsdsds', '2022-04-07 01:32:48', '2022-04-07 01:32:48'),
(91, 10, 11, 1, 'tt', '2022-04-07 01:32:58', '2022-04-07 01:32:58'),
(92, 11, 11, 1, 'rt', '2022-04-07 01:33:06', '2022-04-07 01:33:06'),
(93, 10, 11, 1, 'pp', '2022-04-07 01:33:11', '2022-04-07 01:33:11'),
(94, 11, 11, 1, 'aa', '2022-04-07 01:33:17', '2022-04-07 01:33:17'),
(95, 10, 11, 1, 'll', '2022-04-07 01:33:27', '2022-04-07 01:33:27'),
(96, 11, 11, 1, 'ty', '2022-04-07 01:33:32', '2022-04-07 01:33:32'),
(97, 10, 11, 1, 'tu', '2022-04-07 01:33:40', '2022-04-07 01:33:40'),
(98, 10, 11, 1, 'saffsa', '2022-04-07 01:33:46', '2022-04-07 01:33:46'),
(99, 11, 11, 1, 'sfe', '2022-04-07 01:34:14', '2022-04-07 01:34:14'),
(100, 10, 11, 1, 'sdfdsf', '2022-04-07 01:34:18', '2022-04-07 01:34:18'),
(101, 11, 11, 1, 'esfsef', '2022-04-07 01:34:23', '2022-04-07 01:34:23'),
(102, 10, 11, 1, 'esfesf', '2022-04-07 01:34:27', '2022-04-07 01:34:27'),
(103, 10, 11, 1, 'sender', '2022-04-07 01:35:48', '2022-04-07 01:35:48'),
(104, 11, 11, 1, 'receiver', '2022-04-07 01:35:58', '2022-04-07 01:35:58'),
(105, 10, 11, 1, 'hi', '2022-04-07 01:36:42', '2022-04-07 01:36:42'),
(106, 11, 11, 1, 'hlw', '2022-04-07 01:36:52', '2022-04-07 01:36:52'),
(107, 11, 11, 1, 'sir', '2022-04-07 01:36:59', '2022-04-07 01:36:59'),
(108, 10, 11, 1, 'mam', '2022-04-07 01:37:06', '2022-04-07 01:37:06'),
(109, 11, 11, 1, 'mim', '2022-04-07 01:37:15', '2022-04-07 01:37:15'),
(110, 10, 11, 1, 'mitu', '2022-04-07 01:37:22', '2022-04-07 01:37:22'),
(111, 11, 11, 1, 'how are u?', '2022-04-07 01:37:34', '2022-04-07 01:37:34'),
(112, 10, 11, 1, 'i am fine', '2022-04-07 01:37:52', '2022-04-07 01:37:52'),
(113, 10, 11, 1, 'tibroo', '2022-04-07 01:51:47', '2022-04-07 01:51:47'),
(114, 11, 11, 1, 'kaj hocche', '2022-04-07 01:52:58', '2022-04-07 01:52:58'),
(115, 10, 11, 1, 'tai naki?', '2022-04-07 01:53:09', '2022-04-07 01:53:09'),
(116, 11, 11, 1, 'Ashba Kobe?', '2022-04-07 01:53:22', '2022-04-07 01:53:22'),
(117, 10, 11, 1, 'ajkei\r\n\r\nAshbo, dekhi', '2022-04-07 01:53:35', '2022-04-07 01:53:35'),
(118, 10, 11, 1, 'Welcome to my msngr chat', '2022-04-07 01:54:22', '2022-04-07 01:54:22'),
(119, 11, 11, 1, 'Thanks for adding me', '2022-04-07 01:54:34', '2022-04-07 01:54:34'),
(120, 10, 11, 1, 'pawa jay?', '2022-04-07 01:54:50', '2022-04-07 01:54:50'),
(121, 10, 11, 1, 'tai', '2022-04-07 01:56:05', '2022-04-07 01:56:05'),
(122, 10, 11, 1, 'hi', '2022-04-07 01:56:11', '2022-04-07 01:56:11'),
(123, 10, 11, 1, 'Hi alamin', '2022-04-07 01:57:30', '2022-04-07 01:57:30'),
(124, 11, 11, 1, 'hi sonet', '2022-04-07 01:57:40', '2022-04-07 01:57:40'),
(125, 10, 11, 1, 'how are you', '2022-04-07 01:59:17', '2022-04-07 01:59:17'),
(126, 11, 11, 1, 'I am fine', '2022-04-07 01:59:23', '2022-04-07 01:59:23'),
(127, 11, 11, 1, 'How are u kamrul?', '2022-04-07 02:00:11', '2022-04-07 02:00:11'),
(128, 10, 11, 1, 'I am fine', '2022-04-07 02:00:17', '2022-04-07 02:00:17'),
(129, 10, 11, 1, 'dassa', '2022-04-07 02:07:13', '2022-04-07 02:07:13'),
(130, 10, 11, 1, 'dscdsc', '2022-04-07 02:07:15', '2022-04-07 02:07:15'),
(131, 10, 11, 1, 'dscds', '2022-04-07 02:07:17', '2022-04-07 02:07:17'),
(132, 10, 11, 1, 'dscds', '2022-04-07 02:07:19', '2022-04-07 02:07:19'),
(133, 11, 11, 1, 'Dubai', '2022-04-07 02:11:39', '2022-04-07 02:11:39'),
(134, 11, 11, 1, 'Good', '2022-04-07 02:36:05', '2022-04-07 02:36:05'),
(135, 11, 11, 1, 'Roja thake', '2022-04-07 02:39:38', '2022-04-07 02:39:38'),
(136, 10, 11, 1, 'very good', '2022-04-07 02:39:50', '2022-04-07 02:39:50'),
(137, 10, 11, 1, 'hiii', '2022-04-07 03:43:21', '2022-04-07 03:43:21'),
(138, 11, 11, 1, 'sfgvfrg', '2022-04-07 03:43:26', '2022-04-07 03:43:26'),
(139, 10, 11, 1, 'gffsdg', '2022-04-07 03:43:30', '2022-04-07 03:43:30'),
(140, 11, 11, 1, 'Hlww', '2022-04-07 03:44:22', '2022-04-07 03:44:22'),
(141, 10, 11, 1, 'acds', '2022-04-07 03:44:25', '2022-04-07 03:44:25'),
(142, 11, 11, 1, 'Ramadan', '2022-04-07 03:44:42', '2022-04-07 03:44:42'),
(143, 10, 11, 1, 'Mubarak', '2022-04-07 03:44:48', '2022-04-07 03:44:48'),
(144, 10, 11, 1, 'hii', '2022-04-07 03:50:20', '2022-04-07 03:50:20'),
(145, 11, 11, 1, 'fythty', '2022-04-07 03:50:28', '2022-04-07 03:50:28'),
(146, 10, 11, 1, 'fhn', '2022-04-07 03:50:32', '2022-04-07 03:50:32'),
(147, 10, 11, 1, 'hiii', '2022-04-09 03:55:48', '2022-04-09 03:55:48'),
(148, 11, 11, 1, 'hellow', '2022-04-09 03:56:08', '2022-04-09 03:56:08'),
(149, 10, 11, 1, 'sfdsf', '2022-04-09 03:56:27', '2022-04-09 03:56:27'),
(150, 11, 11, 1, 'sdfds', '2022-04-09 03:56:29', '2022-04-09 03:56:29'),
(151, 11, 11, 1, 'sdfds', '2022-04-09 03:56:31', '2022-04-09 03:56:31'),
(152, 10, 11, 1, 'sdfdsf', '2022-04-09 03:56:34', '2022-04-09 03:56:34'),
(153, 10, 11, 1, 'ergrg', '2022-04-09 04:39:29', '2022-04-09 04:39:29'),
(154, 10, 11, 1, 'tg', '2022-04-09 04:39:54', '2022-04-09 04:39:54'),
(155, 10, 11, 1, 'wftwefew', '2022-04-09 04:42:04', '2022-04-09 04:42:04'),
(156, 10, 11, 1, 'sezfed', '2022-04-09 04:44:39', '2022-04-09 04:44:39'),
(157, 10, 11, 1, 'trfht', '2022-04-09 04:54:41', '2022-04-09 04:54:41'),
(158, 10, 11, 1, 'dzfcd', '2022-04-09 05:05:12', '2022-04-09 05:05:12'),
(159, 10, 11, 1, 'jluoioluuio', '2022-04-09 05:06:17', '2022-04-09 05:06:17'),
(160, 10, 11, 1, 'eafde', '2022-04-09 05:08:33', '2022-04-09 05:08:33'),
(161, 10, 11, 1, 'defsf', '2022-04-09 05:08:36', '2022-04-09 05:08:36'),
(162, 10, 11, 1, 'sdfdsf', '2022-04-09 05:08:38', '2022-04-09 05:08:38'),
(163, 11, 11, 1, 'hbdhgfh', '2022-04-09 05:09:44', '2022-04-09 05:09:44'),
(164, 11, 11, 1, 'dhghgfh', '2022-04-09 05:09:47', '2022-04-09 05:09:47'),
(165, 10, 11, 1, 'gnfgn', '2022-04-09 05:21:31', '2022-04-09 05:21:31'),
(166, 10, 11, 1, 'gfhngfhnf', '2022-04-09 05:21:33', '2022-04-09 05:21:33'),
(167, 10, 11, 1, 'uiliul', '2022-04-09 05:22:10', '2022-04-09 05:22:10'),
(168, 10, 11, 1, 'uikiukiul', '2022-04-09 05:22:13', '2022-04-09 05:22:13'),
(169, 10, 11, 1, 'fgddf', '2022-04-09 05:43:22', '2022-04-09 05:43:22'),
(170, 10, 11, 1, 'liij', '2022-04-09 05:49:10', '2022-04-09 05:49:10'),
(171, 10, 11, 1, 'dfgvdfgvb', '2022-04-10 01:26:50', '2022-04-10 01:26:50'),
(172, 10, 11, 1, 'dfgvbf', '2022-04-10 01:49:04', '2022-04-10 01:49:04'),
(173, 10, 11, 1, '20', '2022-04-10 01:49:09', '2022-04-10 01:49:09'),
(174, 10, 11, 1, 'fgthfg', '2022-04-10 01:49:59', '2022-04-10 01:49:59'),
(175, 10, 11, 1, 'hikk', '2022-04-11 00:32:52', '2022-04-11 00:32:52'),
(176, 10, 11, 1, 'dgvf', '2022-04-11 00:33:17', '2022-04-11 00:33:17'),
(177, 10, 11, 1, 'sgrd', '2022-04-11 01:18:53', '2022-04-11 01:18:53'),
(178, 10, 11, 1, 'sdfdsf', '2022-04-11 02:16:48', '2022-04-11 02:16:48'),
(179, 10, 11, 1, 'sfdfsd', '2022-04-11 02:17:14', '2022-04-11 02:17:14'),
(180, 10, 11, 1, 'fdgvfd', '2022-04-11 02:18:12', '2022-04-11 02:18:12'),
(181, 10, 11, 1, 'asdsa', '2022-04-11 02:18:22', '2022-04-11 02:18:22'),
(182, 10, 11, 1, 'sdfvfds', '2022-04-11 02:30:49', '2022-04-11 02:30:49'),
(183, 10, 11, 1, 'awdaed', '2022-04-11 02:32:44', '2022-04-11 02:32:44'),
(184, 10, 11, 1, 'adsa', '2022-04-11 02:32:47', '2022-04-11 02:32:47'),
(185, 10, 11, 1, 'sad', '2022-04-11 02:32:50', '2022-04-11 02:32:50'),
(186, 10, 11, 1, 'Sonet', '2022-04-11 02:32:55', '2022-04-11 02:32:55'),
(187, 11, 11, 1, 'dff', '2022-04-11 02:45:02', '2022-04-11 02:45:02'),
(188, 10, 11, 1, 'dfvfd', '2022-04-11 02:45:10', '2022-04-11 02:45:10'),
(189, 10, 11, 1, 'sfsdf', '2022-04-11 02:45:23', '2022-04-11 02:45:23'),
(190, 10, 11, 1, 'adsad', '2022-04-11 02:45:37', '2022-04-11 02:45:37'),
(191, 11, 11, 1, 'dsadsa', '2022-04-11 02:45:40', '2022-04-11 02:45:40'),
(192, 10, 11, 1, 'fhfghgf', '2022-04-11 02:46:00', '2022-04-11 02:46:00'),
(193, 11, 11, 1, 'gfhgf', '2022-04-11 02:46:04', '2022-04-11 02:46:04'),
(194, 11, 11, 1, 'gfhf', '2022-04-11 02:57:15', '2022-04-11 02:57:15'),
(195, 10, 11, 1, 'gfhgfh', '2022-04-11 02:57:18', '2022-04-11 02:57:18'),
(196, 11, 11, 1, 'dfgvfd', '2022-04-11 02:57:47', '2022-04-11 02:57:47'),
(197, 10, 11, 1, 'fdbgvfdbv', '2022-04-11 02:57:50', '2022-04-11 02:57:50'),
(198, 10, 11, 1, 'dscdsc', '2022-04-11 03:09:07', '2022-04-11 03:09:07'),
(199, 11, 11, 1, 'dscdscds', '2022-04-11 03:09:09', '2022-04-11 03:09:09'),
(200, 11, 11, 1, 'scdsc', '2022-04-11 03:09:12', '2022-04-11 03:09:12'),
(201, 10, 11, 1, 'sdcdsc', '2022-04-11 03:09:16', '2022-04-11 03:09:16'),
(202, 11, 11, 1, 'dscdsc', '2022-04-11 03:09:19', '2022-04-11 03:09:19'),
(203, 10, 11, 1, 'sdcdscds', '2022-04-11 03:09:22', '2022-04-11 03:09:22'),
(204, 11, 11, 1, 'dscdsc', '2022-04-11 03:09:28', '2022-04-11 03:09:28'),
(205, 10, 11, 1, 'scdscsd', '2022-04-11 03:09:33', '2022-04-11 03:09:33'),
(206, 10, 11, 1, 'xsxs', '2022-04-11 03:10:00', '2022-04-11 03:10:00'),
(207, 11, 11, 1, 'xsx', '2022-04-11 03:10:04', '2022-04-11 03:10:04'),
(208, 10, 11, 1, 'sxxs', '2022-04-11 03:10:07', '2022-04-11 03:10:07'),
(209, 11, 11, 1, 'sxs', '2022-04-11 03:10:09', '2022-04-11 03:10:09'),
(210, 10, 11, 1, ',kj,kj', '2022-04-11 03:10:25', '2022-04-11 03:10:25'),
(211, 10, 11, 1, 'rhgy', '2022-04-11 03:10:57', '2022-04-11 03:10:57'),
(212, 11, 11, 1, 'gfhf', '2022-04-11 03:11:00', '2022-04-11 03:11:00'),
(213, 11, 11, 1, 'fgbgf', '2022-04-11 03:11:03', '2022-04-11 03:11:03'),
(214, 11, 11, 1, '52', '2022-04-11 03:21:56', '2022-04-11 03:21:56'),
(215, 10, 11, 1, '12', '2022-04-11 03:22:01', '2022-04-11 03:22:01'),
(216, 10, 11, 1, 'nhgn', '2022-04-11 03:23:27', '2022-04-11 03:23:27'),
(217, 11, 11, 1, 'gjmnjg', '2022-04-11 03:23:31', '2022-04-11 03:23:31'),
(218, 10, 11, 1, 'jhh', '2022-04-11 03:23:41', '2022-04-11 03:23:41'),
(219, 10, 11, 1, 'dvf', '2022-04-11 03:24:25', '2022-04-11 03:24:25'),
(220, 11, 11, 1, 'fdvdf', '2022-04-11 03:24:27', '2022-04-11 03:24:27'),
(221, 11, 11, 1, 'cfdszcds', '2022-04-11 03:24:49', '2022-04-11 03:24:49'),
(222, 10, 11, 1, 'sdcdsc', '2022-04-11 03:24:51', '2022-04-11 03:24:51'),
(223, 11, 11, 1, 'sdcds', '2022-04-11 03:24:54', '2022-04-11 03:24:54'),
(224, 10, 11, 1, 'cdscds', '2022-04-11 03:24:56', '2022-04-11 03:24:56'),
(225, 11, 11, 1, 'sds', '2022-04-11 03:25:34', '2022-04-11 03:25:34'),
(226, 11, 11, 1, 'cdsc', '2022-04-11 03:25:39', '2022-04-11 03:25:39'),
(227, 10, 11, 1, 'dscfds', '2022-04-11 03:25:42', '2022-04-11 03:25:42'),
(228, 11, 11, 1, 'dgvfdg', '2022-04-11 03:25:57', '2022-04-11 03:25:57'),
(229, 10, 11, 1, 'fdvfdv', '2022-04-11 03:25:59', '2022-04-11 03:25:59'),
(230, 10, 11, 1, 'gfhbg', '2022-04-11 03:42:00', '2022-04-11 03:42:00'),
(231, 10, 11, 1, 'dgfdg', '2022-04-11 03:42:09', '2022-04-11 03:42:09'),
(232, 10, 11, 1, 'gfd', '2022-04-11 03:42:18', '2022-04-11 03:42:18'),
(233, 11, 11, 1, 'fdgfdg', '2022-04-11 03:42:20', '2022-04-11 03:42:20'),
(234, 10, 11, 1, 'fgdg', '2022-04-11 03:42:23', '2022-04-11 03:42:23'),
(235, 11, 11, 1, 'fdgfdg', '2022-04-11 03:42:25', '2022-04-11 03:42:25'),
(236, 11, 11, 1, 'sfsdf', '2022-04-11 03:42:43', '2022-04-11 03:42:43'),
(237, 10, 11, 1, 'sdfdsf', '2022-04-11 03:42:45', '2022-04-11 03:42:45'),
(238, 11, 11, 1, 'dsfdsf', '2022-04-11 03:42:48', '2022-04-11 03:42:48'),
(239, 11, 11, 1, NULL, '2022-04-11 03:42:49', '2022-04-11 03:42:49'),
(240, 11, 11, 1, 'sdfdsf', '2022-04-11 03:42:52', '2022-04-11 03:42:52'),
(241, 10, 11, 1, 'fdsf', '2022-04-11 03:42:54', '2022-04-11 03:42:54'),
(242, 11, 11, 1, 'dfsdsf', '2022-04-11 03:42:57', '2022-04-11 03:42:57'),
(243, 10, 11, 1, 'sdfdsf', '2022-04-11 03:43:00', '2022-04-11 03:43:00'),
(244, 10, 11, 1, '12', '2022-04-11 03:43:36', '2022-04-11 03:43:36'),
(245, 11, 11, 1, '13', '2022-04-11 03:43:49', '2022-04-11 03:43:49'),
(246, 10, 11, 1, '15', '2022-04-11 03:43:52', '2022-04-11 03:43:52'),
(247, 11, 11, 1, '45', '2022-04-11 03:43:55', '2022-04-11 03:43:55'),
(248, 10, 11, 1, '54', '2022-04-11 03:43:58', '2022-04-11 03:43:58'),
(249, 10, 11, 1, '54615', '2022-04-11 03:50:50', '2022-04-11 03:50:50'),
(250, 11, 11, 1, 'fjhfghgf', '2022-04-11 03:50:55', '2022-04-11 03:50:55'),
(251, 11, 11, 1, 'fghgfh', '2022-04-11 03:50:59', '2022-04-11 03:50:59'),
(252, 10, 11, 1, 'fghgfh', '2022-04-11 03:51:01', '2022-04-11 03:51:01'),
(253, 11, 11, 1, 'fghfgh', '2022-04-11 03:51:03', '2022-04-11 03:51:03'),
(254, 10, 11, 1, 'adsacsa', '2022-04-11 03:55:41', '2022-04-11 03:55:41'),
(255, 10, 11, 1, 'dsf', '2022-04-11 03:56:34', '2022-04-11 03:56:34'),
(256, 11, 11, 1, 'ddsf', '2022-04-11 03:56:36', '2022-04-11 03:56:36'),
(257, 10, 11, 1, 'fxdgvfdv', '2022-04-11 03:58:44', '2022-04-11 03:58:44'),
(258, 11, 11, 1, 'fdgvfdgvdf', '2022-04-11 03:58:46', '2022-04-11 03:58:46'),
(259, 11, 11, 1, 'asdasd', '2022-04-11 03:59:02', '2022-04-11 03:59:02'),
(260, 10, 11, 1, 'asdsad', '2022-04-11 03:59:04', '2022-04-11 03:59:04'),
(261, 10, 11, 1, 'sadsad', '2022-04-11 03:59:06', '2022-04-11 03:59:06'),
(262, 11, 11, 1, 'adsasdsa', '2022-04-11 03:59:09', '2022-04-11 03:59:09'),
(263, 10, 11, 1, 'asdsad', '2022-04-11 03:59:25', '2022-04-11 03:59:25'),
(264, 11, 11, 1, 'asdsad', '2022-04-11 03:59:28', '2022-04-11 03:59:28'),
(265, 10, 11, 1, 'asdsad', '2022-04-11 03:59:30', '2022-04-11 03:59:30'),
(266, 11, 11, 1, 'dsadsa', '2022-04-11 03:59:32', '2022-04-11 03:59:32'),
(267, 10, 11, 1, 'asdasd', '2022-04-11 03:59:35', '2022-04-11 03:59:35'),
(268, 11, 11, 1, 'adsasd', '2022-04-11 03:59:37', '2022-04-11 03:59:37'),
(269, 10, 11, 1, 'adad', '2022-04-11 04:00:04', '2022-04-11 04:00:04'),
(270, 10, 11, 1, 'efdsrfd', '2022-04-11 04:00:18', '2022-04-11 04:00:18'),
(271, 10, 11, 1, 'sdfdsf', '2022-04-11 04:00:32', '2022-04-11 04:00:32'),
(272, 11, 11, 1, 'sdfdsf', '2022-04-11 04:00:34', '2022-04-11 04:00:34'),
(273, 10, 11, 1, 'sc', '2022-04-12 00:44:54', '2022-04-12 00:44:54'),
(274, 10, 11, 1, 'zcxz', '2022-04-12 00:44:58', '2022-04-12 00:44:58'),
(275, 10, 11, 1, 'vara', '2022-04-12 00:45:17', '2022-04-12 00:45:17'),
(276, 10, 11, 1, 'sdgsdf', '2022-04-12 00:59:10', '2022-04-12 00:59:10'),
(277, 10, 11, 1, 'fdgfdg', '2022-04-12 00:59:20', '2022-04-12 00:59:20'),
(278, 11, 11, 1, 'fdgdfgfd', '2022-04-12 00:59:26', '2022-04-12 00:59:26'),
(279, 11, 11, 1, 'fdgdf', '2022-04-12 00:59:32', '2022-04-12 00:59:32'),
(280, 10, 11, 1, 'fgfdgfd', '2022-04-12 00:59:36', '2022-04-12 00:59:36'),
(281, 10, 11, 1, 'fdgfdg', '2022-04-12 00:59:48', '2022-04-12 00:59:48'),
(282, 11, 11, 1, 'dfgfdg', '2022-04-12 00:59:54', '2022-04-12 00:59:54'),
(283, 10, 11, 1, 'fghfgh', '2022-04-12 01:00:18', '2022-04-12 01:00:18'),
(284, 11, 11, 1, 'fghgfh', '2022-04-12 01:00:20', '2022-04-12 01:00:20'),
(285, 10, 11, 1, 'fghgfh', '2022-04-12 01:00:28', '2022-04-12 01:00:28'),
(286, 11, 11, 1, 'fghgfh', '2022-04-12 01:00:34', '2022-04-12 01:00:34'),
(287, 10, 11, 1, 'gukjh', '2022-04-12 01:01:21', '2022-04-12 01:01:21'),
(288, 11, 11, 1, 'hjkjh', '2022-04-12 01:01:23', '2022-04-12 01:01:23'),
(289, 11, 11, 1, 'hjkjhk', '2022-04-12 01:01:25', '2022-04-12 01:01:25'),
(290, 10, 11, 1, 'hjkjhk', '2022-04-12 01:01:27', '2022-04-12 01:01:27'),
(291, 11, 11, 1, 'hjkjhk', '2022-04-12 01:01:29', '2022-04-12 01:01:29'),
(292, 10, 11, 1, 'hjkjh', '2022-04-12 01:01:30', '2022-04-12 01:01:30'),
(293, 11, 11, 1, 'sdrgrsdg', '2022-04-12 01:02:14', '2022-04-12 01:02:14'),
(294, 11, 11, 1, 'drgrg,jhrjirnirbirbngrijereijriegirekljhbgjfjgir   rdgihyg  drgrdgkjnbgh', '2022-04-12 01:02:25', '2022-04-12 01:02:25'),
(295, 10, 11, 1, '123', '2022-04-12 01:03:34', '2022-04-12 01:03:34'),
(296, 11, 11, 1, '452565', '2022-04-12 01:04:16', '2022-04-12 01:04:16'),
(297, 11, 11, 1, 'ghjgj', '2022-04-12 01:04:32', '2022-04-12 01:04:32'),
(298, 10, 11, 1, 'jgghjg', '2022-04-12 01:04:36', '2022-04-12 01:04:36'),
(299, 10, 11, 1, 'ghjgjhg', '2022-04-12 01:05:10', '2022-04-12 01:05:10'),
(300, 11, 11, 1, 'hgjhgj', '2022-04-12 01:05:15', '2022-04-12 01:05:15'),
(301, 10, 11, 1, 'gffgng', '2022-04-12 01:05:28', '2022-04-12 01:05:28'),
(302, 10, 11, 1, '23', '2022-04-12 01:05:42', '2022-04-12 01:05:42'),
(303, 10, 11, 1, '52', '2022-04-12 01:35:52', '2022-04-12 01:35:52'),
(304, 10, 11, 1, '231213', '2022-04-12 01:36:52', '2022-04-12 01:36:52'),
(305, 11, 11, 1, '123123', '2022-04-12 01:36:57', '2022-04-12 01:36:57'),
(306, 10, 11, 1, 'dfgvdv', '2022-04-12 01:51:26', '2022-04-12 01:51:26'),
(307, 10, 11, 1, 'fdfdgv', '2022-04-12 01:51:29', '2022-04-12 01:51:29'),
(308, 10, 11, 1, 'dfvgd', '2022-04-12 01:51:45', '2022-04-12 01:51:45'),
(309, 11, 11, 1, 'fdgvfd', '2022-04-12 01:51:51', '2022-04-12 01:51:51'),
(310, 10, 11, 1, 'gvfdgvfdgvfd', '2022-04-12 01:51:55', '2022-04-12 01:51:55'),
(311, 11, 11, 1, 'hukhujk', '2022-04-12 01:53:16', '2022-04-12 01:53:16'),
(312, 10, 11, 1, 'kjlkjl', '2022-04-12 01:53:18', '2022-04-12 01:53:18'),
(313, 10, 11, 1, 'fghgfh', '2022-04-12 02:05:38', '2022-04-12 02:05:38'),
(314, 11, 11, 1, 'fghgfh', '2022-04-12 02:05:49', '2022-04-12 02:05:49'),
(315, 10, 11, 1, 'gfhfgh', '2022-04-12 02:05:51', '2022-04-12 02:05:51'),
(316, 10, 11, 1, 'gjkgk', '2022-04-12 02:06:12', '2022-04-12 02:06:12'),
(317, 10, 11, 1, 'gg', '2022-04-12 02:07:38', '2022-04-12 02:07:38'),
(318, 10, 11, 1, 'gg', '2022-04-12 02:07:47', '2022-04-12 02:07:47'),
(319, 10, 11, 1, 'gg', '2022-04-12 02:07:50', '2022-04-12 02:07:50'),
(320, 11, 11, 1, 'gg', '2022-04-12 02:07:52', '2022-04-12 02:07:52'),
(321, 11, 11, 1, 'gg', '2022-04-12 02:07:57', '2022-04-12 02:07:57'),
(322, 11, 11, 1, 'gg', '2022-04-12 02:08:07', '2022-04-12 02:08:07'),
(323, 11, 11, 1, 'gf', '2022-04-12 02:08:09', '2022-04-12 02:08:09'),
(324, 11, 11, 1, 'dgfdg', '2022-04-12 02:08:13', '2022-04-12 02:08:13'),
(325, 10, 11, 1, 'dfgdfg', '2022-04-12 02:08:15', '2022-04-12 02:08:15'),
(326, 10, 11, 1, 'dfgfdg', '2022-04-12 02:08:33', '2022-04-12 02:08:33'),
(327, 10, 11, 1, 'fdgdfg', '2022-04-12 02:08:49', '2022-04-12 02:08:49'),
(328, 10, 11, 1, 'dfgfdg', '2022-04-12 02:08:53', '2022-04-12 02:08:53'),
(329, 10, 11, 1, 'dfgfdg', '2022-04-12 02:09:00', '2022-04-12 02:09:00'),
(330, 10, 11, 1, 'drgh', '2022-04-12 02:25:57', '2022-04-12 02:25:57'),
(331, 10, 11, 1, 'yy', '2022-04-12 02:26:02', '2022-04-12 02:26:02'),
(332, 10, 11, 1, 'sdf', '2022-04-12 02:29:09', '2022-04-12 02:29:09'),
(333, 10, 11, 1, '123', '2022-04-12 02:29:14', '2022-04-12 02:29:14');

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
(42, '2021_12_01_121440_create_live_chat_registrations_table', 1),
(43, '2021_12_01_122501_create_live_chat_reacts_table', 1),
(44, '2021_12_02_063033_create_live_chat_comments_table', 1),
(45, '2021_12_02_064204_create_star_time_schedules_table', 1),
(46, '2021_12_08_102255_create_super_stars_table', 1),
(47, '2022_01_04_052100_create_greetings_table', 1),
(48, '2022_01_25_045813_create_schedules_table', 2),
(49, '2022_01_30_044101_create_event_profiles_table', 3),
(50, '2022_02_01_092321_create_choice_lists_table', 4),
(51, '2022_02_02_141401_create_getting_registrations_table', 5),
(52, '2022_01_31_071627_create_greetings_registrations_table', 6),
(53, '2022_02_05_110512_create_simple_posts_table', 7),
(54, '2022_02_06_093232_create_notification_texts_table', 8),
(55, '2022_02_06_093343_create_notifications_table', 8),
(56, '2022_02_07_081047_create_reacts_table', 8),
(57, '2022_02_16_083845_create_greeting_types_table', 9),
(58, '2022_02_17_045215_create_interest_types_table', 10),
(59, '2022_02_22_064350_create_marketplaces_table', 11),
(60, '2022_02_23_050603_create_countries_table', 11),
(61, '2022_02_23_050957_create_states_table', 11),
(62, '2022_02_23_051228_create_cities_table', 11),
(63, '2022_02_23_065653_create_auctions_table', 11),
(64, '2022_02_23_083800_create_biddings_table', 11),
(65, '2022_02_23_092937_create_acquired_apps_table', 11),
(69, '2022_03_09_064215_create_filter_videos_table', 12),
(77, '2022_03_12_114837_create_orders_table', 12),
(78, '2022_03_22_085322_create_activities_table', 12),
(79, '2022_03_21_072449_create_fan_groups_table', 13),
(81, '2022_03_29_090818_create_fan__group__joins_table', 14),
(82, '2022_03_31_111917_create_fan_posts_table', 14),
(84, '2022_04_06_084904_create_messages_table', 14),
(86, '2022_04_12_083403_create_fan_group_messages_table', 15),
(89, '2022_04_17_070900_create_promo_videos_table', 16),
(90, '2021_12_01_111758_create_audition_events_table', 17),
(91, '2021_12_01_111944_create_audition_event_registrations_table', 18),
(92, '2021_12_01_113520_create_audition_reacts_table', 19),
(93, '2021_12_01_113904_create_audition_comments_table', 20),
(94, '2021_12_01_114542_create_audition_judge_panels_table', 21),
(95, '2022_03_09_064111_create_assign_judges_table', 22),
(96, '2022_03_09_064136_create_audition_marks_table', 23),
(97, '2022_03_09_064154_create_audtion_appeals_table', 24),
(98, '2022_03_09_064255_create_audition_templates_table', 25),
(99, '2022_03_09_065326_create_audition_participant_notifications_table', 26),
(100, '2022_03_09_071641_create_audition_payments_table', 27),
(101, '2022_03_09_071702_create_audition_interects_table', 28),
(102, '2022_03_10_061239_create_assign_admins_table', 29),
(103, '2022_03_24_053621_create_jury_boards_table', 30),
(104, '2022_04_04_075521_create_assign_juries_table', 31),
(105, '2022_04_12_041620_create_judge_marks_table', 32),
(106, '2022_04_13_083252_create_audition_rules_table', 32),
(107, '2022_04_23_053328_create_audition_round_rules_table', 32),
(108, '2022_04_23_053339_create_audition_judge_instructions_table', 32),
(109, '2022_04_23_055258_create_auditions_table', 33),
(110, '2022_04_23_055547_create_audition_upload_videos_table', 33),
(111, '2022_04_23_062114_create_audition_user_votings_table', 33),
(112, '2022_04_23_063036_create_payments_table', 33),
(113, '2022_04_23_064139_create_audition_judge_marks_table', 33),
(114, '2022_04_23_065127_create_audition_assign_juries_table', 33),
(115, '2022_04_23_065407_create_audition_assign_judges_table', 33),
(116, '2022_04_23_070414_create_audition_participants_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `view_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_id`, `user_id`, `status`, `view_status`, `created_at`, `updated_at`) VALUES
(1, '1', '16', 0, '1', NULL, '2022-02-14 00:51:14'),
(2, '2', '10', 0, '0', NULL, NULL),
(3, '3', '10', 0, '0', NULL, NULL),
(5, '4', '16', 0, '0', '2022-04-23 02:24:17', '2022-04-23 02:24:17'),
(6, '4', '16', 0, '0', '2022-04-23 02:24:20', '2022-04-23 02:24:20'),
(7, '4', '10', 0, '0', '2022-04-23 02:24:21', '2022-04-23 02:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_texts`
--

INSERT INTO `notification_texts` (`id`, `type`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Greetings', 'Something Note', '2022-02-08 23:37:26', '2022-02-08 23:37:26'),
(2, 'Greetings', 'Hii', '2022-02-17 00:21:34', '2022-02-17 00:21:34'),
(3, 'Greetings', 'make your payment soon', '2022-02-20 06:05:28', '2022-02-20 06:05:28'),
(4, 'Auction', 'Your bidding is selected for auction', NULL, NULL);

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
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
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
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
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
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = deactive, 1 = active',
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

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(49, 'App\\Models\\User', 18, 'raihan28@gmail.com_AdminToken', '56da10ac6337a7cf1f62461deb6eee2ec1a64ea21f8440f9525a1cc9cc185ac8', '[\"server:admin\"]', '2022-01-22 22:35:28', '2022-01-22 22:18:17', '2022-01-22 22:35:28'),
(61, 'App\\Models\\User', 20, 'raihan28@gmail.com_AdminToken', '30781530c6b423dc5c8347c33f6d483e7958c3eeb550089ae05ada8a28498afc', '[\"server:admin\"]', '2022-01-23 01:26:15', '2022-01-23 01:24:51', '2022-01-23 01:26:15'),
(134, 'App\\Models\\User', 22, 'raihanbabu@gmail.com_UserToken', '2188080e6028f587ea9b4e585e7008b39226a0b9154f9876d01e6ecf1e80dd5d', '[\"server:user\"]', '2022-02-03 05:24:03', '2022-02-02 08:42:04', '2022-02-03 05:24:03'),
(142, 'App\\Models\\User', 26, 'joti@gmail.com_Token', '41c1cfb1117ed87cdc84ee6e4adb49c3afdccd0c07d0f06cad6156559062dc77', '[\"*\"]', '2022-02-03 01:20:40', '2022-02-03 00:53:49', '2022-02-03 01:20:40'),
(144, 'App\\Models\\User', 27, 'sonet@gmail.com_Token', '309bf911f55527ced6dfb342109458c5efee723b8978c3a0b62b3ba581ec14bd', '[\"*\"]', '2022-02-03 01:38:16', '2022-02-03 01:22:37', '2022-02-03 01:38:16'),
(147, 'App\\Models\\User', 30, 'sonet@gmail.com_Token', '2ad8a0f879279b9586401ac5fc92b253437d67ba865c1665e2c097aa68785daa', '[\"*\"]', '2022-02-03 02:39:50', '2022-02-03 02:36:37', '2022-02-03 02:39:50'),
(165, 'App\\Models\\User', 33, 'rakib@gmail.com_Token', '46fb18d272317a4f55490572ecde9cdf44ec7b51959409a48e55c52978c68e94', '[\"*\"]', '2022-02-03 07:47:09', '2022-02-03 07:21:04', '2022-02-03 07:47:09'),
(218, 'App\\Models\\User', 12, 'user3@gmail.com_UserToken', 'b3d95719f50d5b10c8dca1cdc0ac3ce47793a672de92d637df64f4ddf5263cff', '[\"server:user\"]', '2022-02-20 04:06:16', '2022-02-20 04:06:15', '2022-02-20 04:06:16'),
(219, 'App\\Models\\User', 12, 'user3@gmail.com_UserToken', '3e723129dd3dabcbdbc95a24b82145606a044962b1f49ebbb388b269650d56a3', '[\"server:user\"]', NULL, '2022-02-20 04:06:15', '2022-02-20 04:06:15'),
(267, 'App\\Models\\User', 34, 'nuzhatx@gmail.com_Token', '58a2c703686c97c5978eea51d0b25f7530a24ebd77d5caf20e91ca9a8286fa86', '[\"*\"]', NULL, '2022-02-21 22:56:45', '2022-02-21 22:56:45'),
(284, 'App\\Models\\User', 12, 'user3@gmail.com_UserToken', 'c2dce92427ec1cca80d3aa464bfe6047cd680fbd702dbb5a762f75ca692a8b83', '[\"server:user\"]', '2022-02-26 06:08:27', '2022-02-26 06:06:10', '2022-02-26 06:08:27'),
(338, 'App\\Models\\User', 38, 'siamshikder@gmail.com_Token', 'a7daca825bfbf7564cea333f69d05f9a505605fc690e4aacd488e328493d82f8', '[\"*\"]', NULL, '2022-03-16 01:39:55', '2022-03-16 01:39:55'),
(339, 'App\\Models\\User', 39, 'siam33@gmail.com_Token', 'c0528fbb3ae602a0b2fa4178c8a2da438ccf1e0d9080ee1d109eb4d5e586fbf8', '[\"*\"]', '2022-03-16 05:51:25', '2022-03-16 01:41:59', '2022-03-16 05:51:25'),
(414, 'App\\Models\\User', 41, 'tamimadmin@gmail.com_AdminToken', '01fc6cd619d9ad55b097ac8d448cb283d09a151d59c409a52311f8c8902296d9', '[\"server:admin\"]', '2022-04-10 00:19:26', '2022-04-10 00:08:07', '2022-04-10 00:19:26'),
(415, 'App\\Models\\User', 41, 'tamimadmin@gmail.com_AdminToken', 'e28e3305cfb8265814c91271d395bc466fbf2a6af2064ac051cbcae853429578', '[\"server:admin\"]', NULL, '2022-04-10 00:30:31', '2022-04-10 00:30:31'),
(438, 'App\\Models\\User', 11, 'user2@gmail.com_UserToken', 'f5e8de7d7fb26c536153d39ac8431710426b08366615bb27e61c4fabe720442a', '[\"server:user\"]', '2022-04-23 01:01:36', '2022-04-12 01:36:30', '2022-04-23 01:01:36'),
(485, 'App\\Models\\User', 45, 'dgfd@sdfgdsf.sdfd_Token', 'd4fd3837621c30798d1517ce310f52bd0807de55b06545c6843067a8e4357509', '[\"*\"]', NULL, '2022-05-11 01:56:29', '2022-05-11 01:56:29'),
(486, 'App\\Models\\User', 46, 'jj@dfg.dfgfd_Token', '75c82dc197e23822ac21483aca18420d9d6d19805c5657d69b5c6348cc236666', '[\"*\"]', NULL, '2022-05-11 01:57:31', '2022-05-11 01:57:31'),
(487, 'App\\Models\\User', 47, 'rabbi@gmail.com_Token', 'd9744f1c97912fd50fcb87e01e7c7e80c8b6e56d7dfc8ecece06f2db03ababaf', '[\"*\"]', NULL, '2022-05-11 02:10:07', '2022-05-11 02:10:07'),
(488, 'App\\Models\\User', 48, 'user4@gmail.com_Token', '58a92140324a696e4b3ea838dd06bc343900c4bbc25549ad485fe8d7e8409100', '[\"*\"]', NULL, '2022-05-11 02:27:01', '2022-05-11 02:27:01'),
(489, 'App\\Models\\User', 49, 'ssf@gamil.com_Token', '86cf9d0365aaf2ea69ced72ab799ff73b0a538e3ffc87348789db1b932ec084c', '[\"*\"]', NULL, '2022-05-11 03:13:07', '2022-05-11 03:13:07'),
(490, 'App\\Models\\User', 50, 'ss@gmail.com_Token', '5261132ed5ea88bf47def6aaf184f67cca0054f4a8e28749070c32654d4b8332', '[\"*\"]', NULL, '2022-05-11 03:13:56', '2022-05-11 03:13:56'),
(491, 'App\\Models\\User', 51, 'shawn12@gmail.com_Token', 'a6e601c6da277ea1d095184eb07a28c65b713823ac8f57e5d839393b02ce0723', '[\"*\"]', '2022-05-11 03:35:14', '2022-05-11 03:34:53', '2022-05-11 03:35:14'),
(493, 'App\\Models\\User', 53, 'asif@gmail.com_Token', 'f4d61193ed6197bb912b50065db0c634693bf5be67170358850634f619adc99e', '[\"*\"]', '2022-05-12 03:32:12', '2022-05-11 22:40:54', '2022-05-12 03:32:12'),
(494, 'App\\Models\\User', 54, 'masum@gmail.com_StarToken', 'd0a7781630c67906b107859beca0813a3664777fdb9c77cf5e934d1790449272', '[\"server:audition-admin\"]', '2022-05-12 03:40:05', '2022-05-12 03:37:51', '2022-05-12 03:40:05'),
(497, 'App\\Models\\User', 11, 'user2@gmail.com_UserToken', 'da357ee1caf8c51b14def556d9fced99c51cc034d4db81a636fb8854a2b39084', '[\"server:user\"]', '2022-05-12 06:27:41', '2022-05-12 06:24:49', '2022-05-12 06:27:41'),
(499, 'App\\Models\\User', 10, 'user1@gmail.com_UserToken', 'bb985459803af3f54ea5aa5a41bde6f443fc2e7b09c4553dad9aeda8ccbe493b', '[\"server:user\"]', '2022-05-17 04:35:47', '2022-05-12 06:37:15', '2022-05-17 04:35:47'),
(509, 'App\\Models\\User', 43, 'auditionadmin1@gmail.com_StarToken', '4b518bfedd5787a2ff245e3e3c62404d5ce29b5f732fb2d748fb9195504486ac', '[\"server:audition-admin\"]', '2022-05-18 05:55:19', '2022-05-18 05:53:03', '2022-05-18 05:55:19'),
(510, 'App\\Models\\User', 16, 'shawnshikder1996@gmail.com_AdminToken', 'e019e4c49fe42bae3c746844decdb141fa9dd1c68fcbdc8a131b031a864fe743', '[\"server:admin\"]', '2022-05-18 05:56:03', '2022-05-18 05:55:46', '2022-05-18 05:56:03'),
(511, 'App\\Models\\User', 16, 'shawnshikder1996@gmail.com_AdminToken', 'df226a1cbfefeb81e80f5ba5ae1c4811855e74fa5d0528f83c4e4bdf5f5e4932', '[\"server:admin\"]', '2022-05-18 07:10:53', '2022-05-18 05:56:58', '2022-05-18 07:10:53'),
(513, 'App\\Models\\User', 16, 'shawnshikder1996@gmail.com_AdminToken', '6a475b9616faca323d768e76ddfe063daf2558229b166599022c0221cab58486', '[\"server:admin\"]', '2022-05-21 03:04:17', '2022-05-21 02:19:14', '2022-05-21 03:04:17'),
(515, 'App\\Models\\User', 16, 'shawnshikder1996@gmail.com_AdminToken', '788440994892f3beab9f52043f3d8ed12b7251909d20fd1ab03247dc46159d92', '[\"server:admin\"]', '2022-05-21 03:23:26', '2022-05-21 03:10:49', '2022-05-21 03:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` int(191) DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `sub_category_id` int(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_number` int(11) DEFAULT NULL,
  `react_number` int(11) DEFAULT 0,
  `share_number` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `react_provider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `event_id`, `category_id`, `sub_category_id`, `user_id`, `comment_number`, `react_number`, `share_number`, `title`, `details`, `share_link`, `react_provider`, `status`, `created_at`, `updated_at`) VALUES
(21, 'meetup', 22, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:03:55', '2022-01-20 01:03:55'),
(22, 'meetup', 21, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:04:07', '2022-01-20 01:04:07'),
(24, 'livechat', 22, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:05:08', '2022-01-20 01:05:08'),
(25, 'livechat', 23, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:05:18', '2022-01-20 01:05:18'),
(26, 'livechat', 20, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:05:30', '2022-01-20 01:05:30'),
(29, 'livechat', 19, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 02:53:16', '2022-03-31 00:01:54'),
(30, 'meetup', 27, 1, NULL, 21, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:15:57', '2022-02-12 06:25:51'),
(31, 'meetup', 27, 1, NULL, 21, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:21:00', '2022-02-12 06:25:49'),
(32, 'meetup', 27, 1, NULL, 21, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:21:03', '2022-02-12 06:25:47'),
(33, 'meetup', 27, 1, NULL, 21, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:32:09', '2022-02-10 05:29:52'),
(39, 'meetup', 25, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 02:43:11', '2022-03-10 02:22:07'),
(40, 'livechat', 29, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 04:30:04', '2022-02-10 05:29:48'),
(41, 'meetup', 30, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 04:40:03', '2022-05-16 03:41:42'),
(42, 'meetup', 31, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 04:43:34', '2022-03-10 02:22:14'),
(43, 'livechat', 30, 1, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 09:28:42', '2022-05-16 07:41:47'),
(57, 'general', 1, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-06 22:54:05', '2022-03-31 00:01:39'),
(58, 'general', 2, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07 00:21:40', '2022-03-30 23:50:22'),
(60, 'learningSession', 29, 1, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-12 03:17:48', '2022-03-31 03:19:07'),
(61, 'learningSession', 22, 1, NULL, 17, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-12 03:45:54', '2022-05-10 04:50:40'),
(62, 'learningSession', 30, 1, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, '[10]', NULL, '2022-02-20 04:40:11', '2022-05-16 03:58:43'),
(63, 'learningSession', 32, 1, NULL, 17, NULL, 3, NULL, NULL, NULL, NULL, '[10]', NULL, '2022-02-24 06:06:56', '2022-05-17 04:09:15'),
(64, 'learningSession', 33, 1, NULL, 17, NULL, 3, NULL, NULL, NULL, NULL, '[12]', NULL, '2022-03-16 00:19:44', '2022-05-17 04:09:13'),
(76, 'audition', 2, 1, NULL, 1, NULL, 0, NULL, 'uiolgiu', '<p>iugiu</p>', NULL, NULL, 1, '2022-05-08 00:58:57', '2022-05-08 00:58:57'),
(77, 'audition', 1, 1, NULL, 1, NULL, 0, NULL, 'Demo Title', '<p>srgfrg ukik fhtgrfhfrt<br>&nbsp;</p>', NULL, NULL, 1, '2022-05-10 04:37:38', '2022-05-10 04:37:38');

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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `parent_comment_id`, `comment`, `react_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Consectetur.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 2, 1, NULL, 'Quia commodi iste.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 3, NULL, 'Voluptas incidunt.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 4, 3, NULL, 'Voluptate.', 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 5, 3, NULL, 'Nam et maxime aut.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 6, 4, NULL, 'Cum commodi quia.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 7, 4, NULL, 'Nesciunt dolorem.', 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 8, 4, NULL, 'Explicabo quasi est.', 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 9, 3, NULL, 'Pariatur ex aut.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 10, 3, NULL, 'Rerum similique.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(11, 11, 1, NULL, 'Quo soluta rerum.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(12, 12, 2, NULL, 'Tempore excepturi.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(13, 13, 2, NULL, 'Nam autem adipisci.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(14, 14, 4, NULL, 'Saepe et animi.', 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(15, 15, 3, NULL, 'Aliquid qui debitis.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 16, 3, NULL, 'Enim qui culpa.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(17, 17, 2, NULL, 'Et autem rerum ut.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(18, 18, 1, NULL, 'Sapiente sit quis.', 0, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(19, 19, 3, NULL, 'Qui perferendis.', 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(20, 20, 3, NULL, 'Eos id et ea maxime.', 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://via.placeholder.com/300x200.png/009977?text=neque', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 2, 'https://via.placeholder.com/300x200.png/007766?text=quia', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 'https://via.placeholder.com/300x200.png/007744?text=voluptates', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 4, 'https://via.placeholder.com/300x200.png/009955?text=deleniti', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 5, 'https://via.placeholder.com/300x200.png/004477?text=et', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 6, 'https://via.placeholder.com/300x200.png/00bbee?text=eos', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 7, 'https://via.placeholder.com/300x200.png/001199?text=ad', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 8, 'https://via.placeholder.com/300x200.png/00ff00?text=aliquam', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 9, 'https://via.placeholder.com/300x200.png/006688?text=modi', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 10, 'https://via.placeholder.com/300x200.png/008888?text=porro', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(11, 11, 'https://via.placeholder.com/300x200.png/0077dd?text=maxime', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(12, 12, 'https://via.placeholder.com/300x200.png/00ddaa?text=placeat', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(13, 13, 'https://via.placeholder.com/300x200.png/006666?text=exercitationem', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(14, 14, 'https://via.placeholder.com/300x200.png/003300?text=ut', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(15, 15, 'https://via.placeholder.com/300x200.png/00aaaa?text=enim', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 16, 'https://via.placeholder.com/300x200.png/001100?text=omnis', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(17, 17, 'https://via.placeholder.com/300x200.png/000000?text=corporis', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(18, 18, 'https://via.placeholder.com/300x200.png/00aa22?text=doloremque', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(19, 19, 'https://via.placeholder.com/300x200.png/00ee99?text=accusamus', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(20, 20, 'https://via.placeholder.com/300x200.png/00bb99?text=beatae', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_reacts`
--

CREATE TABLE `post_reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `react` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=like, 1=love, 2=other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_reacts`
--

INSERT INTO `post_reacts` (`id`, `post_id`, `user_id`, `react`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 2, 4, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 3, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 4, 3, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 5, 3, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 6, 4, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 7, 3, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 8, 3, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 9, 4, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 10, 3, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(11, 11, 2, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(12, 12, 3, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(13, 13, 4, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(14, 14, 1, '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(15, 15, 4, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 16, 1, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(17, 17, 2, '0', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(18, 18, 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(19, 19, 3, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(20, 20, 1, '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_videos`
--

CREATE TABLE `post_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_videos`
--

INSERT INTO `post_videos` (`id`, `post_id`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 2, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 4, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 5, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 6, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 7, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 8, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 9, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 10, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(11, 11, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(12, 12, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(13, 13, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(14, 14, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(15, 15, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 16, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(17, 17, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(18, 18, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(19, 19, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(20, 20, 'https://youtu.be/lyXjeJN9lyg', '1', '2022-01-09 23:15:25', '2022-01-09 23:15:25');

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
  `star_approval` tinyint(1) DEFAULT NULL COMMENT '0=pending,1=approved',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reacts`
--

CREATE TABLE `reacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reacts`
--

INSERT INTO `reacts` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(176, 57, 17, '2022-02-10 03:08:25', '2022-02-10 03:08:25'),
(177, 58, 17, '2022-02-10 03:08:27', '2022-02-10 03:08:27'),
(179, 57, 11, '2022-02-10 03:08:47', '2022-02-10 03:08:47'),
(180, 58, 11, '2022-02-10 03:08:53', '2022-02-10 03:08:53'),
(182, 57, 14, '2022-02-10 03:10:03', '2022-02-10 03:10:03'),
(199, 30, 10, '2022-02-10 04:05:25', '2022-02-10 04:05:25'),
(201, 33, 10, '2022-02-10 05:29:52', '2022-02-10 05:29:52'),
(218, 42, 16, '2022-02-12 05:49:00', '2022-02-12 05:49:00'),
(225, 32, 16, '2022-02-12 06:25:47', '2022-02-12 06:25:47'),
(226, 31, 16, '2022-02-12 06:25:49', '2022-02-12 06:25:49'),
(228, 61, 16, '2022-02-12 06:26:12', '2022-02-12 06:26:12'),
(229, 60, 16, '2022-02-12 06:26:16', '2022-02-12 06:26:16'),
(236, 61, 1, '2022-02-17 01:35:01', '2022-02-17 01:35:01'),
(257, 60, 13, '2022-02-20 05:15:07', '2022-02-20 05:15:07'),
(258, 61, 13, '2022-02-20 05:15:07', '2022-02-20 05:15:07'),
(263, 39, 10, '2022-03-10 02:22:07', '2022-03-10 02:22:07'),
(264, 58, 10, '2022-03-10 02:22:21', '2022-03-10 02:22:21'),
(301, 64, 16, '2022-04-04 03:42:24', '2022-04-04 03:42:24'),
(304, 64, 11, '2022-04-07 03:51:21', '2022-04-07 03:51:21'),
(305, 63, 16, '2022-04-09 02:40:54', '2022-04-09 02:40:54'),
(307, 41, 10, '2022-05-16 03:41:42', '2022-05-16 03:41:42'),
(311, 43, 10, '2022-05-16 07:41:47', '2022-05-16 07:41:47'),
(313, 63, 10, '2022-05-17 04:09:15', '2022-05-17 04:09:15');

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
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = closed , 1 = active',
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
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `star_id`, `admin_id`, `event_type`, `from`, `to`, `date`, `month`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 16, 'livechat', '08:57:00', '10:36:00', '2022-01-05', 'Jan', 0, '2022-01-25 22:42:26', '2022-01-25 22:42:26'),
(2, NULL, 16, 'livechat', '20:53:00', '05:42:00', '2022-01-05', 'Jan', 0, '2022-01-25 22:42:26', '2022-01-25 22:42:26'),
(34, NULL, 16, 'meetup', '22:20:00', '22:25:00', '2022-01-05', 'Jan', 0, '2022-01-25 22:42:26', '2022-01-25 22:42:26'),
(35, NULL, 16, 'meetup', '02:45:00', '03:45:00', '2022-01-20', 'Jan', 0, '2022-01-25 22:45:19', '2022-01-25 22:45:19'),
(36, NULL, 16, 'meetup', '04:25:00', '06:21:00', '2022-01-27', 'Jan', 0, '2022-01-25 22:46:03', '2022-01-25 22:46:03'),
(37, NULL, 16, 'learning', '16:43:00', '15:05:00', '2022-01-27', 'Jan', 0, '2022-01-25 22:46:03', '2022-01-25 22:46:03'),
(38, NULL, 16, 'livechat', '18:57:00', '14:59:00', '2022-01-27', 'Jan', 0, '2022-01-25 22:46:03', '2022-01-25 22:46:03'),
(39, NULL, 16, 'meetup', '03:48:00', '17:42:00', '2022-01-04', 'Jan', 0, '2022-01-25 23:01:05', '2022-01-25 23:01:05'),
(40, NULL, 16, NULL, NULL, NULL, '2022-01-27', 'Jan', 0, '2022-01-26 00:16:58', '2022-01-26 00:16:58'),
(41, NULL, 16, 'learning', '07:17:00', '07:01:00', '2022-01-25', 'Jan', 0, '2022-01-26 00:58:14', '2022-01-26 00:58:14'),
(42, NULL, 16, 'meetup', '11:17:00', '05:45:00', '2022-01-25', 'Jan', 0, '2022-01-26 00:58:14', '2022-01-26 00:58:14'),
(43, NULL, 16, 'livechat', '09:04:00', '13:52:00', '2022-01-25', 'Jan', 0, '2022-01-26 00:58:14', '2022-01-26 00:58:14'),
(44, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:05:54', '2022-01-26 05:05:54'),
(45, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:06:09', '2022-01-26 05:06:09'),
(46, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:06:09', '2022-01-26 05:06:09'),
(47, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:06:09', '2022-01-26 05:06:09'),
(48, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:06:13', '2022-01-26 05:06:13'),
(49, NULL, 16, NULL, NULL, NULL, '2022-01-13', 'Jan', 0, '2022-01-26 05:06:13', '2022-01-26 05:06:13'),
(50, NULL, 16, 'livechat', '07:28:00', '21:12:00', '2022-01-06', 'Jan', 0, '2022-01-26 05:07:34', '2022-01-26 05:07:34'),
(51, NULL, 16, 'learning', '14:32:00', '05:45:00', '2022-01-06', 'Jan', 0, '2022-01-26 05:07:34', '2022-01-26 05:07:34'),
(52, NULL, 16, 'livechat', '23:30:00', '22:44:00', '2022-01-06', 'Jan', 0, '2022-01-26 05:07:34', '2022-01-26 05:07:34'),
(53, NULL, 16, 'learning', '14:56:00', '16:26:00', '2022-01-06', 'Jan', 0, '2022-01-26 05:07:34', '2022-01-26 05:07:34'),
(54, NULL, 16, 'learning', '02:10:00', '15:56:00', '2022-01-05', 'Jan', 0, '2022-01-26 05:07:36', '2022-01-26 05:07:36'),
(55, NULL, 16, 'learning', '12:20:00', '14:21:00', '2022-01-05', 'Jan', 0, '2022-01-26 05:07:36', '2022-01-26 05:07:36'),
(56, NULL, 16, 'learning', '00:00:00', '11:50:00', '2022-01-05', 'Jan', 0, '2022-01-26 05:07:36', '2022-01-26 05:07:36'),
(57, NULL, 16, 'learning', '03:02:00', '20:49:00', '2022-01-07', 'Jan', 0, '2022-01-26 05:07:38', '2022-01-26 05:07:38'),
(58, NULL, 16, 'learning', '20:00:00', '21:00:00', '2022-01-02', 'Jan', 0, '2022-01-29 03:00:39', '2022-01-29 03:00:39'),
(59, NULL, 16, 'livechat', '22:54:00', '06:24:00', '2022-01-06', 'Jan', 0, '2022-01-29 05:10:05', '2022-01-29 05:10:05'),
(60, NULL, 16, 'learning', '08:40:00', '06:00:00', '2022-01-06', 'Jan', 0, '2022-01-29 05:10:05', '2022-01-29 05:10:05'),
(61, NULL, 16, 'learning', '02:37:00', '00:16:00', '2022-01-06', 'Jan', 0, '2022-01-29 05:10:05', '2022-01-29 05:10:05'),
(62, NULL, 16, NULL, '16:21:00', '19:21:00', '2022-02-02', 'Feb', 0, '2022-02-02 04:22:33', '2022-02-02 04:22:33'),
(63, NULL, 16, 'meetup', '07:22:00', '09:23:00', '2022-02-02', 'Feb', 0, '2022-02-02 04:22:33', '2022-02-02 04:22:33'),
(64, NULL, 16, NULL, '09:20:00', '10:20:00', '2022-02-02', 'Feb', 0, '2022-02-01 21:20:41', '2022-02-01 21:20:41'),
(65, NULL, 16, NULL, '01:20:00', '02:20:00', '2022-02-02', 'Feb', 0, '2022-02-01 21:20:41', '2022-02-01 21:20:41'),
(66, NULL, 16, NULL, NULL, NULL, '2022-02-02', 'Feb', 0, '2022-02-01 21:20:41', '2022-02-01 21:20:41'),
(67, NULL, 16, 'learning', '17:04:00', '17:04:00', '2022-02-06', 'Feb', 0, '2022-02-03 03:01:52', '2022-02-03 03:01:52'),
(68, NULL, 16, 'meetup', '20:07:00', '20:07:00', '2022-02-06', 'Feb', 0, '2022-02-03 03:01:53', '2022-02-03 03:01:53'),
(69, NULL, 16, 'livechat', '21:08:00', '19:06:00', '2022-02-06', 'Feb', 0, '2022-02-03 03:01:53', '2022-02-03 03:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `simple_posts`
--

CREATE TABLE `simple_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(191) DEFAULT NULL,
  `star_approval` int(10) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_posts`
--

INSERT INTO `simple_posts` (`id`, `created_by_id`, `star_id`, `title`, `description`, `image`, `video`, `type`, `fee`, `star_approval`, `status`, `created_at`, `updated_at`) VALUES
(1, '16', '17', 'Fortune Barishal captain above the rules?', '<h6 style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\" class=\"\">But his acts off the field have stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br>Photo: ICC<br><span style=\"font-size: 1rem; text-align: left;\">There can be no doubt that Shakib Al Hasan is the greatest and most accomplished cricketer that Bangladesh has ever produced.&nbsp;</span><span style=\"font-size: 1rem; text-align: left;\">But his acts off the fiave stirred controversy and his latest incident, where he missed the captains\' photo with the trophy ahead of the BPL final to film a TV commercial, has added more fuel to the fire.&nbsp;<br></span>Fortune Barishal\'s team manager Sabbir Khan told the media&nbsp;that Shakib missed the photo because he had an upset stomach.<br>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.<br>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</h6>', 'uploads/images/post/1645354807.jpg', 'rthtrhtrh', 'paid', NULL, 1, 1, '2022-02-05 22:42:59', '2022-02-20 05:00:07'),
(2, '16', '17', 'All-Format Contract Offering', '<p style=\"border-width: 0px; border-style: solid; border-color: var(--chakra-colors-gray-200); overflow-wrap: break-word; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; max-width: 100%; line-height: 26px; color: rgb(63, 63, 63); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" \"open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" medium;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"color: rgb(255, 255, 255); font-family: Roboto, sans-serif; letter-spacing: -0.1px; background-color: rgb(52, 52, 52);\">Aspects of my life and has been hugely positive. I want more people to have the opportunity to experience the joy that playing this wonderful sport brought to my life. From the moment I received my first proper cricket bat with the intense smell of linseed oil on English willow, to the sensation of hitting my first six right out of the sweet spot of that bat, to learning the difficult art of bowling a wrong\'un or learning how to take a two-handed diving catch and finish</span><br></p>\r\n          <p></p>', 'uploads/images/post/1645353651.jpg', 'rthtrhtrh', 'paid', NULL, 0, 1, '2022-02-05 22:44:01', '2022-02-20 06:17:57'),
(3, '16', '17', 'Shakib tests negative for Covid-19, will play BPL final', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Ahead of the all-important final of the ongoing Bangabandhu Bangladesh Premier League (BPL), the captains of the two sides - Comilla Victorians and Fortune Barishal - were supposed to pose with the winners\' trophy at 2.45 pm on Thursday. But Barishal skipper Shakib Al Hasan was absent and instead the vice-captain Nurul Hasan was sent to pose with the trophy alongside Comilla captain Imrul Kayes.&nbsp;</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Sabbir Khan, team manager of the Fortune Barishal team, initially said that Shakib was absent due to stomach upset. He also informed that Shakib did not turn up at practice on Thursday. But Nurul Hasan\'s statement suggested otherwise. According to him, Shakib was \'probably\' hitting the gym at that time.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">\"Shakib is absent because of a stomach upset,\" Sabbir Khan told the journalists before the photo session. When asked if it was food poisoning, Sabbir Khan said that it was \'something like that\'.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">\"I think he is probably hitting the gym,\" Nurul said later. \"We had an optional practice session yesterday. I think it\'s the management\'s decision to send me here. I don\'t know more than that.\"</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility;\">Nurul was then informed of Shakib\'s \'stomach upset\'. When asked about that, Nurul replied, \"I said that it was the management\'s decision. I saw him in the gym in the morning. I don\'t know what happened after that.\"</p>', 'uploads/images/post/1645078584.jpg', NULL, 'paid', NULL, 0, 0, '2022-02-17 00:16:24', '2022-02-20 05:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
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
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = running , 1 = closed',
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
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = active , 1 = deactive',
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
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'uploads/images/logo.png', '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(3, 'user', 'uploads/images/setting/user.png', '2022-01-09 23:15:24', '2022-01-09 23:15:24');

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
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Football', 'football', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 1, 'Cricket', 'cricket', 'uploads/category/icon/tIJUBSq67x1o03zWRi00-1639890035.png', 'uploads/category/icon/tIJUBSq67x1o03zWRi00-1639890035.png', 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 1, 'Tennis', 'Tennis', 'uploads/category/icon/ripCtvWh2gH5cNaoR905-1639890829.png', 'uploads/category/icon/ripCtvWh2gH5cNaoR905-1639890829.png', 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 1, 'Others', 'others', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 'uploads/category/icon/qycnhsXozmXY9CKJqdrN-1639889893.png', 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `super_stars`
--

CREATE TABLE `super_stars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = active , 1 = deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_stars`
--

INSERT INTO `super_stars` (`id`, `star_id`, `admin_id`, `category_id`, `sub_category_id`, `terms_and_condition`, `description`, `qr_code`, `image`, `agreement`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 2, NULL, 'Sequi tempora hic non ut. Odit dolore repellat enim culpa quos aut expedita incidunt. Dolorem aut doloribus doloribus voluptatibus voluptas tempora dolorem. Doloribus qui neque minima.', NULL, 'uploads/images/star/sakib.png', NULL, 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 8, 1, 1, 2, NULL, 'Dolores rerum sed ipsam ipsam est suscipit expedita aut. Perspiciatis et nulla et dolor et ab unde molestias. Enim labore rerum aut laborum. Voluptatem et sunt quod quos eum.', NULL, 'uploads/images/star/tamim.png', NULL, 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 9, 1, 1, 2, NULL, 'Quis dolorem ut quidem qui numquam velit pariatur libero. Veniam fuga laborum rerum non corporis omnis. Molestiae blanditiis ut ipsum. Enim quam dolorum atque atque similique laudantium quisquam.', NULL, 'uploads/images/star/musfiqur.png', NULL, 1, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 17, 16, 1, 2, '<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>', NULL, '93935154', '	\nuploads/images/star/sakib.png', NULL, 0, '2022-01-20 00:25:26', '2022-01-20 00:25:26'),
(9, 24, 23, 1, 2, '<p>Mushfiqur Rahim is a Bangladeshi cricketer and the former captain and vice-captain of the Bangladesh national cricket team. He is considered as the best and most successful captain of Bangladesh in tests.</p>', NULL, '40857072', NULL, NULL, 0, '2022-02-02 09:13:38', '2022-02-02 09:13:38'),
(10, 36, 16, 1, 2, '<p>dfgvbdfb</p>', NULL, '12415875', NULL, NULL, 0, '2022-03-02 23:44:02', '2022-03-02 23:44:02'),
(11, 37, 16, 1, NULL, '<p>fdfa</p>', NULL, '51154531', NULL, NULL, 0, '2022-03-02 23:46:47', '2022-03-02 23:46:47'),
(12, 40, 16, 1, 2, '<p>sfdgvfsdgvbsfdg</p>', NULL, '13545889', NULL, NULL, 0, '2022-03-23 22:34:15', '2022-03-23 22:34:15'),
(13, 42, 41, 1, 2, '<p>asdfdsa</p>', NULL, '70612151', NULL, NULL, 0, '2022-04-10 00:19:17', '2022-04-10 00:19:17');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'demo_image/user.png',
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fan_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_send_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_user` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_online` int(10) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `phone`, `email`, `otp`, `otp_verified_at`, `image`, `cover_photo`, `fan_group`, `status`, `email_send_status`, `user_type`, `password`, `parent_user`, `category_id`, `is_online`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mr. Super', ' Admin', '01700000000', 'superadmin@gmail.com', '278533', NULL, 'uploads/images/setting/no-image.png', NULL, NULL, '1', NULL, 'super-admin', '$2y$10$N95Pgakd1Kr2ToUVqWQXO.UNzZ4XR5iKKZGDTtMCLn3jufKxRFTQa', NULL, NULL, 0, NULL, '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(2, NULL, 'Manager Admin ', ' (sports)', '01700000001', 'manager-admin-sports@gmail.com', '189039', NULL, 'uploads/images/setting/no-image.png', NULL, NULL, '1', NULL, 'manager-admin', '$2y$10$7tIi82RtIy6EHcKBrmnG7uABxDSpi9PlB2hrWP6c.lk3WvW0/AN36', NULL, 1, 0, NULL, '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(4, NULL, 'Shakib', 'Al Hasan', '017499690295', 'shakib75@gmail.com', '123456', NULL, 'uploads/images/star/sakib.png', NULL, NULL, '1', NULL, 'star', '$2y$10$TUm9zP/aQwlVHvioXB7XlOBs2GnCneAslXHfxmNX3k9Z8IAtg0FM.', NULL, NULL, 0, NULL, '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(5, NULL, 'Shakib', 'All Hasan', '01700000004', 'star-crirket@gmail.com', '627907', NULL, 'uploads/images/users/1643814486.jpeg', NULL, NULL, '1', NULL, 'star', '$2y$10$N0Y12iNTBQHECkAQ7/iyS.rVf7vlSgfC1A9fDJMNb4ekURPI2WOTC', 23, NULL, 0, NULL, '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(8, NULL, 'Tamim', 'Hasan', '01700000007', 'cricket3-movie@gmail.com', '331407', NULL, 'uploads/images/star/tamim.png', NULL, NULL, '1', NULL, 'star', '$2y$10$JN6u.mofLgs9CM1kde.f/OXsmW4rRXN2wQ2CtsRz9VhzLhqODUCfS', 23, NULL, 0, NULL, '2022-01-09 23:15:24', '2022-01-09 23:15:24'),
(9, NULL, 'Musfiq', 'Hasan', '01700000008', 'cricket5-movie@gmail.com', '848769', NULL, 'uploads/images/star/musfiqur.png', NULL, NULL, '1', NULL, 'star', '$2y$10$X/xUtCDcXuy3Jax6Vwr69.yg3tJAWApVf7Cq7LqP4ddciktRLDDHK', 23, NULL, 0, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 'Asif1652330454', 'Asif', 'Akbar', '8801732379595', 'user1@gmail.com', '369940', '2022-05-11 22:41:33', 'uploads/images/userPhotos/1652530299.png', 'uploads/images/userPhotos/1652531849.jpg', NULL, '1', NULL, 'user', '$2y$10$QSXW3TfSJt9k80Tfq63FROyV32p9f.yaBNaW0rZHzrzvT8teU5U/m', NULL, NULL, 0, NULL, '2022-05-11 22:40:54', '2022-05-14 06:37:30'),
(11, NULL, 'Mr. ', 'User2', '0170111112', 'user2@gmail.com', '160423', NULL, 'uploads/images/users/1642919728.jpg', NULL, '[2,3]', '1', NULL, 'user', '$2y$10$sJ9rcJb8uFM5bdZdk0iJD.ZzZU14EXVzFZkqq50FtmodfM2gGAila', NULL, NULL, 0, NULL, '2022-01-09 23:15:25', '2022-04-12 02:56:08'),
(15, NULL, 'Sakib Al', 'Hasan', '01737154982', 'alamin@gmail.com', '123456', NULL, 'uploads/images/users/1642593466.jpg', NULL, NULL, '1', NULL, 'star', '$2y$10$Zhx13K2dbHFMtC1DCzzR2.uwNxFmJjWLN7OGrXcGOWgHc3Qx0/cqW', NULL, NULL, 0, NULL, '2022-01-19 05:57:46', '2022-01-19 06:28:40'),
(16, NULL, 'Mizanur Rahman', 'Raihan', '01732379393', 'shawnshikder1996@gmail.com', '126683', NULL, 'demo_image/user.png', 'uploads/images/users/1642659396.jpg', NULL, '1', NULL, 'admin', '$2y$10$ihfMJs2zP2LTePvxHenOEeVu6otMpvezWgrG/uGBn0Ou1bUowNRrK', NULL, NULL, 0, NULL, '2022-01-20 00:16:36', '2022-01-20 00:17:16'),
(17, NULL, 'Sakib AL', 'Hasan', '01913704965', 'sakib75@gmail.com', '145234', NULL, 'uploads/images/users/1642659926.jpg', NULL, NULL, '1', NULL, 'star', '$2y$10$3UbnFt3qbCEtkNptmQIApuUN1l/iZVNuW0fBm2rw4.Jo67dlil89e', 16, NULL, 0, NULL, '2022-01-20 00:25:26', '2022-01-20 00:27:25'),
(20, NULL, 'Mizanur Rahaman', 'Raihan', '01749969028', 'raihan28@gmail.com', '246464', NULL, 'uploads/images/users/1642919469.jpg', NULL, NULL, '1', NULL, 'admin', '$2y$10$IgIqiEZ3HnEs47sGs4BF2uEiS2N7siM1nTRaMfQZqD.6Av9elVF92', NULL, NULL, 0, NULL, '2022-01-23 00:31:09', '2022-01-23 00:31:27'),
(21, NULL, 'Mustafizur', 'Rahaman', '01749969027', 'mustafiz@gmail.com', '817771', NULL, 'uploads/images/users/1642919728.jpg', NULL, NULL, '1', NULL, 'star', '$2y$10$iF0iV.T4oYCcQSDBdbFMJuNC5Djmi5mlEKaZvhvqtK7iHOm/3Bn0C', 20, NULL, 0, NULL, '2022-01-23 00:35:28', '2022-01-23 00:38:33'),
(22, NULL, 'Raihan', 'Babu', '8801715057715', 'raihanbabu@gmail.com', '812984', NULL, 'uploads/images/setting/no-image.png', NULL, NULL, NULL, NULL, 'user', '$2y$10$psQtfgpVQxt7rydeJfnQSebykBGO/OC1WFONbCa.4vNawi00uI3HG', NULL, NULL, 0, NULL, '2022-02-02 08:40:18', '2022-02-02 08:40:50'),
(23, NULL, 'Shohan Babu', 'Admin', '01777382007', 'shohan@gmail.com', '623830', NULL, 'uploads/images/users/1643814486.jpeg', NULL, NULL, '1', NULL, 'admin', '$2y$10$m4DyhYPYtddDsrGrYAEpcudCHFDKgp/BeJRIV75nP7zWohlqVLTNi', NULL, NULL, 0, NULL, '2022-02-02 09:08:06', '2022-02-02 09:08:42'),
(24, NULL, 'Mushfiqur', 'Rahim', '01303613363', 'musfiq@gmail.com', '566437', NULL, 'uploads/images/users/1643814818.jpeg', NULL, NULL, '1', NULL, 'star', '$2y$10$BagGilNv6gSrKcJ/VMYiTeNtbrpLailHeKSBKCM8QMq/Kjkaw.D9u', 23, NULL, 0, NULL, '2022-02-02 09:13:38', '2022-02-02 09:17:21'),
(33, NULL, 'Rakib', 'Hasan', '8801732955937', 'rakib@gmail.com', '665308', NULL, 'demo_image/user.png', NULL, NULL, NULL, NULL, 'user', '$2y$10$.2I5ueo2dd/llLdQRdnnluzLDiIMBM6111CjNwUTWaSzvXaYIc2.y', NULL, NULL, 0, NULL, '2022-02-03 07:21:04', '2022-02-03 07:21:38'),
(34, NULL, 'Nuzhat', 'Islam', '8801725270023', 'nuzhatx@gmail.com', '275011', NULL, 'demo_image/user.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$XpK1bEp6FKbgvcrcYJnAzOvtxUF31KQu1K5fN1eaKOqLeOntYPIGq', NULL, NULL, 0, NULL, '2022-02-21 22:56:45', '2022-02-21 22:56:45'),
(38, NULL, 'Siam', 'Shikder', '8801728046076', 'siamshikder@gmail.com', '512330', NULL, 'demo_image/user.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$.eMHYBxtb.DsOFjTJK6Bke7ImoSl1br9uLqOzAJI6ALKLb9sB6bOC', NULL, NULL, 0, NULL, '2022-03-16 01:39:54', '2022-03-16 01:39:54'),
(39, NULL, 'Siam', 'Shikder', '8801737154982', 'siam33@gmail.com', '710705', NULL, 'demo_image/user.png', NULL, NULL, NULL, NULL, 'user', '$2y$10$zruLzvKPrhVAprZCu8nVzugT2TcsPOylIju7s1OLnOeM9.PdNlymC', NULL, NULL, 0, NULL, '2022-03-16 01:41:59', '2022-03-16 01:42:19'),
(41, NULL, 'Admin of', 'Tamim', '01728046076', 'tamimadmin@gmail.com', '552623', NULL, 'uploads/images/users/1649568233.jpg', 'uploads/images/users/1649568233.jpg', NULL, '1', NULL, 'admin', '$2y$10$mubeA5vuLV6tLwci9bAWVefua1eV1coyau7p9sBMB4B4ubwlI6YUe', NULL, NULL, 0, NULL, '2022-04-09 23:23:53', '2022-04-10 00:07:44'),
(42, NULL, 'Tamim', 'Iqbal', '01732379395', 'tamim100@gmail.com', '994199', NULL, 'uploads/images/users/1649571557.jpg', NULL, NULL, '1', NULL, 'star', '$2y$10$jji0bn6Hqxpc4RYHL3XL0.K8Eh/zllae3ov7bTRxYP2At.9Vu11Wm', 41, NULL, 0, NULL, '2022-04-10 00:19:17', '2022-04-10 00:32:46'),
(43, NULL, 'Audition Admin', 'One', '01732379595', 'auditionadmin1@gmail.com', '107861', NULL, 'uploads/images/users/1650779346.jpg', 'uploads/images/users/1650779346.jpg', NULL, '1', NULL, 'audition-admin', '$2y$10$onbyTaRs4TqfKX.Hh3Wybuu/vJ.M.wftF9LNPbsBmOsnJdhZ1tYTi', NULL, NULL, 0, NULL, '2022-04-23 23:49:06', '2022-04-24 00:03:18'),
(44, NULL, 'Arafat A', 'udition', '01732379393017', 'arafat112@gmail.com', '951817', NULL, 'uploads/images/users/SYtazXneWo-1652178010.jpg', 'uploads/images/users/JrJH7hn1eB-1652178010.jpeg', NULL, '1', NULL, 'audition-admin', '$2y$10$5hI/41YZu4.3f4QjL3cpreYq3oMbEH.yH8hcautjmS8cUVSw1rhnG', NULL, 1, 0, NULL, '2022-05-10 04:20:10', '2022-05-10 04:22:25'),
(52, 'rgyrt1652262217', 'rgyrt', 'rtghtrh', '8807969639', 'shawn@gmail.com', '310897', '2022-05-11 03:53:35', 'demo_image/user.png', NULL, NULL, NULL, NULL, 'user', '$2y$10$2m7GQ2f6KhUvuKKiwTsDWOV8FuZz0Fg9sYhkPA4Br.VpGlTkEK0Va', NULL, NULL, 0, NULL, '2022-05-11 03:43:37', '2022-05-11 03:53:35'),
(54, NULL, 'Masum', 'Mosharraf', '01732345896', 'masum@gmail.com', '164855', NULL, 'uploads/images/users/1652347800.jpeg', 'uploads/images/users/1652347800.jpeg', NULL, '1', NULL, 'audition-admin', '$2y$10$W1KWhYYWPNYeBzt9y45rrOOBKLwoIaoUfRLIKOwarCoOajm7ecceS', NULL, NULL, 0, NULL, '2022-05-12 03:30:00', '2022-05-12 03:30:55');

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
(1, 1, 'Neque.', 'Vero ad.', '2009-01-30 18:00:00', '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 2, 'Nesciunt.', 'Quod.', '2009-01-30 18:00:00', '2', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 3, 'Delectus.', 'Sit.', '2009-01-30 18:00:00', '3', '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 4, 'Qui ut.', 'Quisquam.', '2009-01-30 18:00:00', '4', '2022-01-09 23:15:25', '2022-01-09 23:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_employments`
--

CREATE TABLE `user_employments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearly_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `occupation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu_level` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salery_range` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `nid`, `passport`, `gender`, `country`, `dob`, `occupation`, `edu_level`, `institute`, `subject`, `position`, `company`, `salery_range`, `created_at`, `updated_at`) VALUES
(1, 2, '+1-423-979-5108', '(605) 375-6019', '1', 'Fiji', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(2, 4, '+12795303503', '1-279-795-2290', '1', 'Venezuela', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(3, 1, '(520) 767-5486', '(351) 655-4786', '0', 'Serbia', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(4, 2, '(870) 705-4941', '+17037130064', '0', 'Seychelles', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(5, 3, '1-757-820-5511', '+1.828.235.9613', '0', 'Guinea-Bissau', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(6, 3, '+1 (283) 569-8461', '+14805652682', '1', 'Iraq', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(7, 2, '330.540.4503', '+1 (917) 524-5466', '1', 'Cook Islands', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(8, 1, '989-841-0306', '1-504-334-3875', '0', 'Iran', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(9, 1, '628-535-2099', '(931) 812-0157', '1', 'Mexico', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(10, 1, '+1-623-555-6994', '+1-626-404-7822', '1', 'Montenegro', '2021-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 23:15:25', '2022-01-09 23:15:25'),
(16, 10, NULL, NULL, NULL, 'Bangladesh', '2022-02-15', 'Engineer', 'Honours/Degree', 'DIU', 'CSE', 'Student', 'TFP', '25000', '2022-02-03 04:02:04', '2022-02-19 02:49:17'),
(17, 39, NULL, NULL, NULL, 'Bangladesh', '2022-03-17', 'undefined', 'SSC', 'DIU', 'CSE', 'Student', 'TFP', '2000-8000', '2022-03-16 01:44:16', '2022-03-16 01:44:18'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'undefined', 'undefined', 'Dhaka University', 'undefined', 'undefined', 'undefined', 'undefined', '2022-05-11 04:18:13', '2022-05-11 04:18:13'),
(19, 52, NULL, NULL, NULL, 'Bangladesh', '2022-05-12', 'null', 'JSC', 'DIU', 'CSE', 'IT Officer', 'Pran RFL', '20000-80000', '2022-05-11 04:18:33', '2022-05-11 04:19:35'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 'Student', 'JSC', 'Dhaka University', 'BBA', 'HR Admin', 'Akij Group', '20000-80000', '2022-05-11 22:42:25', '2022-05-11 22:42:25');

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
  `audition_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `assign_admins`
--
ALTER TABLE `assign_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auditions`
--
ALTER TABLE `auditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audition_assign_judges`
--
ALTER TABLE `audition_assign_judges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audition_assign_juries`
--
ALTER TABLE `audition_assign_juries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_comments`
--
ALTER TABLE `audition_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_events`
--
ALTER TABLE `audition_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_event_registrations`
--
ALTER TABLE `audition_event_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audition_interects`
--
ALTER TABLE `audition_interects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_judge_instructions`
--
ALTER TABLE `audition_judge_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_judge_marks`
--
ALTER TABLE `audition_judge_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_round_rules`
--
ALTER TABLE `audition_round_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `audition_rules`
--
ALTER TABLE `audition_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audition_templates`
--
ALTER TABLE `audition_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_upload_videos`
--
ALTER TABLE `audition_upload_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audition_user_votings`
--
ALTER TABLE `audition_user_votings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audtion_appeals`
--
ALTER TABLE `audtion_appeals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biddings`
--
ALTER TABLE `biddings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `choice_lists`
--
ALTER TABLE `choice_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fan_groups`
--
ALTER TABLE `fan_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fan_group_messages`
--
ALTER TABLE `fan_group_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `fan_posts`
--
ALTER TABLE `fan_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `fan__group__joins`
--
ALTER TABLE `fan__group__joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `filter_videos`
--
ALTER TABLE `filter_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `greetings`
--
ALTER TABLE `greetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `greetings_registrations`
--
ALTER TABLE `greetings_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `greeting_types`
--
ALTER TABLE `greeting_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interest_topics`
--
ALTER TABLE `interest_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest_types`
--
ALTER TABLE `interest_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `judge_marks`
--
ALTER TABLE `judge_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jury_boards`
--
ALTER TABLE `jury_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_sessions`
--
ALTER TABLE `learning_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `learning_session_registrations`
--
ALTER TABLE `learning_session_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `live_chats`
--
ALTER TABLE `live_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `marketplaces`
--
ALTER TABLE `marketplaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meetup_events`
--
ALTER TABLE `meetup_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `meetup_event_registrations`
--
ALTER TABLE `meetup_event_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `simple_posts`
--
ALTER TABLE `simple_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
