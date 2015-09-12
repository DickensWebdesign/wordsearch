-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 29. Aug 2015 um 17:00
-- Server-Version: 5.6.25
-- PHP-Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `db587729123`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beginner`
--

CREATE TABLE IF NOT EXISTS `beginner` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `beginner`
--

INSERT INTO `beginner` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2015-01-18 22:53:12'),
(2, 600000, 'Guest', 0, '2015-01-18 22:52:37'),
(3, 600000, 'Guest', 0, '2015-01-18 22:52:48'),
(4, 600000, 'Guest', 0, '2015-01-18 22:51:58'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(102, 132308, 'Guest', 0, '2015-01-18 23:25:23'),
(103, 118578, 'Guest', 0, '2015-01-19 08:19:19'),
(104, 182427, 'Guest', 0, '2015-01-19 09:14:55'),
(105, 249845, 'Guest', 0, '2015-01-19 10:46:33'),
(106, 235191, 'Guest', 0, '2015-01-19 14:10:35'),
(107, 209157, 'Guest', 0, '2015-01-19 14:16:03'),
(108, 193975, 'Guest', 0, '2015-01-20 10:26:07'),
(109, 88663, 'Guest', 0, '2015-01-24 14:44:03'),
(110, 138284, 'Guest', 0, '2015-01-31 18:14:29'),
(111, 768338, 'Guest', 0, '2015-02-01 02:08:28'),
(112, 649491, 'Guest', 0, '2015-02-01 02:24:32'),
(113, 248349, 'mema', 22, '2015-02-01 08:28:13'),
(114, 124191, 'mema', 22, '2015-02-01 08:56:20'),
(117, 227957, 'Guest', 0, '2015-02-07 06:04:56'),
(118, 268067, 'winner', 33, '2015-02-07 06:25:47'),
(119, 267606, 'Guest', 0, '2015-02-07 11:14:37'),
(120, 185545, 'Guest', 0, '2015-02-07 18:01:28'),
(123, 230741, 'Guest', 0, '2015-02-08 06:49:44'),
(124, 387514, 'Guest', 0, '2015-02-08 07:49:33'),
(125, 425276, 'Guest', 0, '2015-02-08 15:41:38'),
(126, 493753, 'Guest', 0, '2015-02-08 15:50:17'),
(127, 189688, 'Guest', 0, '2015-02-11 22:29:13'),
(128, 194444, 'Guest', 0, '2015-02-11 22:33:24'),
(129, 432608, 'Hazes', 21, '2015-02-11 23:31:16'),
(130, 190093, 'Guest', 0, '2015-02-12 04:05:19'),
(131, 252836, 'Guest', 0, '2015-02-13 06:55:11'),
(132, 390217, 'Guest', 0, '2015-02-16 11:07:46'),
(137, 114403, 'Guest', 0, '2015-02-21 00:35:12'),
(138, 80163, 'welbinator', 52, '2015-02-21 00:37:17'),
(139, 147063, 'Guest', 0, '2015-02-21 18:51:35'),
(140, 147737, 'Guest', 0, '2015-02-21 18:54:17'),
(141, 167347, 'Guest', 0, '2015-02-22 21:39:47'),
(142, 176860, 'Guest', 0, '2015-02-25 04:18:46'),
(143, 188431, 'Guest', 0, '2015-02-25 07:26:32'),
(144, 281896, 'srinadh', 59, '2015-02-25 11:13:07'),
(145, 121690, 'Fanamy', 60, '2015-02-25 12:25:28'),
(146, 94221, 'Fanamy', 60, '2015-02-25 12:36:24'),
(147, 92763, 'Fanamy', 60, '2015-02-25 12:38:51'),
(148, 79290, 'Fanamy', 60, '2015-02-25 12:46:05'),
(149, 234364, 'Guest', 0, '2015-02-25 13:53:45'),
(150, 212712, 'Guest', 0, '2015-02-25 19:04:18'),
(151, 300175, 'Guest', 0, '2015-02-25 20:50:55'),
(152, 335945, 'Guest', 0, '2015-02-26 14:27:55'),
(153, 131954, 'Guest', 0, '2015-02-26 14:50:04'),
(154, 219979, 'Guest', 0, '2015-02-26 18:47:22'),
(155, 97261, 'GreenHorse', 94, '2015-02-27 07:54:57'),
(156, 103662, 'GreenHorse', 94, '2015-02-27 08:04:25'),
(157, 109474, 'GreenHorse', 94, '2015-02-27 08:08:36'),
(158, 99444, 'GreenHorse', 94, '2015-02-27 08:12:41'),
(159, 99898, 'GreenHorse', 94, '2015-02-27 08:19:33'),
(160, 142202, 'GreenHorse', 94, '2015-02-27 08:38:05'),
(161, 87028, 'GreenHorse', 94, '2015-02-27 08:45:31'),
(162, 99284, 'GreenHorse', 94, '2015-02-27 08:52:21'),
(163, 113138, 'GreenHorse', 94, '2015-02-27 08:54:38'),
(164, 84235, 'GreenHorse', 94, '2015-02-27 08:56:13'),
(165, 88390, 'GreenHorse', 94, '2015-02-27 09:01:12'),
(166, 109474, 'GreenHorse', 94, '2015-02-27 09:08:32'),
(167, 99975, 'GreenHorse', 94, '2015-02-27 09:10:53'),
(168, 97078, 'GreenHorse', 94, '2015-02-27 09:20:24'),
(169, 87825, 'GreenHorse', 94, '2015-02-27 09:22:16'),
(170, 66309, 'GreenHorse', 94, '2015-02-27 09:27:42'),
(171, 71945, 'GreenHorse', 94, '2015-02-27 09:40:04'),
(172, 99566, 'GreenHorse', 94, '2015-02-28 10:33:41'),
(173, 108365, 'GreenHorse', 94, '2015-02-28 11:23:13'),
(174, 121188, 'GreenHorse', 94, '2015-02-28 11:29:13'),
(175, 116923, 'Player43', 104, '2015-02-28 12:36:34'),
(176, 303174, 'Guest', 0, '2015-03-03 13:26:49'),
(177, 284456, 'Guest', 0, '2015-03-03 20:19:43'),
(178, 107431, 'Guest', 0, '2015-03-04 16:50:46'),
(179, 151968, 'GreenHorse', 94, '2015-03-05 02:30:59'),
(180, 207950, 'Guest', 0, '2015-03-05 16:14:34'),
(181, 130675, 'Kido', 112, '2015-03-07 08:38:43'),
(182, 194158, 'GreenHorse', 94, '2015-03-11 04:11:51'),
(183, 216229, 'Guest', 0, '2015-03-11 21:25:43'),
(184, 141613, 'gggrrr', 120, '2015-03-12 12:08:41'),
(185, 94423, 'Guest', 0, '2015-03-13 12:20:52'),
(186, 117973, 'Guest', 0, '2015-03-13 13:40:24'),
(187, 98978, 'Guest', 0, '2015-03-13 13:43:58'),
(188, 513882, 'Guest', 0, '2015-03-15 06:06:49'),
(189, 220390, 'Guest', 0, '2015-03-15 20:26:37'),
(190, 134117, 'Guest', 0, '2015-03-17 02:04:14'),
(191, 395543, 'Guest', 0, '2015-03-17 09:11:39'),
(192, 265316, 'Guest', 0, '2015-03-18 18:57:07'),
(193, 236159, 'Guest', 0, '2015-04-06 10:19:13'),
(194, 163852, 'Guest', 0, '2015-04-07 05:56:03'),
(195, 220822, 'Guest', 0, '2015-04-12 10:15:33'),
(197, 325567, 'Guest', 0, '2015-05-06 17:34:51'),
(198, 110560, 'Guest', 0, '2015-05-30 15:42:29'),
(199, 155257, 'Guest', 0, '2015-05-30 20:07:12'),
(200, 117765, 'Guest', 0, '2015-05-30 20:20:24'),
(201, 101721, 'Guest', 0, '2015-05-30 20:30:13'),
(202, 147823, 'Guest', 0, '2015-05-30 21:08:53'),
(203, 122549, 'Guest', 0, '2015-05-30 21:15:01'),
(204, 120413, 'Guest', 0, '2015-05-31 02:13:52'),
(205, 83082, 'Guest', 0, '2015-05-31 02:21:05'),
(206, 140907, 'Guest', 0, '2015-05-31 02:26:52'),
(207, 214490, 'Guest', 0, '2015-05-31 15:00:11'),
(208, 133716, 'Guest', 0, '2015-05-31 16:10:42'),
(209, 126346, 'Guest', 0, '2015-05-31 16:17:32'),
(212, 215417, 'Guest', 0, '2015-06-07 14:47:23'),
(216, 647888, 'Guest', 0, '2015-06-11 01:10:41'),
(217, 101345, 'bcimmet', 143, '2015-06-13 20:03:24'),
(218, 633777, 'GreenHorse', 140, '2015-06-14 17:11:57'),
(219, 148179, 'GreenHorse', 140, '2015-06-15 00:44:16'),
(220, 123008, 'GreenHorse', 140, '2015-06-15 00:47:36'),
(221, 102300, 'GreenHorse', 140, '2015-06-15 00:50:26'),
(222, 314077, 'Guest', 0, '2015-06-18 22:28:32'),
(223, 118697, 'fatehjagdeo', 144, '2015-06-20 11:28:36'),
(224, 151916, 'Guest', 0, '2015-07-03 21:43:12'),
(225, 92946, 'Guest', 0, '2015-07-08 19:35:26'),
(226, 145880, 'Guest', 0, '2015-08-03 20:20:37'),
(227, 101545, 'Guest', 0, '2015-08-04 09:46:56'),
(228, 91821, 'Guest', 0, '2015-08-04 10:26:37'),
(229, 125844, 'Guest', 0, '2015-08-04 15:29:27'),
(230, 132055, 'Guest', 0, '2015-08-05 23:17:43'),
(231, 116551, 'Guest', 0, '2015-08-06 11:51:39'),
(232, 86509, 'Guest', 0, '2015-08-06 20:49:23'),
(233, 86708, 'Guest', 0, '2015-08-06 20:51:29'),
(234, 85455, 'Guest', 0, '2015-08-07 16:38:06'),
(235, 101002, 'Guest', 0, '2015-08-12 20:35:56'),
(236, 139337, 'Guest', 0, '2015-08-13 19:46:43'),
(237, 230728, 'Guest', 0, '2015-08-14 05:21:10'),
(238, 114914, 'Guest', 0, '2015-08-15 01:25:02'),
(239, 116141, 'Guest', 0, '2015-08-15 15:13:16'),
(240, 94254, 'Guest', 0, '2015-08-15 15:19:17'),
(241, 82636, 'Guest', 0, '2015-08-15 15:29:02'),
(242, 120733, 'Guest', 0, '2015-08-15 15:49:11'),
(243, 214940, 'Guest', 0, '2015-08-15 20:13:20'),
(244, 85488, 'Guest', 0, '2015-08-15 22:33:29'),
(245, 97450, 'Guest', 0, '2015-08-15 22:35:22'),
(246, 89535, 'Guest', 0, '2015-08-15 22:42:28'),
(247, 175215, 'Guest', 0, '2015-08-16 13:33:40');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_multiplayer`
--

