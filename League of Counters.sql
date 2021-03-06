-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 06:00 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.6.31-4+ubuntu14.04.1+deb.sury.org+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c9`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE IF NOT EXISTS `counters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `counter` tinyint(1) NOT NULL,
  `heroes_id` int(10) unsigned NOT NULL,
  `positions_id` int(10) unsigned NOT NULL,
  `countersheroes_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `counters_heroes_id_foreign` (`heroes_id`),
  KEY `counters_positions_id_foreign` (`positions_id`),
  KEY `counters_countersheroes_id_foreign` (`countersheroes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `counter`, `heroes_id`, `positions_id`, `countersheroes_id`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 4, 6, NULL, NULL),
(11, 0, 4, 3, 5, '2017-08-20 21:33:15', '2017-08-20 21:33:15'),
(12, 1, 11, 6, 99, '2017-08-20 21:34:33', '2017-08-20 21:34:33'),
(13, 0, 11, 6, 7, '2017-08-20 21:35:52', '2017-08-20 21:35:52'),
(14, 0, 5, 3, 5, '2017-08-20 21:47:10', '2017-08-20 21:47:10'),
(15, 0, 1, 1, 2, '2017-08-20 22:15:18', '2017-08-20 22:15:18'),
(16, 0, 1, 1, 3, '2017-08-20 22:15:27', '2017-08-20 22:15:27'),
(17, 0, 1, 1, 4, '2017-08-20 22:15:35', '2017-08-20 22:15:35'),
(18, 0, 2, 3, 102, '2017-08-21 11:47:24', '2017-08-21 11:47:24'),
(19, 1, 2, 3, 3, '2017-08-21 11:52:12', '2017-08-21 11:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `countersheroes`
--

CREATE TABLE IF NOT EXISTS `countersheroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=135 ;

--
-- Dumping data for table `countersheroes`
--

INSERT INTO `countersheroes` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Aatrox', 'Aatrox', '2017-08-13 23:30:48', '2017-08-13 23:30:48'),
(2, 'Ahri', 'Ahri', '2017-08-13 23:38:04', '2017-08-13 23:38:04'),
(3, 'Akali', 'Akali', '2017-08-13 23:40:33', '2017-08-13 23:40:33'),
(4, 'Alistar', 'Alistar', '2017-08-13 23:41:23', '2017-08-13 23:41:23'),
(5, 'Amumu', 'Amumu', '2017-08-13 23:41:38', '2017-08-13 23:41:38'),
(6, 'Anivia', 'Anivia', '2017-08-13 23:41:51', '2017-08-13 23:41:51'),
(7, 'Annie', 'Annie', '2017-08-13 23:43:16', '2017-08-13 23:43:16'),
(8, 'Ashe', 'Ashe', '2017-08-13 23:43:53', '2017-08-13 23:43:53'),
(9, 'Aurelion Sol', 'AurelionSol', '2017-08-13 23:44:46', '2017-08-13 23:44:46'),
(10, 'Azir', 'Azir', '2017-08-13 23:44:54', '2017-08-13 23:44:54'),
(11, 'Bard', 'Bard', '2017-08-13 23:45:41', '2017-08-13 23:45:41'),
(12, 'Blitzcrank', 'Blitzcrank', '2017-08-13 23:46:14', '2017-08-13 23:46:14'),
(13, 'Brand', 'Brand', '2017-08-13 23:47:10', '2017-08-13 23:47:10'),
(14, 'Braum', 'Braum', '2017-08-13 23:49:03', '2017-08-13 23:49:03'),
(15, 'Caitlyn', 'Caitlyn', '2017-08-13 23:51:40', '2017-08-13 23:51:40'),
(16, 'Camille', 'Camille', '2017-08-13 23:52:32', '2017-08-13 23:52:32'),
(17, 'Cassiopeia', 'Cassiopeia', '2017-08-13 23:52:51', '2017-08-13 23:52:51'),
(18, 'Cho''Gath', 'Chogath', '2017-08-13 23:54:01', '2017-08-13 23:54:01'),
(19, 'Corki', 'Corki', '2017-08-13 23:54:14', '2017-08-13 23:54:14'),
(20, 'Darius', 'Darius', '2017-08-13 23:54:21', '2017-08-13 23:54:21'),
(21, 'Diana', 'Diana', '2017-08-13 23:54:27', '2017-08-13 23:54:27'),
(22, 'Draven', 'Draven', '2017-08-13 23:54:30', '2017-08-13 23:54:30'),
(23, 'Dr. Mundo', 'DrMundo', '2017-08-13 23:54:37', '2017-08-13 23:54:37'),
(24, 'Ekko', 'Ekko', '2017-08-13 23:54:41', '2017-08-13 23:54:41'),
(25, 'Elise', 'Elise', '2017-08-13 23:54:46', '2017-08-13 23:54:46'),
(26, 'Evelynn', 'Evelynn', '2017-08-13 23:54:51', '2017-08-13 23:54:51'),
(27, 'Ezreal', 'Ezreal', '2017-08-13 23:54:54', '2017-08-13 23:54:54'),
(28, 'Fiddlesticks', 'FiddleSticks', '2017-08-13 23:58:40', '2017-08-13 23:58:40'),
(29, 'Fiora', 'Fiora', '2017-08-13 23:59:11', '2017-08-13 23:59:11'),
(30, 'Fizz', 'Fizz', '2017-08-13 23:59:14', '2017-08-13 23:59:14'),
(31, 'Galio', 'Galio', '2017-08-13 23:59:20', '2017-08-13 23:59:20'),
(32, 'Gangplank', 'Gangplank', '2017-08-13 23:59:29', '2017-08-13 23:59:29'),
(33, 'Garen', 'Garen', '2017-08-13 23:59:33', '2017-08-13 23:59:33'),
(34, 'Gnar', 'Gnar', '2017-08-13 23:59:36', '2017-08-13 23:59:36'),
(35, 'Gragas', 'Gragas', '2017-08-13 23:59:40', '2017-08-13 23:59:40'),
(36, 'Graves', 'Graves', '2017-08-13 23:59:45', '2017-08-13 23:59:45'),
(37, 'Hecarim', 'Hecarim', '2017-08-13 23:59:49', '2017-08-13 23:59:49'),
(38, 'Heimerdinger', 'Heimerdinger', '2017-08-13 23:59:57', '2017-08-13 23:59:57'),
(39, 'Illaoi', 'Illaoi', '2017-08-14 00:00:06', '2017-08-14 00:00:06'),
(40, 'Irelia', 'Irelia', '2017-08-14 00:00:13', '2017-08-14 00:00:13'),
(41, 'Ivern', 'Ivern', '2017-08-14 00:00:21', '2017-08-14 00:00:21'),
(42, 'Janna', 'Janna', '2017-08-14 00:00:25', '2017-08-14 00:00:25'),
(43, 'Jarvan IV', 'JarvanIV', '2017-08-14 00:00:47', '2017-08-14 00:00:47'),
(44, 'Jax', 'Jax', '2017-08-14 00:00:50', '2017-08-14 00:00:50'),
(45, 'Jayce', 'Jayce', '2017-08-14 00:00:55', '2017-08-14 00:00:55'),
(46, 'Jhin', 'Jhin', '2017-08-14 00:00:59', '2017-08-14 00:00:59'),
(47, 'Jinx', 'Jinx', '2017-08-14 00:01:02', '2017-08-14 00:01:02'),
(48, 'Kalista', 'Kalista', '2017-08-14 00:01:06', '2017-08-14 00:01:06'),
(49, 'Karma', 'Karma', '2017-08-14 00:01:17', '2017-08-14 00:01:17'),
(50, 'Karthus', 'Karthus', '2017-08-14 00:01:24', '2017-08-14 00:01:24'),
(51, 'Kassadin', 'Kassadin', '2017-08-14 00:01:31', '2017-08-14 00:01:31'),
(52, 'Katarina', 'Katarina', '2017-08-14 00:01:36', '2017-08-14 00:01:36'),
(53, 'Kayle', 'Kayle', '2017-08-14 00:01:43', '2017-08-14 00:01:43'),
(54, 'Kennen', 'Kennen', '2017-08-14 00:01:52', '2017-08-14 00:01:52'),
(55, 'Khazix', 'Khazix', '2017-08-14 00:02:00', '2017-08-14 00:02:00'),
(56, 'Kindred', 'Kindred', '2017-08-14 00:02:07', '2017-08-14 00:02:07'),
(57, 'Kled', 'Kled', '2017-08-14 00:02:21', '2017-08-14 00:02:21'),
(58, 'Kog''Maw', 'KogMaw', '2017-08-14 00:02:31', '2017-08-14 00:02:31'),
(59, 'LeBlanc', 'Leblanc', '2017-08-14 00:02:58', '2017-08-14 00:02:58'),
(60, 'Lee Sin', 'LeeSin', '2017-08-14 00:03:05', '2017-08-14 00:03:05'),
(61, 'Leona', 'Leona', '2017-08-14 00:03:08', '2017-08-14 00:03:08'),
(62, 'Lissandra', 'Lissandra', '2017-08-14 00:03:15', '2017-08-14 00:03:15'),
(63, 'Lucian', 'Lucian', '2017-08-14 00:03:18', '2017-08-14 00:03:18'),
(64, 'Lulu', 'Lulu', '2017-08-14 00:03:23', '2017-08-14 00:03:23'),
(65, 'Lux', 'Lux', '2017-08-14 00:03:27', '2017-08-14 00:03:27'),
(66, 'Malphite', 'Malphite', '2017-08-14 00:03:35', '2017-08-14 00:03:35'),
(67, 'Malzahar', 'Malzahar', '2017-08-14 00:03:43', '2017-08-14 00:03:43'),
(68, 'Maokai', 'Maokai', '2017-08-14 00:03:46', '2017-08-14 00:03:46'),
(69, 'Master Yi', 'MasterYi', '2017-08-14 00:04:00', '2017-08-14 00:04:00'),
(70, 'Miss Fortune', 'MissFortune', '2017-08-14 00:04:39', '2017-08-14 00:04:39'),
(71, 'Mordekaiser', 'Mordekaiser', '2017-08-14 00:06:31', '2017-08-14 00:06:31'),
(72, 'Morgana', 'Morgana', '2017-08-14 00:06:37', '2017-08-14 00:06:37'),
(73, 'Nami', 'Nami', '2017-08-14 00:06:40', '2017-08-14 00:06:40'),
(74, 'Nasus', 'Nasus', '2017-08-14 00:06:43', '2017-08-14 00:06:43'),
(75, 'Nautilus', 'Nautilus', '2017-08-14 00:06:50', '2017-08-14 00:06:50'),
(76, 'Nidalee', 'Nidalee', '2017-08-14 00:06:58', '2017-08-14 00:06:58'),
(77, 'Nocturne', 'Nocturne', '2017-08-14 00:07:06', '2017-08-14 00:07:06'),
(78, 'Nunu', 'Nunu', '2017-08-14 00:09:07', '2017-08-14 00:09:07'),
(79, 'Olaf', 'Olaf', '2017-08-14 00:09:11', '2017-08-14 00:09:11'),
(80, 'Orianna', 'Orianna', '2017-08-14 00:09:16', '2017-08-14 00:09:16'),
(81, 'Pantheon', 'Pantheon', '2017-08-14 00:09:21', '2017-08-14 00:09:21'),
(82, 'Poppy', 'Poppy', '2017-08-14 00:09:26', '2017-08-14 00:09:26'),
(83, 'Quinn', 'Quinn', '2017-08-14 00:09:30', '2017-08-14 00:09:30'),
(84, 'Rammus', 'Rammus', '2017-08-14 00:09:35', '2017-08-14 00:09:35'),
(85, 'Rek''Sai', 'RekSai', '2017-08-14 00:09:43', '2017-08-14 00:09:43'),
(86, 'Renekton', 'Renekton', '2017-08-14 00:09:56', '2017-08-14 00:09:56'),
(87, 'Rengar', 'Rengar', '2017-08-14 00:10:00', '2017-08-14 00:10:00'),
(88, 'Riven', 'Riven', '2017-08-14 00:10:04', '2017-08-14 00:10:04'),
(89, 'Rumble', 'Rumble', '2017-08-14 00:10:10', '2017-08-14 00:10:10'),
(90, 'Ryze', 'Ryze', '2017-08-14 00:10:15', '2017-08-14 00:10:15'),
(91, 'Sejuani', 'Sejuani', '2017-08-14 00:10:19', '2017-08-14 00:10:19'),
(92, 'Shaco', 'Shaco', '2017-08-14 00:10:23', '2017-08-14 00:10:23'),
(93, 'Shen', 'Shen', '2017-08-14 00:10:33', '2017-08-14 00:10:33'),
(94, 'Shyvana', 'Shyvana', '2017-08-14 00:10:43', '2017-08-14 00:10:43'),
(95, 'Singed', 'Singed', '2017-08-14 00:10:47', '2017-08-14 00:10:47'),
(96, 'Sion', 'Sion', '2017-08-14 00:10:52', '2017-08-14 00:10:52'),
(97, 'Sivir', 'Sivir', '2017-08-14 00:10:55', '2017-08-14 00:10:55'),
(98, 'Skarner', 'Skarner', '2017-08-14 00:11:00', '2017-08-14 00:11:00'),
(99, 'Sona', 'Sona', '2017-08-14 00:11:04', '2017-08-14 00:11:04'),
(100, 'Soraka', 'Soraka', '2017-08-14 00:11:09', '2017-08-14 00:11:09'),
(101, 'Swain', 'Swain', '2017-08-14 00:11:14', '2017-08-14 00:11:14'),
(102, 'Syndra', 'Syndra', '2017-08-14 00:11:22', '2017-08-14 00:11:22'),
(103, 'Tahm Kench', 'Tahm Kench', '2017-08-14 00:11:44', '2017-08-14 00:11:44'),
(104, 'Taliyah', 'Taliyah', '2017-08-14 00:11:58', '2017-08-14 00:11:58'),
(105, 'Talon', 'Talon', '2017-08-14 00:12:04', '2017-08-14 00:12:04'),
(106, 'Taric', 'Taric', '2017-08-14 00:12:08', '2017-08-14 00:12:08'),
(107, 'Teemo', 'Teemo', '2017-08-14 00:12:14', '2017-08-14 00:12:14'),
(108, 'Thresh', 'Thresh', '2017-08-14 00:12:22', '2017-08-14 00:12:22'),
(109, 'Tristana', 'Tristana', '2017-08-14 00:12:30', '2017-08-14 00:12:30'),
(110, 'Trundle', 'Trundle', '2017-08-14 00:12:35', '2017-08-14 00:12:35'),
(111, 'Tryndamere', 'Tryndamere', '2017-08-14 00:12:43', '2017-08-14 00:12:43'),
(112, 'Twisted Fate', 'Twisted Fate', '2017-08-14 00:13:13', '2017-08-14 00:13:13'),
(113, 'Twitch', 'Twitch', '2017-08-14 00:13:27', '2017-08-14 00:13:27'),
(114, 'Udyr', 'Udyr', '2017-08-14 00:13:31', '2017-08-14 00:13:31'),
(115, 'Urgot', 'Urgot', '2017-08-14 00:13:35', '2017-08-14 00:13:35'),
(116, 'Varus', 'Varus', '2017-08-14 00:13:40', '2017-08-14 00:13:40'),
(117, 'Vayne', 'Vayne', '2017-08-14 00:13:45', '2017-08-14 00:13:45'),
(118, 'Veigar', 'Veigar', '2017-08-14 00:13:54', '2017-08-14 00:13:54'),
(119, 'Vel''Koz', 'Velkoz', '2017-08-14 00:14:25', '2017-08-14 00:14:25'),
(120, 'Vi', 'Vi', '2017-08-14 00:14:29', '2017-08-14 00:14:29'),
(121, 'Viktor', 'Viktor', '2017-08-14 00:14:36', '2017-08-14 00:14:36'),
(122, 'Vladimir', 'Vladimir', '2017-08-14 00:14:48', '2017-08-14 00:14:48'),
(123, 'Volibear', 'Volibear', '2017-08-14 00:14:59', '2017-08-14 00:14:59'),
(124, 'Warwick', 'Warwick', '2017-08-14 00:15:09', '2017-08-14 00:15:09'),
(125, 'Wukong', 'Wukong', '2017-08-14 00:15:16', '2017-08-14 00:15:16'),
(126, 'Xerath', 'Xerath', '2017-08-14 00:15:38', '2017-08-14 00:15:38'),
(127, 'Xin Zhao', 'XinZhao', '2017-08-14 00:15:50', '2017-08-14 00:15:50'),
(128, 'Yasuo', 'Yasuo', '2017-08-14 00:15:56', '2017-08-14 00:15:56'),
(129, 'Yorick', 'Yorick', '2017-08-14 00:16:04', '2017-08-14 00:16:04'),
(130, 'Zac', 'Zac', '2017-08-14 00:16:07', '2017-08-14 00:16:07'),
(131, 'Zed', 'Zed', '2017-08-14 00:16:13', '2017-08-14 00:16:13'),
(132, 'Ziggs', 'Ziggs', '2017-08-14 00:16:18', '2017-08-14 00:16:18'),
(133, 'Zilean', 'Zilean', '2017-08-14 00:16:24', '2017-08-14 00:16:24'),
(134, 'Zyra', 'Zyra', '2017-08-14 00:16:28', '2017-08-14 00:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE IF NOT EXISTS `heroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=135 ;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Aatrox', 'Aatrox', '2017-08-13 23:30:48', '2017-08-13 23:30:48'),
(2, 'Ahri', 'Ahri', '2017-08-13 23:38:04', '2017-08-13 23:38:04'),
(3, 'Akali', 'Akali', '2017-08-13 23:40:33', '2017-08-13 23:40:33'),
(4, 'Alistar', 'Alistar', '2017-08-13 23:41:23', '2017-08-13 23:41:23'),
(5, 'Amumu', 'Amumu', '2017-08-13 23:41:38', '2017-08-13 23:41:38'),
(6, 'Anivia', 'Anivia', '2017-08-13 23:41:51', '2017-08-13 23:41:51'),
(7, 'Annie', 'Annie', '2017-08-13 23:43:16', '2017-08-13 23:43:16'),
(8, 'Ashe', 'Ashe', '2017-08-13 23:43:53', '2017-08-13 23:43:53'),
(9, 'Aurelion Sol', 'AurelionSol', '2017-08-13 23:44:46', '2017-08-13 23:44:46'),
(10, 'Azir', 'Azir', '2017-08-13 23:44:54', '2017-08-13 23:44:54'),
(11, 'Bard', 'Bard', '2017-08-13 23:45:41', '2017-08-13 23:45:41'),
(12, 'Blitzcrank', 'Blitzcrank', '2017-08-13 23:46:14', '2017-08-13 23:46:14'),
(13, 'Brand', 'Brand', '2017-08-13 23:47:10', '2017-08-13 23:47:10'),
(14, 'Braum', 'Braum', '2017-08-13 23:49:03', '2017-08-13 23:49:03'),
(15, 'Caitlyn', 'Caitlyn', '2017-08-13 23:51:40', '2017-08-13 23:51:40'),
(16, 'Camille', 'Camille', '2017-08-13 23:52:32', '2017-08-13 23:52:32'),
(17, 'Cassiopeia', 'Cassiopeia', '2017-08-13 23:52:51', '2017-08-13 23:52:51'),
(18, 'Cho''Gath', 'Chogath', '2017-08-13 23:54:01', '2017-08-13 23:54:01'),
(19, 'Corki', 'Corki', '2017-08-13 23:54:14', '2017-08-13 23:54:14'),
(20, 'Darius', 'Darius', '2017-08-13 23:54:21', '2017-08-13 23:54:21'),
(21, 'Diana', 'Diana', '2017-08-13 23:54:27', '2017-08-13 23:54:27'),
(22, 'Draven', 'Draven', '2017-08-13 23:54:30', '2017-08-13 23:54:30'),
(23, 'Dr. Mundo', 'DrMundo', '2017-08-13 23:54:37', '2017-08-13 23:54:37'),
(24, 'Ekko', 'Ekko', '2017-08-13 23:54:41', '2017-08-13 23:54:41'),
(25, 'Elise', 'Elise', '2017-08-13 23:54:46', '2017-08-13 23:54:46'),
(26, 'Evelynn', 'Evelynn', '2017-08-13 23:54:51', '2017-08-13 23:54:51'),
(27, 'Ezreal', 'Ezreal', '2017-08-13 23:54:54', '2017-08-13 23:54:54'),
(28, 'Fiddlesticks', 'FiddleSticks', '2017-08-13 23:58:40', '2017-08-13 23:58:40'),
(29, 'Fiora', 'Fiora', '2017-08-13 23:59:11', '2017-08-13 23:59:11'),
(30, 'Fizz', 'Fizz', '2017-08-13 23:59:14', '2017-08-13 23:59:14'),
(31, 'Galio', 'Galio', '2017-08-13 23:59:20', '2017-08-13 23:59:20'),
(32, 'Gangplank', 'Gangplank', '2017-08-13 23:59:29', '2017-08-13 23:59:29'),
(33, 'Garen', 'Garen', '2017-08-13 23:59:33', '2017-08-13 23:59:33'),
(34, 'Gnar', 'Gnar', '2017-08-13 23:59:36', '2017-08-13 23:59:36'),
(35, 'Gragas', 'Gragas', '2017-08-13 23:59:40', '2017-08-13 23:59:40'),
(36, 'Graves', 'Graves', '2017-08-13 23:59:45', '2017-08-13 23:59:45'),
(37, 'Hecarim', 'Hecarim', '2017-08-13 23:59:49', '2017-08-13 23:59:49'),
(38, 'Heimerdinger', 'Heimerdinger', '2017-08-13 23:59:57', '2017-08-13 23:59:57'),
(39, 'Illaoi', 'Illaoi', '2017-08-14 00:00:06', '2017-08-14 00:00:06'),
(40, 'Irelia', 'Irelia', '2017-08-14 00:00:13', '2017-08-14 00:00:13'),
(41, 'Ivern', 'Ivern', '2017-08-14 00:00:21', '2017-08-14 00:00:21'),
(42, 'Janna', 'Janna', '2017-08-14 00:00:25', '2017-08-14 00:00:25'),
(43, 'Jarvan IV', 'JarvanIV', '2017-08-14 00:00:47', '2017-08-14 00:00:47'),
(44, 'Jax', 'Jax', '2017-08-14 00:00:50', '2017-08-14 00:00:50'),
(45, 'Jayce', 'Jayce', '2017-08-14 00:00:55', '2017-08-14 00:00:55'),
(46, 'Jhin', 'Jhin', '2017-08-14 00:00:59', '2017-08-14 00:00:59'),
(47, 'Jinx', 'Jinx', '2017-08-14 00:01:02', '2017-08-14 00:01:02'),
(48, 'Kalista', 'Kalista', '2017-08-14 00:01:06', '2017-08-14 00:01:06'),
(49, 'Karma', 'Karma', '2017-08-14 00:01:17', '2017-08-14 00:01:17'),
(50, 'Karthus', 'Karthus', '2017-08-14 00:01:24', '2017-08-14 00:01:24'),
(51, 'Kassadin', 'Kassadin', '2017-08-14 00:01:31', '2017-08-14 00:01:31'),
(52, 'Katarina', 'Katarina', '2017-08-14 00:01:36', '2017-08-14 00:01:36'),
(53, 'Kayle', 'Kayle', '2017-08-14 00:01:43', '2017-08-14 00:01:43'),
(54, 'Kennen', 'Kennen', '2017-08-14 00:01:52', '2017-08-14 00:01:52'),
(55, 'Khazix', 'Khazix', '2017-08-14 00:02:00', '2017-08-14 00:02:00'),
(56, 'Kindred', 'Kindred', '2017-08-14 00:02:07', '2017-08-14 00:02:07'),
(57, 'Kled', 'Kled', '2017-08-14 00:02:21', '2017-08-14 00:02:21'),
(58, 'Kog''Maw', 'KogMaw', '2017-08-14 00:02:31', '2017-08-14 00:02:31'),
(59, 'LeBlanc', 'Leblanc', '2017-08-14 00:02:58', '2017-08-14 00:02:58'),
(60, 'Lee Sin', 'LeeSin', '2017-08-14 00:03:05', '2017-08-14 00:03:05'),
(61, 'Leona', 'Leona', '2017-08-14 00:03:08', '2017-08-14 00:03:08'),
(62, 'Lissandra', 'Lissandra', '2017-08-14 00:03:15', '2017-08-14 00:03:15'),
(63, 'Lucian', 'Lucian', '2017-08-14 00:03:18', '2017-08-14 00:03:18'),
(64, 'Lulu', 'Lulu', '2017-08-14 00:03:23', '2017-08-14 00:03:23'),
(65, 'Lux', 'Lux', '2017-08-14 00:03:27', '2017-08-14 00:03:27'),
(66, 'Malphite', 'Malphite', '2017-08-14 00:03:35', '2017-08-14 00:03:35'),
(67, 'Malzahar', 'Malzahar', '2017-08-14 00:03:43', '2017-08-14 00:03:43'),
(68, 'Maokai', 'Maokai', '2017-08-14 00:03:46', '2017-08-14 00:03:46'),
(69, 'Master Yi', 'MasterYi', '2017-08-14 00:04:00', '2017-08-14 00:04:00'),
(70, 'Miss Fortune', 'MissFortune', '2017-08-14 00:04:39', '2017-08-14 00:04:39'),
(71, 'Mordekaiser', 'Mordekaiser', '2017-08-14 00:06:31', '2017-08-14 00:06:31'),
(72, 'Morgana', 'Morgana', '2017-08-14 00:06:37', '2017-08-14 00:06:37'),
(73, 'Nami', 'Nami', '2017-08-14 00:06:40', '2017-08-14 00:06:40'),
(74, 'Nasus', 'Nasus', '2017-08-14 00:06:43', '2017-08-14 00:06:43'),
(75, 'Nautilus', 'Nautilus', '2017-08-14 00:06:50', '2017-08-14 00:06:50'),
(76, 'Nidalee', 'Nidalee', '2017-08-14 00:06:58', '2017-08-14 00:06:58'),
(77, 'Nocturne', 'Nocturne', '2017-08-14 00:07:06', '2017-08-14 00:07:06'),
(78, 'Nunu', 'Nunu', '2017-08-14 00:09:07', '2017-08-14 00:09:07'),
(79, 'Olaf', 'Olaf', '2017-08-14 00:09:11', '2017-08-14 00:09:11'),
(80, 'Orianna', 'Orianna', '2017-08-14 00:09:16', '2017-08-14 00:09:16'),
(81, 'Pantheon', 'Pantheon', '2017-08-14 00:09:21', '2017-08-14 00:09:21'),
(82, 'Poppy', 'Poppy', '2017-08-14 00:09:26', '2017-08-14 00:09:26'),
(83, 'Quinn', 'Quinn', '2017-08-14 00:09:30', '2017-08-14 00:09:30'),
(84, 'Rammus', 'Rammus', '2017-08-14 00:09:35', '2017-08-14 00:09:35'),
(85, 'Rek''Sai', 'RekSai', '2017-08-14 00:09:43', '2017-08-14 00:09:43'),
(86, 'Renekton', 'Renekton', '2017-08-14 00:09:56', '2017-08-14 00:09:56'),
(87, 'Rengar', 'Rengar', '2017-08-14 00:10:00', '2017-08-14 00:10:00'),
(88, 'Riven', 'Riven', '2017-08-14 00:10:04', '2017-08-14 00:10:04'),
(89, 'Rumble', 'Rumble', '2017-08-14 00:10:10', '2017-08-14 00:10:10'),
(90, 'Ryze', 'Ryze', '2017-08-14 00:10:15', '2017-08-14 00:10:15'),
(91, 'Sejuani', 'Sejuani', '2017-08-14 00:10:19', '2017-08-14 00:10:19'),
(92, 'Shaco', 'Shaco', '2017-08-14 00:10:23', '2017-08-14 00:10:23'),
(93, 'Shen', 'Shen', '2017-08-14 00:10:33', '2017-08-14 00:10:33'),
(94, 'Shyvana', 'Shyvana', '2017-08-14 00:10:43', '2017-08-14 00:10:43'),
(95, 'Singed', 'Singed', '2017-08-14 00:10:47', '2017-08-14 00:10:47'),
(96, 'Sion', 'Sion', '2017-08-14 00:10:52', '2017-08-14 00:10:52'),
(97, 'Sivir', 'Sivir', '2017-08-14 00:10:55', '2017-08-14 00:10:55'),
(98, 'Skarner', 'Skarner', '2017-08-14 00:11:00', '2017-08-14 00:11:00'),
(99, 'Sona', 'Sona', '2017-08-14 00:11:04', '2017-08-14 00:11:04'),
(100, 'Soraka', 'Soraka', '2017-08-14 00:11:09', '2017-08-14 00:11:09'),
(101, 'Swain', 'Swain', '2017-08-14 00:11:14', '2017-08-14 00:11:14'),
(102, 'Syndra', 'Syndra', '2017-08-14 00:11:22', '2017-08-14 00:11:22'),
(103, 'Tahm Kench', 'Tahm Kench', '2017-08-14 00:11:44', '2017-08-14 00:11:44'),
(104, 'Taliyah', 'Taliyah', '2017-08-14 00:11:58', '2017-08-14 00:11:58'),
(105, 'Talon', 'Talon', '2017-08-14 00:12:04', '2017-08-14 00:12:04'),
(106, 'Taric', 'Taric', '2017-08-14 00:12:08', '2017-08-14 00:12:08'),
(107, 'Teemo', 'Teemo', '2017-08-14 00:12:14', '2017-08-14 00:12:14'),
(108, 'Thresh', 'Thresh', '2017-08-14 00:12:22', '2017-08-14 00:12:22'),
(109, 'Tristana', 'Tristana', '2017-08-14 00:12:30', '2017-08-14 00:12:30'),
(110, 'Trundle', 'Trundle', '2017-08-14 00:12:35', '2017-08-14 00:12:35'),
(111, 'Tryndamere', 'Tryndamere', '2017-08-14 00:12:43', '2017-08-14 00:12:43'),
(112, 'Twisted Fate', 'Twisted Fate', '2017-08-14 00:13:13', '2017-08-14 00:13:13'),
(113, 'Twitch', 'Twitch', '2017-08-14 00:13:27', '2017-08-14 00:13:27'),
(114, 'Udyr', 'Udyr', '2017-08-14 00:13:31', '2017-08-14 00:13:31'),
(115, 'Urgot', 'Urgot', '2017-08-14 00:13:35', '2017-08-14 00:13:35'),
(116, 'Varus', 'Varus', '2017-08-14 00:13:40', '2017-08-14 00:13:40'),
(117, 'Vayne', 'Vayne', '2017-08-14 00:13:45', '2017-08-14 00:13:45'),
(118, 'Veigar', 'Veigar', '2017-08-14 00:13:54', '2017-08-14 00:13:54'),
(119, 'Vel''Koz', 'Velkoz', '2017-08-14 00:14:25', '2017-08-14 00:14:25'),
(120, 'Vi', 'Vi', '2017-08-14 00:14:29', '2017-08-14 00:14:29'),
(121, 'Viktor', 'Viktor', '2017-08-14 00:14:36', '2017-08-14 00:14:36'),
(122, 'Vladimir', 'Vladimir', '2017-08-14 00:14:48', '2017-08-14 00:14:48'),
(123, 'Volibear', 'Volibear', '2017-08-14 00:14:59', '2017-08-14 00:14:59'),
(124, 'Warwick', 'Warwick', '2017-08-14 00:15:09', '2017-08-14 00:15:09'),
(125, 'Wukong', 'Wukong', '2017-08-14 00:15:16', '2017-08-14 00:15:16'),
(126, 'Xerath', 'Xerath', '2017-08-14 00:15:38', '2017-08-14 00:15:38'),
(127, 'Xin Zhao', 'XinZhao', '2017-08-14 00:15:50', '2017-08-14 00:15:50'),
(128, 'Yasuo', 'Yasuo', '2017-08-14 00:15:56', '2017-08-14 00:15:56'),
(129, 'Yorick', 'Yorick', '2017-08-14 00:16:04', '2017-08-14 00:16:04'),
(130, 'Zac', 'Zac', '2017-08-14 00:16:07', '2017-08-14 00:16:07'),
(131, 'Zed', 'Zed', '2017-08-14 00:16:13', '2017-08-14 00:16:13'),
(132, 'Ziggs', 'Ziggs', '2017-08-14 00:16:18', '2017-08-14 00:16:18'),
(133, 'Zilean', 'Zilean', '2017-08-14 00:16:24', '2017-08-14 00:16:24'),
(134, 'Zyra', 'Zyra', '2017-08-14 00:16:28', '2017-08-14 00:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_08_223523_create_heroes_table', 1),
('2017_08_08_223726_create_positions_table', 1),
('2017_08_08_224737_create_countersheroes_table', 1),
('2017_08_08_224747_create_counters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Top', NULL, NULL),
(2, 'Jungle', NULL, NULL),
(3, 'Mid', NULL, NULL),
(4, 'Bottom', NULL, NULL),
(5, 'General', NULL, NULL),
(6, 'Suport', NULL, NULL),
(7, 'Adc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_countersheroes_id_foreign` FOREIGN KEY (`countersheroes_id`) REFERENCES `countersheroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `counters_heroes_id_foreign` FOREIGN KEY (`heroes_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `counters_positions_id_foreign` FOREIGN KEY (`positions_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