CREATE TABLE IF NOT EXISTS `crossword_multiplayer` (
  `id` int(11) NOT NULL,
  `rival_1` int(15) DEFAULT '0',
  `rival_2` int(15) DEFAULT '0',
  `users_active` tinyint(1) DEFAULT '0',
  `mobile_game` tinyint(1) DEFAULT '0',
  `rival_1_word` int(11) DEFAULT '0',
  `rival_2_word` int(11) DEFAULT '0',
  `rival_1_bombs` int(11) DEFAULT '0',
  `rival_2_bombs` int(11) DEFAULT '0',
  `won` int(15) NOT NULL DEFAULT '0',
  `game_id` varchar(64) COLLATE latin1_german2_ci DEFAULT '0',
  `code_game` text COLLATE latin1_german2_ci,
  `num_user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `crossword_multiplayer`
--

INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(527, 1436002954, 1436019630, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">F</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="2, 16"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">H</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="11"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="3"><span class="letter">H</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">L</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8, 11"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">K</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="2, 8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="3"><span class="letter">S</span></td><td class="white" data-id="15"><span class="letter">T</span></td></tr><tr><td class="white" data-id="6"><span class="letter">P</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">R</span></td><td class="white" data-id="6"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="15"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">G</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9"><span class="letter">B</span></td><td class="white" data-id="9"><span class="letter">U</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="2"><span class="letter">G</span></td><td class="white" data-id="3"><span class="letter">C</span></td><td class="white" data-id="15"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="2"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">H</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="14"><span class="letter">G</span></td></tr><tr><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">I</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">P</span></td><td class="white" data-id="0"><span class="letter">M</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">U</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">U</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="4"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="1"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="14"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="12"><span class="letter">C</span></td><td class="white" data-id="10, 12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="7"><span class="letter">V</span></td><td class="white" data-id="14"><span class="letter">T</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="13"><span class="letter">D</span></td><td class="white" data-id="1"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">Y</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="4">AUNT</p><p class="wordlist" id="15">BAIT</p><p class="wordlist" id="9">BURN</p><p class="wordlist" id="7">CARAVAN</p><p class="wordlist" id="1">CHIME</p><p class="wordlist" id="8">CLOAKROOM</p><p class="wordlist" id="0">COMPETITOR</p><p class="wordlist" id="12">CROOK</p><p class="wordlist" id="3">CRUSH</p><p class="wordlist" id="16">FIGHTER</p><p class="wordlist" id="10">GARAGE</p><p class="wordlist" id="2">GEOLOGY</p><p class="wordlist" id="5">GRASSHOPPER</p><p class="wordlist" id="14">GUILTY</p><p class="wordlist" id="13">HEAD</p><p class="wordlist" id="17">NURSE</p><p class="wordlist" id="6">PERCH</p><p class="wordlist" id="11">STAGE</p></div></div></div></div>', 3),
(526, 1436002954, 1436019630, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">F</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="2, 16"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">H</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="11"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="3"><span class="letter">H</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">L</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8, 11"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">K</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="2, 8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="3"><span class="letter">S</span></td><td class="white" data-id="15"><span class="letter">T</span></td></tr><tr><td class="white" data-id="6"><span class="letter">P</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">R</span></td><td class="white" data-id="6"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="15"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">G</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9"><span class="letter">B</span></td><td class="white" data-id="9"><span class="letter">U</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="2"><span class="letter">G</span></td><td class="white" data-id="3"><span class="letter">C</span></td><td class="white" data-id="15"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="2"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">H</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="14"><span class="letter">G</span></td></tr><tr><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">I</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">P</span></td><td class="white" data-id="0"><span class="letter">M</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">U</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">U</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="4"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="1"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="14"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="12"><span class="letter">C</span></td><td class="white" data-id="10, 12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="7"><span class="letter">V</span></td><td class="white" data-id="14"><span class="letter">T</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="13"><span class="letter">D</span></td><td class="white" data-id="1"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">Y</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="4">AUNT</p><p class="wordlist" id="15">BAIT</p><p class="wordlist" id="9">BURN</p><p class="wordlist" id="7">CARAVAN</p><p class="wordlist" id="1">CHIME</p><p class="wordlist" id="8">CLOAKROOM</p><p class="wordlist" id="0">COMPETITOR</p><p class="wordlist" id="12">CROOK</p><p class="wordlist" id="3">CRUSH</p><p class="wordlist" id="16">FIGHTER</p><p class="wordlist" id="10">GARAGE</p><p class="wordlist" id="2">GEOLOGY</p><p class="wordlist" id="5">GRASSHOPPER</p><p class="wordlist" id="14">GUILTY</p><p class="wordlist" id="13">HEAD</p><p class="wordlist" id="17">NURSE</p><p class="wordlist" id="6">PERCH</p><p class="wordlist" id="11">STAGE</p></div></div></div></div>', 3),
(525, 1436002954, 1436014257, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="5"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">G</span></td></tr><tr><td class="white" data-id="6"><span class="letter">F</span></td><td class="white" data-id="6"><span class="letter">R</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">Z</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">N</span></td></tr><tr><td class="white" data-id="16"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="0"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">C</span></td><td class="white" data-id="1, 4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">V</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">V</span></td></tr><tr><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="1, 8"><span class="letter">D</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">S</span></td><td class="white" data-id="8"><span class="letter">Y</span></td><td class="white" data-id="10"><span class="letter">M</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="0, 5"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">O</span></td></tr><tr><td class="white" data-id="16"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td></tr><tr><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">A</span></td><td class="white" data-id="1"><span class="letter">P</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">R</span></td><td class="white" data-id="13"><span class="letter">U</span></td><td class="white" data-id="13"><span class="letter">O</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="16"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="10"><span class="letter">C</span></td><td class="white" data-id="1, 15"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">N</span></td><td class="white" data-id="14"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="16"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="14"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">M</span></td><td class="white" data-id="5"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">S</span></td></tr><tr><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="15"><span class="letter">U</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="3, 14"><span class="letter">A</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr><tr><td class="white" data-id="16"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="11"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="2"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="3"><span class="letter">N</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">T</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">V</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="17"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">V</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="14"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">P</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="2, 12"><span class="letter">L</span></td><td class="white" data-id="12"><span class="letter">Y</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="12"><span class="letter">S</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="7, 12"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="14"><span class="letter">Y</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="1">ADAPTER</p><p class="wordlist" id="14">ANATOMY</p><p class="wordlist" id="2">BELL</p><p class="wordlist" id="4">CARAVAN</p><p class="wordlist" id="10">CRIMINAL</p><p class="wordlist" id="8">DAISY</p><p class="wordlist" id="6">FREEZER</p><p class="wordlist" id="13">HOUR</p><p class="wordlist" id="3">IRAN</p><p class="wordlist" id="16">JELLYFISH</p><p class="wordlist" id="11">PAIN</p><p class="wordlist" id="12">POLYESTER</p><p class="wordlist" id="0">REGRET</p><p class="wordlist" id="15">RESTAURANT</p><p class="wordlist" id="9">SAIL</p><p class="wordlist" id="7">SOCCER</p><p class="wordlist" id="17">STEAM</p><p class="wordlist" id="5">UNDERSHIRT</p></div></div></div></div>', 3);
INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(524, 1436014257, 1436002954, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">B</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">H</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">G</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">U</span></td><td class="white" data-id="1, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="1, 4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">T</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">S</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">M</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr><tr><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="14"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="10"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">B</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">G</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="10, 16"><span class="letter">U</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="12">BATHROOM</p><p class="wordlist" id="15">GENDER</p><p class="wordlist" id="2">INSURANCE</p><p class="wordlist" id="13">MAGIC</p><p class="wordlist" id="5">MIDDLE</p><p class="wordlist" id="0">OCTOBER</p><p class="wordlist" id="10">PLAYGROUND</p><p class="wordlist" id="3">QUIT</p><p class="wordlist" id="8">ROUTE</p><p class="wordlist" id="17">RUSSIA</p><p class="wordlist" id="9">SHEET</p><p class="wordlist" id="11">SMASH</p><p class="wordlist" id="7">SPLEEN</p><p class="wordlist" id="1">START</p><p class="wordlist" id="4">SWISS</p><p class="wordlist" id="16">SYRUP</p><p class="wordlist" id="6">TULIP</p><p class="wordlist" id="14">WOLF</p></div></div></div></div>', 3),
(522, 1436013737, 1436002954, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">B</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">H</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">G</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">U</span></td><td class="white" data-id="1, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="1, 4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">T</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">S</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">M</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr><tr><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="14"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="10"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">B</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">G</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="10, 16"><span class="letter">U</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="12">BATHROOM</p><p class="wordlist" id="15">GENDER</p><p class="wordlist" id="2">INSURANCE</p><p class="wordlist" id="13">MAGIC</p><p class="wordlist" id="5">MIDDLE</p><p class="wordlist" id="0">OCTOBER</p><p class="wordlist" id="10">PLAYGROUND</p><p class="wordlist" id="3">QUIT</p><p class="wordlist" id="8">ROUTE</p><p class="wordlist" id="17">RUSSIA</p><p class="wordlist" id="9">SHEET</p><p class="wordlist" id="11">SMASH</p><p class="wordlist" id="7">SPLEEN</p><p class="wordlist" id="1">START</p><p class="wordlist" id="4">SWISS</p><p class="wordlist" id="16">SYRUP</p><p class="wordlist" id="6">TULIP</p><p class="wordlist" id="14">WOLF</p></div></div></div></div>', 5),
(523, 1436013737, 1436002954, 0, 0, 0, 0, 0, 0, 0, '290899635551314cd4e883cfbfab25fa1388f34e', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">B</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">H</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">G</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">U</span></td><td class="white" data-id="1, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="1, 4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">T</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">S</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">M</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr><tr><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="14"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="10"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">B</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">G</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="10, 16"><span class="letter">U</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="12">BATHROOM</p><p class="wordlist" id="15">GENDER</p><p class="wordlist" id="2">INSURANCE</p><p class="wordlist" id="13">MAGIC</p><p class="wordlist" id="5">MIDDLE</p><p class="wordlist" id="0">OCTOBER</p><p class="wordlist" id="10">PLAYGROUND</p><p class="wordlist" id="3">QUIT</p><p class="wordlist" id="8">ROUTE</p><p class="wordlist" id="17">RUSSIA</p><p class="wordlist" id="9">SHEET</p><p class="wordlist" id="11">SMASH</p><p class="wordlist" id="7">SPLEEN</p><p class="wordlist" id="1">START</p><p class="wordlist" id="4">SWISS</p><p class="wordlist" id="16">SYRUP</p><p class="wordlist" id="6">TULIP</p><p class="wordlist" id="14">WOLF</p></div></div></div></div>', 0);
INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(521, 1436013137, 1436002954, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">B</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">H</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">G</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">U</span></td><td class="white" data-id="1, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="1, 4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">T</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="2"><span class="letter">S</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">M</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr><tr><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="14"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="10"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="14"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">B</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">G</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="10, 16"><span class="letter">U</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="12">BATHROOM</p><p class="wordlist" id="15">GENDER</p><p class="wordlist" id="2">INSURANCE</p><p class="wordlist" id="13">MAGIC</p><p class="wordlist" id="5">MIDDLE</p><p class="wordlist" id="0">OCTOBER</p><p class="wordlist" id="10">PLAYGROUND</p><p class="wordlist" id="3">QUIT</p><p class="wordlist" id="8">ROUTE</p><p class="wordlist" id="17">RUSSIA</p><p class="wordlist" id="9">SHEET</p><p class="wordlist" id="11">SMASH</p><p class="wordlist" id="7">SPLEEN</p><p class="wordlist" id="1">START</p><p class="wordlist" id="4">SWISS</p><p class="wordlist" id="16">SYRUP</p><p class="wordlist" id="6">TULIP</p><p class="wordlist" id="14">WOLF</p></div></div></div></div>', 5),
(520, 1436002954, 1436010263, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">D</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="11"><span class="letter">E</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="11"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="17"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">A</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="3"><span class="letter">C</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">E</span></td><td class="white" data-id="3"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">G</span></td><td class="white" data-id="3"><span class="letter">Y</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td></tr><tr><td class="white" data-id="17"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="0"><span class="letter">L</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="10"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="17"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="16"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">C</span></td><td class="white" data-id="5"><span class="letter">T</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">D</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">O</span></td><td class="white" data-id="4"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">B</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">Y</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="1"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">W</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="7"><span class="letter">M</span></td><td class="white" data-id="2"><span class="letter">M</span></td><td class="white" data-id="16"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="1"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">D</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="1, 8"><span class="letter">N</span></td><td class="white" data-id="8"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="6"><span class="letter">W</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="15"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">N</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="14"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="6"><span class="letter">D</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="12, 14"><span class="letter">S</span></td><td class="white" data-id="12"><span class="letter">Y</span></td><td class="white" data-id="12"><span class="letter">C</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="9, 12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="3">ARCHEOLOGY</p><p class="wordlist" id="11">BABIES</p><p class="wordlist" id="13">CALENDAR</p><p class="wordlist" id="8">CENT</p><p class="wordlist" id="14">CIRRUS</p><p class="wordlist" id="17">CRACK</p><p class="wordlist" id="16">DEPOSIT</p><p class="wordlist" id="2">DOMAIN</p><p class="wordlist" id="4">EYEBROW</p><p class="wordlist" id="1">INCH</p><p class="wordlist" id="7">MARIMBA</p><p class="wordlist" id="10">PINT</p><p class="wordlist" id="9">REFUND</p><p class="wordlist" id="5">SELECT</p><p class="wordlist" id="0">STOOL</p><p class="wordlist" id="12">SYCAMORE</p><p class="wordlist" id="6">WIND</p><p class="wordlist" id="15">YARD</p></div></div></div></div>', 5),
(518, 1436002954, 1436010263, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">C</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">N</span></td><td class="white" data-id="13"><span class="letter">D</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="11"><span class="letter">E</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="11"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="17"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">A</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="3"><span class="letter">C</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">E</span></td><td class="white" data-id="3"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">G</span></td><td class="white" data-id="3"><span class="letter">Y</span></td><td class="white" data-id="10"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td></tr><tr><td class="white" data-id="17"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">J</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="0"><span class="letter">L</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="10"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="17"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="16"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">C</span></td><td class="white" data-id="5"><span class="letter">T</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">D</span></td><td class="white" data-id="16"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="4"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">O</span></td><td class="white" data-id="4"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">B</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">Y</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="1"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">W</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="7"><span class="letter">M</span></td><td class="white" data-id="2"><span class="letter">M</span></td><td class="white" data-id="16"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="1"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">D</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="1, 8"><span class="letter">N</span></td><td class="white" data-id="8"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="6"><span class="letter">W</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="6"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="15"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">N</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="14"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="6"><span class="letter">D</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="12, 14"><span class="letter">S</span></td><td class="white" data-id="12"><span class="letter">Y</span></td><td class="white" data-id="12"><span class="letter">C</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">M</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="9, 12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="3">ARCHEOLOGY</p><p class="wordlist" id="11">BABIES</p><p class="wordlist" id="13">CALENDAR</p><p class="wordlist" id="8">CENT</p><p class="wordlist" id="14">CIRRUS</p><p class="wordlist" id="17">CRACK</p><p class="wordlist" id="16">DEPOSIT</p><p class="wordlist" id="2">DOMAIN</p><p class="wordlist" id="4">EYEBROW</p><p class="wordlist" id="1">INCH</p><p class="wordlist" id="7">MARIMBA</p><p class="wordlist" id="10">PINT</p><p class="wordlist" id="9">REFUND</p><p class="wordlist" id="5">SELECT</p><p class="wordlist" id="0">STOOL</p><p class="wordlist" id="12">SYCAMORE</p><p class="wordlist" id="6">WIND</p><p class="wordlist" id="15">YARD</p></div></div></div></div>', 5);
INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(528, 1436108685, 1436108615, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="16"><span class="letter">G</span></td><td class="white" data-id="16"><span class="letter">N</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="16"><span class="letter">D</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">O</span></td><td class="white" data-id="16"><span class="letter">B</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="16"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9"><span class="letter">M</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9"><span class="letter">U</span></td><td class="white" data-id="9"><span class="letter">J</span></td><td class="white" data-id="9"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="7"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="0"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="0, 8"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">N</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="17"><span class="letter">W</span></td><td class="white" data-id="14"><span class="letter">Y</span></td><td class="white" data-id="7"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="6"><span class="letter">V</span></td><td class="white" data-id="15"><span class="letter">C</span></td><td class="white" data-id="15"><span class="letter">L</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">U</span></td><td class="white" data-id="15"><span class="letter">D</span></td><td class="white" data-id="15"><span class="letter">Y</span></td></tr><tr><td class="white" data-id="17"><span class="letter">H</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="0"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="5"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="6"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">O</span></td></tr><tr><td class="white" data-id="17"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="0"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">N</span></td></tr><tr><td class="white" data-id="17"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="0"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="10"><span class="letter">M</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="1"><span class="letter">S</span></td></tr><tr><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="0, 4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">H</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">V</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="1"><span class="letter">T</span></td></tr><tr><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="0"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="10"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">E</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">H</span></td><td class="white" data-id="11"><span class="letter">L</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="11"><span class="letter">O</span></td><td class="white" data-id="11"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="3"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="10"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="13"><span class="letter">G</span></td><td class="white" data-id="1"><span class="letter">V</span></td></tr><tr><td class="white" data-id="17"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="3"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="1"><span class="letter">E</span></td></tr><tr><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="2"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="3"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">N</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="12"><span class="letter">L</span></td><td class="white" data-id="2, 12"><span class="letter">I</span></td><td class="white" data-id="12"><span class="letter">S</span></td><td class="white" data-id="12"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="3"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="10"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="2"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="9">ADJUSTMENT</p><p class="wordlist" id="0">BIRTHDAY</p><p class="wordlist" id="14">CELERY</p><p class="wordlist" id="15">CLOUDY</p><p class="wordlist" id="11">COAL</p><p class="wordlist" id="2">FIFTH</p><p class="wordlist" id="13">GEESE</p><p class="wordlist" id="3">KENYA</p><p class="wordlist" id="16">KEYBOARDING</p><p class="wordlist" id="10">MICHAEL</p><p class="wordlist" id="8">RAINCOAT</p><p class="wordlist" id="12">RELISH</p><p class="wordlist" id="4">SARAH</p><p class="wordlist" id="1">STEVEN</p><p class="wordlist" id="7">TOWN</p><p class="wordlist" id="5">VEST</p><p class="wordlist" id="6">VOYAGE</p><p class="wordlist" id="17">WHOLESALER</p></div></div></div></div>', 3),
(529, 1436109533, 1436109576, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">P</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="8"><span class="letter">N</span></td><td class="white" data-id="2, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">G</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="2, 16"><span class="letter">R</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="16"><span class="letter">V</span></td><td class="white" data-id="16"><span class="letter">O</span></td><td class="white" data-id="16"><span class="letter">C</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="16"><span class="letter">D</span></td><td class="white" data-id="13"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">T</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="13"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="2, 12"><span class="letter">C</span></td><td class="white" data-id="12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">L</span></td><td class="white" data-id="12"><span class="letter">L</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="4"><span class="letter">R</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="2"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="0"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="13"><span class="letter">T</span></td><td class="white" data-id="4"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">X</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">F</span></td><td class="white" data-id="7"><span class="letter">O</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">T</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="14"><span class="letter">S</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="6"><span class="letter">O</span></td><td class="white" data-id="7"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="4"><span class="letter">T</span></td><td class="white" data-id="6"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="11"><span class="letter">F</span></td><td class="white" data-id="5"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="3, 9"><span class="letter">D</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">T</span></td><td class="white" data-id="7"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9"><span class="letter">W</span></td><td class="white" data-id="3, 14"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">P</span></td><td class="white" data-id="6"><span class="letter">N</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">X</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="3"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="4"><span class="letter">M</span></td><td class="white" data-id="6"><span class="letter">I</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td></tr><tr><td class="white" data-id="9"><span class="letter">P</span></td><td class="white" data-id="14"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="3"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="4"><span class="letter">O</span></td><td class="white" data-id="6"><span class="letter">G</span></td><td class="white" data-id="7"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="10"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td></tr><tr><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="3"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="4"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="17"><span class="letter">G</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="3"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="1"><span class="letter">C</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="1"><span class="letter">M</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="15"><span class="letter">P</span></td><td class="white" data-id="3, 15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">B</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="15"><span class="letter">I</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">H</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="1">CAMERA</p><p class="wordlist" id="12">COLLAR</p><p class="wordlist" id="4">COMPETITOR</p><p class="wordlist" id="10">DECIMAL</p><p class="wordlist" id="16">DISCOVERY</p><p class="wordlist" id="3">DREDGER</p><p class="wordlist" id="0">EGGS</p><p class="wordlist" id="11">FISH</p><p class="wordlist" id="6">FORTNIGHT</p><p class="wordlist" id="14">INCREASE</p><p class="wordlist" id="8">PENTAGON</p><p class="wordlist" id="9">POWDER</p><p class="wordlist" id="15">PROBATION</p><p class="wordlist" id="17">SUGAR</p><p class="wordlist" id="13">TASTE</p><p class="wordlist" id="7">TORNADO</p><p class="wordlist" id="2">TRACTOR</p><p class="wordlist" id="5">TUNA</p></div></div></div></div>', 3),
(531, 1436111029, 1436111041, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="7, 16"><span class="letter">P</span></td><td class="white" data-id="5, 16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">N</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">S</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="6"><span class="letter">A</span></td></tr><tr><td class="white" data-id="10"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="14"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="14"><span class="letter">N</span></td><td class="white" data-id="14"><span class="letter">D</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="6"><span class="letter">V</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">N</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="10"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">D</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="2, 4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">A</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">W</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="6"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="11"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="9"><span class="letter">C</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="1"><span class="letter">L</span></td><td class="white" data-id="11"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">L</span></td><td class="white" data-id="0"><span class="letter">I</span></td><td class="white" data-id="0"><span class="letter">Q</span></td><td class="white" data-id="0"><span class="letter">U</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">R</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="11"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="3"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td></tr><tr><td class="white" data-id="17"><span class="letter">M</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">B</span></td><td class="white" data-id="8"><span class="letter">J</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="3, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">V</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">K</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="13"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">I</span></td><td class="white" data-id="3, 12"><span class="letter">M</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="15"><span class="letter">K</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">W</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="5">ARIES</p><p class="wordlist" id="6">CANVAS</p><p class="wordlist" id="10">COBWEB</p><p class="wordlist" id="2">CURLER</p><p class="wordlist" id="14">CYLINDER</p><p class="wordlist" id="4">DANIEL</p><p class="wordlist" id="9">FORCE</p><p class="wordlist" id="13">HEALTH</p><p class="wordlist" id="0">LIQUOR</p><p class="wordlist" id="1">LIVER</p><p class="wordlist" id="15">NETWORK</p><p class="wordlist" id="8">OBJECTIVE</p><p class="wordlist" id="16">PANTS</p><p class="wordlist" id="7">PROSE</p><p class="wordlist" id="3">RHYTHM</p><p class="wordlist" id="17">SAMURAI</p><p class="wordlist" id="11">SWORDFISH</p><p class="wordlist" id="12">TIME</p></div></div></div></div>', 3);
INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(534, 1436111041, 1436127959, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="15"><span class="letter">S</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">Y</span></td><td class="white" data-id="15"><span class="letter">L</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="2"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">W</span></td><td class="white" data-id="10"><span class="letter">S</span></td><td class="white" data-id="10"><span class="letter">T</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">M</span></td></tr><tr><td class="white" data-id="12"><span class="letter">N</span></td><td class="white" data-id="9, 12"><span class="letter">O</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">I</span></td><td class="white" data-id="12"><span class="letter">F</span></td><td class="white" data-id="12"><span class="letter">Y</span></td><td class="white" data-id="2"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">A</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="2"><span class="letter">A</span></td><td class="white" data-id="5"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="7, 9"><span class="letter">E</span></td><td class="white" data-id="7"><span class="letter">P</span></td><td class="white" data-id="7"><span class="letter">A</span></td><td class="white" data-id="7"><span class="letter">H</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="13"><span class="letter">D</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="6"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="2"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">N</span></td></tr><tr><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="8"><span class="letter">H</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="5, 8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">L</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="8, 13"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="13"><span class="letter">T</span></td><td class="white" data-id="1"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="6"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">A</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="16"><span class="letter">U</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="1, 16"><span class="letter">D</span></td><td class="white" data-id="16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="6"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">V</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="17"><span class="letter">N</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">L</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="17"><span class="letter">Y</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="6"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td></tr><tr><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="0"><span class="letter">K</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">A</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="3"><span class="letter">S</span></td><td class="white" data-id="3"><span class="letter">U</span></td><td class="white" data-id="3"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">E</span></td></tr><tr><td class="white" data-id="11"><span class="letter">D</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">P</span></td><td class="white" data-id="11"><span class="letter">L</span></td><td class="white" data-id="11"><span class="letter">O</span></td><td class="white" data-id="11"><span class="letter">M</span></td><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="1, 4"><span class="letter">C</span></td><td class="white" data-id="4"><span class="letter">L</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="14"><span class="letter">P</span></td><td class="white" data-id="14"><span class="letter">H</span></td><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">S</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="14"><span class="letter">P</span></td><td class="white" data-id="14"><span class="letter">H</span></td><td class="white" data-id="14"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">S</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="6">ANIMAL</p><p class="wordlist" id="3">BUSH</p><p class="wordlist" id="1">CANDLE</p><p class="wordlist" id="8">CHARLES</p><p class="wordlist" id="4">CLASS</p><p class="wordlist" id="0">CRACKER</p><p class="wordlist" id="11">DIPLOMA</p><p class="wordlist" id="13">DUST</p><p class="wordlist" id="17">EYELINER</p><p class="wordlist" id="9">NOTEBOOK</p><p class="wordlist" id="12">NOTIFY</p><p class="wordlist" id="14">PHILOSOPHY</p><p class="wordlist" id="15">POLYESTER</p><p class="wordlist" id="16">SATURDAY</p><p class="wordlist" id="5">SCRAPER</p><p class="wordlist" id="2">SHAMPOO</p><p class="wordlist" id="7">SHAPE</p><p class="wordlist" id="10">SNOWSTORM</p></div></div></div></div>', 2),
(533, 1436127521, 1436111041, 0, 0, 0, 0, 0, 0, 0, '6e53e2bbd150b5af33b843c19da32e2831b19a1c', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="7, 16"><span class="letter">P</span></td><td class="white" data-id="5, 16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">N</span></td><td class="white" data-id="16"><span class="letter">T</span></td><td class="white" data-id="16"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="6"><span class="letter">S</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="5"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="6"><span class="letter">A</span></td></tr><tr><td class="white" data-id="10"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="14"><span class="letter">Y</span></td><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="14"><span class="letter">N</span></td><td class="white" data-id="14"><span class="letter">D</span></td><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="6"><span class="letter">V</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="10"><span class="letter">O</span></td><td class="white" data-id="11"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="7"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="6"><span class="letter">N</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="10"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">D</span></td><td class="white" data-id="4"><span class="letter">A</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="2, 4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="7"><span class="letter">E</span></td><td class="white" data-id="5"><span class="letter">S</span></td><td class="white" data-id="6"><span class="letter">A</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="10"><span class="letter">W</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="6"><span class="letter">C</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="10"><span class="letter">E</span></td><td class="white" data-id="11"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">B</span></td><td class="white" data-id="11"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="9"><span class="letter">C</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">V</span></td><td class="white" data-id="1"><span class="letter">I</span></td><td class="white" data-id="1"><span class="letter">L</span></td><td class="white" data-id="11"><span class="letter">R</span></td><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">L</span></td><td class="white" data-id="0"><span class="letter">I</span></td><td class="white" data-id="0"><span class="letter">Q</span></td><td class="white" data-id="0"><span class="letter">U</span></td><td class="white" data-id="0"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">R</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="11"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">B</span></td></tr><tr><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="11"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">F</span></td></tr><tr><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="3"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="11"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td></tr><tr><td class="white" data-id="17"><span class="letter">M</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">B</span></td><td class="white" data-id="8"><span class="letter">J</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="8"><span class="letter">C</span></td><td class="white" data-id="3, 8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">V</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">K</span></td></tr><tr><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="3"><span class="letter">H</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="13"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">R</span></td></tr><tr><td class="white" data-id="17"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="12"><span class="letter">T</span></td><td class="white" data-id="12"><span class="letter">I</span></td><td class="white" data-id="3, 12"><span class="letter">M</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="15"><span class="letter">K</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">O</span></td><td class="white" data-id="15"><span class="letter">W</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="5">ARIES</p><p class="wordlist" id="6">CANVAS</p><p class="wordlist" id="10">COBWEB</p><p class="wordlist" id="2">CURLER</p><p class="wordlist" id="14">CYLINDER</p><p class="wordlist" id="4">DANIEL</p><p class="wordlist" id="9">FORCE</p><p class="wordlist" id="13">HEALTH</p><p class="wordlist" id="0">LIQUOR</p><p class="wordlist" id="1">LIVER</p><p class="wordlist" id="15">NETWORK</p><p class="wordlist" id="8">OBJECTIVE</p><p class="wordlist" id="16">PANTS</p><p class="wordlist" id="7">PROSE</p><p class="wordlist" id="3">RHYTHM</p><p class="wordlist" id="17">SAMURAI</p><p class="wordlist" id="11">SWORDFISH</p><p class="wordlist" id="12">TIME</p></div></div></div></div>', 1),
(537, 1436982261, 1436982481, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">H</span></td><td class="white" data-id="7"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">R</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="7"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td></tr><tr><td class="white" data-id="14"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="16"><span class="letter">M</span></td><td class="white" data-id="16"><span class="letter">A</span></td><td class="white" data-id="5, 16"><span class="letter">C</span></td><td class="white" data-id="16"><span class="letter">R</span></td><td class="white" data-id="16"><span class="letter">A</span></td><td class="white" data-id="16"><span class="letter">M</span></td><td class="white" data-id="16"><span class="letter">E</span></td><td class="white" data-id="3"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td></tr><tr><td class="white" data-id="14"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="3"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="15"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td></tr><tr><td class="white" data-id="14"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="3"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">D</span></td></tr><tr><td class="white" data-id="14"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="17"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="0"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">E</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="5"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">X</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="15"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">A</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="17"><span class="letter">Q</span></td><td class="white" data-id="0"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">A</span></td><td class="white" data-id="3"><span class="letter">N</span></td><td class="white" data-id="2"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="5"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="15"><span class="letter">R</span></td><td class="white" data-id="13"><span class="letter">S</span></td></tr><tr><td class="white" data-id="11"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9"><span class="letter">A</span></td><td class="white" data-id="0"><span class="letter">G</span></td><td class="white" data-id="17"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="1, 8"><span class="letter">F</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="2, 8"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">M</span></td><td class="white" data-id="5"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">E</span></td><td class="white" data-id="13"><span class="letter">E</span></td></tr><tr><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="17"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="2"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="5"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="15"><span class="letter">T</span></td><td class="white" data-id="13"><span class="letter">A</span></td></tr><tr><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="15"><span class="letter">I</span></td><td class="white" data-id="13"><span class="letter">S</span></td></tr><tr><td class="white" data-id="11"><span class="letter">N</span></td><td class="white" data-id="10"><span class="letter">Y</span></td><td class="white" data-id="9"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="2"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="15"><span class="letter">L</span></td><td class="white" data-id="13"><span class="letter">H</span></td></tr><tr><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="9, 12"><span class="letter">G</span></td><td class="white" data-id="12"><span class="letter">R</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="12"><span class="letter">N</span></td><td class="white" data-id="12"><span class="letter">A</span></td><td class="white" data-id="12"><span class="letter">D</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="1"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="13"><span class="letter">O</span></td></tr><tr><td class="white" data-id="11"><span class="letter">A</span></td><td class="white" data-id="10"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">T</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">L</span></td><td class="white" data-id="4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">V</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="4"><span class="letter">S</span></td><td class="white" data-id="4"><span class="letter">I</span></td><td class="white" data-id="1, 4"><span class="letter">O</span></td><td class="white" data-id="4"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="13"><span class="letter">R</span></td></tr><tr><td class="white" data-id="11"><span class="letter">R</span></td><td class="white" data-id="10"><span class="letter">N</span></td><td class="white" data-id="9"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="6"><span class="letter">H</span></td><td class="white" data-id="6"><span class="letter">C</span></td><td class="white" data-id="6"><span class="letter">N</span></td><td class="white" data-id="6"><span class="letter">U</span></td><td class="white" data-id="6"><span class="letter">P</span></td><td class="white" data-id="1"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="13"><span class="letter">E</span></td></tr><tr><td class="white" data-id="11"><span class="letter">K</span></td><td class="white" data-id="10"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="1"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">A</span></td></tr><tr><td class="white" data-id="11"><span class="letter">U</span></td><td class="white" data-id="10"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="1">AFTERNOON</p><p class="wordlist" id="3">BASIN</p><p class="wordlist" id="9">BEGONIA</p><p class="wordlist" id="5">CAPTION</p><p class="wordlist" id="2">CERAMIC</p><p class="wordlist" id="7">CHURCH</p><p class="wordlist" id="17">ENQUIRY</p><p class="wordlist" id="8">FOAM</p><p class="wordlist" id="0">GRASS</p><p class="wordlist" id="12">GRENADE</p><p class="wordlist" id="15">LITERATURE</p><p class="wordlist" id="16">MACRAME</p><p class="wordlist" id="6">PUNCH</p><p class="wordlist" id="13">SEASHORE</p><p class="wordlist" id="10">SUNDAY</p><p class="wordlist" id="4">TELEVISION</p><p class="wordlist" id="11">UKRAINIAN</p><p class="wordlist" id="14">VEIL</p></div></div></div></div>', 2);
INSERT INTO `crossword_multiplayer` (`id`, `rival_1`, `rival_2`, `users_active`, `mobile_game`, `rival_1_word`, `rival_2_word`, `rival_1_bombs`, `rival_2_bombs`, `won`, `game_id`, `code_game`, `num_user`) VALUES
(538, 1436982481, 1436982261, 0, 0, 0, 0, 0, 0, 0, '0', '<div id="game-wrapper"><div id="game-overlay"></div><div id="game-header"><p><span class="game-user-name"><img id="game-avatar" src="http://www.crossword-online.eu/img/user/profile/guest.jpg" alt="Avatar image!" />Guest</span><span="game-info"></span></p></div><hr /><div id="game-main"><div id="game-left"><div class="show-time"></div><img src="http://www.crossword-online.eu/img/icons/stop-watch-icon.png" title="Your time:" alt="Your time:"/><div id="errorbox">Mistakes: 0</div><hr/><div class="highscore-ingame-box"><p>Your Highscore</p><p>Please register for personal high-score.</p></div></div><div id="game-center"><table><tr id="row-first" ><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="8"><span class="letter">R</span></td><td class="white" data-id="8"><span class="letter">E</span></td><td class="white" data-id="3, 8"><span class="letter">L</span></td><td class="white" data-id="8"><span class="letter">A</span></td><td class="white" data-id="8"><span class="letter">T</span></td><td class="white" data-id="8"><span class="letter">I</span></td><td class="white" data-id="8"><span class="letter">O</span></td><td class="white" data-id="8"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">U</span></td></tr><tr><td class="white" data-id="13"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="3"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">P</span></td><td class="white" data-id="11"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">X</span></td></tr><tr><td class="white" data-id="13"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="3"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="1"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">T</span></td><td class="white" data-id="11"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">W</span></td></tr><tr><td class="white" data-id="13"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="3, 12"><span class="letter">P</span></td><td class="white" data-id="12"><span class="letter">I</span></td><td class="white" data-id="12"><span class="letter">C</span></td><td class="white" data-id="12"><span class="letter">K</span></td><td class="white" data-id="12"><span class="letter">L</span></td><td class="white" data-id="12"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="11"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td></tr><tr><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="7"><span class="letter">O</span></td><td class="white" data-id="1"><span class="letter">T</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="11"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">N</span></td></tr><tr><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="6"><span class="letter">W</span></td><td class="white" data-id="7"><span class="letter">C</span></td><td class="white" data-id="1"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9999"><span class="letter">X</span></td></tr><tr><td class="white" data-id="13"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="6"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="7"><span class="letter">I</span></td><td class="white" data-id="1"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="15"><span class="letter">N</span></td></tr><tr><td class="white" data-id="13"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="6"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="2"><span class="letter">P</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="7"><span class="letter">X</span></td><td class="white" data-id="1"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="15"><span class="letter">O</span></td></tr><tr><td class="white" data-id="13"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="9"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="14"><span class="letter">W</span></td><td class="white" data-id="6"><span class="letter">N</span></td><td class="white" data-id="4"><span class="letter">P</span></td><td class="white" data-id="2, 4"><span class="letter">E</span></td><td class="white" data-id="4"><span class="letter">R</span></td><td class="white" data-id="4"><span class="letter">F</span></td><td class="white" data-id="4"><span class="letter">U</span></td><td class="white" data-id="4"><span class="letter">M</span></td><td class="white" data-id="4, 7"><span class="letter">E</span></td><td class="white" data-id="1"><span class="letter">P</span></td><td class="white" data-id="0, 15"><span class="letter">I</span></td></tr><tr><td class="white" data-id="13"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="14"><span class="letter">O</span></td><td class="white" data-id="6"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">I</span></td><td class="white" data-id="2"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="0, 7"><span class="letter">M</span></td><td class="white" data-id="15"><span class="letter">S</span></td></tr><tr><td class="white" data-id="13"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="14"><span class="letter">R</span></td><td class="white" data-id="6"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="2, 16"><span class="letter">C</span></td><td class="white" data-id="16"><span class="letter">O</span></td><td class="white" data-id="16"><span class="letter">I</span></td><td class="white" data-id="16"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="0"><span class="letter">P</span></td><td class="white" data-id="17"><span class="letter">B</span></td><td class="white" data-id="15"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="14"><span class="letter">C</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="2"><span class="letter">I</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">D</span></td><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">U</span></td><td class="white" data-id="9999"><span class="letter">U</span></td><td class="white" data-id="17"><span class="letter">A</span></td><td class="white" data-id="15"><span class="letter">V</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="2"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="9999"><span class="letter">G</span></td><td class="white" data-id="9999"><span class="letter">V</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="0"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">N</span></td><td class="white" data-id="9999"><span class="letter">O</span></td><td class="white" data-id="17"><span class="letter">K</span></td><td class="white" data-id="15"><span class="letter">I</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Z</span></td><td class="white" data-id="5"><span class="letter">P</span></td><td class="white" data-id="5"><span class="letter">A</span></td><td class="white" data-id="5"><span class="letter">G</span></td><td class="white" data-id="5"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">B</span></td><td class="white" data-id="0"><span class="letter">S</span></td><td class="white" data-id="9999"><span class="letter">J</span></td><td class="white" data-id="9999"><span class="letter">Q</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="17"><span class="letter">E</span></td><td class="white" data-id="15"><span class="letter">D</span></td></tr><tr><td class="white" data-id="9999"><span class="letter">F</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">L</span></td><td class="white" data-id="10"><span class="letter">A</span></td><td class="white" data-id="10"><span class="letter">M</span></td><td class="white" data-id="9999"><span class="letter">H</span></td><td class="white" data-id="9999"><span class="letter">A</span></td><td class="white" data-id="9999"><span class="letter">W</span></td><td class="white" data-id="0"><span class="letter">E</span></td><td class="white" data-id="9999"><span class="letter">Y</span></td><td class="white" data-id="9999"><span class="letter">K</span></td><td class="white" data-id="9999"><span class="letter">L</span></td><td class="white" data-id="9999"><span class="letter">M</span></td><td class="white" data-id="17"><span class="letter">R</span></td><td class="white" data-id="9999"><span class="letter">M</span></td></tr></table></div><div id="game-right"><H2 class="menuHeadline wordheader">WORDS</H2><hr /><p class="aligner" id="word-count">18</p><hr /><div class="wordbox"><p class="wordlist" id="9">ARIES</p><p class="wordlist" id="17">BAKER</p><p class="wordlist" id="11">BILL</p><p class="wordlist" id="16">COIN</p><p class="wordlist" id="14">CROW</p><p class="wordlist" id="15">DIVISION</p><p class="wordlist" id="0">IMPULSE</p><p class="wordlist" id="10">MALL</p><p class="wordlist" id="7">MEXICO</p><p class="wordlist" id="5">PAGE</p><p class="wordlist" id="3">PAIL</p><p class="wordlist" id="2">PENCIL</p><p class="wordlist" id="4">PERFUME</p><p class="wordlist" id="12">PICKLE</p><p class="wordlist" id="1">POULTRY</p><p class="wordlist" id="8">RELATION</p><p class="wordlist" id="13">WHOLESALER</p><p class="wordlist" id="6">WINDOW</p></div></div></div></div>', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_multiplayer_user`
--

CREATE TABLE IF NOT EXISTS `crossword_multiplayer_user` (
  `id` int(11) NOT NULL,
  `user_id` int(15) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `time_action` int(20) NOT NULL DEFAULT '0',
  `invite_id` int(15) NOT NULL,
  `guest` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `crossword_multiplayer_user`
--

INSERT INTO `crossword_multiplayer_user` (`id`, `user_id`, `mobile`, `time_action`, `invite_id`, `guest`) VALUES
(1001, 1440091595, 0, 1440092443, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_user_made_games`
--

CREATE TABLE IF NOT EXISTS `crossword_user_made_games` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_all_games` int(11) DEFAULT '0',
  `user_started_games` int(11) DEFAULT '0',
  `user_completed_games` int(11) DEFAULT '0',
  `last_game` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `allTime` int(25) NOT NULL DEFAULT '0',
  `beginner_started` int(11) DEFAULT '0',
  `beginner_complete` int(11) DEFAULT '0',
  `beginner_allTime` int(25) DEFAULT '0',
  `beginner_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `easy_started` int(11) DEFAULT '0',
  `easy_complete` int(11) DEFAULT '0',
  `easy_allTime` int(25) DEFAULT '0',
  `easy_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `middle_started` int(11) DEFAULT '0',
  `middle_complete` int(11) DEFAULT '0',
  `middle_allTime` int(25) DEFAULT '0',
  `middle_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `hard_started` int(11) DEFAULT '0',
  `hard_complete` int(11) DEFAULT '0',
  `hard_allTime` int(25) DEFAULT '0',
  `hard_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `expert_started` int(11) DEFAULT '0',
  `expert_complete` int(11) DEFAULT '0',
  `expert_allTime` int(25) DEFAULT '0',
  `expert_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `master_started` int(11) DEFAULT '0',
  `master_complete` int(11) DEFAULT '0',
  `master_allTime` int(25) DEFAULT '0',
  `master_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `godlike_started` int(11) DEFAULT '0',
  `godlike_complete` int(11) DEFAULT '0',
  `godlike_allTime` int(25) DEFAULT '0',
  `godlike_last_game` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `crossword_user_made_games`
--

INSERT INTO `crossword_user_made_games` (`id`, `user_id`, `user_all_games`, `user_started_games`, `user_completed_games`, `last_game`, `allTime`, `beginner_started`, `beginner_complete`, `beginner_allTime`, `beginner_last_game`, `easy_started`, `easy_complete`, `easy_allTime`, `easy_last_game`, `middle_started`, `middle_complete`, `middle_allTime`, `middle_last_game`, `hard_started`, `hard_complete`, `hard_allTime`, `hard_last_game`, `expert_started`, `expert_complete`, `expert_allTime`, `expert_last_game`, `master_started`, `master_complete`, `master_allTime`, `master_last_game`, `godlike_started`, `godlike_complete`, `godlike_allTime`, `godlike_last_game`) VALUES
(3, 52, 4, 4, 4, '0000-00-00 00:00:00', 0, 1, 1, 0, '2015-02-21 01:37:14', 2, 2, 0, '2015-02-21 01:42:50', 1, 1, 0, '2015-02-21 01:46:36', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(4, 53, 4, 4, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, '2015-02-26 15:05:34', 0, 0, 0, '0000-00-00 00:00:00', 3, 0, 0, '2015-02-26 15:12:47', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(5, 54, 1, 1, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, '2015-02-21 21:18:49', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(9, 58, 3, 3, 0, '0000-00-00 00:00:00', 0, 2, 0, 0, '2015-02-25 05:02:24', 1, 0, 0, '2015-02-25 05:02:09', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(10, 59, 5, 5, 1, '0000-00-00 00:00:00', 0, 5, 1, 0, '2015-02-25 12:12:55', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(11, 60, 10, 10, 8, '0000-00-00 00:00:00', 0, 8, 7, 0, '2015-02-25 13:48:27', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 1, 1, 0, '2015-02-25 13:34:10', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-02-25 13:25:57'),
(37, 94, 106, 106, 36, '2015-04-13 08:51:25', 0, 99, 34, 0, '2015-04-13 10:51:25', 3, 1, 0, '2015-03-17 22:01:44', 2, 1, 0, '2015-03-17 23:50:44', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-04-08 17:06:01', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-03-22 23:28:15'),
(38, 95, 3, 3, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, '2015-02-28 08:37:13', 2, 0, 0, '2015-02-28 08:35:58', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(40, 98, 2, 2, 0, '0000-00-00 00:00:00', 0, 2, 0, 0, '2015-02-27 12:34:16', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(41, 100, 3, 3, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, '2015-02-27 13:53:32', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(49, 108, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(51, 110, 3, 3, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, '2015-03-04 10:45:52', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(52, 111, 2, 2, 0, '0000-00-00 00:00:00', 0, 2, 0, 0, '2015-03-04 15:24:30', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(53, 112, 1, 1, 1, '2015-03-07 08:38:36', 0, 1, 1, 0, '2015-03-07 09:38:36', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(93, 15, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(94, 16, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(95, 17, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(96, 18, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(98, 19, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(99, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(100, 21, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(101, 22, 21, 21, 17, '2015-05-30 10:45:33', 0, 0, 0, 0, '0000-00-00 00:00:00', 21, 17, 0, '2015-05-30 12:45:33', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(102, 28, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(103, 29, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(104, 30, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(105, 31, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(106, 32, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(107, 33, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(108, 34, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(109, 35, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(110, 36, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(111, 37, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(112, 38, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(113, 39, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(114, 40, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(115, 41, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(116, 42, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(117, 43, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(118, 44, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(119, 45, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(120, 46, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(121, 47, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(122, 48, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(123, 97, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(124, 99, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(129, 117, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(130, 118, 3, 3, 0, '2015-03-13 20:18:20', 0, 0, 0, 0, '0000-00-00 00:00:00', 3, 0, 0, '2015-03-13 21:18:20', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(131, 119, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(132, 120, 1, 1, 0, '2015-03-14 01:13:41', 0, 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-03-14 02:13:41', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(133, 121, 1, 1, 0, '2015-03-14 06:24:18', 0, 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-03-14 07:24:18', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(134, 122, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(135, 123, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(136, 124, 1, 1, 0, '2015-03-15 16:32:50', 0, 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-03-15 17:32:50', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(137, 125, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(138, 126, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(139, 127, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(140, 128, 5, 5, 0, '2015-06-20 11:31:29', 0, 2, 0, 0, '2015-04-12 14:48:10', 3, 0, 0, '2015-06-20 13:31:29', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(142, 130, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(143, 131, 5, 5, 0, '2015-05-06 17:42:27', 0, 1, 0, 0, '2015-05-06 19:40:55', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-05-06 19:41:17', 1, 0, 0, '2015-05-06 19:42:27', 1, 0, 0, '2015-05-06 19:41:36', 1, 0, 0, '2015-05-06 19:41:59'),
(144, 132, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(145, 133, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(146, 134, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(147, 135, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(148, 136, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(149, 137, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(150, 138, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(152, 140, 60, 60, 8, '2015-08-26 16:42:45', 0, 50, 6, 0, '2015-08-26 18:42:45', 0, 0, 0, '0000-00-00 00:00:00', 2, 1, 0, '2015-08-16 17:48:23', 0, 0, 0, '0000-00-00 00:00:00', 3, 0, 0, '2015-06-26 01:09:39', 2, 1, 0, '2015-06-15 02:30:59', 3, 0, 0, '2015-08-12 22:42:25'),
(153, 141, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(154, 142, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(155, 143, 2, 2, 2, '2015-06-13 20:05:02', 0, 1, 1, 0, '2015-06-13 22:03:13', 1, 1, 0, '2015-06-13 22:05:02', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(156, 144, 2, 2, 1, '2015-06-28 13:21:29', 0, 1, 1, 0, '2015-06-20 13:28:27', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-06-28 15:21:29', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(157, 145, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(158, 146, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(159, 147, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(160, 148, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(161, 149, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(162, 150, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(163, 151, 1, 1, 0, '2015-07-05 10:16:53', 0, 1, 0, 0, '2015-07-05 12:16:53', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(164, 152, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(165, 153, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(166, 154, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(167, 155, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_user_made_games_mobile`
--

CREATE TABLE IF NOT EXISTS `crossword_user_made_games_mobile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_all_games` int(11) DEFAULT '0',
  `user_started_games` int(11) DEFAULT '0',
  `user_completed_games` int(11) DEFAULT '0',
  `last_game` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `easy_started` int(11) DEFAULT '0',
  `easy_complete` int(11) DEFAULT '0',
  `easy_allTime` int(25) DEFAULT '0',
  `easy_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `middle_started` int(11) DEFAULT '0',
  `middle_complete` int(11) DEFAULT '0',
  `middle_allTime` int(25) DEFAULT '0',
  `middle_last_game` datetime DEFAULT '0000-00-00 00:00:00',
  `hard_started` int(11) DEFAULT '0',
  `hard_complete` int(11) DEFAULT '0',
  `hard_allTime` int(25) DEFAULT '0',
  `hard_last_game` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `crossword_user_made_games_mobile`
--

INSERT INTO `crossword_user_made_games_mobile` (`id`, `user_id`, `user_all_games`, `user_started_games`, `user_completed_games`, `last_game`, `easy_started`, `easy_complete`, `easy_allTime`, `easy_last_game`, `middle_started`, `middle_complete`, `middle_allTime`, `middle_last_game`, `hard_started`, `hard_complete`, `hard_allTime`, `hard_last_game`) VALUES
(66, 44, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(65, 43, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(64, 42, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(63, 41, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(62, 40, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(61, 39, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(60, 38, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(59, 37, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(58, 36, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(57, 35, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(56, 34, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(55, 33, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(54, 32, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(53, 31, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(52, 30, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(51, 29, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(50, 28, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(49, 22, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(48, 21, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(47, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(46, 19, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(45, 18, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(44, 17, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(43, 16, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(42, 15, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(72, 53, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(71, 52, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(70, 48, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(69, 47, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(68, 46, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(67, 45, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(73, 54, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(74, 58, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(75, 59, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(76, 60, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(77, 94, 5, 5, 1, '2015-03-17 23:03:09', 4, 1, 0, '2015-03-18 00:03:00', 0, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, '2015-03-18 00:03:09'),
(78, 95, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(79, 97, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(80, 98, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(81, 99, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(82, 100, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(83, 108, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(84, 110, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(85, 111, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(86, 112, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(91, 117, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(92, 118, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(93, 119, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(94, 120, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(95, 121, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(96, 122, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(97, 123, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(98, 124, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(99, 125, 2, 2, 0, '2015-03-21 02:14:17', 2, 0, 0, '2015-03-21 03:14:17', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(100, 126, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(101, 127, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(102, 128, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(114, 140, 6, 6, 1, '2015-08-15 17:57:25', 4, 1, 0, '2015-08-15 19:57:25', 0, 0, 0, '0000-00-00 00:00:00', 2, 0, 0, '2015-07-25 03:17:36'),
(104, 130, 16, 16, 8, '2015-04-19 18:42:32', 12, 7, 0, '2015-04-19 20:42:32', 2, 0, 0, '2015-04-19 20:42:16', 2, 1, 0, '2015-04-16 09:42:58'),
(105, 131, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(106, 132, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(107, 133, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(108, 134, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(109, 135, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(110, 136, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(111, 137, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(112, 138, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(115, 141, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(116, 142, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(117, 143, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(118, 144, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(119, 145, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(120, 146, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(121, 147, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(122, 148, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(123, 149, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(124, 150, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(125, 151, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(126, 152, 3, 3, 1, '2015-07-05 21:27:11', 2, 1, 0, '2015-07-05 23:27:04', 1, 0, 0, '2015-07-05 23:27:11', 0, 0, 0, '0000-00-00 00:00:00'),
(127, 153, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(128, 154, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00'),
(129, 155, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_user_top_100`
--

CREATE TABLE IF NOT EXISTS `crossword_user_top_100` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_time` int(20) NOT NULL DEFAULT '0',
  `user_error` int(11) NOT NULL DEFAULT '0',
  `user_level` varchar(20) NOT NULL,
  `date_of_game` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `crossword_user_top_100`
--

INSERT INTO `crossword_user_top_100` (`id`, `user_id`, `user_time`, `user_error`, `user_level`, `date_of_game`) VALUES
(12, 52, 80163, 0, 'beginner', '2015-02-21 01:37:14'),
(13, 52, 181178, 0, 'easy', '2015-02-21 01:40:27'),
(14, 52, 126189, 2, 'easy', '2015-02-21 01:42:50'),
(15, 52, 208376, 0, 'middle', '2015-02-21 01:46:36'),
(16, 59, 281896, 5, 'beginner', '2015-02-25 12:12:55'),
(17, 60, 109174, 1, 'beginner', '2015-02-25 13:23:20'),
(18, 60, 121690, 1, 'beginner', '2015-02-25 13:25:25'),
(19, 60, 419330, 2, 'expert', '2015-02-25 13:34:10'),
(20, 60, 94221, 2, 'beginner', '2015-02-25 13:36:22'),
(21, 60, 92763, 1, 'beginner', '2015-02-25 13:38:49'),
(22, 60, 111987, 1, 'beginner', '2015-02-25 13:43:00'),
(23, 60, 79290, 0, 'beginner', '2015-02-25 13:44:57'),
(24, 60, 132641, 7, 'beginner', '2015-02-25 13:48:27'),
(27, 94, 111228, 0, 'beginner', '2015-02-27 04:46:56'),
(28, 94, 106872, 2, 'beginner', '2015-02-27 07:40:17'),
(29, 94, 95184, 0, 'beginner', '2015-02-27 07:53:15'),
(30, 94, 113210, 1, 'beginner', '2015-02-27 08:06:50'),
(31, 94, 73047, 2, 'beginner', '2015-02-27 08:11:52'),
(32, 94, 90099, 1, 'beginner', '2015-02-27 08:18:16'),
(33, 94, 105099, 2, 'beginner', '2015-02-27 08:27:12'),
(34, 94, 138904, 2, 'beginner', '2015-02-27 08:36:36'),
(35, 94, 121193, 2, 'beginner', '2015-02-27 08:47:56'),
(36, 94, 97261, 2, 'beginner', '2015-02-27 08:54:14'),
(37, 94, 103662, 1, 'beginner', '2015-02-27 09:04:08'),
(38, 94, 109474, 3, 'beginner', '2015-02-27 09:08:33'),
(39, 94, 99444, 1, 'beginner', '2015-02-27 09:12:31'),
(40, 94, 99898, 2, 'beginner', '2015-02-27 09:19:27'),
(41, 94, 110134, 0, 'beginner', '2015-02-27 09:22:13'),
(42, 94, 142202, 2, 'beginner', '2015-02-27 09:37:06'),
(43, 94, 87028, 0, 'beginner', '2015-02-27 09:45:11'),
(44, 94, 99284, 0, 'beginner', '2015-02-27 09:52:16'),
(45, 94, 113138, 1, 'beginner', '2015-02-27 09:54:35'),
(46, 94, 84235, 1, 'beginner', '2015-02-27 09:56:10'),
(47, 94, 88390, 1, 'beginner', '2015-02-27 10:01:09'),
(48, 94, 109474, 0, 'beginner', '2015-02-27 10:08:22'),
(49, 94, 99975, 2, 'beginner', '2015-02-27 10:10:49'),
(50, 94, 254364, 5, 'middle', '2015-02-27 10:17:17'),
(51, 94, 97078, 4, 'beginner', '2015-02-27 10:20:07'),
(52, 94, 87825, 1, 'beginner', '2015-02-27 10:22:07'),
(53, 94, 93367, 1, 'beginner', '2015-02-27 10:24:00'),
(54, 94, 66309, 0, 'beginner', '2015-02-27 10:27:20'),
(55, 94, 109300, 0, 'beginner', '2015-02-27 10:37:03'),
(56, 94, 71945, 0, 'beginner', '2015-02-27 10:39:21'),
(57, 94, 99566, 0, 'beginner', '2015-02-28 11:33:24'),
(58, 94, 108365, 0, 'beginner', '2015-02-28 12:22:55'),
(59, 94, 121188, 0, 'beginner', '2015-02-28 12:29:10'),
(61, 94, 151968, 1, 'beginner', '2015-03-05 03:30:44'),
(62, 22, 349834, 1, 'easy', '2015-03-06 14:07:27'),
(63, 22, 254653, 1, 'easy', '2015-03-06 14:12:05'),
(64, 22, 324705, 3, 'easy', '2015-03-06 14:17:34'),
(65, 22, 303109, 1, 'easy', '2015-03-06 14:36:17'),
(66, 22, 345403, 1, 'easy', '2015-03-06 14:42:09'),
(67, 112, 130675, 1, 'beginner', '2015-03-07 09:38:36'),
(68, 94, 194158, 0, 'beginner', '2015-03-11 05:11:40'),
(69, 94, 161274, 2, 'easy', '2015-03-17 22:01:44'),
(70, 22, 262613, 0, 'easy', '2015-03-28 10:37:17'),
(71, 22, 295353, 2, 'easy', '2015-03-28 10:42:19'),
(72, 22, 292937, 3, 'easy', '2015-03-28 10:47:18'),
(73, 22, 265909, 4, 'easy', '2015-03-28 10:51:49'),
(74, 22, 232813, 0, 'easy', '2015-03-28 10:55:46'),
(75, 22, 328014, 0, 'easy', '2015-03-28 11:01:20'),
(76, 22, 300468, 3, 'easy', '2015-03-28 11:06:25'),
(77, 22, 383039, 5, 'easy', '2015-03-28 11:12:59'),
(79, 22, 338539, 1, 'easy', '2015-04-18 17:47:31'),
(80, 22, 523300, 0, 'easy', '2015-04-18 17:56:21'),
(81, 22, 332894, 1, 'easy', '2015-04-18 18:02:00'),
(82, 22, 188259, 0, 'easy', '2015-04-19 14:01:11'),
(83, 22, 229283, 2, 'easy', '2015-04-19 14:05:06'),
(84, 22, 362351, 2, 'easy', '2015-04-19 14:11:13'),
(86, 22, 164066, 1, 'easy', '2015-04-23 11:37:17'),
(87, 22, 325172, 1, 'easy', '2015-04-23 11:42:48'),
(88, 22, 342920, 2, 'easy', '2015-04-23 11:48:35'),
(89, 143, 101345, 0, 'beginner', '2015-06-13 22:03:13'),
(90, 143, 82804, 0, 'easy', '2015-06-13 22:05:02'),
(91, 140, 633777, 1, 'beginner', '2015-06-14 19:11:20'),
(92, 140, 527444, 4, 'master', '2015-06-15 02:30:59'),
(93, 140, 148179, 3, 'beginner', '2015-06-15 02:44:06'),
(94, 140, 123008, 0, 'beginner', '2015-06-15 02:47:29'),
(95, 140, 102300, 0, 'beginner', '2015-06-15 02:50:19'),
(96, 144, 118697, 0, 'beginner', '2015-06-20 13:28:27'),
(97, 140, 254221, 0, 'middle', '2015-06-25 02:03:21'),
(98, 140, 111407, 2, 'beginner', '2015-08-15 19:24:46'),
(99, 140, 119245, 1, 'beginner', '2015-08-16 18:09:20');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crossword_user_top_100_mobile`
--

CREATE TABLE IF NOT EXISTS `crossword_user_top_100_mobile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_time` int(20) NOT NULL DEFAULT '0',
  `user_error` int(11) NOT NULL DEFAULT '0',
  `user_level` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_of_game` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `crossword_user_top_100_mobile`
--

INSERT INTO `crossword_user_top_100_mobile` (`id`, `user_id`, `user_time`, `user_error`, `user_level`, `date_of_game`) VALUES
(5, 94, 92053, 0, 'easy', '2015-03-17 22:08:41'),
(6, 130, 323188, 11, 'easy', '2015-04-14 19:37:48'),
(7, 130, 302650, 11, 'easy', '2015-04-14 19:50:20'),
(8, 130, 332361, 13, 'easy', '2015-04-14 20:04:50'),
(9, 130, 322991, 13, 'easy', '2015-04-14 20:11:34'),
(10, 130, 384208, 15, 'easy', '2015-04-15 10:15:32'),
(11, 130, 282388, 11, 'easy', '2015-04-15 22:42:14'),
(12, 130, 224410, 11, 'easy', '2015-04-16 09:28:53'),
(13, 130, 790962, 17, 'hard', '2015-04-16 09:42:35'),
(15, 152, 136321, 0, 'easy', '2015-07-05 23:26:40'),
(16, 140, 224455, 0, 'easy', '2015-08-15 19:57:25');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `easy`
--

CREATE TABLE IF NOT EXISTS `easy` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `easy`
--

INSERT INTO `easy` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(101, 174711, 'Guest', 0, '2015-01-18 23:28:55'),
(102, 247575, 'Guest', 0, '2015-01-19 00:04:22'),
(103, 259579, 'Guest', 0, '2015-01-19 03:08:19'),
(104, 307845, 'mema', 22, '2015-02-01 08:33:56'),
(105, 401473, 'mema', 22, '2015-02-01 08:45:06'),
(106, 517331, 'mema', 22, '2015-02-01 08:53:58'),
(107, 270485, 'mema', 22, '2015-02-01 11:01:23'),
(108, 206005, 'mema', 22, '2015-02-01 11:05:03'),
(109, 396483, 'mema', 22, '2015-02-01 11:11:54'),
(110, 446651, 'mema', 22, '2015-02-01 11:19:29'),
(111, 207061, 'mema', 22, '2015-02-01 11:23:06'),
(112, 300500, 'mema', 22, '2015-02-04 18:43:32'),
(113, 395481, 'mema', 22, '2015-02-04 18:50:18'),
(114, 215104, 'mema', 22, '2015-02-04 19:01:13'),
(115, 495688, 'Guest', 0, '2015-02-08 13:59:12'),
(116, 487663, 'Guest', 0, '2015-02-12 08:07:03'),
(117, 159996, 'EEE', 51, '2015-02-20 21:29:13'),
(118, 181178, 'welbinator', 52, '2015-02-21 00:40:30'),
(119, 126189, 'welbinator', 52, '2015-02-21 00:42:53'),
(120, 570204, 'Guest', 0, '2015-02-25 04:23:10'),
(121, 214938, 'Guest', 0, '2015-03-04 14:38:39'),
(122, 349834, 'mema', 22, '2015-03-06 13:07:40'),
(123, 161274, 'GreenHorse', 94, '2015-03-17 21:02:00'),
(124, 419974, 'Guest', 0, '2015-05-07 06:11:13'),
(125, 82804, 'bcimmet', 143, '2015-06-13 20:05:08');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `easy_mobile`
--

CREATE TABLE IF NOT EXISTS `easy_mobile` (
  `id` int(11) NOT NULL DEFAULT '0',
  `time` int(15) NOT NULL,
  `name` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `easy_mobile`
--

INSERT INTO `easy_mobile` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(0, 105848, 'GreenHorse', 94, '0000-00-00 00:00:00'),
(0, 100219, 'GreenHorse', 94, '0000-00-00 00:00:00'),
(0, 167307, 'GreenHorse', 94, '0000-00-00 00:00:00'),
(0, 100700, 'GreenHorse', 94, '0000-00-00 00:00:00'),
(0, 251112, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 220674, 'Guest', 122, '0000-00-00 00:00:00'),
(0, 103132, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 92053, 'GreenHorse', 94, '0000-00-00 00:00:00'),
(0, 543905, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 543905, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 323188, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 323188, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 302650, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 302650, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 332361, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 332361, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 322991, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 322991, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 384208, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 384208, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 282388, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 282388, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 224410, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 224410, 'mommsensspie', 130, '0000-00-00 00:00:00'),
(0, 525941, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 132927, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 113369, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 149764, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 94905, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 108793, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 108793, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 108793, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 156373, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 107025, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 101418, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 144312, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 148912, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 128726, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 132706, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 149455, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 152145, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 169078, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 194078, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 181505, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 157709, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 108929, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 130696, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 154433, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 116441, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 123354, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 117630, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 136321, 'playerone', 152, '0000-00-00 00:00:00'),
(0, 102128, 'Guest', 0, '0000-00-00 00:00:00'),
(0, 108072, 'Guest', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expert`
--

CREATE TABLE IF NOT EXISTS `expert` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `expert`
--

INSERT INTO `expert` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(101, 419330, 'Fanamy', 60, '2015-02-25 12:34:12');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `godlike`
--

CREATE TABLE IF NOT EXISTS `godlike` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `godlike`
--

INSERT INTO `godlike` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hard`
--

CREATE TABLE IF NOT EXISTS `hard` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `hard`
--

INSERT INTO `hard` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(101, 534186, 'Guest', 0, '2015-02-21 19:04:16'),
(102, 410479, 'Guest', 0, '2015-07-07 19:20:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hard_mobile`
--

CREATE TABLE IF NOT EXISTS `hard_mobile` (
  `id` int(11) NOT NULL DEFAULT '0',
  `time` int(15) NOT NULL,
  `name` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `hard_mobile`
--

INSERT INTO `hard_mobile` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(0, 284143, 'Guest', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `master`
--

INSERT INTO `master` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(101, 527444, 'GreenHorse', 140, '2015-06-15 00:31:08');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `middle`
--

CREATE TABLE IF NOT EXISTS `middle` (
  `id` int(11) NOT NULL,
  `time` int(15) NOT NULL,
  `name` varchar(15) NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `middle`
--

INSERT INTO `middle` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(101, 433633, 'Guest', 0, '2015-02-07 07:59:47'),
(102, 228596, 'Guest', 0, '2015-02-15 17:05:12'),
(103, 208376, 'welbinator', 52, '2015-02-21 00:46:38'),
(104, 231168, 'Guest', 0, '2015-02-21 01:19:44'),
(105, 273735, 'Guest', 0, '2015-02-21 20:52:42'),
(106, 258899, 'Guest', 0, '2015-02-25 04:28:20'),
(107, 565581, 'Guest', 0, '2015-02-27 07:21:53'),
(108, 254364, 'GreenHorse', 94, '2015-02-27 09:17:25'),
(109, 254221, 'GreenHorse', 140, '2015-06-25 00:03:31');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `middle_mobile`
--

CREATE TABLE IF NOT EXISTS `middle_mobile` (
  `id` int(11) NOT NULL DEFAULT '0',
  `time` int(15) NOT NULL,
  `name` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Guest',
  `user_id` int(15) NOT NULL,
  `date_of_play` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `middle_mobile`
--

INSERT INTO `middle_mobile` (`id`, `time`, `name`, `user_id`, `date_of_play`) VALUES
(1, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(2, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(3, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(4, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(5, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(6, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(7, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(8, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(9, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(10, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(11, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(12, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(13, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(14, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(15, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(16, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(17, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(18, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(19, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(20, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(21, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(22, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(23, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(24, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(25, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(26, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(27, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(28, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(29, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(30, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(31, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(32, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(33, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(34, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(35, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(36, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(37, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(38, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(39, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(40, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(41, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(42, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(43, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(44, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(45, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(46, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(47, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(48, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(49, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(50, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(51, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(52, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(53, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(54, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(55, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(56, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(57, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(58, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(59, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(60, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(61, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(62, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(63, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(64, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(65, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(66, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(67, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(68, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(69, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(70, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(71, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(72, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(73, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(74, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(75, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(76, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(77, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(78, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(79, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(80, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(81, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(82, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(83, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(84, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(85, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(86, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(87, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(88, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(89, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(90, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(91, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(92, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(93, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(94, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(95, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(96, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(97, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(98, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(99, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(100, 600000, 'Guest', 0, '2014-07-08 13:24:50'),
(0, 125040, 'Guest', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trophies`
--

CREATE TABLE IF NOT EXISTS `trophies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trophy_like` int(11) NOT NULL DEFAULT '0',
  `trophy_time` int(11) NOT NULL DEFAULT '0',
  `trophy_seven_day` int(11) NOT NULL DEFAULT '0',
  `trophy_made_games` int(11) NOT NULL DEFAULT '0',
  `trophy_multiplayer_winner` int(11) NOT NULL DEFAULT '0',
  `trophy_multiplayer_looser` int(11) NOT NULL DEFAULT '0',
  `trophy_solver` int(11) NOT NULL DEFAULT '0',
  `trophy_playtime` int(11) NOT NULL DEFAULT '0',
  `trophy_longtime_gamer` int(11) NOT NULL DEFAULT '0',
  `trophy_registered_time` int(11) NOT NULL DEFAULT '0',
  `trophy_mistakes` int(11) NOT NULL DEFAULT '0',
  `trophy_beater` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `trophies`
--

INSERT INTO `trophies` (`id`, `user_id`, `trophy_like`, `trophy_time`, `trophy_seven_day`, `trophy_made_games`, `trophy_multiplayer_winner`, `trophy_multiplayer_looser`, `trophy_solver`, `trophy_playtime`, `trophy_longtime_gamer`, `trophy_registered_time`, `trophy_mistakes`, `trophy_beater`) VALUES
(1, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(128) DEFAULT NULL,
  `user_picture` tinyint(1) DEFAULT '0',
  `crossword_newsletter` tinyint(1) DEFAULT '1',
  `crossword_multiplayer_online` tinyint(1) DEFAULT '0',
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_picture`, `crossword_newsletter`, `crossword_multiplayer_online`, `time_stamp`, `last_login`) VALUES
(15, 'harleyl', 'vjarley@yahoo.com', '3a2a59971a36f16d4d14675e17ab10b2cdb78cb272ed454ac841774419a3b2591f75ec3b70737a18701935fce93004efdb80d4ce1215a50d80b60dd83c47ed98', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(16, 'subhash', 'putumca@gmail.com', '3adef190c349f6f86d159faa5e615ffcb24a6c0ca45d73148fe116327a7fc2dd91ec299d0682e74ea0eee4e4cacff01bac5f835047fe0fd1c244245eaea55a48', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(17, 'ashesh', 'asheshpokhrel@gmail.com', '43170ebebb01ad9276e5cabaabea882b8fcb1607f74c970e6a705273152049f036410bd2e51256c96abaa4e201c0cb46f18a006ab6c103d62f9448de916632e7', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(18, 'dasdeichkind', 'dfhildebrandt@web.de', '1e07e6ee9e6e48ff033b4e0755144bcdbfc0093fe2a1ea3044d2300005c124291d047afe2c28c291f68ae2336fa940b385129822b62eb8cbd387d5e5b604bd11', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(19, 'marten ', 'martenpaysen@web.de', 'b5d3809398a3ee30024dcbdb02ffc38651fd22bd1a4ad25466facf641cc1d18834f60054524d9682078cc7255749ce2a66470f99afff4030cf01034700854c13', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(20, 'mynameisali', 'coolsince1990@rocketmail.com', '2cc2b2f2ad394c7c78ac9fc9336fa8efa25e378d00169c04010196af04ad80c8f12da5f4cff966753d99a8e3ac8b5ad4a202e0b56dfce71901e50c15e40e1c8b', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(21, 'Hazes', 'blarsen@hotmail.de', '3ca0dfba0da0794bfee117a2ca6949105f19b748274ca43ee4564f198ad0f7cb0e166aa5478ab1c7ca11826c9b15866f31ad11a255f55614d3aa6ff3a709883a', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(22, 'mema', 'maike.ehlbeck@web.de', 'd08650daf19e4e2ac4f27e8aef6781e0619e32c4532f60f6b5887d1c4406322c1c14790896bb74f25c0581dc007407d8a66e7112e893d0cb8cd9c6c61ff6f870', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(28, 'FrozenreiN', 'frozenrein01@gmail.com', '8b7f1beba84b7cddb1deacddc7f779e7516141793294584582c3da4f06604f13457281dee10865d87eaf8acd8f9d4728a802321a207f7e0935a7d4f148459c63', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(29, 'Sda', '111ddd@gmail.com', '4e044c39dfed04cc029466581b2e60de88e8b9be322788c773adcb40d09d13f9864cfaa713a3509dcfcc6c0957c546da2c99958af1a6b6b282be3d7f8ee37c6f', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(30, 'aymen', 'aymen@gmail.com', '1c89edaff03f6790dbfafc576d240aa56b3ecc2cde1c28e636d0ffaa321d4a5b53c46e95fa0fb681a174cd3c250c679c67c221c93d38cad8552c57a7b2f8d5ff', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(31, 'saagar', 'saisagar729@gmail.com', '2bbb5284ffcca0e30f82d4f3178bcd9c25a67af247fcba5d9d9abd96ba7ad212c701042ed1c8caef9f9061b77a2e8e34b8a12ef40b248c1ba8c0aa18c2141d87', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(32, 'sadsa', 'asdas@gmail.com', '4e044c39dfed04cc029466581b2e60de88e8b9be322788c773adcb40d09d13f9864cfaa713a3509dcfcc6c0957c546da2c99958af1a6b6b282be3d7f8ee37c6f', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(33, 'winner', 'lalgamba@gmail.com', '0099cd04af5469df065c828b8d205aff02b6c71148dbd3feaac0c237dd6e3b652253baef6d75762b1f916fb26dabb183d059b09103416f031b238fa71bac08da', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(34, 'peterbear', 'q7314568@gmail.com', '9e839f530c3da398fcf256cfcf5311afaa0c17426abfecf288f22416e33f2baf83be33d867091c162b475ee9935f629c0c70d4a4a777fca40d3123490694d5e3', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(35, 'pogi', 'pogi@yahoo.com', 'b737025c0f765ce1bf3e88dde5f36f6062c21a911412e6d2cfaa9e93a9fa7335e7048830a0dc178e646118e9416c810ecfc4bc3a6371c21d52bc85fd41fe9766', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(36, 'Ramesh', 'fx_ra@hotmail.com', '0ca90238a817cb513e696d258bc505104c1f3bd4895dc2620570fbc36eb7c2044b2e5c5d1a3acac2bbc3da496e364ea8d6364491d763a424076ad6ea34c2d639', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(37, 'Dimoff', 'Dimoff@mail.bg', '23f987964590f1f883204d4224f3bcd5bdde93937e0d231e682f7cd29832e8b1c7a3586fa175e28e8e8bb74e2acad23a45d36b0c5e68b519b1a3b4f101968d46', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(38, 'hasan', 'hassansamee@gmail.com', '4e044c39dfed04cc029466581b2e60de88e8b9be322788c773adcb40d09d13f9864cfaa713a3509dcfcc6c0957c546da2c99958af1a6b6b282be3d7f8ee37c6f', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(39, 'Bunty', 'lordshiva11@gmail.com', '842352051eb87dda022dfcc75f92d2214579a564e92dfa81e76d793563a330f700328a060923cf9b6c7d08821548b8d9b0b857dfd569f536ec86a01cbeec1041', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(40, 'souvik', 'showvhick@gmail.com', 'f36c5ac7c2950bc785b6162ae780579c6770d5a08e1a0d223ce9e8b78a44eec8b7013987205a9c6977edfd1ecc14b7e270b30e9080a3fb62e75b8cf1c75c5620', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(41, 'adrnvi', 'adriantms@vp.pl', '8879de1993371f63c98e699259443a969b79845fe8329e04a9090ef84933789e22385ab1e982697eae9d55c5d9f156b46a4ba8d760466817fc2617b86fb8f97d', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(42, 'engg.abdur', 'engg.abdurrehman70@gmail.com', '225e16974852535b8f8751171a2a84d424f2ee0e17e3092180e4bc456b7a5102432ea22166e2abf6a26b709e48c89b162e4fa74e99c7fbece05c3c43004f82cd', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(43, 'exora', 'khali_87@yahoo.com', 'bca2dcaad96ce6895e6887665947b9ee80487e11ff497c3573ce7c9afe992d72a2f6f3776b539e88d1f087042edfdaaae5f962fa50776c8c6f638897a07b0c6e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(44, 'Vignesh', 'yobvicky@gmail.com', '44bb71169e9cbd8c7ba2b064283aed7903b45812b10ef9ce71e63820ccf9fc9b6fb41a5e7961c15f87aa5ef7fd76dd878031d4887bcbe7ea1c7895a4298a1c1b', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(45, 'oink', 'oink@oinker.com', '6679952114498819d195d164386b5df9b69e785a81edffb56d68d857593d062fe3b23cc6415b9939c65e22c7f03a005e9d8ec29fddc0d50ed4ff052f5ab894c2', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(46, 'anil kumar', 'anil.pal946@gmail.com', '0b7884712561725abf7fd2d5b1ac01c46db52fa42db806c658dbfc91f0d0a5e58187965c66cc989a48b3e3319f6a3b45f9208e71590121179298bb189c582c1e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(47, 'AliKhubur_TheNoob', 'alikubur@outlook.com', '225e4100fc96712b5d0c94e21e89766f004d27dbbe96d0b3cbd6b897b59c2243ab4b8e7993193d4b0b4fcc171a29843f8479db6482dbdd7f013cc247bbfb2727', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(48, '124m', 'malgudiap@rediffmail.com', '4e044c39dfed04cc029466581b2e60de88e8b9be322788c773adcb40d09d13f9864cfaa713a3509dcfcc6c0957c546da2c99958af1a6b6b282be3d7f8ee37c6f', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(52, 'welbinator', 'james.welbes@gmail.com', '68c1ffc34df00599a2003a2a524ea91436af63dc1673c3ed195cdde550900cc65737e4f6c959783c29e8a4ff78ab530ceb46ba02fef18e3c4c409be7f16698ce', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(53, 'kazzrock', 'mr.kazz92@gmail.com', '1a248e66d7ba26fe199333af94e00d278175081c04a8a1980aa0d2f4d24d9394b417e8df1146fe688fefd70be05aec83334acad7c1be4af5cf48367fe47a6c42', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(54, 'rahul', 'rc103271@gmail.com', 'cd18be4fc45cc848efc7a359ea441e255ef96fa289d99d1325b3cb757f34f02349bc8a00bed23a709aa66e26024b84817ddb5a19dc6e90a6dda24bf5fe93b697', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(58, 'aamir', 'ak_mughal@outlook.com', '48fb568ffe771ca5d80cfa0d6974e6b90fff9ee4dbc876646c00d1b487724927379409f360f61ce429bcb54cd3323018b0676a5cdf90edc95028e3358d24e447', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(59, 'srinadh', 'srinadh2b@gmail.com', '150de0fcfb833dafa82f23c4a7d86071a844900259e653b641bb62bd0ec72a9ca2d2caa59fbaec6c3a580155dcfeb3ab29a037485a55b217e062d6749e9a4f76', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(60, 'Fanamy', 'patricia.berger@wavenet.at', 'e4fc42d3f2037a155c9408e9a666f5baed82c510d1ccbcd285f4e9453855aaf62d582fc8143b7f00edf791b3212154050b05f059c73e54486db01dc47c65f3cf', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(95, 'keatngan', 'keatngan078@gmail.com', 'cc93a3de20e7a2299e6043cb68f33b0453454133369444998326ae104ba87251c474325cb6010d1b342404b447e8eb592ce810de9735099923dbb19fa81c8fd4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(97, 'keat ngan', 'keatngan@gmail.com', 'cc93a3de20e7a2299e6043cb68f33b0453454133369444998326ae104ba87251c474325cb6010d1b342404b447e8eb592ce810de9735099923dbb19fa81c8fd4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(98, 'govind', 'govind.jha60@gmail.com', 'bb0fccfedd25b0eedbf93770907883bdaf5c6a68baf77b6c319e0f66d1f6675f8019bc3902e9a7784790ed9b3fcab17a120d7cd113ade9859c7717dd010ff91c', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(99, 'Indrajit', 'indrajit.auddy27@gmail.com', 'c244658044f3bf46c6451e43686d6f315598a4c8f0824cb371fe041ff718fa2aac8fe7f8014733d5e4cffab41f5052c86e38923de4a572fda206cad5bf9df48e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(100, 'durgesh', 'durgeshducat@gmail.com', '7598b67cd5c7bed0901878bb176aa46777cea2b674b521a8c6b6296d63ce4a0621a81a233bb30e8a0efb8bcbc8170b38ddad726af237d0c3f071f4d73a900815', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(108, 'Guest', 'a@a.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(110, 'bekele', 'bekeleh7@gmail.com', '3d87fc685740ee71fce3d0ac4d2fecc763eac184ab39c7fbf78a7a9aba1b0be424596dd2c5b927e5af72907146443a9e4be8cd5d43d5273ee0d5592857776401', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(111, 'Pratham', 'pratham12521@gmail.com', 'f8598deb2c4734f864938e46238c5460055c33ecd6478b2f4efe33c4bb70d46b34b2dabf234efc957ce412550dac10e3be644249eef83a9320ad005edb46f7bc', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(112, 'Kido', 'kalifatullah86@gmail.com', '24a490cd68ac4664e7ce749706f0a02433c2d97ac06dcca6b05ca30ee4d4b89af1517759c0568cb956228da1ac8fb44b003549cbfe8c0bca5b050db32d02e1c3', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(118, 'Klaus', 'jan@jan.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(119, 'try', 'z3x@hacker.ps', '8c77fd3b31300f0e777b732c25a15ea29f2e6d265f45fe2996a841d3108c017d19d6081066fa0c55f90b43c4eadcab85e215ef9a1dfae413bd3dbf2e3ef7a8bc', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(120, 'try12', 'msf@hacker.ps', 'c27c46a7b0c07cb801907e5b9aefcf6030a67734be19080672526f9a72040a4ae2856710e5ad87d8a3f15bddd7fe2a1894e16a6806c718d696faebf0f2657c4b', 0, 0, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(121, 'hariharan.r', 'rdhs1899@gmail.com', 'f46ee1940f30c69f4c458070237f6cccd008df493ab1f8d6aeb9afebcdfbbc7063554fabe33f709f43c59a612b724ddca16f0f05b46124f165ea322a6f46c872', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(122, 'To Boern ', 'neurole7b8vvha65@aol.de', 'b6a3f24c72324a01736f7121cfd31971a50cc55017839a361c7c7df7ff31c9665e389e5ce86905bb671fe15a1d99705d19d0fd0ba6581ab8246fbde7de6bd1d3', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(123, 'Saxy', 'maxhagen22@yahoo.de', 'd54ec19f7fb68aeeb9f294eeab2da5fc4be85b62eaf1eac30034d180e6c17ce629707f279d570f96fabd3d05e48d09720e9db56721e3619df8cfe5a0cf81c684', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(124, 'UUU', 'uuu@uuu.de', '1b187d5f94f429336be6b4f8bc8d5f1402772ef13ac0ee11112525683cae847ef2a02812417d4610ca7e3061f2feae5c5e8c0336dbff17c92b07a05042c3971e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(125, 'zulfikar', 'zulfikaradi10@gmail.com', 'c51647ec6f60d28a7f718249f7538d46e609e51deaa511da18fe1a997238f8c4c8ae86e3361b0b7bb0d6ab7af99a1e1d14728fde246edb9654a74320979505c1', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(126, 'dislexic', 'tamefiss@ymail.com', 'cd17eba2acff0b12839264bd4b620da6136a051d7706889e60a544a1aaa20f27514078a0ebc0c506a337db13d90f0b46c442a126b6e7385aea37bf5155cb4aeb', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(127, 'HHH', 'h@h.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(128, 'svaron', 'svaron9190@aol.com', 'a3c8624e7049e075148accbd54745440cb5e7b8e1d02846e5d7e6070824bee8d78504dbec1711094cd5e48e0afea6744a78b9854569a42deca5319aebfbd6479', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(130, 'mommsensspie', 'mommsensspiel@gmail.com', '8590cb6b66bbb5945b7c52c0f4a18fc1c0b28a3125fc152178f794b5249a1373533f410906aabb43c98ab6348339ec7fdd7f649fbb3124b0f2f93afd9b5c4311', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(132, '', 'jan.w.ehlbeck1@web.de', 'de30a9d80f0ec3769e8f99909d5652861c95bfa34bf72f3dd9becd3f197d1abd4ed4f5ea024f05e369d999900870616db0a1de045047ab51b4a9305813e3c22e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(133, 'Gutberto', 'jan.w.ehlbeck2@web.de', 'de30a9d80f0ec3769e8f99909d5652861c95bfa34bf72f3dd9becd3f197d1abd4ed4f5ea024f05e369d999900870616db0a1de045047ab51b4a9305813e3c22e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(134, 'Hubert', 'jan.w.ehlbeck@web1.de', 'de30a9d80f0ec3769e8f99909d5652861c95bfa34bf72f3dd9becd3f197d1abd4ed4f5ea024f05e369d999900870616db0a1de045047ab51b4a9305813e3c22e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(135, 'Huberto', 'jan.w3.ehlbeck@web.de', 'de30a9d80f0ec3769e8f99909d5652861c95bfa34bf72f3dd9becd3f197d1abd4ed4f5ea024f05e369d999900870616db0a1de045047ab51b4a9305813e3c22e', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(136, 'Hubertr', 'jan.w43.ehlbeck@web.de', 'ab6662f74a17a5b9ba5494a4c04bd1182d97091beccedeef8ea35246ae4659ae38c3f6375aa9ed22de39ba687e9d4940d7aee742839f1ebada8310d9f85e9565', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(137, 'PlayKing', 'info@dickens-webdesign.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(138, 'FairyTale22', 'jan.w22.ehlbeck@web.de', '741c98e85b5f6b57a559d4599cbb9e99537a1b058665ae3db935cab72cb387e253ca97385c59b096cd3c6c5188ec06fc0afc6d78f2f901a05de9019aac815841', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(140, 'GreenHorse', 'jan.w.ehlbeck@web.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 1, 1, 0, '0000-00-00 00:00:00', '2015-08-26 07:02:23'),
(141, 'Witcher', 'jan.55@web.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(142, 'Witcher33', 'jan.w33.ehlbeck@web.de', '3113fe24ac07f30254e8d2e517716e37273ad67c1bbb8feccab80daf332b187fa15cec91893631f5a55b7cd278d44bf7683929e87e76b7860989543a3ec729e4', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(143, 'bcimmet', 'bcimmet@yahoo.com', '9d7a576c49d253644930d271c61d2b195d0a404f24cc7e99bb0d532d26855be21f6b24f2a82b10ecbfd9ba0ee1c3b9ad8c9c6bf0947efae40b0a653232ceb7da', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(144, 'fatehjagdeo', 'fatehjagdeo@gmail.com', 'ef218997c2725ed4c775ea8ba825a6ee3570fa311a1ccb208ccd9a4bdf249b769829c61b9375634d0a8f8dca990c5c6b48dac5ee02cf6d7c6ae47409eb495747', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(145, '&lt;script//&gt;Pe', 'jan.rr@web.de', '331332152700c21fb5b00d68ac80e19f85815835dbb673dbbc3e0afa9ce8a541429e696fe18089d160122fae3b398b6f18cfe3bfd87964aa5722549c1b8f257a', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(146, 'hhhh', 'xxx@xxx.de', '64d402c3f2ead00aa8e89e2ac4dc66697b6410bcab2a4111d8ecc849f46c1a9e9ef6d36b336f6432ba78708d5d2ae025902031e4602103fca634c79c880799dc', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(147, '&lt;''/script&quot;&gt;', 'xx@xx.de', '64d402c3f2ead00aa8e89e2ac4dc66697b6410bcab2a4111d8ecc849f46c1a9e9ef6d36b336f6432ba78708d5d2ae025902031e4602103fca634c79c880799dc', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(148, '&lt;&quot;script&quot;&gt;', 'xxxx@xxxx.de', '3b0191315c6b604321b0c0f6ef7be6bd34633de618578bc16a3f524753bcea5acf7d3cef2e2546a37dd70a60ca766d235a71d779b6c64f1c32bad5536266aab9', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(149, '&lt;script/&gt;', 'jjjj@jjjj.de', '811d881b8517c13fc41d5c882340cb40cc4e0ffc69e65eeb6fd99d7abc6f367f6ba3452212af30961097b7dac47270095b058e77ebee3a1bd129ddfc44adc3f1', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(150, 'Colandy69', 'colandy69@gmail.com', 'ffedf6d2abde3a6d26065ccad07a472875592b23fdf5d6d637183716c2a4a6f2cbb10da7e94a2d61f8a1d42048958e09ad7a46c30e8d540445146be632a90398', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(151, 'thietho', 't.thiele@hotmail.de', '5a612e13e1fc4d31511b8a73b411b32af98d0a50bed119cb2496a0160f15a6b6403099ad9ccc7b1e63ecc1e50dccb2905d29cb866a3ccf8de0f353207e789677', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(152, 'playerone', 'yma0303@alice-dsl.net', '59e8818352e6a29f065e36827828374d46edee21308ec07f53abae70ef70c09884d976699889b4eb3eb05d5f604fd528c990163f019d2b33e5bf59a3f7c35983', 0, 0, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(153, 'shaghayegh', 'shaghayegh1943@gmail.com', '4e044c39dfed04cc029466581b2e60de88e8b9be322788c773adcb40d09d13f9864cfaa713a3509dcfcc6c0957c546da2c99958af1a6b6b282be3d7f8ee37c6f', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(154, 'nguyen thanh', 'chinh161279@gmail.com', '5005ba58cee2e2319922ec36582471b4b6542df51bf36e1adb93369bca06361a7776c822f883ab544f2892014fb5becebaa8a7f7e63caed7b01cf22509dafb23', 0, 1, 0, '0000-00-00 00:00:00', '2015-08-16 11:10:30'),
(155, 'hhzzuu', 'fsdlfs@sdf.de', '1d49893c4390839cd02fd921c1664586632a70cc8ebb7a9e048ea3b9f6b328af6e2e32586b20aec81e0d6d565478b9113e7374895a374ca87b8b635a14a1d2e1', 0, 1, 0, '2015-08-16 10:58:12', '2015-08-16 11:10:30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_results`
--

CREATE TABLE IF NOT EXISTS `user_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_all_games` int(11) DEFAULT '0',
  `user_started_games` int(11) DEFAULT '0',
  `user_complete_games` int(11) DEFAULT '0',
  `user_last_game` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_results`
--

INSERT INTO `user_results` (`id`, `user_id`, `user_all_games`, `user_started_games`, `user_complete_games`, `user_last_game`) VALUES
(1, 50, 0, 0, 0, '0000-00-00 00:00:00'),
(2, 51, 8, 8, 7, '2015-02-20 22:00:01'),
(3, 52, 4, 4, 4, '2015-02-21 00:46:36'),
(4, 53, 6, 6, 0, '2015-02-26 14:12:59'),
(5, 54, 1, 1, 0, '2015-02-21 20:18:49'),
(6, 55, 4, 4, 0, '2015-02-23 16:24:53'),
(7, 56, 8, 8, 0, '2015-02-23 17:16:04'),
(8, 57, 40, 40, 2, '2015-02-26 19:04:29'),
(9, 58, 3, 3, 0, '2015-02-25 04:02:24'),
(10, 59, 5, 5, 1, '2015-02-25 11:12:55'),
(11, 60, 10, 10, 8, '2015-02-25 12:48:27'),
(12, 61, 0, 0, 0, '0000-00-00 00:00:00'),
(13, 62, 0, 0, 0, '0000-00-00 00:00:00'),
(15, 64, 0, 0, 0, '0000-00-00 00:00:00'),
(16, 65, 0, 0, 0, '0000-00-00 00:00:00'),
(17, 21, 0, 0, 0, '0000-00-00 00:00:00'),
(18, 67, 0, 0, 0, '0000-00-00 00:00:00'),
(19, 67, 0, 0, 0, '0000-00-00 00:00:00'),
(20, 67, 0, 0, 0, '0000-00-00 00:00:00'),
(21, 67, 0, 0, 0, '0000-00-00 00:00:00'),
(22, 67, 0, 0, 0, '0000-00-00 00:00:00'),
(23, 72, 0, 0, 0, '0000-00-00 00:00:00'),
(24, 73, 0, 0, 0, '0000-00-00 00:00:00'),
(35, 84, 0, 0, 0, '0000-00-00 00:00:00'),
(45, 94, 117, 117, 37, '2015-04-13 08:51:25'),
(46, 95, 3, 3, 0, '2015-02-28 07:37:13'),
(47, 96, 0, 0, 0, '0000-00-00 00:00:00'),
(48, 97, 0, 0, 0, '0000-00-00 00:00:00'),
(49, 98, 2, 2, 0, '2015-02-27 11:34:16'),
(50, 99, 0, 0, 0, '0000-00-00 00:00:00'),
(51, 100, 3, 3, 0, '2015-02-27 12:53:32'),
(52, 101, 0, 0, 0, '0000-00-00 00:00:00'),
(53, 102, 0, 0, 0, '0000-00-00 00:00:00'),
(54, 103, 0, 0, 0, '0000-00-00 00:00:00'),
(55, 104, 2, 2, 1, '2015-02-28 12:36:46'),
(56, 105, 0, 0, 0, '0000-00-00 00:00:00'),
(57, 106, 0, 0, 0, '0000-00-00 00:00:00'),
(58, 107, 0, 0, 0, '0000-00-00 00:00:00'),
(59, 108, 0, 0, 0, '0000-00-00 00:00:00'),
(60, 109, 0, 0, 0, '0000-00-00 00:00:00'),
(61, 110, 3, 3, 0, '2015-03-04 09:45:52'),
(62, 111, 2, 2, 0, '2015-03-04 14:24:30'),
(63, 112, 1, 1, 1, '2015-03-07 08:38:36'),
(64, 109, 0, 0, 0, '0000-00-00 00:00:00'),
(65, 110, 3, 3, 0, '2015-03-04 09:45:52'),
(66, 111, 2, 2, 0, '2015-03-04 14:24:30'),
(67, 112, 1, 1, 1, '2015-03-07 08:38:36'),
(70, 115, 0, 0, 0, '0000-00-00 00:00:00'),
(72, 117, 0, 0, 0, '0000-00-00 00:00:00'),
(73, 118, 3, 3, 0, '2015-03-13 20:18:20'),
(74, 119, 0, 0, 0, '0000-00-00 00:00:00'),
(75, 120, 3, 3, 1, '2015-03-14 01:22:06'),
(76, 121, 1, 1, 0, '2015-03-14 06:24:18'),
(77, 122, 0, 0, 0, '0000-00-00 00:00:00'),
(78, 123, 0, 0, 0, '0000-00-00 00:00:00'),
(79, 124, 1, 1, 0, '2015-03-15 16:32:50'),
(80, 125, 2, 2, 0, '2015-03-21 02:14:17'),
(81, 126, 0, 0, 0, '0000-00-00 00:00:00'),
(82, 127, 0, 0, 0, '0000-00-00 00:00:00'),
(83, 128, 5, 5, 0, '2015-06-20 11:31:29'),
(85, 130, 16, 16, 8, '2015-04-19 18:42:32'),
(86, 131, 5, 5, 0, '2015-05-06 17:42:27'),
(87, 132, 0, 0, 0, '0000-00-00 00:00:00'),
(88, 133, 0, 0, 0, '0000-00-00 00:00:00'),
(89, 134, 0, 0, 0, '0000-00-00 00:00:00'),
(90, 136, 0, 0, 0, '0000-00-00 00:00:00'),
(95, 117, 0, 0, 0, '0000-00-00 00:00:00'),
(96, 118, 3, 3, 0, '2015-03-13 20:18:20'),
(97, 119, 0, 0, 0, '0000-00-00 00:00:00'),
(98, 120, 2, 2, 0, '2015-03-14 01:22:06'),
(99, 121, 1, 1, 0, '2015-03-14 06:24:18'),
(100, 122, 0, 0, 0, '0000-00-00 00:00:00'),
(101, 123, 0, 0, 0, '0000-00-00 00:00:00'),
(102, 124, 1, 1, 0, '2015-03-15 16:32:50'),
(103, 125, 2, 2, 0, '2015-03-21 02:14:17'),
(104, 126, 0, 0, 0, '0000-00-00 00:00:00'),
(105, 127, 0, 0, 0, '0000-00-00 00:00:00'),
(106, 128, 5, 5, 0, '2015-06-20 11:31:29'),
(108, 130, 16, 16, 8, '2015-04-19 18:42:32'),
(109, 131, 5, 5, 0, '2015-05-06 17:42:27'),
(110, 132, 0, 0, 0, '0000-00-00 00:00:00'),
(111, 133, 0, 0, 0, '0000-00-00 00:00:00'),
(112, 134, 0, 0, 0, '0000-00-00 00:00:00'),
(113, 135, 0, 0, 0, '0000-00-00 00:00:00'),
(114, 136, 0, 0, 0, '0000-00-00 00:00:00'),
(115, 137, 0, 0, 0, '0000-00-00 00:00:00'),
(116, 138, 0, 0, 0, '0000-00-00 00:00:00'),
(118, 140, 68, 68, 17, '2015-08-26 16:42:45'),
(119, 141, 0, 0, 0, '0000-00-00 00:00:00'),
(120, 142, 0, 0, 0, '0000-00-00 00:00:00'),
(121, 143, 2, 2, 2, '2015-06-13 20:05:02'),
(122, 144, 2, 2, 1, '2015-06-28 13:21:29'),
(123, 145, 0, 0, 0, '0000-00-00 00:00:00'),
(124, 146, 0, 0, 0, '0000-00-00 00:00:00'),
(125, 147, 0, 0, 0, '0000-00-00 00:00:00'),
(126, 148, 0, 0, 0, '0000-00-00 00:00:00'),
(127, 149, 0, 0, 0, '0000-00-00 00:00:00'),
(128, 150, 0, 0, 0, '0000-00-00 00:00:00'),
(129, 151, 1, 1, 0, '2015-07-05 10:16:53'),
(130, 152, 3, 3, 1, '2015-07-05 21:27:11'),
(131, 153, 0, 0, 0, '0000-00-00 00:00:00'),
(132, 154, 0, 0, 0, '0000-00-00 00:00:00'),
(133, 155, 0, 0, 0, '0000-00-00 00:00:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `beginner`
--
ALTER TABLE `beginner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `time` (`time`);

--
-- Indizes für die Tabelle `crossword_multiplayer`
--
ALTER TABLE `crossword_multiplayer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crossword_multiplayer_user`
--
ALTER TABLE `crossword_multiplayer_user`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crossword_user_made_games`
--
ALTER TABLE `crossword_user_made_games`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crossword_user_made_games_mobile`
--
ALTER TABLE `crossword_user_made_games_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crossword_user_top_100`
--
ALTER TABLE `crossword_user_top_100`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crossword_user_top_100_mobile`
--
ALTER TABLE `crossword_user_top_100_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `easy`
--
ALTER TABLE `easy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `easy_mobile`
--
ALTER TABLE `easy_mobile`
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `godlike`
--
ALTER TABLE `godlike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `hard`
--
ALTER TABLE `hard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `hard_mobile`
--
ALTER TABLE `hard_mobile`
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `middle`
--
ALTER TABLE `middle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `middle_mobile`
--
ALTER TABLE `middle_mobile`
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `trophies`
--
ALTER TABLE `trophies`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indizes für die Tabelle `user_results`
--
ALTER TABLE `user_results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `beginner`
--
ALTER TABLE `beginner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT für Tabelle `crossword_multiplayer`
--
ALTER TABLE `crossword_multiplayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=539;
--
-- AUTO_INCREMENT für Tabelle `crossword_multiplayer_user`
--
ALTER TABLE `crossword_multiplayer_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT für Tabelle `crossword_user_made_games`
--
ALTER TABLE `crossword_user_made_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT für Tabelle `crossword_user_made_games_mobile`
--
ALTER TABLE `crossword_user_made_games_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT für Tabelle `crossword_user_top_100`
--
ALTER TABLE `crossword_user_top_100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT für Tabelle `crossword_user_top_100_mobile`
--
ALTER TABLE `crossword_user_top_100_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT für Tabelle `easy`
--
ALTER TABLE `easy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT für Tabelle `expert`
--
ALTER TABLE `expert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT für Tabelle `godlike`
--
ALTER TABLE `godlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT für Tabelle `hard`
--
ALTER TABLE `hard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT für Tabelle `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT für Tabelle `middle`
--
ALTER TABLE `middle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT für Tabelle `trophies`
--
ALTER TABLE `trophies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT für Tabelle `user_results`
--
ALTER TABLE `user_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
