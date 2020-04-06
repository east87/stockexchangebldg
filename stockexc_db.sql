-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2020 at 02:07 PM
-- Server version: 10.3.21-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockexc_fji_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_setting`
--

CREATE TABLE `cms_setting` (
  `setting_name` varchar(255) NOT NULL,
  `setting_parameter` varchar(255) NOT NULL,
  `setting_last_time` datetime NOT NULL,
  `setting_by` int(11) NOT NULL,
  `valueadded_field` varchar(255) NOT NULL,
  `valueadded_fieldtext` text NOT NULL,
  `valueadded_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_setting`
--

INSERT INTO `cms_setting` (`setting_name`, `setting_parameter`, `setting_last_time`, `setting_by`, `valueadded_field`, `valueadded_fieldtext`, `valueadded_image`) VALUES
('log', 'text_file', '2012-03-19 15:27:34', 3, '', '', ''),
('meta home', 'Telkomsel', '0000-00-00 00:00:00', 2, 'telkomsel,telekomunikasi,seluler,kartu as ,simpati,kartu halo', 'Telkomsel is the leading operator of cellular telecommunications services in Indonesia by market share and revenue share', ''),
('information', 'information', '2012-03-19 15:18:58', 3, 'Content Management System', '', 'Setting-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_desc` text NOT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `about_order` int(11) NOT NULL DEFAULT 1,
  `about_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `about_create_date` datetime NOT NULL,
  `about_create_by` int(11) NOT NULL,
  `about_update_date` datetime DEFAULT NULL,
  `about_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_title`, `about_desc`, `about_image`, `about_order`, `about_active_status`, `about_create_date`, `about_create_by`, `about_update_date`, `about_update_by`) VALUES
(1, 'dadsa', 'dasda', '/assets/file_upload/hacker/images/bg-slide-2(1).jpg', 1, 1, '2018-05-29 18:22:04', 1, '2018-05-29 18:22:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access`
--

CREATE TABLE `tbl_access` (
  `access_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `access_active_status` tinyint(1) NOT NULL,
  `access_create_date` datetime NOT NULL,
  `access_create_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_access`
--

INSERT INTO `tbl_access` (`access_id`, `user_level_id`, `module_id`, `access_active_status`, `access_create_date`, `access_create_by`) VALUES
(1, 1, 110, 1, '2019-02-07 18:53:43', 1),
(2, 1, 121, 1, '2019-03-05 19:00:10', 1),
(3, 1, 103, 1, '2019-03-08 21:34:04', 1),
(4, 1, 122, 1, '2019-05-16 11:51:02', 1),
(5, 1, 123, 1, '2019-07-29 15:00:05', 1),
(6, 1, 124, 1, '2019-09-08 22:18:26', 1),
(7, 1, 125, 1, '2019-09-13 13:41:40', 1),
(8, 1, 126, 1, '2019-09-13 13:41:40', 1),
(9, 1, 127, 1, '2019-09-13 13:41:40', 1),
(10, 1, 128, 1, '2019-09-14 02:48:19', 1),
(11, 1, 129, 1, '2019-09-14 02:50:23', 1),
(12, 1, 130, 1, '2019-09-18 15:10:30', 1),
(13, 1, 131, 1, '2019-09-18 16:31:12', 1),
(14, 1, 132, 1, '2019-11-27 13:20:43', 1),
(15, 1, 133, 1, '2019-11-27 14:50:17', 1),
(16, 1, 134, 1, '2019-11-27 15:02:44', 1),
(17, 1, 135, 1, '2019-11-27 15:02:44', 1),
(18, 1, 136, 1, '2019-12-02 15:54:27', 1),
(19, 1, 137, 1, '2019-12-03 17:43:18', 1),
(20, 1, 139, 1, '2019-12-03 18:51:22', 1),
(21, 1, 138, 1, '2019-12-03 18:51:22', 1),
(22, 1, 140, 1, '2019-12-03 19:52:40', 1),
(23, 1, 141, 1, '2019-12-03 21:20:58', 1),
(24, 1, 142, 1, '2019-12-04 17:54:31', 1),
(25, 3, 121, 1, '2020-01-06 15:21:54', 6),
(26, 3, 138, 1, '2020-01-06 15:21:54', 6),
(27, 3, 139, 1, '2020-01-06 15:21:54', 6),
(28, 3, 103, 1, '2020-01-06 15:21:54', 6),
(29, 3, 124, 1, '2020-01-06 15:21:54', 6),
(30, 3, 125, 1, '2020-01-06 15:21:54', 6),
(31, 3, 137, 1, '2020-01-06 15:21:54', 6),
(32, 3, 122, 1, '2020-01-06 15:21:54', 6),
(33, 3, 129, 1, '2020-01-06 15:21:54', 6),
(34, 3, 132, 1, '2020-01-06 15:21:54', 6),
(35, 3, 130, 1, '2020-01-06 15:21:54', 6),
(36, 3, 133, 1, '2020-01-06 15:21:54', 6),
(37, 3, 141, 1, '2020-01-06 15:21:54', 6),
(38, 3, 110, 1, '2020-01-06 15:21:54', 6),
(39, 3, 128, 1, '2020-01-06 15:21:54', 6),
(40, 3, 126, 1, '2020-01-06 15:21:54', 6),
(41, 3, 127, 1, '2020-01-06 15:21:54', 6),
(42, 3, 140, 1, '2020-01-06 15:21:54', 6),
(43, 3, 131, 1, '2020-01-06 15:21:54', 6),
(44, 3, 136, 1, '2020-01-06 15:21:54', 6),
(45, 3, 134, 1, '2020-01-06 15:21:54', 6),
(46, 3, 135, 1, '2020-01-06 15:21:54', 6),
(47, 3, 142, 1, '2020-01-06 15:21:54', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_privilege`
--

CREATE TABLE `tbl_access_privilege` (
  `access_privilege_id` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `access_privilege_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_access_privilege`
--

INSERT INTO `tbl_access_privilege` (`access_privilege_id`, `access_id`, `privilege_id`, `access_privilege_status`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 2, 1, 1),
(11, 2, 2, 1),
(12, 2, 3, 1),
(13, 2, 4, 1),
(14, 2, 5, 1),
(15, 2, 6, 1),
(16, 2, 7, 1),
(17, 2, 8, 1),
(18, 2, 9, 1),
(19, 3, 1, 1),
(20, 3, 2, 1),
(21, 3, 3, 1),
(22, 3, 4, 1),
(23, 3, 5, 1),
(24, 3, 6, 1),
(25, 3, 7, 1),
(26, 3, 8, 1),
(27, 3, 9, 1),
(28, 4, 1, 1),
(29, 4, 2, 1),
(30, 4, 3, 1),
(31, 4, 4, 1),
(32, 4, 5, 1),
(33, 4, 6, 1),
(34, 4, 7, 1),
(35, 4, 8, 1),
(36, 4, 9, 1),
(37, 5, 1, 1),
(38, 5, 2, 1),
(39, 5, 3, 1),
(40, 5, 4, 1),
(41, 5, 5, 1),
(42, 5, 6, 1),
(43, 5, 7, 1),
(44, 5, 8, 1),
(45, 5, 9, 1),
(46, 6, 1, 1),
(47, 6, 2, 1),
(48, 6, 3, 1),
(49, 6, 4, 1),
(50, 6, 5, 1),
(51, 6, 6, 1),
(52, 6, 7, 1),
(53, 6, 8, 1),
(54, 6, 9, 1),
(55, 7, 1, 1),
(56, 7, 2, 1),
(57, 7, 3, 1),
(58, 7, 4, 1),
(59, 7, 5, 1),
(60, 7, 6, 1),
(61, 7, 7, 1),
(62, 7, 8, 1),
(63, 7, 9, 1),
(64, 8, 1, 1),
(65, 8, 2, 1),
(66, 8, 3, 1),
(67, 8, 4, 1),
(68, 8, 5, 1),
(69, 8, 6, 1),
(70, 8, 7, 1),
(71, 8, 8, 1),
(72, 8, 9, 1),
(73, 9, 1, 1),
(74, 9, 2, 1),
(75, 9, 3, 1),
(76, 9, 4, 1),
(77, 9, 5, 1),
(78, 9, 6, 1),
(79, 9, 7, 1),
(80, 9, 8, 1),
(81, 9, 9, 1),
(82, 10, 1, 1),
(83, 10, 2, 1),
(84, 10, 3, 1),
(85, 10, 4, 1),
(86, 10, 5, 1),
(87, 10, 6, 1),
(88, 10, 7, 1),
(89, 10, 8, 1),
(90, 10, 9, 1),
(91, 11, 1, 1),
(92, 11, 2, 1),
(93, 11, 3, 1),
(94, 11, 4, 1),
(95, 11, 5, 1),
(96, 11, 6, 1),
(97, 11, 7, 1),
(98, 11, 8, 1),
(99, 11, 9, 1),
(100, 12, 1, 1),
(101, 12, 2, 1),
(102, 12, 3, 1),
(103, 12, 4, 1),
(104, 12, 5, 1),
(105, 12, 6, 1),
(106, 12, 7, 1),
(107, 12, 8, 1),
(108, 12, 9, 1),
(109, 13, 1, 1),
(110, 13, 2, 1),
(111, 13, 3, 1),
(112, 13, 4, 1),
(113, 13, 5, 1),
(114, 13, 6, 1),
(115, 13, 7, 1),
(116, 13, 8, 1),
(117, 13, 9, 1),
(118, 14, 1, 1),
(119, 14, 2, 1),
(120, 14, 3, 1),
(121, 14, 4, 1),
(122, 14, 5, 1),
(123, 14, 6, 1),
(124, 14, 7, 1),
(125, 14, 8, 1),
(126, 14, 9, 1),
(127, 15, 1, 1),
(128, 15, 2, 1),
(129, 15, 3, 1),
(130, 15, 4, 1),
(131, 15, 5, 1),
(132, 15, 6, 1),
(133, 15, 7, 1),
(134, 15, 8, 1),
(135, 15, 9, 1),
(136, 16, 1, 1),
(137, 16, 2, 1),
(138, 16, 3, 1),
(139, 16, 4, 1),
(140, 16, 5, 1),
(141, 16, 6, 1),
(142, 16, 7, 1),
(143, 16, 8, 1),
(144, 16, 9, 1),
(145, 17, 1, 1),
(146, 17, 2, 1),
(147, 17, 3, 1),
(148, 17, 4, 1),
(149, 17, 5, 1),
(150, 17, 6, 1),
(151, 17, 7, 1),
(152, 17, 8, 1),
(153, 17, 9, 1),
(154, 18, 1, 1),
(155, 18, 2, 1),
(156, 18, 3, 1),
(157, 18, 4, 1),
(158, 18, 5, 1),
(159, 18, 6, 1),
(160, 18, 7, 1),
(161, 18, 8, 1),
(162, 18, 9, 1),
(163, 19, 1, 1),
(164, 19, 2, 1),
(165, 19, 3, 1),
(166, 19, 4, 1),
(167, 19, 5, 1),
(168, 19, 6, 1),
(169, 19, 7, 1),
(170, 19, 8, 1),
(171, 19, 9, 1),
(172, 20, 1, 1),
(173, 20, 2, 1),
(174, 20, 3, 1),
(175, 20, 4, 1),
(176, 20, 5, 1),
(177, 20, 6, 1),
(178, 20, 7, 1),
(179, 20, 8, 1),
(180, 20, 9, 1),
(181, 21, 1, 1),
(182, 21, 2, 1),
(183, 21, 3, 1),
(184, 21, 4, 1),
(185, 21, 5, 1),
(186, 21, 6, 1),
(187, 21, 7, 1),
(188, 21, 8, 1),
(189, 21, 9, 1),
(190, 22, 1, 1),
(191, 22, 2, 1),
(192, 22, 3, 1),
(193, 22, 4, 1),
(194, 22, 5, 1),
(195, 22, 6, 1),
(196, 22, 7, 1),
(197, 22, 8, 1),
(198, 22, 9, 1),
(199, 23, 1, 1),
(200, 23, 2, 1),
(201, 23, 3, 1),
(202, 23, 4, 1),
(203, 23, 5, 1),
(204, 23, 6, 1),
(205, 23, 7, 1),
(206, 23, 8, 1),
(207, 23, 9, 1),
(208, 24, 1, 1),
(209, 24, 2, 1),
(210, 24, 3, 1),
(211, 24, 4, 1),
(212, 24, 5, 1),
(213, 24, 6, 1),
(214, 24, 7, 1),
(215, 24, 8, 1),
(216, 24, 9, 1),
(217, 25, 1, 1),
(218, 25, 2, 1),
(219, 25, 3, 1),
(220, 25, 4, 1),
(221, 25, 5, 1),
(222, 25, 6, 1),
(223, 25, 7, 1),
(224, 25, 8, 1),
(225, 25, 9, 1),
(226, 26, 1, 1),
(227, 26, 2, 1),
(228, 26, 3, 1),
(229, 26, 4, 1),
(230, 26, 5, 1),
(231, 26, 6, 1),
(232, 26, 7, 1),
(233, 26, 8, 1),
(234, 26, 9, 1),
(235, 27, 1, 1),
(236, 27, 2, 1),
(237, 27, 3, 1),
(238, 27, 4, 1),
(239, 27, 5, 1),
(240, 27, 6, 1),
(241, 27, 7, 1),
(242, 27, 8, 1),
(243, 27, 9, 1),
(244, 28, 1, 1),
(245, 28, 2, 1),
(246, 28, 3, 1),
(247, 28, 4, 1),
(248, 28, 5, 1),
(249, 28, 6, 1),
(250, 28, 7, 1),
(251, 28, 8, 1),
(252, 28, 9, 1),
(253, 29, 1, 1),
(254, 29, 2, 1),
(255, 29, 3, 1),
(256, 29, 4, 1),
(257, 29, 5, 1),
(258, 29, 6, 1),
(259, 29, 7, 1),
(260, 29, 8, 1),
(261, 29, 9, 1),
(262, 30, 1, 1),
(263, 30, 2, 1),
(264, 30, 3, 1),
(265, 30, 4, 1),
(266, 30, 5, 1),
(267, 30, 6, 1),
(268, 30, 7, 1),
(269, 30, 8, 1),
(270, 30, 9, 1),
(271, 31, 1, 1),
(272, 31, 2, 1),
(273, 31, 3, 1),
(274, 31, 4, 1),
(275, 31, 5, 1),
(276, 31, 6, 1),
(277, 31, 7, 1),
(278, 31, 8, 1),
(279, 31, 9, 1),
(280, 32, 1, 1),
(281, 32, 2, 1),
(282, 32, 3, 1),
(283, 32, 4, 1),
(284, 32, 5, 1),
(285, 32, 6, 1),
(286, 32, 7, 1),
(287, 32, 8, 1),
(288, 32, 9, 1),
(289, 33, 1, 1),
(290, 33, 2, 1),
(291, 33, 3, 1),
(292, 33, 4, 1),
(293, 33, 5, 1),
(294, 33, 6, 1),
(295, 33, 7, 1),
(296, 33, 8, 1),
(297, 33, 9, 1),
(298, 34, 1, 1),
(299, 34, 2, 1),
(300, 34, 3, 1),
(301, 34, 4, 1),
(302, 34, 5, 1),
(303, 34, 6, 1),
(304, 34, 7, 1),
(305, 34, 8, 1),
(306, 34, 9, 1),
(307, 35, 1, 1),
(308, 35, 2, 1),
(309, 35, 3, 1),
(310, 35, 4, 1),
(311, 35, 5, 1),
(312, 35, 6, 1),
(313, 35, 7, 1),
(314, 35, 8, 1),
(315, 35, 9, 1),
(316, 36, 1, 1),
(317, 36, 2, 1),
(318, 36, 3, 1),
(319, 36, 4, 1),
(320, 36, 5, 1),
(321, 36, 6, 1),
(322, 36, 7, 1),
(323, 36, 8, 1),
(324, 36, 9, 1),
(325, 37, 1, 1),
(326, 37, 2, 1),
(327, 37, 3, 1),
(328, 37, 4, 1),
(329, 37, 5, 1),
(330, 37, 6, 1),
(331, 37, 7, 1),
(332, 37, 8, 1),
(333, 37, 9, 1),
(334, 38, 1, 1),
(335, 38, 2, 1),
(336, 38, 3, 1),
(337, 38, 4, 1),
(338, 38, 5, 1),
(339, 38, 6, 1),
(340, 38, 7, 1),
(341, 38, 8, 1),
(342, 38, 9, 1),
(343, 39, 1, 1),
(344, 39, 2, 1),
(345, 39, 3, 1),
(346, 39, 4, 1),
(347, 39, 5, 1),
(348, 39, 6, 1),
(349, 39, 7, 1),
(350, 39, 8, 1),
(351, 39, 9, 1),
(352, 40, 1, 1),
(353, 40, 2, 1),
(354, 40, 3, 1),
(355, 40, 4, 1),
(356, 40, 5, 1),
(357, 40, 6, 1),
(358, 40, 7, 1),
(359, 40, 8, 1),
(360, 40, 9, 1),
(361, 41, 1, 1),
(362, 41, 2, 1),
(363, 41, 3, 1),
(364, 41, 4, 1),
(365, 41, 5, 1),
(366, 41, 6, 1),
(367, 41, 7, 1),
(368, 41, 8, 1),
(369, 41, 9, 1),
(370, 42, 1, 1),
(371, 42, 2, 1),
(372, 42, 3, 1),
(373, 42, 4, 1),
(374, 42, 5, 1),
(375, 42, 6, 1),
(376, 42, 7, 1),
(377, 42, 8, 1),
(378, 42, 9, 1),
(379, 43, 1, 1),
(380, 43, 2, 1),
(381, 43, 3, 1),
(382, 43, 4, 1),
(383, 43, 5, 1),
(384, 43, 6, 1),
(385, 43, 7, 1),
(386, 43, 8, 1),
(387, 43, 9, 1),
(388, 44, 1, 1),
(389, 44, 2, 1),
(390, 44, 3, 1),
(391, 44, 4, 1),
(392, 44, 5, 1),
(393, 44, 6, 1),
(394, 44, 7, 1),
(395, 44, 8, 1),
(396, 44, 9, 1),
(397, 45, 1, 1),
(398, 45, 2, 1),
(399, 45, 3, 1),
(400, 45, 4, 1),
(401, 45, 5, 1),
(402, 45, 6, 1),
(403, 45, 7, 1),
(404, 45, 8, 1),
(405, 45, 9, 1),
(406, 46, 1, 1),
(407, 46, 2, 1),
(408, 46, 3, 1),
(409, 46, 4, 1),
(410, 46, 5, 1),
(411, 46, 6, 1),
(412, 46, 7, 1),
(413, 46, 8, 1),
(414, 46, 9, 1),
(415, 47, 1, 1),
(416, 47, 2, 1),
(417, 47, 3, 1),
(418, 47, 4, 1),
(419, 47, 5, 1),
(420, 47, 6, 1),
(421, 47, 7, 1),
(422, 47, 8, 1),
(423, 47, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent`
--

CREATE TABLE `tbl_agent` (
  `agent_id` int(11) NOT NULL,
  `first_name` varchar(110) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(14) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `company` varchar(50) CHARACTER SET latin1 NOT NULL,
  `position` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` int(3) NOT NULL,
  `signup_date` datetime NOT NULL,
  `step` int(1) NOT NULL,
  `email_verification_code` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_agent`
--

INSERT INTO `tbl_agent` (`agent_id`, `first_name`, `last_name`, `email`, `phone`, `password`, `company`, `position`, `status`, `signup_date`, `step`, `email_verification_code`) VALUES
(1, 'testdasda', 'testdsadsa', 'hl.prbadolsa@gmail.com', '87889892108', '17c4520f6cfd1ab53d8745e84681eb49', 'addsadadsa', 'dsadsadsadsa', 1, '2018-08-24 11:00:00', 0, ''),
(2, 'DAVID', 'santana', 'sidavidchristian@gmail.com', '0218861168', '', 'balkat', 'staff', 0, '2018-08-27 09:36:25', 0, ''),
(3, 'DAVID', 'CHRISTIAN', 'DAVID@BALKAT.COM', '087889002207', '', 'balkat', 'staff', 0, '2018-08-27 09:37:08', 0, ''),
(4, 'dsadas', 'Agency', 'asdcy51@gmail.com', '81288815346', '', 'Putdsa', 'dsadsadas', 0, '2018-08-30 04:47:52', 0, ''),
(5, 'dasdasdas', 'asdasdas', 'adhiseksana@gmail.com', '87889892108', '', 'adhidsa', 'dasdsadsadsa', 0, '2018-08-30 04:53:52', 0, ''),
(6, 'adhinata', 'leksana', 'adhisaa@gmail.com', '87889892108', '', 'adhinatfsfds', 'fdsdddd', 0, '2018-08-30 04:54:21', 0, ''),
(7, 'Putradasda', 'Agency', 'ptr.asdsncy51@gmail.com', '81288815346', '', 'Putrds', 'dasdsadas', 0, '2018-08-30 05:05:24', 0, ''),
(8, 'adhinata', 'leksana', 'adhinatalekssaaana@gmail.com', '87889892108', '', 'adhinata leksana wijaya', 'dasdasdas', 0, '2018-08-30 05:07:05', 0, ''),
(9, 'adhinata', 'leksansfsdfa', 'adhinataleda@gmail.com', '8788989244108', '', 'adfsana wijaya', 'dsfdsfdsfdsfsd', 0, '2018-08-30 05:07:26', 0, ''),
(10, 'adhinata', 'leksana', 'adhinataleksana@gmail.com', '87889892108', '', 'adhinata leksana wijaya', 'dasdsadsa', 0, '2018-08-30 05:32:23', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alias`
--

CREATE TABLE `tbl_alias` (
  `alias_id` int(11) NOT NULL,
  `alias_category` varchar(25) NOT NULL,
  `key_id` int(11) NOT NULL,
  `web_alias` varchar(255) NOT NULL,
  `web_ori` varchar(255) NOT NULL,
  `alias_active_status` tinyint(1) NOT NULL,
  `alias_create_date` datetime NOT NULL,
  `alias_update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_alias`
--

INSERT INTO `tbl_alias` (`alias_id`, `alias_category`, `key_id`, `web_alias`, `web_ori`, `alias_active_status`, `alias_create_date`, `alias_update_date`) VALUES
(10, 'news', 20, 'news/berita-indo', 'news/detail/20', 1, '2019-07-16 16:38:34', NULL),
(9, 'news', 19, '', 'news/detail/19', 1, '2019-07-05 13:32:25', NULL),
(8, 'news', 19, 'news/title-ind', 'news/detail/19', 1, '2019-07-05 13:32:25', NULL),
(11, 'news', 21, 'news/indonesia', 'news/detail/21', 1, '2019-07-16 16:48:55', NULL),
(12, 'news', 22, 'news/', 'news/detail/22', 1, '2019-07-25 14:33:59', NULL),
(13, 'news', 23, 'news/edit-indo-2', 'news/detail/23', 1, '2019-07-25 14:35:49', '2019-07-26 11:51:20'),
(14, 'news', 23, 'news/edit-indo-2', 'news/detail/23', 1, '2019-07-25 16:02:48', '2019-07-26 11:51:20'),
(15, 'news', 23, 'news/edit-indo-2', 'news/detail/23', 1, '2019-07-25 16:03:25', '2019-07-26 11:51:20'),
(16, 'news', 23, 'news/edit-indo-2', 'news/detail/23', 1, '2019-07-25 20:40:44', '2019-07-26 11:51:20'),
(17, 'news', 26, 'news/news-indo', 'news/detail/26', 1, '2019-07-26 15:31:13', NULL),
(18, 'designer', 35, 'designer/danny-satriadi', 'designer/detail/35', 1, '2019-07-29 15:10:42', '2019-07-30 16:33:40'),
(19, 'designer', 35, 'designer/danny-satriadi', 'designer/detail/35', 1, '2019-07-29 15:13:27', '2019-07-30 16:33:40'),
(20, 'designer', 37, 'designer/ivan-gunawan', 'designer/detail/37', 1, '2019-07-29 15:15:41', NULL),
(21, 'seputarkain', 38, 'seputarkain/how-to-add', 'seputarkain/detail/38', 1, '2019-07-29 15:43:38', '2019-07-29 16:03:15'),
(22, 'seputarkain', 39, 'seputarkain/seputar-digital-printing-tekstil', 'seputarkain/detail/39', 1, '2019-07-29 15:45:22', '2019-07-29 16:03:10'),
(23, 'seputarkain', 38, 'seputarkain/how-to-add', 'seputarkain/detail/38', 1, '2019-07-29 15:56:38', '2019-07-29 16:03:15'),
(24, 'seputarkain', 40, 'seputarkain/danny-satriadi', 'seputarkain/detail/40', 1, '2019-07-29 16:03:27', NULL),
(25, 'seputarkain', 41, 'seputarkain/', 'seputarkain/detail/41', 1, '2019-07-29 16:04:11', NULL),
(26, 'seputarkain', 43, 'seputarkain/cara-membedakan-voal-asli-dan-palsu', 'seputarkain/detail/43', 1, '2019-07-29 16:12:19', '2019-07-31 15:06:30'),
(27, 'designer', 36, 'designer/tities-saputra', 'designer/detail/36', 1, '2019-07-30 18:38:36', NULL),
(28, 'seputarkain', 50, 'seputarkain/asdasdsa', 'seputarkain/detail/50', 1, '2019-07-31 15:09:14', NULL),
(29, 'services', 51, 'services/tv-commercial', 'services/detail/51', 1, '2019-09-10 13:53:15', '2019-09-10 13:54:39'),
(30, 'services', 52, 'services/digital-commercial', 'services/detail/52', 1, '2019-09-10 13:55:18', NULL),
(31, 'services', 53, 'services/short-movie', 'services/detail/53', 1, '2019-09-10 13:55:42', NULL),
(32, 'services', 54, 'services/web-series', 'services/detail/54', 1, '2019-09-10 13:56:03', NULL),
(33, 'services', 55, 'services/company-profile', 'services/detail/55', 1, '2019-09-10 13:56:26', NULL),
(34, 'works', 60, 'works/pesona-indonesia-teaser', 'works/detail/60', 1, '2019-09-10 18:42:32', '2019-09-16 23:07:33'),
(35, 'services', 54, 'services/short-movie-web-series', 'services/detail/54', 1, '2019-09-15 15:58:08', NULL),
(36, 'blog', 64, 'blog/membangun-sebuah-production-house', 'blog/detail/64', 1, '2019-09-15 17:20:01', '2019-09-18 14:40:22'),
(37, 'About', 66, 'About/why-choose-us', 'About/detail/66', 1, '2019-09-15 22:07:40', '2019-09-15 22:41:52'),
(38, 'About', 66, 'About/why-choose-us', 'About/detail/66', 1, '2019-09-15 22:33:22', '2019-09-15 22:41:52'),
(39, 'About', 66, 'About/why-choose-us', 'About/detail/66', 1, '2019-09-15 22:34:22', '2019-09-15 22:41:52'),
(40, 'About', 66, 'About/why-choose-us', 'About/detail/66', 1, '2019-09-15 22:38:37', '2019-09-15 22:41:52'),
(41, 'works', 68, 'works/auto-200', 'works/detail/68', 1, '2019-09-16 01:00:22', NULL),
(42, 'blog', 70, 'blog/dasdsadasdsa', 'blog/detail/70', 1, '2019-09-18 13:51:08', NULL),
(43, 'highlight_contact', 72, 'highlight_contact/', 'highlight_contact/detail/72', 1, '2019-09-18 16:35:55', NULL),
(44, 'location', 73, 'location/da-d-as', 'location/detail/73', 1, '2019-11-27 13:17:51', NULL),
(45, 'services', 76, 'services/prime-location', 'services/detail/76', 1, '2019-12-03 17:45:56', '2020-01-02 15:42:26'),
(46, 'about', 80, 'about/providing-lifetime-&ltbr/&gt-sustainable-services', 'about/detail/80', 1, '2019-12-03 19:54:36', '2020-01-02 11:55:44'),
(47, 'about_subpage', 66, 'about_subpage/vision', 'about_subpage/detail/66', 1, '2019-12-03 20:09:48', '2019-12-31 14:07:04'),
(48, 'about_subpage', 81, 'about_subpage/property-management', 'about_subpage/detail/81', 1, '2019-12-03 20:10:17', NULL),
(49, 'about_subpage', 82, 'about_subpage/building-specification', 'about_subpage/detail/82', 1, '2019-12-03 20:10:54', '2020-01-06 15:13:09'),
(50, 'services', 83, 'services/reputation', 'services/detail/83', 1, '2019-12-03 20:18:45', '2019-12-18 11:10:39'),
(51, 'services', 84, 'services/secure-environment', 'services/detail/84', 1, '2019-12-03 20:19:19', '2019-12-31 14:12:45'),
(52, 'facilitiesdescription', 85, 'facilitiesdescription/facilities', 'facilitiesdescription/detail/85', 1, '2019-12-03 21:39:30', '2020-01-02 12:03:00'),
(53, 'location', 86, 'location/accessibility', 'location/detail/86', 1, '2019-12-04 16:44:27', NULL),
(54, 'Access', 87, 'Access/vehicle', 'Access/detail/87', 1, '2019-12-04 16:47:06', '2020-01-02 12:00:28'),
(55, 'Access', 88, 'Access/subway', 'Access/detail/88', 1, '2019-12-04 16:47:27', '2019-12-31 14:19:51'),
(56, 'tenant', 89, 'tenant/be-part-of-iseb-community', 'tenant/detail/89', 1, '2019-12-04 17:55:45', '2020-01-02 12:04:22'),
(57, 'floor_plate', 91, 'floor_plate/typical-floor-plate', 'floor_plate/detail/91', 1, '2019-12-04 17:58:13', '2020-01-06 15:07:01'),
(58, 'contactus_page', 95, 'contactus_page/get-in-touch', 'contactus_page/detail/95', 1, '2019-12-05 15:02:06', '2019-12-31 15:05:29'),
(59, 'Facilities', 96, 'Facilities/security', 'Facilities/detail/96', 1, '2019-12-06 09:01:44', '2019-12-06 09:08:34'),
(60, 'Facilities', 97, 'Facilities/public-transport-bus--mrt', 'Facilities/detail/97', 1, '2019-12-06 09:09:29', NULL),
(61, 'Facilities', 98, 'Facilities/banks', 'Facilities/detail/98', 1, '2019-12-06 09:09:45', NULL),
(62, 'Facilities', 99, 'Facilities/retail', 'Facilities/detail/99', 1, '2019-12-06 09:09:59', NULL),
(63, 'Facilities', 100, 'Facilities/tunnel-to-mall--hotel-apartment', 'Facilities/detail/100', 1, '2019-12-06 09:10:27', NULL),
(64, 'Facilities', 101, 'Facilities/valet-parking', 'Facilities/detail/101', 1, '2019-12-06 09:10:43', NULL),
(65, 'Facilities', 102, 'Facilities/19-lifts-in-each-tower', 'Facilities/detail/102', 1, '2019-12-06 09:11:11', NULL),
(66, 'Facilities', 103, 'Facilities/mailing--parcel-service', 'Facilities/detail/103', 1, '2019-12-06 09:11:30', NULL),
(67, 'Access', 104, 'Access/taxi', 'Access/detail/104', 1, '2019-12-10 16:23:58', '2019-12-31 14:36:17'),
(68, 'Access', 105, 'Access/bus', 'Access/detail/105', 1, '2019-12-10 16:24:16', '2020-01-02 15:43:01'),
(69, 'Access', 106, 'Access/shuttle-bus', 'Access/detail/106', 1, '2019-12-10 16:24:40', '2019-12-31 14:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` text DEFAULT NULL,
  `banner_images` varchar(100) NOT NULL,
  `banner_type` tinyint(2) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `banner_order` int(10) DEFAULT 1,
  `banner_desc` text NOT NULL,
  `banner_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `banner_create_date` datetime NOT NULL,
  `banner_create_by` int(11) NOT NULL,
  `banner_update_date` datetime DEFAULT NULL,
  `banner_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(255) NOT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `brand_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `brand_order` int(11) NOT NULL DEFAULT 1,
  `brand_create_date` datetime NOT NULL,
  `brand_create_by` int(11) NOT NULL,
  `brand_update_date` datetime DEFAULT NULL,
  `brand_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catalogue`
--

CREATE TABLE `tbl_catalogue` (
  `catalogue_id` int(11) NOT NULL,
  `catalogue_title` varchar(110) CHARACTER SET latin1 NOT NULL,
  `catalogue_file` text CHARACTER SET latin1 NOT NULL,
  `catalogue_order` int(2) NOT NULL,
  `catalogue_type` tinyint(2) NOT NULL,
  `catalogue_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `catalogue_create_date` datetime NOT NULL,
  `catalogue_create_by` int(11) NOT NULL,
  `catalogue_update_date` datetime DEFAULT NULL,
  `catalogue_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_catalogue`
--

INSERT INTO `tbl_catalogue` (`catalogue_id`, `catalogue_title`, `catalogue_file`, `catalogue_order`, `catalogue_type`, `catalogue_active_status`, `catalogue_create_date`, `catalogue_create_by`, `catalogue_update_date`, `catalogue_update_by`) VALUES
(1, 'Company Profile Vania Interior Furnishings', '/assets/file_upload/admin/Company-Profile-Vania-Update.pdf', 0, 3, 1, '2019-04-18 14:32:13', 1, '2019-04-26 14:26:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `category_title` varchar(50) NOT NULL,
  `category_image` varchar(200) NOT NULL,
  `category_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `category_url` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `category_alias` varchar(200) NOT NULL,
  `category_parent` tinyint(2) NOT NULL DEFAULT 0,
  `category_sub_parent` int(10) NOT NULL,
  `category_order` tinyint(2) NOT NULL DEFAULT 1,
  `category_create_date` datetime NOT NULL,
  `category_create_by` int(11) NOT NULL,
  `category_update_date` datetime DEFAULT NULL,
  `category_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `module_id`, `category_title`, `category_image`, `category_active_status`, `category_url`, `category_alias`, `category_parent`, `category_sub_parent`, `category_order`, `category_create_date`, `category_create_by`, `category_update_date`, `category_update_by`) VALUES
(98, 0, 'Upholstery', '/assets/file_upload/admin/appreciation.png', 1, '/Upholstery', 'upholstery', 0, 0, 1, '2018-11-07 15:13:55', 1, '2018-11-22 19:08:09', 1),
(99, 116, 'dada', '/assets/file_upload/admin/appreciation.png', 1, '/Upholstery/dada', 'dada', 98, 0, 1, '2018-11-22 19:01:58', 1, '2018-11-22 19:08:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_type`
--

CREATE TABLE `tbl_category_type` (
  `category_type_id` int(11) NOT NULL,
  `collections_type_id` int(11) NOT NULL,
  `category_type_title` varchar(255) NOT NULL,
  `category_type_image` varchar(200) NOT NULL,
  `category_type_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `category_type_order` int(11) NOT NULL DEFAULT 1,
  `category_type_create_date` datetime NOT NULL,
  `category_type_create_by` int(11) NOT NULL,
  `category_type_update_date` datetime DEFAULT NULL,
  `category_type_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_type`
--

INSERT INTO `tbl_category_type` (`category_type_id`, `collections_type_id`, `category_type_title`, `category_type_image`, `category_type_active_status`, `category_type_order`, `category_type_create_date`, `category_type_create_by`, `category_type_update_date`, `category_type_update_by`) VALUES
(1, 1, 'Acapulco', '', 1, 1, '0000-00-00 00:00:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collections_type`
--

CREATE TABLE `tbl_collections_type` (
  `collections_type_id` int(11) NOT NULL,
  `collections_type_title` varchar(255) NOT NULL,
  `collections_type_image` varchar(100) NOT NULL,
  `collections_type_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `collections_type_order` int(11) NOT NULL DEFAULT 1,
  `collections_type_create_date` datetime NOT NULL,
  `collections_type_create_by` int(11) NOT NULL,
  `collections_type_update_date` datetime DEFAULT NULL,
  `collections_type_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_collections_type`
--

INSERT INTO `tbl_collections_type` (`collections_type_id`, `collections_type_title`, `collections_type_image`, `collections_type_active_status`, `collections_type_order`, `collections_type_create_date`, `collections_type_create_by`, `collections_type_update_date`, `collections_type_update_by`) VALUES
(1, 'Upholstery', '', 1, 1, '0000-00-00 00:00:00', 0, NULL, NULL),
(2, 'Drapery', '', 1, 2, '0000-00-00 00:00:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contactus`
--

CREATE TABLE `tbl_contactus` (
  `contactus_id` int(11) NOT NULL,
  `contactus_from` varchar(20) CHARACTER SET latin1 NOT NULL,
  `contactus_name` varchar(110) CHARACTER SET latin1 NOT NULL,
  `contactus_subject` varchar(110) CHARACTER SET latin1 NOT NULL,
  `contactus_email` varchar(110) CHARACTER SET latin1 NOT NULL,
  `contactus_message` text NOT NULL,
  `contactus_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `content_id` int(11) NOT NULL,
  `content_parent` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `content_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`content_id`, `content_parent`, `row_id`, `label_id`, `content_text`) VALUES
(13, 0, 74, 209, ''),
(12, 0, 74, 193, 'THE EXCEPTIONAL CHOICE'),
(11, 0, 74, 207, '/assets/file_upload/admin/home/home-bg.jpg'),
(10, 0, 74, 192, 'Indonesia Stock &lt;br class=&quot;hidden-sm&quot; /&gt; Exchange Building'),
(14, 0, 74, 210, ''),
(15, 0, 75, 258, 'The most renowned financial office building in Indonesia is nestled in the prestigious estate in Central Jakarta - Sudirman Central Business District (SCBD). Its elegance and timeless design with cross cultural businesses converge to create a truly global community. Simply put, the Indonesia Stock Exchange Building (ISEB) remains in an unrivalled position within the nation&amp;rsquo;s capital.'),
(16, 0, 76, 189, 'PRIME LOCATION'),
(17, 0, 76, 190, '/assets/file_upload/admin/home/icon_primelocation.svg'),
(18, 0, 76, 191, 'Situated in the most convenient location accessible from various main roads as well as by public transportation (subway and busses). The occupiers will enjoy unparalleled shopping and dining experiences by being directly connected to one of the most prestigious retail facility (Pacific Place Shopping Mall) in Jakarta. Within the SCBD complex, occupiers and visitors of ISEB will also be able to enjoy short and long term stays in a very close proximity to the building including 5-stars hotels and serviced residences.'),
(19, 0, 77, 173, 'Virtual Tours'),
(20, 0, 77, 206, 'https://www.panomatics.com/virtualtours/in/firstjakartainternational/index.html'),
(22, 0, 78, 259, '/assets/file_upload/admin/config/Logo_white.svg'),
(23, 0, 78, 260, '/assets/file_upload/admin/config/logo_mobile.svg'),
(24, 0, 78, 261, '/assets/file_upload/admin/config/logo_black.svg'),
(25, 0, 79, 262, '/assets/file_upload/admin/config/Logo_foot_white.svg'),
(26, 0, 79, 263, '&lt;p&gt;Indonesia Stock Exchange Building&lt;br /&gt;\r\nBuilding Management Office Tower 2, 23rd Floor&lt;br /&gt;\r\nJl. Jend. Sudirman Kav. 52-53&lt;br /&gt;\r\nJakarta 12190 - Indonesia&lt;/p&gt;'),
(27, 0, 79, 264, '/assets/file_upload/admin/config/DiamondWhite.svg'),
(28, 0, 79, 265, 'enquiries@fji.co.id'),
(29, 0, 79, 266, '+62 21 515 1515'),
(30, 0, 79, 267, '+62 21 515 3006'),
(31, 0, 79, 268, '/assets/file_upload/admin/config/CushmanWakefield.svg'),
(37, 0, 66, 198, 'VISION'),
(32, 0, 65, 196, '/assets/file_upload/admin/about/about_bg.png'),
(33, 0, 65, 217, '---'),
(34, 0, 65, 218, '---'),
(35, 0, 80, 269, 'Providing lifetime &lt;br/&gt; sustainable services'),
(36, 0, 80, 270, 'PT. First Jakarta International as the owner of the Indonesia Stock Exchange Building (ISEB) is part of the Artha Graha Network which operates in a wide range of industries and sectors throughout Indonesia, with Property, Finance, Agro Industry and Hospitality as the core businesses. Built in the mid 1990&amp;#39;s, ISEB is the forerunner in providing international standard office space for well-known global and national corporations.'),
(38, 0, 66, 229, '/assets/file_upload/admin/about/icon_vision.svg'),
(39, 0, 66, 199, 'To provide a sustainable and enjoyable working environment for occupiers and its visitors by emphasizing on highest building quality, technology, safety and 5-star customer services.'),
(40, 0, 81, 198, 'PROPERTY MANAGEMENT'),
(41, 0, 81, 229, '/assets/file_upload/admin/about/icon_propertymanagement.svg'),
(42, 0, 81, 199, 'ISEB has been managed by Cushman &amp; Wakefield - one of the largest property management company in the world.'),
(43, 0, 82, 198, 'BUILDING SPECIFICATION'),
(44, 0, 82, 229, '/assets/file_upload/admin/about/icon_building_spec.svg'),
(45, 0, 82, 199, 'The Indonesia&amp;nbsp;Stock Exchange Building (ISEB) was developed in two stages providing a total semi gross leasable area of 137,300 square meters, split between two Towers with 31 floors each. With its elegance and timeless design by Brennan Beer Gorman, cutting edge technology and excellent services the building caters to all tenant needs and requirements.&amp;nbsp;&lt;a href=&quot;https://stockexchangebldg.com/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf&quot; target=&quot;_blank&quot;&gt;Download Building Specification Here&lt;/a&gt;'),
(46, 0, 83, 189, 'REPUTATION'),
(47, 0, 83, 190, '/assets/file_upload/admin/home/icon_reputation.svg'),
(48, 0, 83, 191, 'It is the epitome of Indonesia&amp;rsquo;s global branding, counting many of the world&amp;rsquo;s leading multinational and national companies amongst its long-term corporate occupier profile and the home of the Indonesia&amp;nbsp;Stock Exchange.'),
(49, 0, 84, 189, 'SECURE ENVIRONMENT'),
(50, 0, 84, 190, '/assets/file_upload/admin/home/icon_secureenvirontment.svg'),
(51, 0, 84, 191, 'The Indonesia Stock Exchange Building (ISEB) has been a market pioneer in providing a safe and secure environment for its occupiers and visitors. With tenant-only parking facilities within the building and an exclusive dedicated visitor drop-off area, we achieve the highest levels of security and parking convenience. These together with our international standard security check procedures at all building entry points, combining K9, X-ray machines, walk-through and hand metal detectors, identification checks and card-access, provides further peace-of-mind for all visitors and occupiers alike.'),
(52, 0, 71, 221, '/assets/file_upload/admin/facilities/facilities-bg.png'),
(53, 0, 71, 222, ''),
(54, 0, 71, 223, ''),
(55, 0, 85, 234, 'FACILITIES'),
(56, 0, 85, 235, 'Before and after office hours and throughout the working day, occupiers and visitors of the building get the convenience of an extensive variety of outstanding facilities, from mail delivery services to convenience stores, multiple domestic and overseas banks, to an executive cigar lounge, dry-cleaning service and pharmacy, as well as an array of local and international F&amp;amp;B outlets. Add to this, the air-conditioned passage connecting the ISEB with the Pacific Place Shopping Mall, Ritz Carlton Hotel and ballroom, provides direct access to world-class retail and entertainment facilities to meet all your corporate and personal needs.'),
(57, 0, 86, 161, 'ACCESSIBILITY'),
(58, 0, 86, 164, 'Occupiers and visitors have various options to get to ISEB via car and public transportation.'),
(59, 0, 86, 185, '&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.22251247316!2d106.808682!3d-6.223372!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0:0x6ee40b271a82586a!2sIndonesia Stock Exchange!5e0!3m2!1sen!2sid!4v1570526217146!5m2!1sen!2sid&quot; width=&quot;100%&quot; height=&quot;600&quot; frameborder=&quot;0&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;'),
(60, 0, 67, 204, '/assets/file_upload/admin/locations/location-bg.png'),
(61, 0, 67, 215, ''),
(62, 0, 67, 216, ''),
(63, 0, 87, 232, 'Vehicle'),
(64, 0, 87, 233, 'Four roads including two main (Jalan Jend. Sudirman and Jalan Gatot Subroto) and two secondary roads (Jalan Senopati and Jalan Widya Chandra) provide five access options for vehicles, hence tenants and visitors are not restricted by the current government imposed traffic regulations (odd &amp;amp; even license plate).'),
(65, 0, 88, 232, 'Subway'),
(66, 0, 88, 233, 'The &amp;quot;Istora&amp;quot; MRT Station is located 50 m away from the building.'),
(67, 0, 89, 273, 'BE PART OF ISEB COMMUNITY'),
(68, 0, 89, 274, 'The building is welcoming and accommodating various space requirements ranging from 100 to over 10,000 sqm and offering various floor plate options from 700 to 2,300 sqm semi gross. ISEB provides world class facilities and services including: exclusive tenancy parking, high-speed passengers elevators and other cutting edge building applications.'),
(69, 0, 90, 239, '/assets/file_upload/admin/tenant/tenant-bg.jpg'),
(70, 0, 90, 240, 'tenant'),
(71, 0, 90, 241, 'fji tenant'),
(72, 0, 91, 242, 'TYPICAL FLOOR PLATE'),
(73, 0, 91, 245, '/assets/file_upload/admin/tenant/Cushman Typical Floor.png'),
(74, 0, 91, 246, 'file download'),
(75, 74, 92, 247, 'DOWNLOAD TYPICAL FLOOR PLAN'),
(76, 74, 92, 248, '/assets/file_upload/admin/tenant/FLOOR_Artboard_fji.jpg'),
(77, 74, 93, 247, 'DOWNLOAD BUILDING FACTS SHEET'),
(78, 74, 93, 248, '/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf'),
(79, 0, 94, 225, '/assets/file_upload/admin/contact/contact-bg.jpg'),
(80, 0, 94, 227, ''),
(81, 0, 94, 228, ''),
(82, 0, 95, 249, 'GET IN TOUCH'),
(83, 0, 95, 250, 'Building Management Office :'),
(84, 0, 95, 251, 'Indonesian Stock Exchange Building, 23rd Floor Tower 2'),
(85, 0, 95, 252, '021 515 1515'),
(86, 0, 95, 253, 'info.iseb@fji.co.id'),
(87, 0, 95, 254, '021 515 1515'),
(88, 0, 95, 255, 'enquiries@fji.co.id'),
(89, 0, 95, 256, 'SEND US MESSAGE'),
(90, 0, 95, 257, 'If you have any queries kindly take a moment to fill out this form. Our representatives will contact you shortly.'),
(91, 0, 96, 272, '/assets/file_upload/admin/facilities/icon_Security.svg'),
(92, 0, 96, 271, 'SECURITY'),
(93, 0, 97, 272, '/assets/file_upload/admin/facilities/icon_accesbility.svg'),
(94, 0, 97, 271, 'PUBLIC TRANSPORT BUS &amp; MRT'),
(95, 0, 98, 272, '/assets/file_upload/admin/facilities/icon_Bank.svg'),
(96, 0, 98, 271, 'BANKS'),
(97, 0, 99, 272, '/assets/file_upload/admin/facilities/icon_retail.svg'),
(98, 0, 99, 271, 'RETAIL'),
(99, 0, 100, 272, '/assets/file_upload/admin/facilities/icon_Tunnel.svg'),
(100, 0, 100, 271, 'TUNNEL TO MALL &amp; HOTEL-APARTMENT'),
(101, 0, 101, 272, '/assets/file_upload/admin/facilities/icon_parking.svg'),
(102, 0, 101, 271, 'VALET PARKING'),
(103, 0, 102, 272, '/assets/file_upload/admin/facilities/icon_Lift.svg'),
(104, 0, 102, 271, '19 LIFTS IN EACH TOWER'),
(105, 0, 103, 272, '/assets/file_upload/admin/facilities/icon_mailing parcel.svg'),
(106, 0, 103, 271, 'MAILING &amp; PARCEL SERVICE'),
(107, 0, 104, 232, 'Taxi'),
(108, 0, 104, 233, 'An exclusive taxi-rank is available in front of the building main entrance.'),
(109, 0, 105, 232, 'Bus'),
(110, 0, 105, 233, 'The Transjakarta &amp;quot;Komdak&amp;quot; bus stop is located 100 m away from the building.'),
(111, 0, 106, 232, 'Shuttle Bus'),
(112, 0, 106, 233, 'The SCBD shuttle bus is available free of charge to be used to travel within the SCBD estate.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_lang`
--

CREATE TABLE `tbl_content_lang` (
  `content_lang_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `content_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content_lang`
--

INSERT INTO `tbl_content_lang` (`content_lang_id`, `language_id`, `content_id`, `row_id`, `label_id`, `content_text`) VALUES
(10, 1, 0, 74, 207, '/assets/file_upload/admin/home/home-bg.jpg'),
(9, 1, 0, 74, 192, 'Indonesia Stock &lt;br class=&quot;hidden-sm&quot; /&gt; Exchange Building'),
(11, 1, 0, 74, 193, 'THE EXCEPTIONAL CHOICE'),
(12, 1, 0, 74, 209, ''),
(13, 1, 0, 74, 210, ''),
(14, 2, 0, 74, 192, 'Indonesia Stock &lt;br class=&quot;hidden-sm&quot; /&gt; Exchange Building'),
(15, 2, 0, 74, 207, '/assets/file_upload/admin/home/home-bg.jpg'),
(16, 2, 0, 74, 193, 'THE EXCEPTIONAL CHOICE'),
(17, 2, 0, 74, 209, ''),
(18, 2, 0, 74, 210, ''),
(19, 1, 0, 75, 258, 'The most renowned financial office building in Indonesia is nestled in the prestigious estate in Central Jakarta - Sudirman Central Business District (SCBD). Its elegance and timeless design with cross cultural businesses converge to create a truly global community. Simply put, the Indonesia Stock Exchange Building (ISEB) remains in an unrivalled position within the nation&amp;rsquo;s capital.'),
(20, 2, 0, 75, 258, 'The most renowned financial office building in Indonesia is nestled in the prestigious estate in Central Jakarta - Sudirman Central Business District (SCBD). Its elegance and timeless design with cross cultural businesses converge to create a truly global community. Simply put, the Indonesia Stock Exchange Building (ISEB) remains in an unrivalled position within the nation&amp;rsquo;s capital.&amp;nbsp;'),
(21, 1, 0, 76, 189, 'PRIME LOCATION'),
(22, 1, 0, 76, 190, '/assets/file_upload/admin/home/icon_primelocation.svg'),
(23, 1, 0, 76, 191, 'Situated in the most convenient location accessible from various main roads as well as by public transportation (subway and busses). The occupiers will enjoy unparalleled shopping and dining experiences by being directly connected to one of the most prestigious retail facility (Pacific Place Shopping Mall) in Jakarta. Within the SCBD complex, occupiers and visitors of ISEB will also be able to enjoy short and long term stays in a very close proximity to the building including 5-stars hotels and serviced residences.'),
(24, 2, 0, 76, 189, 'PRIME LOCATION'),
(25, 2, 0, 76, 190, '/assets/file_upload/admin/home/icon_primelocation.svg'),
(26, 2, 0, 76, 191, 'Situated in the most convenient location accessible from various main roads as well as by public transportation (subway and busses). The occupiers will enjoy unparalleled shopping and dining experiences by being directly connected to one of the most prestigious retail facility&amp;nbsp; (Pacific Place Shopping Mall) in Jakarta. Within the SCBD complex, occupiers and visitors of ISEB will also be able to enjoy short and long term stays in a very close proximity to the building including 5-stars hotels and serviced residences.'),
(27, 1, 0, 77, 173, 'Virtual Tours'),
(28, 1, 0, 77, 206, 'https://www.panomatics.com/virtualtours/in/firstjakartainternational/index.html'),
(29, 1, 0, 77, 194, ''),
(30, 2, 0, 77, 173, 'Virtual Tours'),
(31, 2, 0, 77, 206, 'https://www.panomatics.com/virtualtours/in/firstjakartainternational/index.html'),
(32, 2, 0, 77, 194, ''),
(33, 1, 0, 78, 259, '/assets/file_upload/admin/config/Logo_white.svg'),
(34, 1, 0, 78, 260, '/assets/file_upload/admin/config/logo_mobile.svg'),
(35, 1, 0, 78, 261, '/assets/file_upload/admin/config/logo_black.svg'),
(36, 2, 0, 78, 259, '/assets/file_upload/admin/config/Logo_white.svg'),
(37, 2, 0, 78, 260, '/assets/file_upload/admin/config/logo_mobile.svg'),
(38, 2, 0, 78, 261, '/assets/file_upload/admin/config/logo_black.svg'),
(39, 1, 0, 79, 262, '/assets/file_upload/admin/config/Logo_foot_white.svg'),
(40, 1, 0, 79, 263, '&lt;p&gt;Indonesia Stock Exchange Building&lt;br /&gt;\r\nBuilding Management Office Tower 2, 23rd Floor&lt;br /&gt;\r\nJl. Jend. Sudirman Kav. 52-53&lt;br /&gt;\r\nJakarta 12190 - Indonesia&lt;/p&gt;'),
(41, 1, 0, 79, 264, '/assets/file_upload/admin/config/DiamondWhite.svg'),
(42, 1, 0, 79, 265, 'enquiries@fji.co.id'),
(43, 1, 0, 79, 266, '+62 21 515 1515'),
(44, 1, 0, 79, 267, '+62 21 515 3006'),
(45, 1, 0, 79, 268, '/assets/file_upload/admin/config/CushmanWakefield.svg'),
(46, 2, 0, 79, 262, '/assets/file_upload/admin/config/Logo_foot_white.svg'),
(47, 2, 0, 79, 263, '&lt;p&gt;Indonesia&amp;nbsp;Stock Exchange Building&lt;br /&gt;\r\nBuilding Management Office Tower 2, 23rd Floor&lt;br /&gt;\r\nJl. Jend. Sudirman Kav. 52-53&lt;br /&gt;\r\nJakarta 12190 - Indonesia&lt;/p&gt;'),
(48, 2, 0, 79, 264, '/assets/file_upload/admin/config/DiamondWhite.svg'),
(49, 2, 0, 79, 265, 'enquiries@fji.co.id'),
(50, 2, 0, 79, 266, '+62 21 515 1515'),
(51, 2, 0, 79, 267, '+62 21 515 3006'),
(52, 2, 0, 79, 268, '/assets/file_upload/admin/config/CushmanWakefield.svg'),
(57, 1, 0, 81, 198, 'PROPERTY MANAGEMENT'),
(53, 1, 0, 80, 269, 'Providing lifetime &lt;br/&gt; sustainable services'),
(54, 1, 0, 80, 270, 'PT. First Jakarta International as the owner of the Indonesia Stock Exchange Building (ISEB) is part of the Artha Graha Network which operates in a wide range of industries and sectors throughout Indonesia, with Property, Finance, Agro Industry and Hospitality as the core businesses. Built in the mid 1990&amp;#39;s, ISEB is the forerunner in providing international standard office space for well-known global and national corporations.'),
(55, 2, 0, 80, 269, 'Providing lifetime &lt;br/&gt; sustainable services'),
(56, 2, 0, 80, 270, 'PT. First Jakarta International as the owner of the Indonesia Stock Exchange Building (ISEB) is part of the Artha Graha Network which operates in a wide range of industries and sectors throughout Indonesia, with Property, Finance, Agro Industry and Hospitality as the core businesses. Built in the mid 1990&amp;#39;s, ISEB is the forerunner in providing international standard office space for well-known global and national corporations.'),
(58, 1, 0, 81, 229, '/assets/file_upload/admin/about/icon_propertymanagement.svg'),
(59, 1, 0, 81, 199, 'ISEB has been managed by Cushman &amp; Wakefield - one of the largest property management company in the world.'),
(60, 2, 0, 81, 198, ''),
(61, 2, 0, 81, 229, ''),
(62, 2, 0, 81, 199, ''),
(63, 1, 0, 82, 198, 'BUILDING SPECIFICATION'),
(64, 1, 0, 82, 229, '/assets/file_upload/admin/about/icon_building_spec.svg'),
(65, 1, 0, 82, 199, 'The Indonesia&amp;nbsp;Stock Exchange Building (ISEB) was developed in two stages providing a total semi gross leasable area of 137,300 square meters, split between two Towers with 31 floors each. With its elegance and timeless design by Brennan Beer Gorman, cutting edge technology and excellent services the building caters to all tenant needs and requirements.&amp;nbsp;&lt;a href=&quot;https://stockexchangebldg.com/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf&quot; target=&quot;_blank&quot;&gt;Download Building Specification Here&lt;/a&gt;'),
(66, 2, 0, 82, 198, 'BUILDING SPECIFICATION'),
(67, 2, 0, 82, 229, '/assets/file_upload/admin/about/icon_building_spec.svg'),
(68, 2, 0, 82, 199, 'The Indonesia&amp;nbsp;Stock Exchange Building (ISEB) was developed in two stages providing a total semi gross leasable area of 137,300 square meters, split between two Towers with 31 floors each. With its elegance and timeless design by Brennan Beer Gorman, cutting edge technology and excellent services the building caters to all tenant needs and requirements.&amp;nbsp;&lt;a href=&quot;https://stockexchangebldg.com/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf&quot; target=&quot;_blank&quot;&gt;Download Building Specification Here&lt;/a&gt;'),
(69, 1, 0, 83, 189, 'REPUTATION'),
(70, 1, 0, 83, 190, '/assets/file_upload/admin/home/icon_reputation.svg'),
(71, 1, 0, 83, 191, 'It is the epitome of Indonesia&amp;rsquo;s global branding, counting many of the world&amp;rsquo;s leading multinational and national companies amongst its long-term corporate occupier profile and the home of the Indonesia&amp;nbsp;Stock Exchange.'),
(72, 2, 0, 83, 189, 'REPUTATION'),
(73, 2, 0, 83, 190, '/assets/file_upload/admin/home/icon_reputation.svg'),
(74, 2, 0, 83, 191, 'It is the epitome of Indonesia&amp;rsquo;s global branding, counting many of the world&amp;rsquo;s leading multinational and national companies amongst its long-term corporate occupier profile and the home of the Indonesia&amp;nbsp;Stock Exchange.'),
(75, 1, 0, 84, 189, 'SECURE ENVIRONMENT'),
(76, 1, 0, 84, 190, '/assets/file_upload/admin/home/icon_secureenvirontment.svg'),
(77, 1, 0, 84, 191, 'The Indonesia Stock Exchange Building (ISEB) has been a market pioneer in providing a safe and secure environment for its occupiers and visitors. With tenant-only parking facilities within the building and an exclusive dedicated visitor drop-off area, we achieve the highest levels of security and parking convenience. These together with our international standard security check procedures at all building entry points, combining K9, X-ray machines, walk-through and hand metal detectors, identification checks and card-access, provides further peace-of-mind for all visitors and occupiers alike.'),
(78, 2, 0, 84, 189, 'SECURE ENVIRONMENT'),
(79, 2, 0, 84, 190, '/assets/file_upload/admin/home/icon_secureenvirontment.svg'),
(80, 2, 0, 84, 191, 'The Indonesia Stock Exchange Building (ISEB) has been a market pioneer in providing a safe and secure environment for its occupiers and visitors. With tenant-only parking facilities within the building and an exclusive dedicated visitor drop-off area, we achieve the highest levels of security and parking convenience. These together with our international standard security check procedures at all building entry points, combining K9, X-ray machines, walk-through and hand metal detectors, identification checks and card-access, provides further peace-of-mind for all visitors and occupiers alike.'),
(81, 1, 0, 85, 234, 'FACILITIES'),
(82, 1, 0, 85, 235, 'Before and after office hours and throughout the working day, occupiers and visitors of the building get the convenience of an extensive variety of outstanding facilities, from mail delivery services to convenience stores, multiple domestic and overseas banks, to an executive cigar lounge, dry-cleaning service and pharmacy, as well as an array of local and international F&amp;amp;B outlets. Add to this, the air-conditioned passage connecting the ISEB with the Pacific Place Shopping Mall, Ritz Carlton Hotel and ballroom, provides direct access to world-class retail and entertainment facilities to meet all your corporate and personal needs.'),
(83, 2, 0, 85, 234, 'FACILITIES'),
(84, 2, 0, 85, 235, 'Before and after office hours and throughout the working day, occupiers and visitors of the building get the convenience of an extensive variety of outstanding facilities, from mail delivery services to convenience stores, multiple domestic and overseas banks, to an executive cigar lounge, dry-cleaning service and pharmacy, as well as an array of local and international F&amp;amp;B outlets. Add to this, the air-conditioned passage connecting the ISEB with the Pacific Place Shopping Mall, Ritz Carlton Hotel and ballroom, provides direct access to world-class retail and entertainment facilities to meet all your corporate and personal needs.'),
(85, 1, 0, 86, 161, 'ACCESSIBILITY'),
(86, 1, 0, 86, 164, 'Occupiers and visitors have various options to get to ISEB via car and public transportation.'),
(87, 1, 0, 86, 185, '&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.22251247316!2d106.808682!3d-6.223372!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0:0x6ee40b271a82586a!2sIndonesia Stock Exchange!5e0!3m2!1sen!2sid!4v1570526217146!5m2!1sen!2sid&quot; width=&quot;100%&quot; height=&quot;600&quot; frameborder=&quot;0&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;'),
(88, 2, 0, 86, 161, ''),
(89, 2, 0, 86, 164, ''),
(90, 2, 0, 86, 185, ''),
(91, 1, 0, 87, 232, 'Vehicle'),
(92, 1, 0, 87, 233, 'Four roads including two main (Jalan Jend. Sudirman and Jalan Gatot Subroto) and two secondary roads (Jalan Senopati and Jalan Widya Chandra) provide five access options for vehicles, hence tenants and visitors are not restricted by the current government imposed traffic regulations (odd &amp;amp; even license plate).'),
(93, 2, 0, 87, 232, 'Vehicle'),
(94, 2, 0, 87, 233, 'Four roads including two main (Jalan Jend. Sudirman and Jalan Gatot Subroto) and two secondary roads (Jalan Senopati and Jalan Widya Chandra) provide five access options for vehicles, hence tenants and visitors are not restricted by the current government imposed traffic regulations (odd &amp;amp; even license plate).'),
(95, 1, 0, 88, 232, 'Subway'),
(96, 1, 0, 88, 233, 'The &amp;quot;Istora&amp;quot; MRT Station is located 50 m away from the building.'),
(97, 2, 0, 88, 232, 'Subway'),
(98, 2, 0, 88, 233, 'The &amp;quot;Istora&amp;quot; MRT Station is located 50 m away from the building.'),
(99, 1, 0, 89, 273, 'BE PART OF ISEB COMMUNITY'),
(100, 1, 0, 89, 274, 'The building is welcoming and accommodating various space requirements ranging from 100 to over 10,000 sqm and offering various floor plate options from 700 to 2,300 sqm semi gross. ISEB provides world class facilities and services including: exclusive tenancy parking, high-speed passengers elevators and other cutting edge building applications.'),
(101, 2, 0, 89, 273, 'BE PART OF ISEB COMMUNITY'),
(102, 2, 0, 89, 274, 'The building is welcoming and accommodating various space requirements ranging from 100 to over 10,000 sqm and offering various floor plate options from 700 to 2,300 sqm semi gross. ISEB provides world class facilities and services including: exclusive tenancy parking, high-speed passengers elevators and other cutting edge building applications.'),
(103, 1, 0, 90, 239, '/assets/file_upload/admin/tenant/tenant-bg.jpg'),
(104, 1, 0, 90, 240, 'tenant'),
(105, 1, 0, 90, 241, 'fji tenant'),
(106, 2, 0, 90, 239, '/assets/file_upload/admin/tenant/tenant-bg.jpg'),
(107, 2, 0, 90, 240, ''),
(108, 2, 0, 90, 241, ''),
(109, 1, 0, 91, 242, 'TYPICAL FLOOR PLATE'),
(110, 1, 0, 91, 245, '/assets/file_upload/admin/tenant/Cushman Typical Floor.png'),
(111, 1, 0, 91, 246, 'file download'),
(112, 2, 0, 91, 242, 'TYPICAL FLOOR PLATE'),
(113, 2, 0, 91, 245, '/assets/file_upload/admin/tenant/Cushman Typical Floor.png'),
(114, 2, 0, 91, 246, 'file download'),
(115, 1, 74, 92, 247, 'DOWNLOAD TYPICAL FLOOR PLAN'),
(116, 1, 74, 92, 248, '/assets/file_upload/admin/tenant/FLOOR_Artboard_fji.jpg'),
(117, 2, 74, 92, 247, 'DOWNLOAD TYPICAL FLOOR PLAN'),
(118, 2, 74, 92, 248, '/assets/file_upload/admin/tenant/FLOOR_Artboard_fji.jpg'),
(119, 1, 74, 93, 247, 'DOWNLOAD BUILDING FACTS SHEET'),
(120, 1, 74, 93, 248, '/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf'),
(121, 2, 74, 93, 247, 'DOWNLOAD BUILDING FACTS SHEET'),
(122, 2, 74, 93, 248, '/assets/file_upload/admin/tenant/ISEB FACTS SHEET - DEC2019.pdf'),
(123, 1, 0, 94, 225, '/assets/file_upload/admin/contact/contact-bg.jpg'),
(124, 1, 0, 94, 227, ''),
(125, 1, 0, 94, 228, ''),
(126, 2, 0, 94, 225, ''),
(127, 2, 0, 94, 227, ''),
(128, 2, 0, 94, 228, ''),
(129, 1, 0, 95, 249, 'GET IN TOUCH'),
(130, 1, 0, 95, 250, 'Building Management Office :'),
(131, 1, 0, 95, 251, 'Indonesian Stock Exchange Building, 23rd Floor Tower 2'),
(132, 1, 0, 95, 252, '021 515 1515'),
(133, 1, 0, 95, 253, 'info.iseb@fji.co.id'),
(134, 1, 0, 95, 254, '021 515 1515'),
(135, 1, 0, 95, 255, 'enquiries@fji.co.id'),
(136, 1, 0, 95, 256, 'SEND US MESSAGE'),
(137, 1, 0, 95, 257, 'If you have any queries kindly take a moment to fill out this form. Our representatives will contact you shortly.'),
(138, 2, 0, 95, 249, 'GET IN TOUCH'),
(139, 2, 0, 95, 250, 'Building Management Office :'),
(140, 2, 0, 95, 251, 'Indonesian Stock Exchange Building, 23rd Floor Tower 2'),
(141, 2, 0, 95, 252, '021 515 1515'),
(142, 2, 0, 95, 253, 'info.iseb@fji.co.id'),
(143, 2, 0, 95, 254, '021 515 1515'),
(144, 2, 0, 95, 255, 'enquiries@fji.co.id'),
(145, 2, 0, 95, 256, 'SEND US MESSAGE'),
(146, 2, 0, 95, 257, 'If you have any queries kindly take a moment to fill out this form. Our representatives will contact you shortly.'),
(147, 1, 0, 96, 272, '/assets/file_upload/admin/facilities/icon_Security.svg'),
(148, 1, 0, 96, 271, 'SECURITY'),
(149, 2, 0, 96, 272, ''),
(150, 2, 0, 96, 271, 'SECURITY'),
(151, 1, 0, 97, 272, '/assets/file_upload/admin/facilities/icon_accesbility.svg'),
(152, 1, 0, 97, 271, 'PUBLIC TRANSPORT BUS &amp; MRT'),
(153, 2, 0, 97, 272, ''),
(154, 2, 0, 97, 271, ''),
(155, 1, 0, 98, 272, '/assets/file_upload/admin/facilities/icon_Bank.svg'),
(156, 1, 0, 98, 271, 'BANKS'),
(157, 2, 0, 98, 272, ''),
(158, 2, 0, 98, 271, ''),
(159, 1, 0, 99, 272, '/assets/file_upload/admin/facilities/icon_retail.svg'),
(160, 1, 0, 99, 271, 'RETAIL'),
(161, 2, 0, 99, 272, ''),
(162, 2, 0, 99, 271, ''),
(163, 1, 0, 100, 272, '/assets/file_upload/admin/facilities/icon_Tunnel.svg'),
(164, 1, 0, 100, 271, 'TUNNEL TO MALL &amp; HOTEL-APARTMENT'),
(165, 2, 0, 100, 272, ''),
(166, 2, 0, 100, 271, ''),
(167, 1, 0, 101, 272, '/assets/file_upload/admin/facilities/icon_parking.svg'),
(168, 1, 0, 101, 271, 'VALET PARKING'),
(169, 2, 0, 101, 272, ''),
(170, 2, 0, 101, 271, ''),
(171, 1, 0, 102, 272, '/assets/file_upload/admin/facilities/icon_Lift.svg'),
(172, 1, 0, 102, 271, '19 LIFTS IN EACH TOWER'),
(173, 2, 0, 102, 272, ''),
(174, 2, 0, 102, 271, ''),
(175, 1, 0, 103, 272, '/assets/file_upload/admin/facilities/icon_mailing parcel.svg'),
(176, 1, 0, 103, 271, 'MAILING &amp; PARCEL SERVICE'),
(177, 2, 0, 103, 272, ''),
(178, 2, 0, 103, 271, ''),
(179, 1, 0, 104, 232, 'Taxi'),
(180, 1, 0, 104, 233, 'An exclusive taxi-rank is available in front of the building main entrance.'),
(181, 2, 0, 104, 232, 'Taxi'),
(182, 2, 0, 104, 233, 'An exclusive taxi-rank is available in front of the building main entrance.'),
(183, 1, 0, 105, 232, 'Bus'),
(184, 1, 0, 105, 233, 'The Transjakarta &amp;quot;Komdak&amp;quot; bus stop is located 100 m away from the building.'),
(185, 2, 0, 105, 232, 'Bus'),
(186, 2, 0, 105, 233, 'The Transjakarta &amp;quot;Komdak&amp;quot; bus stop is located 100 m away from the building.'),
(187, 1, 0, 106, 232, 'Shuttle Bus'),
(188, 1, 0, 106, 233, 'The SCBD shuttle bus is available free of charge to be used to travel within the SCBD estate.'),
(189, 2, 0, 106, 232, 'Shuttle Bus'),
(190, 2, 0, 106, 233, 'The SCBD shuttle bus is available free of charge to be used to travel within the SCBD estate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general`
--

CREATE TABLE `tbl_general` (
  `general_id` int(11) NOT NULL,
  `general_title` varchar(100) NOT NULL,
  `general_description` varchar(255) NOT NULL,
  `general_keyword` varchar(255) NOT NULL,
  `general_facebook` varchar(50) DEFAULT NULL,
  `general_twitter` varchar(50) DEFAULT NULL,
  `general_cs_phonenumber` varchar(50) DEFAULT NULL,
  `general_cs_email` varchar(150) DEFAULT NULL,
  `general_update_date` datetime DEFAULT NULL,
  `general_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_general`
--

INSERT INTO `tbl_general` (`general_id`, `general_title`, `general_description`, `general_keyword`, `general_facebook`, `general_twitter`, `general_cs_phonenumber`, `general_cs_email`, `general_update_date`, `general_update_by`) VALUES
(1, 'Title', 'Desciption', 'keyword1, keyword2', 'tukarpoin', 'tukarpoin', '021-5888888', 'cs[@]tukarpoin.com', '2015-09-10 10:13:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_label`
--

CREATE TABLE `tbl_label` (
  `label_id` int(11) NOT NULL,
  `label_parent` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `label_title` varchar(100) NOT NULL,
  `label_name` varchar(100) NOT NULL,
  `type_id` tinyint(4) NOT NULL,
  `label_view` tinyint(4) NOT NULL,
  `label_page` tinyint(1) NOT NULL,
  `label_order` int(11) DEFAULT 1,
  `label_notif` varchar(300) NOT NULL,
  `label_active_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_label`
--

INSERT INTO `tbl_label` (`label_id`, `label_parent`, `module_id`, `label_title`, `label_name`, `type_id`, `label_view`, `label_page`, `label_order`, `label_notif`, `label_active_status`) VALUES
(156, 0, 110, 'Title', 'title', 1, 1, 1, 1, '', 1),
(168, 0, 110, 'Desc', 'desc', 2, 1, 1, 4, '', 1),
(181, 0, 110, 'publish_date', 'publish_date', 4, 1, 1, 5, '', 1),
(161, 0, 122, 'Title', 'title', 1, 1, 1, 1, '', 1),
(272, 0, 141, 'images', 'images', 3, 1, 1, 1, '', 1),
(164, 0, 122, 'desc', 'desc', 2, 1, 1, 2, '', 1),
(189, 0, 124, 'title', 'title', 1, 1, 1, 1, '', 1),
(190, 0, 124, 'images', 'images', 3, 1, 1, 2, '', 1),
(232, 0, 132, 'title', 'title', 1, 1, 1, 1, '', 1),
(191, 0, 124, 'Desc', 'desc', 2, 1, 1, 3, '', 1),
(192, 0, 125, 'header_title', 'header_title', 1, 1, 1, 1, '', 1),
(173, 0, 103, 'virtual_title', 'virtual_title', 1, 1, 1, 1, '', 1),
(206, 0, 103, 'virtual_url', 'virtual_url', 1, 1, 1, 2, '', 1),
(207, 0, 125, 'header_images', 'header_images', 3, 1, 1, 2, '', 1),
(178, 0, 123, 'Work FlowTitle', 'workflow_title', 1, 1, 1, 1, '', 1),
(179, 0, 123, 'desc', 'desc', 2, 1, 1, 2, '', 1),
(180, 0, 123, 'images', 'images', 3, 1, 1, 3, '', 1),
(185, 0, 122, 'Map', 'map', 1, 1, 1, 4, 'Input Iframe', 1),
(186, 0, 110, 'images', 'images', 3, 1, 1, 3, '', 1),
(188, 0, 110, 'category', 'category', 6, 1, 1, 2, '', 1),
(193, 0, 125, 'header sub title', 'header_sub_title', 1, 1, 1, 3, '', 1),
(269, 0, 140, 'title', 'title', 1, 1, 1, 1, '', 1),
(196, 0, 126, 'header_images', 'header_images', 3, 1, 1, 1, '', 1),
(270, 0, 140, 'Desc', 'desc', 2, 1, 1, 2, '', 1),
(198, 0, 127, 'title', 'title', 1, 1, 1, 1, '', 1),
(199, 0, 127, 'Desc', 'desc', 2, 1, 1, 2, '', 1),
(200, 0, 128, 'header_title', 'header_title', 1, 1, 1, 1, '', 1),
(201, 0, 128, 'header_images', 'header_images', 3, 1, 1, 2, '', 1),
(202, 0, 128, 'header_desc', 'header_desc', 1, 1, 1, 3, '', 1),
(204, 0, 129, 'header_images', 'header_images', 3, 1, 1, 1, '', 1),
(208, 0, 110, 'close_date', 'close_date', 4, 1, 1, 6, '', 1),
(209, 0, 125, 'meta_keyword', 'meta_keyword', 1, 0, 1, 4, '', 1),
(210, 0, 125, 'meta_desc', 'meta_desc', 2, 0, 1, 5, '', 1),
(211, 0, 128, 'meta_desc', 'meta_desc', 2, 0, 1, 4, '', 1),
(212, 0, 128, 'meta_keyword', 'meta_keyword', 1, 0, 1, 5, '', 1),
(213, 0, 110, 'meta_desc', 'meta_desc', 2, 0, 0, 7, '', 1),
(214, 0, 110, 'meta_keyword', 'meta_keyword', 1, 0, 0, 8, '', 1),
(215, 0, 129, 'meta_desc', 'meta_desc', 2, 0, 1, 2, '', 1),
(216, 0, 129, 'meta_keyword', 'meta_keyword', 1, 0, 1, 3, '', 1),
(217, 0, 126, 'meta_desc', 'meta_desc', 2, 0, 1, 2, '', 1),
(218, 0, 126, 'meta_keyword', 'meta_keyword', 1, 0, 1, 3, '', 1),
(271, 0, 141, 'title', 'title', 1, 1, 1, 1, '', 1),
(234, 0, 133, 'title', 'title', 1, 1, 1, 1, '', 1),
(221, 0, 130, 'header_images', 'header_images', 3, 1, 1, 1, '', 1),
(222, 0, 130, 'meta_desc', 'meta_desc', 2, 0, 1, 2, '', 1),
(223, 0, 130, 'meta_keyword', 'meta_keyword', 1, 0, 1, 3, '', 1),
(249, 0, 136, 'title', 'title', 1, 1, 1, 1, '', 1),
(225, 0, 131, 'header_images', 'header_images', 3, 1, 1, 1, '', 1),
(250, 0, 136, 'address_title', 'address_title', 1, 1, 1, 2, '', 1),
(227, 0, 131, 'meta_desc', 'meta_desc', 2, 0, 1, 2, '', 1),
(228, 0, 131, 'meta_keyword', 'meta_keyword', 1, 0, 1, 3, '', 1),
(229, 0, 127, 'images', 'images', 3, 1, 1, 1, '40 x 40px', 1),
(259, 0, 138, 'main logo', 'main_logo', 3, 1, 1, 1, '', 1),
(235, 0, 133, 'Desc', 'desc', 2, 1, 1, 2, '', 1),
(233, 0, 132, 'Desc', 'desc', 2, 1, 1, 2, '', 1),
(239, 0, 134, 'header_images', 'header_images', 3, 1, 1, 1, '', 1),
(240, 0, 134, 'meta_keyword', 'meta_keyword', 1, 0, 1, 2, '', 1),
(241, 0, 134, 'meta_desc', 'meta_desc', 2, 0, 1, 3, '', 1),
(242, 0, 135, 'title', 'title', 1, 1, 1, 1, '', 1),
(274, 0, 142, 'desc', 'desc', 2, 1, 1, 2, '', 1),
(245, 0, 135, 'images', 'images', 3, 1, 1, 4, '', 1),
(246, 0, 135, 'file download', 'file_download', 8, 1, 1, 5, '', 1),
(247, 246, 135, 'title download', 'title_download', 1, 1, 0, 1, '', 1),
(248, 246, 135, 'file url', 'file_url', 10, 1, 0, 2, '', 1),
(273, 0, 142, 'title', 'title', 1, 1, 1, 1, '', 1),
(251, 0, 136, 'address', 'address', 1, 1, 1, 3, '', 1),
(252, 0, 136, 'General Enquiries Phone', 'general_enquiries_phone', 1, 0, 1, 4, '', 1),
(253, 0, 136, 'General Enquiries Email', 'general_enquiries_email', 1, 0, 1, 5, '', 1),
(254, 0, 136, 'Leasing Enquiries Phone', 'leasing_enquiries_phone', 1, 0, 1, 6, '', 1),
(255, 0, 136, 'Leasing Enquiries Email', 'leasing_enquiries_email', 1, 0, 1, 7, '', 1),
(256, 0, 136, 'title message', 'title_message', 1, 1, 1, 8, '', 1),
(257, 0, 136, 'sub title message', 'sub_title_message', 2, 0, 1, 9, '', 1),
(258, 0, 137, 'Desc', 'desc', 2, 1, 1, 1, '', 1),
(260, 0, 138, 'mobile logo', 'mobile_logo', 3, 1, 1, 2, '', 1),
(261, 0, 138, 'dark mobil logo', 'dark_mobil_logo', 3, 1, 1, 3, '', 1),
(262, 0, 139, 'left logo', 'left_logo', 3, 1, 1, 1, '', 0),
(263, 0, 139, 'address', 'address', 2, 0, 1, 2, '', 0),
(264, 0, 139, 'background', 'background', 3, 1, 1, 3, '', 0),
(265, 0, 139, 'email', 'email', 1, 1, 1, 4, '', 0),
(266, 0, 139, 'phone', 'phone', 1, 1, 1, 5, '', 0),
(267, 0, 139, 'fax', 'fax', 1, 1, 1, 6, '', 0),
(268, 0, 139, 'right logo', 'right_logo', 3, 1, 1, 7, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_label_type`
--

CREATE TABLE `tbl_label_type` (
  `type_id` int(11) NOT NULL,
  `type_title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_label_type`
--

INSERT INTO `tbl_label_type` (`type_id`, `type_title`) VALUES
(1, 'Textinput'),
(2, 'Textarea'),
(3, 'Images'),
(4, 'Datepicker'),
(5, 'Timepicker'),
(6, 'Options'),
(7, 'Radio'),
(8, 'Gallery'),
(9, 'Check list'),
(10, 'Documents');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `language_id` int(11) NOT NULL,
  `language_title` varchar(50) NOT NULL,
  `language_image` varchar(255) NOT NULL,
  `language_default` tinyint(1) NOT NULL,
  `language_active_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`language_id`, `language_title`, `language_image`, `language_default`, `language_active_status`) VALUES
(1, 'Eng', '/assets/file_upload/admin/flag/uk_flag.png', 1, 1),
(2, 'Ind', '/assets/file_upload/admin/flag/Indonesia.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_cms`
--

CREATE TABLE `tbl_log_cms` (
  `log_id_cms` int(11) NOT NULL,
  `log_module` varchar(50) NOT NULL,
  `log_value` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_create_date` datetime NOT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_log_cms`
--

INSERT INTO `tbl_log_cms` (`log_id_cms`, `log_module`, `log_value`, `user_id`, `log_create_date`, `ip`) VALUES
(1, 'Delete ', '13 | ', 1, '2019-07-04 15:51:11', '::1'),
(2, 'Add news', '14 | ', 1, '2019-07-04 15:56:00', '::1'),
(3, 'Active news', '14 | 1', 1, '2019-07-04 16:01:53', '::1'),
(4, 'Active news', '14 | 1', 1, '2019-07-04 16:01:55', '::1'),
(5, 'Delete ', '14 | ', 1, '2019-07-04 16:01:58', '::1'),
(6, 'Add news', '15 | ', 1, '2019-07-04 16:02:22', '::1'),
(7, 'Delete ', '15 | ', 1, '2019-07-04 16:03:19', '::1'),
(8, 'Add news', '16 | ', 1, '2019-07-04 16:03:47', '::1'),
(9, 'Delete ', '16 | ', 1, '2019-07-04 16:05:13', '::1'),
(10, 'Login', 'superadmin | 1', 1, '2019-07-05 13:26:30', '::1'),
(11, 'Add news', '17 | ', 1, '2019-07-05 13:27:04', '::1'),
(12, 'Delete ', '17 | ', 1, '2019-07-05 13:27:23', '::1'),
(13, 'Add news', '18 | ', 1, '2019-07-05 13:29:15', '::1'),
(14, 'Delete ', '18 | ', 1, '2019-07-05 13:31:34', '::1'),
(15, 'Add news', '19 | ', 1, '2019-07-05 13:32:25', '::1'),
(16, 'Default Language', '1 | Eng', 1, '2019-07-05 14:17:36', '::1'),
(17, 'Default Language', '2 | Ind', 1, '2019-07-05 14:18:06', '::1'),
(18, 'Login', 'superadmin | 1', 1, '2019-07-05 17:17:41', '::1'),
(19, 'Default Language', '1 | Eng', 1, '2019-07-05 19:09:10', '::1'),
(20, 'Default Language', '2 | Ind', 1, '2019-07-05 19:09:22', '::1'),
(21, 'Default Language', '1 | Eng', 1, '2019-07-05 19:10:34', '::1'),
(22, 'Default Language', '1 | Eng', 1, '2019-07-05 19:19:21', '::1'),
(23, 'Default Language', '2 | Ind', 1, '2019-07-05 19:19:22', '::1'),
(24, 'Default Language', '1 | Eng', 1, '2019-07-05 19:19:25', '::1'),
(25, 'Default Language', '1 | Eng', 1, '2019-07-05 19:19:34', '::1'),
(26, 'Default Language', '2 | Ind', 1, '2019-07-05 19:19:37', '::1'),
(27, 'Login', 'superadmin | 1', 1, '2019-07-08 11:34:35', '::1'),
(28, 'Login', 'superadmin | 1', 1, '2019-07-16 12:07:03', '::1'),
(29, 'Login', 'superadmin | 1', 1, '2019-07-16 16:27:22', '::1'),
(30, 'Delete Module', '160 | short_desc', 1, '2019-07-16 16:38:04', '::1'),
(31, 'Delete Module', '157 | Images', 1, '2019-07-16 16:38:10', '::1'),
(32, 'Add news', '20 | news/berita-indo', 1, '2019-07-16 16:38:34', '::1'),
(33, 'Active news', '20 | 1', 1, '2019-07-16 16:38:37', '::1'),
(34, 'Delete ', '20 | ', 1, '2019-07-16 16:48:24', '::1'),
(35, 'Add news', '21 | news/indonesia', 1, '2019-07-16 16:48:55', '::1'),
(36, 'Active news', '21 | 1', 1, '2019-07-16 16:48:58', '::1'),
(37, 'Login', 'superadmin | 1', 1, '2019-07-17 18:54:18', '::1'),
(38, 'Login', 'superadmin | 1', 1, '2019-07-24 15:55:55', '::1'),
(39, 'Login', 'superadmin | 1', 1, '2019-07-25 13:16:03', '::1'),
(40, 'Delete ', '21 | 21', 1, '2019-07-25 14:23:47', '::1'),
(41, 'Active 168', '168 | short Desc | 1', 1, '2019-07-25 14:25:15', '::1'),
(42, 'Active 169', '169 | images | 1', 1, '2019-07-25 14:25:45', '::1'),
(43, 'Inactive 169', '169 | images | 0', 1, '2019-07-25 14:31:36', '::1'),
(44, 'Delete Module', '169 | images', 1, '2019-07-25 14:33:44', '::1'),
(45, 'Add news', '22 | ', 1, '2019-07-25 14:33:59', '::1'),
(46, 'Delete ', '22 | 22', 1, '2019-07-25 14:34:04', '::1'),
(47, 'Add news', '23 | ', 1, '2019-07-25 14:35:49', '::1'),
(48, 'Active news', '23 | 1', 1, '2019-07-25 14:35:52', '::1'),
(49, 'update 11', '', 1, '2019-07-25 14:36:32', '::1'),
(50, 'update 11', '', 1, '2019-07-25 14:36:32', '::1'),
(51, 'update 11', '', 1, '2019-07-25 14:36:43', '::1'),
(52, 'update 11', '', 1, '2019-07-25 14:36:43', '::1'),
(53, 'update 11', '23 | ', 1, '2019-07-25 16:02:48', '::1'),
(54, 'update 11', '23 | ', 1, '2019-07-25 16:03:25', '::1'),
(55, 'Active 170', '170 | subs | 1', 1, '2019-07-25 16:05:04', '::1'),
(56, 'Active 172', '172 | sub_desc | 1', 1, '2019-07-25 16:06:08', '::1'),
(57, 'Active 171', '171 | title_subs | 1', 1, '2019-07-25 16:06:11', '::1'),
(58, 'update 11', '23 | ', 1, '2019-07-25 16:14:27', '::1'),
(59, 'Login', 'superadmin | 1', 1, '2019-07-25 19:48:43', '::1'),
(60, 'update 11', '23 | ', 1, '2019-07-25 20:40:44', '::1'),
(61, 'Active Language', '3 | Malay | 1', 1, '2019-07-25 20:41:25', '::1'),
(62, 'Delete Language', '3 | Malay', 1, '2019-07-25 20:42:08', '::1'),
(63, 'Login', 'superadmin | 1', 1, '2019-07-25 23:45:38', '::1'),
(64, 'Update sub Content', '45', 1, '2019-07-26 02:09:53', '::1'),
(65, 'Login', 'superadmin | 1', 1, '2019-07-26 10:51:36', '::1'),
(66, 'Update sub Content', '45', 1, '2019-07-26 11:49:38', '::1'),
(67, 'update 11', '23 | ', 1, '2019-07-26 11:50:52', '::1'),
(68, 'update 11', '23 | ', 1, '2019-07-26 11:51:20', '::1'),
(69, 'Login', 'superadmin | 1', 1, '2019-07-26 14:53:15', '::1'),
(70, 'update ', 'sub -  - 25', 1, '2019-07-26 15:26:30', '::1'),
(71, 'update ', 'sub -  - 25', 1, '2019-07-26 15:26:30', '::1'),
(72, 'update ', 'sub -  - 24', 1, '2019-07-26 15:26:54', '::1'),
(73, 'update ', 'sub -  - 24', 1, '2019-07-26 15:26:54', '::1'),
(74, 'Add news', '26 | ', 1, '2019-07-26 15:31:13', '::1'),
(75, 'Active news', '26 | 1', 1, '2019-07-26 15:31:16', '::1'),
(76, 'Update sub Content', '52', 1, '2019-07-26 15:31:50', '::1'),
(77, 'update ', 'sub -  - 27', 1, '2019-07-26 15:32:17', '::1'),
(78, 'update ', 'sub -  - 27', 1, '2019-07-26 15:32:17', '::1'),
(79, 'Login', 'superadmin | 1', 1, '2019-07-29 11:35:59', '::1'),
(80, 'Active 173', '173 | title_banner | 1', 1, '2019-07-29 14:25:05', '::1'),
(81, 'Active 174', '174 | banner_desc | 1', 1, '2019-07-29 14:27:22', '::1'),
(82, 'Active 175', '175 | banner_bg | 1', 1, '2019-07-29 14:27:23', '::1'),
(83, 'Active 176', '176 | banner_link | 1', 1, '2019-07-29 14:27:25', '::1'),
(84, 'Active 177', '177 | banner_title_link | 1', 1, '2019-07-29 14:29:51', '::1'),
(85, 'Add Banner', '28 | ', 1, '2019-07-29 14:32:55', '::1'),
(86, 'Active Banner', '28 | 1', 1, '2019-07-29 14:32:58', '::1'),
(87, 'update 3', '28 | ', 1, '2019-07-29 14:49:00', '::1'),
(88, 'Add Banner', '29 | ', 1, '2019-07-29 14:50:57', '::1'),
(89, 'Add Banner', '30 | ', 1, '2019-07-29 14:55:16', '::1'),
(90, 'Active Banner', '30 | 1', 1, '2019-07-29 14:55:27', '::1'),
(91, 'Active Banner', '29 | 1', 1, '2019-07-29 14:55:28', '::1'),
(92, 'Active Module', '123 | WE PRINT ON | 1', 1, '2019-07-29 14:59:47', '::1'),
(93, 'Active 178', '178 | Print Title | 1', 1, '2019-07-29 15:02:02', '::1'),
(94, 'Active 179', '179 | Print Desc | 1', 1, '2019-07-29 15:02:03', '::1'),
(95, 'Active 180', '180 | Print img | 1', 1, '2019-07-29 15:02:04', '::1'),
(96, 'Add print_on', '31 | ', 1, '2019-07-29 15:04:51', '::1'),
(97, 'Add print_on', '32 | ', 1, '2019-07-29 15:05:25', '::1'),
(98, 'Active print_on', '32 | 1', 1, '2019-07-29 15:05:27', '::1'),
(99, 'Active print_on', '31 | 1', 1, '2019-07-29 15:05:29', '::1'),
(100, 'Add print_on', '33 | ', 1, '2019-07-29 15:05:52', '::1'),
(101, 'Add print_on', '34 | ', 1, '2019-07-29 15:06:46', '::1'),
(102, 'Active print_on', '33 | 1', 1, '2019-07-29 15:06:50', '::1'),
(103, 'Active print_on', '34 | 1', 1, '2019-07-29 15:06:53', '::1'),
(104, 'Add designer', '35 | ', 1, '2019-07-29 15:10:42', '::1'),
(105, 'Active designer', '35 | 1', 1, '2019-07-29 15:10:53', '::1'),
(106, 'update 4', '35 | ', 1, '2019-07-29 15:12:53', '::1'),
(107, 'update 4', '35 | ', 1, '2019-07-29 15:13:27', '::1'),
(108, 'Add designer', '36 | ', 1, '2019-07-29 15:14:59', '::1'),
(109, 'Add designer', '37 | ', 1, '2019-07-29 15:15:41', '::1'),
(110, 'Active designer', '36 | 1', 1, '2019-07-29 15:16:01', '::1'),
(111, 'Active designer', '37 | 1', 1, '2019-07-29 15:16:02', '::1'),
(112, 'update 4', '35 | ', 1, '2019-07-29 15:16:37', '::1'),
(113, 'Delete ', '27 | 27', 1, '2019-07-29 15:22:12', '::1'),
(114, 'Delete ', '26 | 26', 1, '2019-07-29 15:22:16', '::1'),
(115, 'Delete Module', '170 | subs', 1, '2019-07-29 15:22:58', '::1'),
(116, 'Active 181', '181 | date | 1', 1, '2019-07-29 15:23:38', '::1'),
(117, 'Add seputarkain', '38 | ', 1, '2019-07-29 15:43:38', '::1'),
(118, 'Active seputarkain', '38 | 1', 1, '2019-07-29 15:43:42', '::1'),
(119, 'Active seputarkain', '38 | 1', 1, '2019-07-29 15:43:44', '::1'),
(120, 'Active seputarkain', '38 | 1', 1, '2019-07-29 15:43:45', '::1'),
(121, 'Add seputarkain', '39 | ', 1, '2019-07-29 15:45:22', '::1'),
(122, 'Active seputarkain', '39 | 1', 1, '2019-07-29 15:45:25', '::1'),
(123, 'update 11', '38 | ', 1, '2019-07-29 15:56:38', '::1'),
(124, 'Active 182', '182 | accor | 1', 1, '2019-07-29 16:01:24', '::1'),
(125, 'Active 183', '183 | title_subs | 1', 1, '2019-07-29 16:01:52', '::1'),
(126, 'update 11', '38 | ', 1, '2019-07-29 16:02:35', '::1'),
(127, 'update 11', '39 | ', 1, '2019-07-29 16:03:10', '::1'),
(128, 'update 11', '38 | ', 1, '2019-07-29 16:03:15', '::1'),
(129, 'Add seputarkain', '40 | ', 1, '2019-07-29 16:03:27', '::1'),
(130, 'Active 184', '184 | Descss | 1', 1, '2019-07-29 16:04:00', '::1'),
(131, 'Add seputarkain', '41 | ', 1, '2019-07-29 16:04:11', '::1'),
(132, 'Delete ', '39 | 39', 1, '2019-07-29 16:04:16', '::1'),
(133, 'Delete ', '38 | 38', 1, '2019-07-29 16:04:19', '::1'),
(134, 'Delete ', '41 | 41', 1, '2019-07-29 16:04:22', '::1'),
(135, 'Delete ', '40 | 40', 1, '2019-07-29 16:04:24', '::1'),
(136, 'Update sub Content', '83', 1, '2019-07-29 16:05:15', '::1'),
(137, 'Active designer', '36 | 1', 1, '2019-07-29 16:08:17', '::1'),
(138, 'Active designer', '37 | 1', 1, '2019-07-29 16:08:19', '::1'),
(139, 'update 4', '35 | ', 1, '2019-07-29 16:08:56', '::1'),
(140, 'Delete ', '42 | 42', 1, '2019-07-29 16:11:11', '::1'),
(141, 'Add seputarkain', '43 | ', 1, '2019-07-29 16:12:19', '::1'),
(142, 'Active seputarkain', '43 | 1', 1, '2019-07-29 16:12:22', '::1'),
(143, 'update 11', '43 | ', 1, '2019-07-29 16:13:18', '::1'),
(144, 'update 3', '29 | ', 1, '2019-07-29 16:23:11', '::1'),
(145, 'Login', 'superadmin | 1', 1, '2019-07-30 15:22:01', '::1'),
(146, 'Active designer', '37 | 1', 1, '2019-07-30 15:32:11', '::1'),
(147, 'Active designer', '36 | 1', 1, '2019-07-30 16:20:37', '::1'),
(148, 'Active 185', '185 | testimonial | 1', 1, '2019-07-30 16:29:03', '::1'),
(149, 'update 4', '35 | ', 1, '2019-07-30 16:31:57', '::1'),
(150, 'update 4', '35 | ', 1, '2019-07-30 16:33:40', '::1'),
(151, 'Update sub Content', '83', 1, '2019-07-30 17:51:36', '::1'),
(152, 'Update sub Content', '83', 1, '2019-07-30 17:51:51', '::1'),
(153, 'Update sub Content', '83', 1, '2019-07-30 17:52:02', '::1'),
(154, 'Delete ', '45 | 45', 1, '2019-07-30 18:08:45', '::1'),
(155, 'Delete ', '46 | 46', 1, '2019-07-30 18:08:48', '::1'),
(156, 'Delete ', '44 | 44', 1, '2019-07-30 18:08:50', '::1'),
(157, 'Update sub Content', '83', 1, '2019-07-30 18:09:09', '::1'),
(158, 'Update sub Content', '83', 1, '2019-07-30 18:09:18', '::1'),
(159, 'Update sub Content', '83', 1, '2019-07-30 18:09:28', '::1'),
(160, 'update 4', '36 | ', 1, '2019-07-30 18:38:36', '::1'),
(161, 'Login', 'superadmin | 1', 1, '2019-07-31 14:26:26', '::1'),
(162, 'Active 186', '186 | images | 1', 1, '2019-07-31 14:27:35', '::1'),
(163, 'Active 187', '187 | img_sub | 1', 1, '2019-07-31 14:29:50', '::1'),
(164, 'Delete Module', '184 | desc_sub', 1, '2019-07-31 14:30:54', '::1'),
(165, 'Delete Module', '187 | img_sub', 1, '2019-07-31 14:30:58', '::1'),
(166, 'Delete Module', '183 | title_subs', 1, '2019-07-31 14:31:02', '::1'),
(167, 'Delete Module', '182 | accor', 1, '2019-07-31 14:31:04', '::1'),
(168, 'update 11', '43 | ', 1, '2019-07-31 15:06:30', '::1'),
(169, 'Add seputarkain', '50 | ', 1, '2019-07-31 15:09:14', '::1'),
(170, 'Active seputarkain', '50 | 1', 1, '2019-07-31 15:09:17', '::1'),
(171, 'Login', 'superadmin | 1', 1, '2019-08-05 17:39:36', '::1'),
(172, 'Login', 'superadmin | 1', 1, '2019-09-08 12:55:58', '::1'),
(173, 'Delete ', '29 | 29', 1, '2019-09-08 12:57:52', '::1'),
(174, 'Delete ', '28 | 28', 1, '2019-09-08 12:57:55', '::1'),
(175, 'Delete ', '49 | 49', 1, '2019-09-08 13:02:29', '::1'),
(176, 'Delete ', '47 | 47', 1, '2019-09-08 13:02:32', '::1'),
(177, 'Delete ', '48 | 48', 1, '2019-09-08 13:02:36', '::1'),
(178, 'Active 188', '188 | category | 1', 1, '2019-09-08 13:05:40', '::1'),
(179, 'Delete ', '31 | 31', 1, '2019-09-08 13:08:40', '::1'),
(180, 'Delete ', '32 | 32', 1, '2019-09-08 13:08:43', '::1'),
(181, 'Delete ', '33 | 33', 1, '2019-09-08 13:08:47', '::1'),
(182, 'Delete ', '34 | 34', 1, '2019-09-08 13:08:50', '::1'),
(183, 'Delete ', '36 | 36', 1, '2019-09-08 13:11:19', '::1'),
(184, 'Delete ', '37 | 37', 1, '2019-09-08 13:11:23', '::1'),
(185, 'Delete ', '35 | 35', 1, '2019-09-08 13:11:26', '::1'),
(186, 'Login', 'superadmin | 1', 1, '2019-09-08 21:07:35', '::1'),
(187, 'Delete ', '43 | 43', 1, '2019-09-08 21:12:26', '::1'),
(188, 'Delete ', '50 | 50', 1, '2019-09-08 21:12:30', '::1'),
(189, 'Delete Module', '166 | gallery_images', 1, '2019-09-08 21:14:16', '::1'),
(190, 'Delete Module', '165 | gallery_title', 1, '2019-09-08 21:14:22', '::1'),
(191, 'Delete ', '30 | 30', 1, '2019-09-08 21:17:06', '::1'),
(192, 'Active Module Group', '9 | Footer | 1', 1, '2019-09-08 21:17:50', '::1'),
(193, 'Inactive Module Group', '9 | Footer | 0', 1, '2019-09-08 21:18:00', '::1'),
(194, 'Active Module', '124 | Services | 1', 1, '2019-09-08 22:18:16', '::1'),
(195, 'Active 189', '189 | title | 1', 1, '2019-09-08 22:19:45', '::1'),
(196, 'Active 190', '190 | images | 1', 1, '2019-09-08 22:19:46', '::1'),
(197, 'Active 191', '191 | Desc | 1', 1, '2019-09-08 22:19:48', '::1'),
(198, 'Login', 'superadmin | 1', 1, '2019-09-10 13:43:11', '::1'),
(199, 'Add services', '51 | ', 1, '2019-09-10 13:53:15', '::1'),
(200, 'update 3', '51 | ', 1, '2019-09-10 13:54:39', '::1'),
(201, 'Active services', '51 | 1', 1, '2019-09-10 13:54:41', '::1'),
(202, 'Add services', '52 | ', 1, '2019-09-10 13:55:18', '::1'),
(203, 'Active services', '52 | 1', 1, '2019-09-10 13:55:23', '::1'),
(204, 'Add services', '53 | ', 1, '2019-09-10 13:55:42', '::1'),
(205, 'Add services', '54 | ', 1, '2019-09-10 13:56:03', '::1'),
(206, 'Add services', '55 | ', 1, '2019-09-10 13:56:26', '::1'),
(207, 'Active services', '55 | 1', 1, '2019-09-10 13:56:29', '::1'),
(208, 'Active services', '53 | 1', 1, '2019-09-10 13:56:32', '::1'),
(209, 'Active services', '54 | 1', 1, '2019-09-10 13:56:35', '::1'),
(210, 'Add work_flow', '56 | ', 1, '2019-09-10 14:00:29', '::1'),
(211, 'Active work_flow', '56 | 1', 1, '2019-09-10 14:00:37', '::1'),
(212, 'update 3', '56 | ', 1, '2019-09-10 14:11:02', '::1'),
(213, 'Add work_flow', '57 | ', 1, '2019-09-10 18:38:46', '::1'),
(214, 'Add work_flow', '58 | ', 1, '2019-09-10 18:39:10', '::1'),
(215, 'Add work_flow', '59 | ', 1, '2019-09-10 18:39:31', '::1'),
(216, 'Active work_flow', '57 | 1', 1, '2019-09-10 18:39:34', '::1'),
(217, 'Active work_flow', '58 | 1', 1, '2019-09-10 18:39:36', '::1'),
(218, 'Active work_flow', '59 | 1', 1, '2019-09-10 18:39:38', '::1'),
(219, 'Add works', '60 | ', 1, '2019-09-10 18:42:32', '::1'),
(220, 'Active works', '60 | 1', 1, '2019-09-10 18:42:34', '::1'),
(221, 'Login', 'superadmin | 1', 1, '2019-09-12 19:49:41', '::1'),
(222, 'Login', 'superadmin | 1', 1, '2019-09-13 13:30:33', '::1'),
(223, 'Active Module', '125 | Header | 1', 1, '2019-09-13 13:32:32', '::1'),
(224, 'Active Module Group', '12 | About | 1', 1, '2019-09-13 13:35:39', '::1'),
(225, 'Active Module', '126 | Header about | 1', 1, '2019-09-13 13:36:24', '::1'),
(226, 'Active 197', '197 | header_desc | 1', 1, '2019-09-13 13:37:17', '::1'),
(227, 'Active 196', '196 | header_images | 1', 1, '2019-09-13 13:37:18', '::1'),
(228, 'Active 195', '195 | header_title | 1', 1, '2019-09-13 13:37:19', '::1'),
(229, 'Active 192', '192 | header_title | 1', 1, '2019-09-13 13:38:30', '::1'),
(230, 'Active 193', '193 | header_desc | 1', 1, '2019-09-13 13:38:31', '::1'),
(231, 'Active 194', '194 | header_link | 1', 1, '2019-09-13 13:38:32', '::1'),
(232, 'Active 198', '198 | title | 1', 1, '2019-09-13 13:40:23', '::1'),
(233, 'Active 199', '199 | Desc | 1', 1, '2019-09-13 13:40:24', '::1'),
(234, 'Active Module', '127 | About | 1', 1, '2019-09-13 13:40:57', '::1'),
(235, 'Active Module', '128 | Header Blog | 1', 1, '2019-09-13 13:47:49', '::1'),
(236, 'Active 200', '200 | header_title | 1', 1, '2019-09-13 13:49:20', '::1'),
(237, 'Active 201', '201 | header_images | 1', 1, '2019-09-13 13:49:21', '::1'),
(238, 'Active 202', '202 | header_desc | 1', 1, '2019-09-13 13:49:22', '::1'),
(239, 'Login', 'superadmin | 1', 1, '2019-09-14 02:46:42', '::1'),
(240, 'Active 203', '203 | header_title | 1', 1, '2019-09-14 02:49:47', '::1'),
(241, 'Active 204', '204 | header_images | 1', 1, '2019-09-14 02:49:48', '::1'),
(242, 'Active Module', '129 | Header works | 1', 1, '2019-09-14 02:49:55', '::1'),
(243, 'Active 205', '205 | header_desc | 1', 1, '2019-09-14 02:50:00', '::1'),
(244, 'Default Language', '2 | Ind', 1, '2019-09-14 02:53:44', '::1'),
(245, 'Default Language', '1 | Eng', 1, '2019-09-14 02:53:46', '::1'),
(246, 'Login', 'superadmin | 1', 1, '2019-09-14 18:14:47', '::1'),
(247, 'Add header_home', '61 | ', 1, '2019-09-14 18:18:36', '::1'),
(248, 'Active header_home', '61 | 1', 1, '2019-09-14 18:18:39', '::1'),
(249, 'Delete Module', '177 | banner_title_link', 1, '2019-09-14 18:20:08', '::1'),
(250, 'Delete Module', '176 | banner_link', 1, '2019-09-14 18:20:10', '::1'),
(251, 'Delete Module', '175 | banner_bg', 1, '2019-09-14 18:20:13', '::1'),
(252, 'Active 206', '206 | banner_video | 1', 1, '2019-09-14 18:21:00', '::1'),
(253, 'Add Banner', '62 | ', 1, '2019-09-14 18:43:45', '::1'),
(254, 'Active Banner', '62 | 1', 1, '2019-09-14 18:43:48', '::1'),
(255, 'update 3', '56 | ', 1, '2019-09-14 18:44:34', '::1'),
(256, 'update 3', '56 | ', 1, '2019-09-14 20:45:53', '::1'),
(257, 'update 3', '56 | ', 1, '2019-09-14 20:46:08', '::1'),
(258, 'update 3', '57 | ', 1, '2019-09-14 20:46:19', '::1'),
(259, 'update 3', '57 | ', 1, '2019-09-14 20:46:28', '::1'),
(260, 'update 3', '58 | ', 1, '2019-09-14 20:46:41', '::1'),
(261, 'update 3', '58 | ', 1, '2019-09-14 20:46:50', '::1'),
(262, 'update 3', '59 | ', 1, '2019-09-14 20:47:10', '::1'),
(263, 'Login', 'superadmin | 1', 1, '2019-09-15 15:43:27', '::1'),
(264, 'update 3', '62 | ', 1, '2019-09-15 15:49:53', '::1'),
(265, 'update 3', '62 | ', 1, '2019-09-15 15:50:21', '::1'),
(266, 'update 3', '62 | ', 1, '2019-09-15 15:50:31', '::1'),
(267, 'update 3', '62 | ', 1, '2019-09-15 15:54:39', '::1'),
(268, 'Add Banner', '63 | ', 1, '2019-09-15 15:55:59', '::1'),
(269, 'Active Banner', '63 | 1', 1, '2019-09-15 15:56:02', '::1'),
(270, 'update 3', '54 | ', 1, '2019-09-15 15:58:08', '::1'),
(271, 'Delete ', '53 | 53', 1, '2019-09-15 15:58:17', '::1'),
(272, 'update 3', '61 | ', 1, '2019-09-15 15:59:41', '::1'),
(273, 'Active 207', '207 | header_images | 1', 1, '2019-09-15 16:01:02', '::1'),
(274, 'update 3', '61 | ', 1, '2019-09-15 16:01:38', '::1'),
(275, 'Add blog', '64 | ', 1, '2019-09-15 17:20:01', '::1'),
(276, 'Active blog', '64 | 1', 1, '2019-09-15 17:20:04', '::1'),
(277, 'update 3', '61 | ', 1, '2019-09-15 18:56:49', '::1'),
(278, 'update 3', '61 | ', 1, '2019-09-15 18:57:27', '::1'),
(279, 'Add header_about', '65 | ', 1, '2019-09-15 20:40:15', '::1'),
(280, 'Active header_about', '65 | 1', 1, '2019-09-15 20:41:15', '::1'),
(281, 'update 12', '65 | ', 1, '2019-09-15 21:18:02', '::1'),
(282, 'update 12', '65 | ', 1, '2019-09-15 21:37:38', '::1'),
(283, 'update 12', '65 | ', 1, '2019-09-15 21:48:25', '::1'),
(284, 'update 12', '65 | ', 1, '2019-09-15 21:48:39', '::1'),
(285, 'update 12', '65 | ', 1, '2019-09-15 22:01:30', '::1'),
(286, 'Add About', '66 | ', 1, '2019-09-15 22:07:40', '::1'),
(287, 'Active About', '66 | 1', 1, '2019-09-15 22:07:43', '::1'),
(288, 'update 12', '66 | ', 1, '2019-09-15 22:33:22', '::1'),
(289, 'update 12', '66 | ', 1, '2019-09-15 22:34:22', '::1'),
(290, 'update 12', '65 | ', 1, '2019-09-15 22:34:48', '::1'),
(291, 'update 12', '66 | ', 1, '2019-09-15 22:38:37', '::1'),
(292, 'update 12', '66 | ', 1, '2019-09-15 22:41:26', '::1'),
(293, 'update 12', '66 | ', 1, '2019-09-15 22:41:52', '::1'),
(294, 'update 12', '65 | ', 1, '2019-09-15 22:43:14', '::1'),
(295, 'update 3', '61 | ', 1, '2019-09-15 22:45:10', '::1'),
(296, 'Delete Module', '75 | options deteted', 1, '2019-09-16 00:25:04', '::1'),
(297, 'Add header_works', '67 | ', 1, '2019-09-16 00:34:03', '::1'),
(298, 'Active header_works', '67 | 1', 1, '2019-09-16 00:34:06', '::1'),
(299, 'Active header_works', '67 | 1', 1, '2019-09-16 00:37:18', '::1'),
(300, 'Active header_works', '67 | 1', 1, '2019-09-16 00:37:19', '::1'),
(301, 'update 4', '67 | ', 1, '2019-09-16 00:41:05', '::1'),
(302, 'update 4', '60 | ', 1, '2019-09-16 00:51:16', '::1'),
(303, 'update 4', '60 | ', 1, '2019-09-16 00:51:25', '::1'),
(304, 'Add works', '68 | ', 1, '2019-09-16 01:00:22', '::1'),
(305, 'Active works', '68 | 1', 1, '2019-09-16 01:00:25', '::1'),
(306, 'Login', 'superadmin | 1', 1, '2019-09-16 14:04:44', '::1'),
(307, 'update 11', '64 | ', 1, '2019-09-16 15:21:45', '::1'),
(308, 'Login', 'superadmin | 1', 1, '2019-09-16 19:03:10', '::1'),
(309, 'Login', 'superadmin | 1', 1, '2019-09-16 22:37:38', '::1'),
(310, 'Add header_blog', '69 | ', 1, '2019-09-16 22:53:06', '::1'),
(311, 'Active header_blog', '69 | 1', 1, '2019-09-16 22:53:09', '::1'),
(312, 'update 11', '64 | ', 1, '2019-09-16 22:55:38', '::1'),
(313, 'update 11', '64 | ', 1, '2019-09-16 22:57:58', '::1'),
(314, 'update 11', '64 | ', 1, '2019-09-16 22:58:23', '::1'),
(315, 'Active 208', '208 | close_date | 1', 1, '2019-09-16 23:02:11', '::1'),
(316, 'update 11', '64 | ', 1, '2019-09-16 23:02:46', '::1'),
(317, 'update 4', '60 | ', 1, '2019-09-16 23:07:33', '::1'),
(318, 'Login', 'superadmin | 1', 1, '2019-09-18 13:50:29', '::1'),
(319, 'Add blog', '70 | ', 1, '2019-09-18 13:51:08', '::1'),
(320, 'update 11', '64 | ', 1, '2019-09-18 13:51:21', '::1'),
(321, 'update 11', '64 | ', 1, '2019-09-18 13:51:32', '::1'),
(322, 'Active blog', '70 | 1', 1, '2019-09-18 13:51:36', '::1'),
(323, 'Active 209', '209 | meta_keyword | 1', 1, '2019-09-18 14:16:23', '::1'),
(324, 'Active 210', '210 | meta_desc | 1', 1, '2019-09-18 14:16:24', '::1'),
(325, 'update 3', '61 | ', 1, '2019-09-18 14:28:57', '::1'),
(326, 'Active 211', '211 | meta_desc | 1', 1, '2019-09-18 14:35:21', '::1'),
(327, 'Active 212', '212 | meta_keyword | 1', 1, '2019-09-18 14:35:23', '::1'),
(328, 'update 3', '61 | ', 1, '2019-09-18 14:36:38', '::1'),
(329, 'update 11', '69 | ', 1, '2019-09-18 14:37:47', '::1'),
(330, 'Active 213', '213 | meta_desc | 1', 1, '2019-09-18 14:39:06', '::1'),
(331, 'Active 214', '214 | meta_keyword | 1', 1, '2019-09-18 14:39:08', '::1'),
(332, 'update 11', '64 | ', 1, '2019-09-18 14:40:23', '::1'),
(333, 'Active 215', '215 | meta_desc | 1', 1, '2019-09-18 14:41:23', '::1'),
(334, 'Active 216', '216 | meta_keyword | 1', 1, '2019-09-18 14:41:24', '::1'),
(335, 'Active 217', '217 | meta_desc | 1', 1, '2019-09-18 14:42:28', '::1'),
(336, 'Active 218', '218 | meta_keyword | 1', 1, '2019-09-18 14:42:29', '::1'),
(337, 'Active Module', '130 | Header gallery | 1', 1, '2019-09-18 15:08:15', '::1'),
(338, 'Active 219', '219 | header_title | 1', 1, '2019-09-18 15:09:45', '::1'),
(339, 'Active 221', '221 | header_images | 1', 1, '2019-09-18 15:09:46', '::1'),
(340, 'Active 222', '222 | meta_desc | 1', 1, '2019-09-18 15:09:46', '::1'),
(341, 'Active 223', '223 | meta_keyword | 1', 1, '2019-09-18 15:09:48', '::1'),
(342, 'Active 220', '220 | header_desc | 1', 1, '2019-09-18 15:09:49', '::1'),
(343, 'Add header_gallery', '71 | ', 1, '2019-09-18 15:12:09', '::1'),
(344, 'Active header_gallery', '71 | 1', 1, '2019-09-18 15:12:11', '::1'),
(345, 'Active Module Group', '13 | Contact | 1', 1, '2019-09-18 16:28:26', '::1'),
(346, 'Active Module', '131 | Header contact | 1', 1, '2019-09-18 16:29:08', '::1'),
(347, 'Active 224', '224 | title | 1', 1, '2019-09-18 16:30:47', '::1'),
(348, 'Active 225', '225 | images | 1', 1, '2019-09-18 16:30:47', '::1'),
(349, 'Active 226', '226 | Desc | 1', 1, '2019-09-18 16:30:48', '::1'),
(350, 'Active 227', '227 | meta_desc | 1', 1, '2019-09-18 16:30:49', '::1'),
(351, 'Active 228', '228 | meta_keyword | 1', 1, '2019-09-18 16:30:50', '::1'),
(352, 'Add highlight_contact', '72 | ', 1, '2019-09-18 16:35:55', '::1'),
(353, 'Active highlight_contact', '72 | 1', 1, '2019-09-18 16:35:57', '::1'),
(354, 'Logout', 'superadmin | 1', 1, '2019-09-18 19:24:28', '::1'),
(355, 'Login', 'superadmin | 1', 1, '2019-09-18 19:24:48', '::1'),
(356, 'Login', 'superadmin | 1', 1, '2019-09-30 15:15:03', '::1'),
(357, 'Login', 'superadmin | 1', 1, '2019-11-26 14:48:18', '::1'),
(358, 'Delete ', '51 | ', 1, '2019-11-26 14:52:30', '::1'),
(359, 'Delete ', '55 | ', 1, '2019-11-26 14:52:34', '::1'),
(360, 'Delete ', '54 | ', 1, '2019-11-26 14:52:37', '::1'),
(361, 'Delete ', '52 | ', 1, '2019-11-26 14:52:39', '::1'),
(362, 'Delete ', '63 | ', 1, '2019-11-26 14:52:57', '::1'),
(363, 'Delete Module', '174 | banner_images', 1, '2019-11-26 14:53:17', '::1'),
(364, 'Delete ', '59 | ', 1, '2019-11-26 15:32:23', '::1'),
(365, 'Delete ', '58 | ', 1, '2019-11-26 15:32:25', '::1'),
(366, 'Delete ', '57 | ', 1, '2019-11-26 15:32:29', '::1'),
(367, 'Delete ', '56 | ', 1, '2019-11-26 15:32:32', '::1'),
(368, 'Login', 'superadmin | 1', 1, '2019-11-27 13:06:31', '::1'),
(369, 'Delete Module', '123 | WORK FLOW', 1, '2019-11-27 13:07:46', '::1'),
(370, 'Delete Module', '205 | header_desc', 1, '2019-11-27 13:10:23', '::1'),
(371, 'Delete Module', '162 | Images', 1, '2019-11-27 13:13:20', '::1'),
(372, 'Delete Module', '74 | options deteted', 1, '2019-11-27 13:14:27', '::1'),
(373, 'Delete Module', '73 | options deteted', 1, '2019-11-27 13:14:30', '::1'),
(374, 'Delete Module', '72 | options deteted', 1, '2019-11-27 13:14:34', '::1'),
(375, 'Delete Module', '71 | options deteted', 1, '2019-11-27 13:14:37', '::1'),
(376, 'Active 231', '231 | access desc | 1', 1, '2019-11-27 13:17:03', '::1'),
(377, 'Active 230', '230 | title access | 1', 1, '2019-11-27 13:17:06', '::1'),
(378, 'Delete Module', '163 | director', 1, '2019-11-27 13:17:18', '::1'),
(379, 'Delete ', '68 | ', 1, '2019-11-27 13:17:38', '::1'),
(380, 'Delete ', '60 | ', 1, '2019-11-27 13:17:40', '::1'),
(381, 'Add location', '73 | ', 1, '2019-11-27 13:17:51', '::1'),
(382, 'Delete ', '73 | 73', 1, '2019-11-27 13:18:37', '::1'),
(383, 'Delete Module', '231 | access desc', 1, '2019-11-27 13:19:25', '::1'),
(384, 'Delete Module', '230 | title access', 1, '2019-11-27 13:19:29', '::1'),
(385, 'Delete Module', '167 | Access', 1, '2019-11-27 13:19:32', '::1'),
(386, 'Active Module', '132 | Access | 1', 1, '2019-11-27 13:20:23', '::1'),
(387, 'Active 232', '232 | title | 1', 1, '2019-11-27 13:22:07', '::1'),
(388, 'Active 233', '233 | Desc | 1', 1, '2019-11-27 13:22:08', '::1'),
(389, 'Delete Module', '220 | header_desc', 1, '2019-11-27 14:45:18', '::1'),
(390, 'Active Module', '133 | Facilities | 1', 1, '2019-11-27 14:46:00', '::1'),
(391, 'Active 234', '234 | title | 1', 1, '2019-11-27 14:47:17', '::1'),
(392, 'Active 235', '235 | Desc | 1', 1, '2019-11-27 14:47:18', '::1'),
(393, 'Active 236', '236 | facilities | 1', 1, '2019-11-27 14:48:00', '::1'),
(394, 'Active 237', '237 | facilities title | 1', 1, '2019-11-27 14:49:32', '::1'),
(395, 'Active 238', '238 | facilities image | 1', 1, '2019-11-27 14:49:36', '::1'),
(396, 'Active Module Group', '14 | Tenant | 1', 1, '2019-11-27 14:53:15', '::1'),
(397, 'Active Module', '134 | Header Tenant | 1', 1, '2019-11-27 14:53:57', '::1'),
(398, 'Active 239', '239 | images | 1', 1, '2019-11-27 14:55:23', '::1'),
(399, 'Active 240', '240 | meta_keyword | 1', 1, '2019-11-27 14:55:24', '::1'),
(400, 'Active 241', '241 | meta_desc | 1', 1, '2019-11-27 14:55:25', '::1'),
(401, 'Active Module', '135 | Tenant | 1', 1, '2019-11-27 14:56:43', '::1'),
(402, 'Active 248', '248 | file url | 1', 1, '2019-11-27 15:01:59', '::1'),
(403, 'Active 247', '247 | title download | 1', 1, '2019-11-27 15:02:04', '::1'),
(404, 'Active 242', '242 | title | 1', 1, '2019-11-27 15:02:14', '::1'),
(405, 'Active 244', '244 | image_title | 1', 1, '2019-11-27 15:02:15', '::1'),
(406, 'Active 245', '245 | images | 1', 1, '2019-11-27 15:02:16', '::1'),
(407, 'Active 246', '246 | file download | 1', 1, '2019-11-27 15:02:17', '::1'),
(408, 'Active 243', '243 | Desc | 1', 1, '2019-11-27 15:02:18', '::1'),
(409, 'Inactive 248', '248 | file url | 0', 1, '2019-11-27 15:05:56', '::1'),
(410, 'Active 248', '248 | file url | 1', 1, '2019-11-27 15:06:03', '::1'),
(411, 'Active 229', '229 | images | 1', 1, '2019-11-27 15:06:37', '::1'),
(412, 'update 3', '61 | ', 1, '2019-11-27 16:14:14', '::1'),
(413, 'Delete ', '61 | 61', 1, '2019-11-27 16:14:27', '::1'),
(414, 'Delete Module', '226 | header_desc', 1, '2019-11-27 16:19:47', '::1'),
(415, 'Delete Module', '224 | header_title', 1, '2019-11-27 16:19:56', '::1'),
(416, 'Active Module', '136 | contact us page | 1', 1, '2019-11-27 16:21:41', '::1'),
(417, 'Login', 'superadmin | 1', 1, '2019-12-02 15:00:42', '::1'),
(418, 'Active 249', '249 | title | 1', 1, '2019-12-02 15:13:32', '::1'),
(419, 'Active 251', '251 | address | 1', 1, '2019-12-02 15:13:33', '::1'),
(420, 'Active 252', '252 | General Enquiries Phone | 1', 1, '2019-12-02 15:13:34', '::1'),
(421, 'Active 250', '250 | address_title | 1', 1, '2019-12-02 15:13:36', '::1'),
(422, 'Active 253', '253 | General Enquiries Email | 1', 1, '2019-12-02 15:13:37', '::1'),
(423, 'Active 254', '254 | Leasing Enquiries Phone | 1', 1, '2019-12-02 15:13:38', '::1'),
(424, 'Active 255', '255 | Leasing Enquiries Email | 1', 1, '2019-12-02 15:13:38', '::1'),
(425, 'Active 256', '256 | title message | 1', 1, '2019-12-02 15:13:40', '::1'),
(426, 'Active 257', '257 | sub title message | 1', 1, '2019-12-02 15:13:41', '::1'),
(427, 'Login', 'superadmin | 1', 1, '2019-12-03 14:32:06', '::1'),
(428, 'Add header_home', '74 | ', 1, '2019-12-03 17:38:32', '::1'),
(429, 'Active header_home', '74 | 1', 1, '2019-12-03 17:38:35', '::1'),
(430, 'Active Module', '137 | Home Description | 1', 1, '2019-12-03 17:42:06', '::1'),
(431, 'Active 258', '258 | Desc | 1', 1, '2019-12-03 17:42:31', '::1'),
(432, 'Add home_description', '75 | ', 1, '2019-12-03 17:44:01', '::1'),
(433, 'Active home_description', '75 | 1', 1, '2019-12-03 17:44:04', '::1'),
(434, 'Add services', '76 | ', 1, '2019-12-03 17:45:56', '::1'),
(435, 'Active services', '76 | 1', 1, '2019-12-03 17:46:06', '::1'),
(436, 'Add virtual_tour', '77 | ', 1, '2019-12-03 17:48:02', '::1'),
(437, 'Delete ', '62 | ', 1, '2019-12-03 17:48:07', '::1'),
(438, 'Active virtual_tour', '77 | 1', 1, '2019-12-03 17:48:09', '::1'),
(439, 'Delete Module', '194 | header_sub_title', 1, '2019-12-03 17:48:32', '::1'),
(440, 'Active Module', '138 | Header | 1', 1, '2019-12-03 18:36:37', '::1'),
(441, 'Active Module', '139 | Footer | 1', 1, '2019-12-03 18:36:59', '::1'),
(442, 'Active 259', '259 | main logo | 1', 1, '2019-12-03 18:41:58', '::1'),
(443, 'Active 260', '260 | mobile logo | 1', 1, '2019-12-03 18:41:59', '::1'),
(444, 'Active 261', '261 | dark mobil logo | 1', 1, '2019-12-03 18:42:00', '::1'),
(445, 'Add header', '78 | ', 1, '2019-12-03 18:55:40', '::1'),
(446, 'Active header', '78 | 1', 1, '2019-12-03 18:55:48', '::1'),
(447, 'Add Footer', '79 | ', 1, '2019-12-03 19:01:05', '::1'),
(448, 'Active Footer', '79 | 1', 1, '2019-12-03 19:01:07', '::1'),
(449, 'update 3', '77 | ', 1, '2019-12-03 19:05:05', '::1'),
(450, 'update 3', '74 | ', 1, '2019-12-03 19:21:22', '::1'),
(451, 'Delete Module', '197 | header_desc', 1, '2019-12-03 19:47:57', '::1'),
(452, 'Delete Module', '195 | header_title', 1, '2019-12-03 19:48:00', '::1'),
(453, 'Active Module', '140 | About | 1', 1, '2019-12-03 19:50:49', '::1'),
(454, 'Active 269', '269 | title | 1', 1, '2019-12-03 19:51:48', '::1'),
(455, 'Active 270', '270 | Desc | 1', 1, '2019-12-03 19:51:49', '::1'),
(456, 'update 12', '65 | ', 1, '2019-12-03 19:53:35', '::1'),
(457, 'Add about', '80 | ', 1, '2019-12-03 19:54:36', '::1'),
(458, 'Active about', '80 | 1', 1, '2019-12-03 19:54:38', '::1'),
(459, 'update 3', '74 | ', 1, '2019-12-03 19:55:39', '::1'),
(460, 'update 12', '66 | ', 1, '2019-12-03 20:09:48', '::1'),
(461, 'Add about_subpage', '81 | ', 1, '2019-12-03 20:10:17', '::1'),
(462, 'Add about_subpage', '82 | ', 1, '2019-12-03 20:10:54', '::1'),
(463, 'Active about_subpage', '82 | 1', 1, '2019-12-03 20:11:07', '::1'),
(464, 'Active about_subpage', '81 | 1', 1, '2019-12-03 20:11:11', '::1'),
(465, 'Add services', '83 | ', 1, '2019-12-03 20:18:45', '::1'),
(466, 'Add services', '84 | ', 1, '2019-12-03 20:19:19', '::1'),
(467, 'Active services', '83 | 1', 1, '2019-12-03 20:19:33', '::1'),
(468, 'Active services', '84 | 1', 1, '2019-12-03 20:19:36', '::1'),
(469, 'Delete Module', '238 | facilities image', 1, '2019-12-03 21:16:15', '::1'),
(470, 'Delete Module', '237 | facilities title', 1, '2019-12-03 21:16:20', '::1'),
(471, 'Delete Module', '236 | facilities', 1, '2019-12-03 21:16:27', '::1'),
(472, 'Delete Module', '219 | header_title', 1, '2019-12-03 21:16:47', '::1'),
(473, 'Active Module', '141 | Facilities | 1', 1, '2019-12-03 21:20:04', '::1'),
(474, 'Active 271', '271 | title | 1', 1, '2019-12-03 21:20:31', '::1'),
(475, 'Active 272', '272 | images | 1', 1, '2019-12-03 21:20:32', '::1'),
(476, 'update 10', '71 | ', 1, '2019-12-03 21:32:47', '::1'),
(477, 'Add facilitiesdescription', '85 | ', 1, '2019-12-03 21:39:30', '::1'),
(478, 'Active facilitiesdescription', '85 | 1', 1, '2019-12-03 21:39:32', '::1'),
(479, 'Login', 'superadmin | 1', 1, '2019-12-04 16:39:09', '::1'),
(480, 'Delete Module', '203 | header_title', 1, '2019-12-04 16:41:05', '::1'),
(481, 'Add location', '86 | ', 1, '2019-12-04 16:44:27', '::1'),
(482, 'Active location', '86 | 1', 1, '2019-12-04 16:44:30', '::1'),
(483, 'update 4', '67 | ', 1, '2019-12-04 16:45:03', '::1'),
(484, 'Add Access', '87 | ', 1, '2019-12-04 16:47:06', '::1'),
(485, 'Add Access', '88 | ', 1, '2019-12-04 16:47:27', '::1'),
(486, 'Active Access', '87 | 1', 1, '2019-12-04 16:47:33', '::1'),
(487, 'Active Access', '88 | 1', 1, '2019-12-04 16:47:35', '::1'),
(488, 'Delete Module', '244 | image_title', 1, '2019-12-04 17:20:11', '::1'),
(489, 'Delete Module', '243 | Desc', 1, '2019-12-04 17:20:29', '::1'),
(490, 'Active Module', '142 | Tenant | 1', 1, '2019-12-04 17:53:21', '::1'),
(491, 'Active 273', '273 | title | 1', 1, '2019-12-04 17:54:15', '::1'),
(492, 'Active 274', '274 | desc | 1', 1, '2019-12-04 17:54:16', '::1'),
(493, 'Add tenant', '89 | ', 1, '2019-12-04 17:55:45', '::1'),
(494, 'Active tenant', '89 | 1', 1, '2019-12-04 17:55:47', '::1'),
(495, 'Add header_tenant', '90 | ', 1, '2019-12-04 17:57:32', '::1'),
(496, 'Active header_tenant', '90 | 1', 1, '2019-12-04 17:57:35', '::1'),
(497, 'Add floor_plate', '91 | ', 1, '2019-12-04 17:58:13', '::1'),
(498, 'Update sub Content', '74', 1, '2019-12-04 17:59:12', '::1'),
(499, 'Update sub Content', '74', 1, '2019-12-04 17:59:34', '::1'),
(500, 'Active header_tenant', '90 | 1', 1, '2019-12-04 18:04:37', '::1'),
(501, 'Active header_tenant', '90 | 1', 1, '2019-12-04 18:04:38', '::1'),
(502, 'Active floor_plate', '91 | 1', 1, '2019-12-04 18:08:41', '::1'),
(503, 'Login', 'superadmin | 1', 1, '2019-12-05 14:49:41', '::1'),
(504, 'Add highlight_contact', '94 | ', 1, '2019-12-05 14:55:58', '::1'),
(505, 'Delete ', '72 | ', 1, '2019-12-05 14:56:01', '::1'),
(506, 'Active highlight_contact', '94 | 1', 1, '2019-12-05 14:56:03', '::1'),
(507, 'Add contactus_page', '95 | ', 1, '2019-12-05 15:02:06', '::1'),
(508, 'Active contactus_page', '95 | 1', 1, '2019-12-05 15:02:08', '::1'),
(509, 'Login', 'superadmin | 1', 1, '2019-12-06 08:58:21', '103.121.18.84'),
(510, 'Add Facilities', '96 | Facilities/security', 1, '2019-12-06 09:01:44', '103.121.18.84'),
(511, 'Active Facilities', '96 | 1', 1, '2019-12-06 09:01:46', '103.121.18.84'),
(512, 'update 10', '96 | Facilities/security', 1, '2019-12-06 09:08:34', '103.121.18.84'),
(513, 'Add Facilities', '97 | Facilities/public-transport-bus--mrt', 1, '2019-12-06 09:09:29', '103.121.18.84'),
(514, 'Add Facilities', '98 | Facilities/banks', 1, '2019-12-06 09:09:45', '103.121.18.84'),
(515, 'Add Facilities', '99 | Facilities/retail', 1, '2019-12-06 09:09:59', '103.121.18.84'),
(516, 'Add Facilities', '100 | Facilities/tunnel-to-mall--hotel-apartment', 1, '2019-12-06 09:10:27', '103.121.18.84'),
(517, 'Add Facilities', '101 | Facilities/valet-parking', 1, '2019-12-06 09:10:43', '103.121.18.84'),
(518, 'Add Facilities', '102 | Facilities/19-lifts-in-each-tower', 1, '2019-12-06 09:11:11', '103.121.18.84'),
(519, 'Add Facilities', '103 | Facilities/mailing--parcel-service', 1, '2019-12-06 09:11:30', '103.121.18.84'),
(520, 'Active Facilities', '97 | 1', 1, '2019-12-06 09:11:32', '103.121.18.84'),
(521, 'Active Facilities', '98 | 1', 1, '2019-12-06 09:11:35', '103.121.18.84'),
(522, 'Active Facilities', '100 | 1', 1, '2019-12-06 09:11:37', '103.121.18.84'),
(523, 'Active Facilities', '102 | 1', 1, '2019-12-06 09:11:39', '103.121.18.84'),
(524, 'Active Facilities', '103 | 1', 1, '2019-12-06 09:11:41', '103.121.18.84'),
(525, 'Active Facilities', '99 | 1', 1, '2019-12-06 09:11:42', '103.121.18.84'),
(526, 'Active Facilities', '101 | 1', 1, '2019-12-06 09:11:43', '103.121.18.84'),
(527, 'Login', 'superadmin | 1', 1, '2019-12-10 16:23:11', '103.119.141.219'),
(528, 'Add Access', '104 | ', 1, '2019-12-10 16:23:58', '103.119.141.219'),
(529, 'Add Access', '105 | ', 1, '2019-12-10 16:24:16', '103.119.141.219'),
(530, 'Add Access', '106 | ', 1, '2019-12-10 16:24:40', '103.119.141.219'),
(531, 'Active Access', '104 | 1', 1, '2019-12-10 16:24:54', '103.119.141.219'),
(532, 'Active Access', '105 | 1', 1, '2019-12-10 16:24:55', '103.119.141.219'),
(533, 'Active Access', '106 | 1', 1, '2019-12-10 16:24:59', '103.119.141.219'),
(534, 'Login', 'superadmin | 1', 1, '2019-12-18 07:31:47', '103.121.18.84'),
(535, 'update 2', '79 | ', 1, '2019-12-18 07:32:14', '103.121.18.84'),
(536, 'update 2', '79 | ', 1, '2019-12-18 07:32:41', '103.121.18.84'),
(537, 'update 3', '74 | ', 1, '2019-12-18 07:33:13', '103.121.18.84'),
(538, 'update 12', '80 | ', 1, '2019-12-18 07:34:15', '103.121.18.84'),
(539, 'update 12', '80 | ', 1, '2019-12-18 07:35:50', '103.121.18.84'),
(540, 'update 2', '78 | ', 1, '2019-12-18 08:24:34', '103.121.18.84'),
(541, 'update 2', '79 | ', 1, '2019-12-18 08:25:07', '103.121.18.84'),
(542, 'Login', 'superadmin | 1', 1, '2019-12-18 11:08:58', '103.121.18.84'),
(543, 'update 3', '84 | ', 1, '2019-12-18 11:09:39', '103.121.18.84'),
(544, 'update 3', '75 | ', 1, '2019-12-18 11:10:09', '103.121.18.84'),
(545, 'update 3', '83 | ', 1, '2019-12-18 11:10:39', '103.121.18.84'),
(546, 'update 12', '82 | ', 1, '2019-12-18 11:11:34', '103.121.18.84'),
(547, 'Login', 'superadmin | 1', 1, '2019-12-20 20:08:05', '103.119.141.219'),
(548, 'Add User', '1 | stockexc | stockexc@mail.com', 1, '2019-12-20 20:10:27', '103.119.141.219'),
(549, 'Active User', '6 | stockexc | 1', 1, '2019-12-20 20:10:30', '103.119.141.219'),
(550, 'Logout', 'superadmin | 1', 1, '2019-12-20 20:10:33', '103.119.141.219'),
(551, 'Login', 'stockexc | 1', 6, '2019-12-20 20:10:47', '103.119.141.219'),
(552, 'Logout', 'stockexc | 1', 6, '2019-12-20 20:12:21', '103.119.141.219'),
(553, 'Login', 'stockexc | 1', 6, '2019-12-30 16:35:43', '158.140.187.236'),
(554, 'update 2', '79 | ', 6, '2019-12-30 16:36:24', '158.140.187.236'),
(555, 'update 2', '79 | ', 6, '2019-12-30 16:39:18', '158.140.187.236'),
(556, 'Logout', 'stockexc | 1', 6, '2019-12-30 16:53:58', '158.140.187.236'),
(557, 'Login', 'superadmin | 1', 1, '2019-12-30 16:54:13', '158.140.187.236'),
(558, 'update 12', '82 | ', 1, '2019-12-30 16:55:10', '158.140.187.236'),
(559, 'update 12', '82 | ', 1, '2019-12-30 16:56:18', '158.140.187.236'),
(560, 'Login', 'stockexc | 1', 6, '2019-12-31 13:50:01', '103.119.140.60'),
(561, 'Login', 'stockexc | 1', 6, '2019-12-31 14:01:20', '158.140.187.236'),
(562, 'update 3', '76 | ', 6, '2019-12-31 14:04:43', '158.140.187.236'),
(563, 'update 3', '84 | ', 6, '2019-12-31 14:06:06', '158.140.187.236'),
(564, 'update 12', '80 | ', 6, '2019-12-31 14:06:37', '158.140.187.236'),
(565, 'update 12', '66 | ', 6, '2019-12-31 14:07:04', '158.140.187.236'),
(566, 'update 12', '82 | ', 6, '2019-12-31 14:07:58', '158.140.187.236'),
(567, 'Login', 'stockexc | 1', 6, '2019-12-31 14:09:39', '158.140.187.236'),
(568, 'update 3', '76 | ', 6, '2019-12-31 14:12:02', '158.140.187.236'),
(569, 'update 4', '87 | ', 6, '2019-12-31 14:12:33', '158.140.187.236'),
(570, 'update 3', '84 | ', 6, '2019-12-31 14:12:45', '158.140.187.236'),
(571, 'update 4', '88 | ', 6, '2019-12-31 14:12:55', '158.140.187.236'),
(572, 'update 4', '104 | ', 6, '2019-12-31 14:13:19', '158.140.187.236'),
(573, 'update 12', '80 | ', 6, '2019-12-31 14:13:25', '158.140.187.236'),
(574, 'update 4', '105 | ', 6, '2019-12-31 14:13:43', '158.140.187.236'),
(575, 'update 4', '106 | ', 6, '2019-12-31 14:15:19', '158.140.187.236'),
(576, 'update 12', '82 | ', 6, '2019-12-31 14:15:45', '158.140.187.236'),
(577, 'update 14', '89 | ', 6, '2019-12-31 14:16:13', '158.140.187.236'),
(578, 'update 13', '95 | ', 6, '2019-12-31 14:17:38', '158.140.187.236'),
(579, 'update 4', '87 | ', 6, '2019-12-31 14:17:48', '158.140.187.236'),
(580, 'update 4', '87 | ', 6, '2019-12-31 14:19:34', '158.140.187.236'),
(581, 'update 4', '88 | ', 6, '2019-12-31 14:19:51', '158.140.187.236'),
(582, 'update 4', '105 | ', 6, '2019-12-31 14:20:14', '158.140.187.236'),
(583, 'update 4', '106 | ', 6, '2019-12-31 14:20:35', '158.140.187.236'),
(584, 'update 14', '89 | ', 6, '2019-12-31 14:22:38', '158.140.187.236'),
(585, 'update 14', '89 | ', 6, '2019-12-31 14:23:19', '158.140.187.236'),
(586, 'update 13', '95 | ', 6, '2019-12-31 14:26:47', '158.140.187.236'),
(587, 'update 13', '95 | ', 6, '2019-12-31 14:27:10', '158.140.187.236'),
(588, 'update 3', '76 | ', 6, '2019-12-31 14:30:30', '158.140.187.236'),
(589, 'update 3', '76 | ', 6, '2019-12-31 14:32:12', '158.140.187.236'),
(590, 'update 4', '87 | ', 6, '2019-12-31 14:35:27', '158.140.187.236'),
(591, 'Default Language', '1 | Eng', 6, '2019-12-31 14:35:58', '103.119.140.60'),
(592, 'Default Language', '1 | Eng', 6, '2019-12-31 14:36:00', '103.119.140.60'),
(593, 'Inactive Language', '1 | Eng | 0', 6, '2019-12-31 14:36:03', '103.119.140.60'),
(594, 'Active Language', '1 | Eng | 1', 6, '2019-12-31 14:36:05', '103.119.140.60'),
(595, 'update 4', '104 | ', 6, '2019-12-31 14:36:17', '158.140.187.236'),
(596, 'Default Language', '2 | Ind', 6, '2019-12-31 14:36:28', '103.119.140.60'),
(597, 'Default Language', '1 | Eng', 6, '2019-12-31 14:36:31', '103.119.140.60'),
(598, 'Login', 'superadmin | 1', 1, '2019-12-31 14:39:08', '103.119.140.60'),
(599, 'Logout', 'stockexc | 1', 6, '2019-12-31 14:42:01', '158.140.187.236'),
(600, 'update 13', '95 | ', 6, '2019-12-31 14:44:11', '158.140.187.236'),
(601, 'update 13', '95 | ', 6, '2019-12-31 14:46:23', '158.140.187.236'),
(602, 'update 13', '95 | ', 6, '2019-12-31 14:46:35', '158.140.187.236'),
(603, 'update 13', '95 | ', 6, '2019-12-31 15:05:18', '158.140.187.236'),
(604, 'update 13', '95 | ', 6, '2019-12-31 15:05:29', '158.140.187.236'),
(605, 'Login', 'stockexc | 1', 6, '2020-01-02 11:42:34', '158.140.187.212'),
(606, 'update 12', '80 | ', 6, '2020-01-02 11:55:28', '158.140.187.212'),
(607, 'update 12', '80 | ', 6, '2020-01-02 11:55:44', '158.140.187.212'),
(608, 'update 4', '87 | ', 6, '2020-01-02 12:00:19', '158.140.187.212'),
(609, 'update 4', '87 | ', 6, '2020-01-02 12:00:28', '158.140.187.212'),
(610, 'update 10', '85 | ', 6, '2020-01-02 12:02:48', '158.140.187.212'),
(611, 'update 10', '85 | ', 6, '2020-01-02 12:03:00', '158.140.187.212'),
(612, 'update 14', '89 | ', 6, '2020-01-02 12:04:10', '158.140.187.212'),
(613, 'update 14', '89 | ', 6, '2020-01-02 12:04:22', '158.140.187.212'),
(614, 'Login', 'stockexc | 1', 6, '2020-01-02 15:40:18', '158.140.187.212'),
(615, 'update 3', '75 | ', 6, '2020-01-02 15:41:49', '158.140.187.212'),
(616, 'update 3', '75 | ', 6, '2020-01-02 15:41:58', '158.140.187.212'),
(617, 'update 3', '76 | ', 6, '2020-01-02 15:42:18', '158.140.187.212'),
(618, 'update 3', '76 | ', 6, '2020-01-02 15:42:26', '158.140.187.212'),
(619, 'update 4', '105 | ', 6, '2020-01-02 15:42:51', '158.140.187.212'),
(620, 'update 4', '105 | ', 6, '2020-01-02 15:43:01', '158.140.187.212'),
(621, 'Login', 'superadmin | 1', 1, '2020-01-02 16:47:22', '180.252.87.232'),
(622, 'Login', 'stockexc | 1', 6, '2020-01-02 18:08:59', '158.140.187.212'),
(623, 'Login', 'superadmin | 1', 1, '2020-01-02 18:10:24', '180.252.87.232'),
(624, 'update 14', '91 | ', 1, '2020-01-02 18:12:30', '180.252.87.232'),
(625, 'update 12', '82 | ', 1, '2020-01-02 18:13:24', '180.252.87.232'),
(626, 'Logout', 'superadmin | 1', 1, '2020-01-02 18:23:46', '180.252.87.232'),
(627, 'Login', 'stockexc | 1', 6, '2020-01-03 16:27:19', '158.140.187.236'),
(628, 'Login', 'superadmin | 1', 1, '2020-01-03 17:50:00', '180.252.87.232'),
(629, 'update ', 'sub -  - 92', 1, '2020-01-03 17:51:08', '180.252.87.232'),
(630, 'update ', 'sub -  - 92', 1, '2020-01-03 17:51:08', '180.252.87.232'),
(631, 'update ', 'sub -  - 93', 1, '2020-01-03 17:51:23', '180.252.87.232'),
(632, 'update ', 'sub -  - 93', 1, '2020-01-03 17:51:23', '180.252.87.232'),
(633, 'update ', 'sub -  - 93', 1, '2020-01-03 17:57:10', '180.252.87.232'),
(634, 'update ', 'sub -  - 93', 1, '2020-01-03 17:57:10', '180.252.87.232'),
(635, 'update ', 'sub -  - 92', 1, '2020-01-03 18:02:08', '180.252.87.232'),
(636, 'update ', 'sub -  - 92', 1, '2020-01-03 18:02:08', '180.252.87.232'),
(637, 'update ', 'sub -  - 93', 1, '2020-01-03 18:02:27', '180.252.87.232'),
(638, 'update ', 'sub -  - 93', 1, '2020-01-03 18:02:27', '180.252.87.232'),
(639, 'Login', 'stockexc | 1', 6, '2020-01-06 13:10:38', '158.140.187.212'),
(640, 'update 14', '90 | ', 6, '2020-01-06 14:57:16', '158.140.187.212'),
(641, 'update 14', '91 | ', 6, '2020-01-06 15:02:43', '158.140.187.212'),
(642, 'update 14', '91 | ', 6, '2020-01-06 15:03:10', '158.140.187.212'),
(643, 'update 14', '91 | ', 6, '2020-01-06 15:03:34', '158.140.187.212'),
(644, 'update 14', '91 | ', 6, '2020-01-06 15:07:01', '158.140.187.212'),
(645, 'update ', 'sub -  - 92', 6, '2020-01-06 15:08:00', '158.140.187.212'),
(646, 'update ', 'sub -  - 92', 6, '2020-01-06 15:08:00', '158.140.187.212'),
(647, 'update 12', '82 | ', 6, '2020-01-06 15:13:09', '158.140.187.212'),
(648, 'Add User', '3 | admin_stockexc | admin@stockexchangebldg.com', 6, '2020-01-06 15:20:41', '158.140.187.212'),
(649, 'Active User', '7 | admin_stockexc | 1', 6, '2020-01-06 15:20:46', '158.140.187.212'),
(650, 'Logout', 'stockexc | 1', 6, '2020-01-06 15:25:47', '158.140.187.212'),
(651, 'Login', 'admin_stockexc | 3', 7, '2020-01-06 15:27:38', '158.140.187.212'),
(652, 'Login', 'admin_stockexc | 3', 7, '2020-01-06 18:34:08', '158.140.187.212'),
(653, 'Logout', 'admin_stockexc | 3', 7, '2020-01-06 19:47:01', '158.140.187.212'),
(654, 'Login', 'admin_stockexc | 3', 7, '2020-01-06 19:47:49', '158.140.187.212'),
(655, 'Inactive Language', '1 | Eng | 0', 7, '2020-01-06 21:14:02', '158.140.187.212'),
(656, 'Active Language', '1 | Eng | 1', 7, '2020-01-06 21:16:18', '158.140.187.212'),
(657, 'Default Language', '2 | Ind', 7, '2020-01-06 21:17:02', '158.140.187.212'),
(658, 'Default Language', '1 | Eng', 7, '2020-01-06 21:17:32', '158.140.187.212'),
(659, 'Login', 'admin_stockexc | 3', 7, '2020-01-07 10:57:48', '114.124.234.31'),
(660, 'Default Language', '2 | Ind', 7, '2020-01-07 10:58:41', '114.124.234.31'),
(661, 'Default Language', '1 | Eng', 7, '2020-01-07 10:58:45', '114.124.234.31'),
(662, 'Default Language', '2 | Ind', 7, '2020-01-07 10:58:48', '114.124.234.31'),
(663, 'Default Language', '1 | Eng', 7, '2020-01-07 10:58:53', '114.124.234.31'),
(664, 'Inactive Language', '2 | Ind | 0', 7, '2020-01-07 10:59:47', '114.124.234.31'),
(665, 'Active Language', '2 | Ind | 1', 7, '2020-01-07 10:59:58', '114.124.234.31'),
(666, 'Inactive Language', '2 | Ind | 0', 7, '2020-01-07 11:00:40', '114.124.234.31'),
(667, 'Active Language', '2 | Ind | 1', 7, '2020-01-07 11:00:53', '114.124.234.31'),
(668, 'update 3', '75 | ', 7, '2020-01-07 11:03:31', '114.124.234.31'),
(669, 'update 3', '75 | ', 7, '2020-01-07 11:03:48', '114.124.234.31'),
(670, 'Login', 'admin_stockexc | 3', 7, '2020-01-07 11:14:11', '202.72.218.38'),
(671, 'Logout', 'admin_stockexc | 3', 7, '2020-01-07 11:27:41', '114.124.234.31'),
(672, 'Login', 'superadmin | 1', 1, '2020-01-16 13:49:58', '103.119.141.114'),
(673, 'update 4', '67 | ', 1, '2020-01-16 13:52:27', '103.119.141.114'),
(674, 'update 12', '65 | ', 1, '2020-01-16 13:53:26', '103.119.141.114');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `full_name` varchar(110) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(14) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `member_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `full_name`, `phone`, `email`, `member_date`) VALUES
(7, 'adhinat', '087889892108', 'hl.prbadolsa@gmail.com', '2019-04-26 14:48:28'),
(8, 'adhinatalesaaaa', '087889892108', 'hl.prba87@gmail.com', '2019-04-26 14:54:45'),
(9, 'andhika', '08484940404', 'andhikatri69@gmail.com', '2019-04-26 15:05:26'),
(10, 'Taupik', '082135169766', 'taupikwidiansyah@gmail.com', '2019-05-03 18:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menu_title` varchar(50) NOT NULL,
  `menu_active_status` tinyint(1) NOT NULL DEFAULT 0,
  `menu_url` varchar(500) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `menu_alias` varchar(200) NOT NULL,
  `menu_parent` tinyint(2) NOT NULL DEFAULT 0,
  `menu_sub_parent` int(10) NOT NULL,
  `menu_order` tinyint(2) NOT NULL DEFAULT 1,
  `menu_create_date` datetime NOT NULL,
  `menu_create_by` int(11) NOT NULL,
  `menu_update_date` datetime DEFAULT NULL,
  `menu_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `module_id`, `menu_title`, `menu_active_status`, `menu_url`, `menu_alias`, `menu_parent`, `menu_sub_parent`, `menu_order`, `menu_create_date`, `menu_create_by`, `menu_update_date`, `menu_update_by`) VALUES
(88, 0, 'dasdsadsadsa', 1, 'https://localhost/vania/dasdsadsadsa', 'dasdsadsadsa', 0, 0, 1, '2018-10-30 18:16:19', 1, '2018-10-30 18:54:16', 1),
(89, 0, 'das dsadasdsadsa', 1, 'https://localhost/vania/dasdsadsadsa/dasdsadasdsadsa', 'das-dsadasdsadsa', 88, 0, 1, '2018-10-30 18:16:33', 1, '2018-10-30 18:17:00', 1),
(90, 0, 'dasdsad dasdas', 1, 'https://localhost/vania/dasdsadsadsa/das dsadasdsadsa/dasdsaddasdas', 'dasdsad-dasdas', 88, 89, 1, '2018-10-30 18:16:52', 1, '2018-10-30 18:16:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE `tbl_module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_path` varchar(255) NOT NULL,
  `module_type` tinyint(4) NOT NULL DEFAULT 0,
  `module_active_status` int(1) NOT NULL,
  `module_order_value` int(5) NOT NULL DEFAULT 1,
  `module_create_date` datetime NOT NULL,
  `module_create_by` int(11) NOT NULL,
  `module_update_date` datetime DEFAULT NULL,
  `module_update_by` int(11) DEFAULT NULL,
  `module_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`module_id`, `module_name`, `module_path`, `module_type`, `module_active_status`, `module_order_value`, `module_create_date`, `module_create_by`, `module_update_date`, `module_update_by`, `module_group_id`) VALUES
(1, 'General', 'general', 0, 1, 1, '2015-10-07 13:09:17', 1, '2019-12-03 18:36:30', 1, 2),
(2, 'Log CMS', 'Log_cms', 0, 1, 2, '2015-10-07 13:10:39', 1, '2019-12-03 18:36:30', 1, 2),
(102, 'Article', 'article', 1, 1, 1, '2019-01-12 23:37:10', 1, '2018-10-24 16:08:18', 1, 6),
(4, 'Menu', 'Menu_frontend', 0, 1, 2, '2017-03-16 16:08:01', 1, '2019-12-04 17:53:30', 1, 2),
(0, 'undifined', 'undifined', 0, 1, 99, '0000-00-00 00:00:00', 0, '2019-12-03 18:36:30', 1, 1),
(103, 'Virtual Tour', 'virtual_tour', 1, 1, 2, '2019-11-26 14:54:38', 1, '2019-12-03 18:36:30', 1, 3),
(110, 'Blog', 'blog', 1, 1, 2, '2019-09-08 12:56:44', 1, '2019-12-03 18:36:30', 1, 11),
(122, 'Location', 'location', 1, 1, 3, '2019-11-27 13:11:14', 1, '2019-12-03 18:36:30', 1, 4),
(121, 'Language', 'language', 0, 1, 1, '2019-03-05 18:59:44', 1, '2019-12-03 18:36:30', 1, 2),
(124, 'Services', 'services', 1, 1, 4, '2019-09-08 22:17:46', 1, '2019-12-03 18:36:30', 1, 3),
(125, 'Header', 'header_home', 1, 1, 1, '2019-09-13 13:32:24', 1, '2019-12-03 18:36:30', 1, 3),
(126, 'Header about', 'header_about', 1, 1, 1, '2019-09-14 02:47:57', 1, '2019-12-03 19:51:11', 1, 12),
(127, 'Sub page', 'about_subpage', 1, 1, 3, '2019-12-03 19:50:10', 1, '2019-12-03 19:51:11', 1, 12),
(128, 'Header Blog', 'header_blog', 1, 1, 1, '2019-09-13 13:47:45', 1, '2019-12-03 18:36:30', 1, 11),
(129, 'Header location', 'header_location', 1, 1, 1, '2019-11-27 13:09:52', 1, '2019-12-03 18:36:30', 1, 4),
(130, 'Header facilities', 'header_facilities', 1, 1, 1, '2019-11-27 14:44:39', 1, '2019-12-03 21:19:58', 1, 10),
(131, 'Header contact', 'highlight_contact', 1, 1, 1, '2019-09-18 16:29:01', 1, '2019-12-05 14:50:46', 1, 13),
(132, 'Access', 'Access', 1, 1, 2, '2019-11-27 13:20:15', 1, '2019-12-03 18:36:30', 1, 4),
(133, 'Facilities Description', 'facilitiesdescription', 1, 1, 2, '2019-12-03 21:19:10', 1, '2019-12-03 21:19:58', 1, 10),
(134, 'Header Tenant', 'header_tenant', 1, 1, 1, '2019-11-27 14:53:44', 1, '2019-12-04 17:53:30', 1, 14),
(135, 'Floor Plate', 'floor_plate', 1, 1, 3, '2019-12-04 17:21:54', 1, '2019-12-04 17:53:30', 1, 14),
(136, 'contact us page', 'contactus_page', 1, 1, 2, '2019-11-27 16:21:37', 1, '2019-12-05 14:50:46', 1, 13),
(137, 'Home Description', 'home_description', 1, 1, 3, '2019-12-03 17:41:56', 1, '2019-12-03 18:36:30', 1, 3),
(138, 'Header', 'header', 1, 1, 2, '2019-12-03 18:35:56', 1, '2019-12-03 18:36:30', 1, 2),
(139, 'Footer', 'Footer', 1, 1, 3, '2019-12-03 18:36:14', 1, '2019-12-03 18:36:30', 1, 2),
(140, 'About', 'about', 1, 1, 2, '2019-12-03 19:50:43', 1, '2019-12-03 19:51:11', 1, 12),
(141, 'Facilities', 'Facilities', 1, 1, 3, '2019-12-03 21:19:29', 1, '2019-12-03 21:19:58', 1, 10),
(142, 'Tenant', 'tenant', 1, 1, 2, '2019-12-04 17:53:11', 1, '2019-12-04 17:53:30', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_group`
--

CREATE TABLE `tbl_module_group` (
  `module_group_id` int(11) NOT NULL,
  `module_group_name` varchar(255) NOT NULL,
  `module_group_active_status` int(1) NOT NULL,
  `module_group_order_value` int(5) NOT NULL DEFAULT 1,
  `module_group_images` varchar(255) DEFAULT NULL,
  `module_group_create_date` datetime NOT NULL,
  `module_group_create_by` int(11) NOT NULL,
  `module_group_update_date` datetime DEFAULT NULL,
  `module_group_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_module_group`
--

INSERT INTO `tbl_module_group` (`module_group_id`, `module_group_name`, `module_group_active_status`, `module_group_order_value`, `module_group_images`, `module_group_create_date`, `module_group_create_by`, `module_group_update_date`, `module_group_update_by`) VALUES
(2, 'Config Management', 1, 0, NULL, '2015-10-07 13:07:34', 1, '2019-12-03 18:52:03', 1),
(3, 'Home Management', 1, 1, NULL, '2015-10-07 13:12:23', 1, '2019-12-03 18:52:03', 1),
(1, 'undifined', 0, 1, NULL, '0000-00-00 00:00:00', 0, '2019-12-03 18:52:03', 1),
(4, 'Location', 1, 3, NULL, '2018-07-13 14:04:57', 1, '2019-12-03 18:52:03', 1),
(9, 'Footer', 0, 6, NULL, '2018-08-31 16:52:56', 1, '2019-12-03 18:52:03', 1),
(10, 'Facilities', 1, 4, NULL, '2018-09-03 01:14:34', 1, '2019-12-03 18:52:03', 1),
(11, 'Blog', 1, 5, NULL, '2018-09-10 14:08:43', 1, '2019-12-03 18:52:03', 1),
(12, 'About', 1, 2, NULL, '2019-09-13 13:35:34', 1, '2019-12-03 18:52:03', 1),
(13, 'Contact', 1, 10, NULL, '2019-09-18 16:28:24', 1, '2019-12-03 18:52:03', 1),
(14, 'Tenant', 1, 7, NULL, '2019-11-27 14:53:12', 1, '2019-12-03 18:52:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_privilege`
--

CREATE TABLE `tbl_module_privilege` (
  `module_privilege_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `module_privilege_create_date` datetime NOT NULL,
  `module_privilege_create_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_module_privilege`
--

INSERT INTO `tbl_module_privilege` (`module_privilege_id`, `module_id`, `privilege_id`, `module_privilege_create_date`, `module_privilege_create_by`) VALUES
(1, 110, 1, '2019-02-07 18:53:30', 1),
(2, 110, 2, '2019-02-07 18:53:30', 1),
(3, 110, 3, '2019-02-07 18:53:30', 1),
(4, 110, 4, '2019-02-07 18:53:30', 1),
(5, 110, 5, '2019-02-07 18:53:30', 1),
(6, 110, 6, '2019-02-07 18:53:30', 1),
(7, 110, 7, '2019-02-07 18:53:30', 1),
(8, 110, 8, '2019-02-07 18:53:30', 1),
(9, 110, 9, '2019-02-07 18:53:30', 1),
(10, 121, 1, '2019-03-05 19:00:00', 1),
(11, 121, 2, '2019-03-05 19:00:01', 1),
(12, 121, 3, '2019-03-05 19:00:01', 1),
(13, 121, 4, '2019-03-05 19:00:01', 1),
(14, 121, 5, '2019-03-05 19:00:01', 1),
(15, 121, 6, '2019-03-05 19:00:01', 1),
(16, 121, 7, '2019-03-05 19:00:01', 1),
(17, 121, 8, '2019-03-05 19:00:01', 1),
(18, 121, 9, '2019-03-05 19:00:01', 1),
(19, 103, 1, '2019-03-08 21:33:51', 1),
(20, 103, 2, '2019-03-08 21:33:51', 1),
(21, 103, 3, '2019-03-08 21:33:51', 1),
(22, 103, 4, '2019-03-08 21:33:51', 1),
(23, 103, 5, '2019-03-08 21:33:51', 1),
(24, 103, 6, '2019-03-08 21:33:51', 1),
(25, 103, 7, '2019-03-08 21:33:51', 1),
(26, 103, 8, '2019-03-08 21:33:51', 1),
(27, 103, 9, '2019-03-08 21:33:51', 1),
(28, 122, 1, '2019-05-16 11:50:46', 1),
(29, 122, 2, '2019-05-16 11:50:46', 1),
(30, 122, 3, '2019-05-16 11:50:46', 1),
(31, 122, 4, '2019-05-16 11:50:46', 1),
(32, 122, 5, '2019-05-16 11:50:46', 1),
(33, 122, 6, '2019-05-16 11:50:46', 1),
(34, 122, 7, '2019-05-16 11:50:46', 1),
(35, 122, 8, '2019-05-16 11:50:46', 1),
(36, 122, 9, '2019-05-16 11:50:46', 1),
(118, 132, 1, '2019-11-27 13:20:32', 1),
(119, 132, 2, '2019-11-27 13:20:32', 1),
(120, 132, 3, '2019-11-27 13:20:32', 1),
(121, 132, 4, '2019-11-27 13:20:32', 1),
(122, 132, 5, '2019-11-27 13:20:32', 1),
(123, 132, 6, '2019-11-27 13:20:32', 1),
(124, 132, 7, '2019-11-27 13:20:32', 1),
(125, 132, 8, '2019-11-27 13:20:32', 1),
(126, 132, 9, '2019-11-27 13:20:32', 1),
(46, 124, 1, '2019-09-08 22:17:57', 1),
(47, 124, 2, '2019-09-08 22:17:57', 1),
(48, 124, 3, '2019-09-08 22:17:57', 1),
(49, 124, 4, '2019-09-08 22:17:57', 1),
(50, 124, 5, '2019-09-08 22:17:57', 1),
(51, 124, 6, '2019-09-08 22:17:57', 1),
(52, 124, 7, '2019-09-08 22:17:57', 1),
(53, 124, 8, '2019-09-08 22:17:57', 1),
(54, 124, 9, '2019-09-08 22:17:57', 1),
(55, 125, 1, '2019-09-13 13:41:09', 1),
(56, 125, 2, '2019-09-13 13:41:09', 1),
(57, 125, 3, '2019-09-13 13:41:09', 1),
(58, 125, 4, '2019-09-13 13:41:09', 1),
(59, 125, 5, '2019-09-13 13:41:09', 1),
(60, 125, 6, '2019-09-13 13:41:09', 1),
(61, 125, 7, '2019-09-13 13:41:09', 1),
(62, 125, 8, '2019-09-13 13:41:09', 1),
(63, 125, 9, '2019-09-13 13:41:09', 1),
(64, 127, 1, '2019-09-13 13:41:14', 1),
(65, 127, 2, '2019-09-13 13:41:14', 1),
(66, 127, 3, '2019-09-13 13:41:14', 1),
(67, 127, 4, '2019-09-13 13:41:14', 1),
(68, 127, 5, '2019-09-13 13:41:14', 1),
(69, 127, 6, '2019-09-13 13:41:14', 1),
(70, 127, 7, '2019-09-13 13:41:14', 1),
(71, 127, 8, '2019-09-13 13:41:14', 1),
(72, 127, 9, '2019-09-13 13:41:14', 1),
(73, 126, 1, '2019-09-13 13:41:19', 1),
(74, 126, 2, '2019-09-13 13:41:19', 1),
(75, 126, 3, '2019-09-13 13:41:19', 1),
(76, 126, 4, '2019-09-13 13:41:19', 1),
(77, 126, 5, '2019-09-13 13:41:19', 1),
(78, 126, 6, '2019-09-13 13:41:19', 1),
(79, 126, 7, '2019-09-13 13:41:19', 1),
(80, 126, 8, '2019-09-13 13:41:19', 1),
(81, 126, 9, '2019-09-13 13:41:19', 1),
(82, 128, 1, '2019-09-14 02:48:30', 1),
(83, 128, 2, '2019-09-14 02:48:30', 1),
(84, 128, 3, '2019-09-14 02:48:30', 1),
(85, 128, 4, '2019-09-14 02:48:30', 1),
(86, 128, 5, '2019-09-14 02:48:30', 1),
(87, 128, 6, '2019-09-14 02:48:30', 1),
(88, 128, 7, '2019-09-14 02:48:30', 1),
(89, 128, 8, '2019-09-14 02:48:30', 1),
(90, 128, 9, '2019-09-14 02:48:30', 1),
(91, 129, 1, '2019-09-14 02:50:13', 1),
(92, 129, 2, '2019-09-14 02:50:13', 1),
(93, 129, 3, '2019-09-14 02:50:13', 1),
(94, 129, 4, '2019-09-14 02:50:13', 1),
(95, 129, 5, '2019-09-14 02:50:13', 1),
(96, 129, 6, '2019-09-14 02:50:13', 1),
(97, 129, 7, '2019-09-14 02:50:13', 1),
(98, 129, 8, '2019-09-14 02:50:13', 1),
(99, 129, 9, '2019-09-14 02:50:13', 1),
(100, 130, 1, '2019-09-18 15:09:58', 1),
(101, 130, 2, '2019-09-18 15:09:58', 1),
(102, 130, 3, '2019-09-18 15:09:58', 1),
(103, 130, 4, '2019-09-18 15:09:58', 1),
(104, 130, 5, '2019-09-18 15:09:58', 1),
(105, 130, 6, '2019-09-18 15:09:58', 1),
(106, 130, 7, '2019-09-18 15:09:58', 1),
(107, 130, 8, '2019-09-18 15:09:58', 1),
(108, 130, 9, '2019-09-18 15:09:58', 1),
(109, 131, 1, '2019-09-18 16:31:03', 1),
(110, 131, 2, '2019-09-18 16:31:03', 1),
(111, 131, 3, '2019-09-18 16:31:03', 1),
(112, 131, 4, '2019-09-18 16:31:03', 1),
(113, 131, 5, '2019-09-18 16:31:03', 1),
(114, 131, 6, '2019-09-18 16:31:03', 1),
(115, 131, 7, '2019-09-18 16:31:03', 1),
(116, 131, 8, '2019-09-18 16:31:03', 1),
(117, 131, 9, '2019-09-18 16:31:03', 1),
(127, 133, 1, '2019-11-27 14:50:08', 1),
(128, 133, 2, '2019-11-27 14:50:08', 1),
(129, 133, 3, '2019-11-27 14:50:08', 1),
(130, 133, 4, '2019-11-27 14:50:08', 1),
(131, 133, 5, '2019-11-27 14:50:08', 1),
(132, 133, 6, '2019-11-27 14:50:08', 1),
(133, 133, 7, '2019-11-27 14:50:08', 1),
(134, 133, 8, '2019-11-27 14:50:08', 1),
(135, 133, 9, '2019-11-27 14:50:08', 1),
(136, 134, 1, '2019-11-27 14:55:52', 1),
(137, 134, 2, '2019-11-27 14:55:52', 1),
(138, 134, 3, '2019-11-27 14:55:52', 1),
(139, 134, 4, '2019-11-27 14:55:52', 1),
(140, 134, 5, '2019-11-27 14:55:52', 1),
(141, 134, 6, '2019-11-27 14:55:52', 1),
(142, 134, 7, '2019-11-27 14:55:52', 1),
(143, 134, 8, '2019-11-27 14:55:52', 1),
(144, 134, 9, '2019-11-27 14:55:52', 1),
(145, 135, 1, '2019-11-27 14:58:06', 1),
(146, 135, 2, '2019-11-27 14:58:06', 1),
(147, 135, 3, '2019-11-27 14:58:06', 1),
(148, 135, 4, '2019-11-27 14:58:06', 1),
(149, 135, 5, '2019-11-27 14:58:06', 1),
(150, 135, 6, '2019-11-27 14:58:06', 1),
(151, 135, 7, '2019-11-27 14:58:06', 1),
(152, 135, 8, '2019-11-27 14:58:06', 1),
(153, 135, 9, '2019-11-27 14:58:06', 1),
(154, 136, 1, '2019-12-02 15:54:16', 1),
(155, 136, 2, '2019-12-02 15:54:16', 1),
(156, 136, 3, '2019-12-02 15:54:16', 1),
(157, 136, 4, '2019-12-02 15:54:16', 1),
(158, 136, 5, '2019-12-02 15:54:16', 1),
(159, 136, 6, '2019-12-02 15:54:16', 1),
(160, 136, 7, '2019-12-02 15:54:16', 1),
(161, 136, 8, '2019-12-02 15:54:16', 1),
(162, 136, 9, '2019-12-02 15:54:16', 1),
(163, 137, 1, '2019-12-03 17:43:07', 1),
(164, 137, 2, '2019-12-03 17:43:07', 1),
(165, 137, 3, '2019-12-03 17:43:07', 1),
(166, 137, 4, '2019-12-03 17:43:07', 1),
(167, 137, 5, '2019-12-03 17:43:07', 1),
(168, 137, 6, '2019-12-03 17:43:07', 1),
(169, 137, 7, '2019-12-03 17:43:07', 1),
(170, 137, 8, '2019-12-03 17:43:07', 1),
(171, 137, 9, '2019-12-03 17:43:07', 1),
(172, 139, 1, '2019-12-03 18:50:59', 1),
(173, 139, 2, '2019-12-03 18:50:59', 1),
(174, 139, 3, '2019-12-03 18:50:59', 1),
(175, 139, 4, '2019-12-03 18:50:59', 1),
(176, 139, 5, '2019-12-03 18:50:59', 1),
(177, 139, 6, '2019-12-03 18:50:59', 1),
(178, 139, 7, '2019-12-03 18:50:59', 1),
(179, 139, 8, '2019-12-03 18:51:00', 1),
(180, 139, 9, '2019-12-03 18:51:00', 1),
(181, 138, 1, '2019-12-03 18:51:05', 1),
(182, 138, 2, '2019-12-03 18:51:05', 1),
(183, 138, 3, '2019-12-03 18:51:05', 1),
(184, 138, 4, '2019-12-03 18:51:05', 1),
(185, 138, 5, '2019-12-03 18:51:05', 1),
(186, 138, 6, '2019-12-03 18:51:05', 1),
(187, 138, 7, '2019-12-03 18:51:05', 1),
(188, 138, 8, '2019-12-03 18:51:05', 1),
(189, 138, 9, '2019-12-03 18:51:05', 1),
(190, 140, 1, '2019-12-03 19:52:13', 1),
(191, 140, 2, '2019-12-03 19:52:13', 1),
(192, 140, 3, '2019-12-03 19:52:13', 1),
(193, 140, 4, '2019-12-03 19:52:13', 1),
(194, 140, 5, '2019-12-03 19:52:13', 1),
(195, 140, 6, '2019-12-03 19:52:13', 1),
(196, 140, 7, '2019-12-03 19:52:13', 1),
(197, 140, 8, '2019-12-03 19:52:13', 1),
(198, 140, 9, '2019-12-03 19:52:13', 1),
(199, 141, 1, '2019-12-03 21:20:46', 1),
(200, 141, 2, '2019-12-03 21:20:46', 1),
(201, 141, 3, '2019-12-03 21:20:46', 1),
(202, 141, 4, '2019-12-03 21:20:46', 1),
(203, 141, 5, '2019-12-03 21:20:46', 1),
(204, 141, 6, '2019-12-03 21:20:46', 1),
(205, 141, 7, '2019-12-03 21:20:46', 1),
(206, 141, 8, '2019-12-03 21:20:46', 1),
(207, 141, 9, '2019-12-03 21:20:46', 1),
(208, 142, 1, '2019-12-04 17:54:21', 1),
(209, 142, 2, '2019-12-04 17:54:21', 1),
(210, 142, 3, '2019-12-04 17:54:21', 1),
(211, 142, 4, '2019-12-04 17:54:21', 1),
(212, 142, 5, '2019-12-04 17:54:21', 1),
(213, 142, 6, '2019-12-04 17:54:21', 1),
(214, 142, 7, '2019-12-04 17:54:21', 1),
(215, 142, 8, '2019-12-04 17:54:21', 1),
(216, 142, 9, '2019-12-04 17:54:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `options_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `options_value` varchar(100) NOT NULL,
  `options_title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`options_id`, `label_id`, `type_id`, `options_value`, `options_title`) VALUES
(42, 35, 6, '', 'Public'),
(12, 28, 6, '', 'Aviation'),
(13, 28, 6, '', 'Security System'),
(14, 28, 6, '', 'Heavy Equipment'),
(15, 28, 6, '', 'Solutions'),
(41, 35, 6, '', 'private'),
(53, 86, 6, '', 'Tips &amp; trick'),
(17, 29, 6, '', 'E U'),
(18, 29, 6, '', 'Hong Kong'),
(19, 29, 6, '', 'Indonesia'),
(20, 29, 6, '', 'Macau'),
(21, 29, 6, '', 'Maldives'),
(22, 29, 6, '', 'Midle East'),
(23, 29, 6, '', 'New Zealand'),
(24, 29, 6, '', 'Philippines'),
(25, 29, 6, '', 'Singapore'),
(26, 29, 6, '', 'Srilanka'),
(27, 29, 6, '', 'Thailand'),
(28, 29, 6, '', 'USA'),
(29, 30, 6, '', 'Protank'),
(33, 30, 6, '', 'Kunz'),
(34, 30, 6, '', 'UNV'),
(35, 30, 6, '', 'Powerplus'),
(36, 30, 6, '', 'Sany'),
(43, 36, 6, '', 'lorem 1'),
(44, 36, 6, '', 'lorem 2'),
(45, 37, 6, '', 'lorem 3'),
(46, 37, 6, '', 'lorem 4'),
(47, 41, 6, '', 'serv 1'),
(48, 41, 6, '', 'Serv 2'),
(49, 29, 6, '', 'Oman'),
(50, 79, 6, '', 'Assets Management'),
(51, 79, 6, '', 'Public'),
(52, 29, 6, '', 'Malaysia'),
(54, 86, 6, '', 'Event'),
(55, 99, 7, '', 'Yes'),
(56, 99, 7, '', 'No'),
(60, 141, 6, '', 'House'),
(61, 141, 6, '', 'Villa'),
(62, 83, 6, '', 'Art / Design'),
(63, 83, 6, '', 'Renovation'),
(64, 152, 6, '', 'News'),
(65, 152, 6, '', 'Event'),
(66, 167, 7, '', 'bg-deep-pink'),
(67, 167, 7, '', 'bg-black-opacity'),
(68, 188, 6, '', 'News'),
(69, 188, 6, '', 'Event'),
(70, 188, 6, '', 'Tip &amp; Trick');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_privilege`
--

CREATE TABLE `tbl_privilege` (
  `privilege_id` int(11) NOT NULL,
  `privilege_name` varchar(255) NOT NULL,
  `privilege_create_date` datetime NOT NULL,
  `privilege_create_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_privilege`
--

INSERT INTO `tbl_privilege` (`privilege_id`, `privilege_name`, `privilege_create_date`, `privilege_create_by`) VALUES
(1, 'List', '2012-01-04 21:13:59', 1),
(3, 'Add', '2012-01-04 21:14:27', 1),
(4, 'Edit', '2012-01-04 21:14:27', 1),
(2, 'View', '2012-01-04 21:15:18', 1),
(6, 'Approve', '2012-01-04 21:15:34', 1),
(7, 'Delete', '2012-01-04 21:15:34', 1),
(5, 'Publish', '2012-01-04 21:16:17', 1),
(8, 'Order', '2012-01-04 21:16:17', 1),
(9, 'Language', '2019-02-14 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_row`
--

CREATE TABLE `tbl_row` (
  `row_id` int(11) NOT NULL,
  `row_parent` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `row_alias` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `row_active_status` tinyint(1) NOT NULL,
  `row_order` int(11) NOT NULL,
  `show_on` int(11) NOT NULL,
  `row_create_date` datetime NOT NULL,
  `row_create_by` int(11) NOT NULL,
  `row_update_date` datetime DEFAULT NULL,
  `row_update_by` int(11) DEFAULT NULL,
  `publish_date` datetime NOT NULL,
  `close_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_row`
--

INSERT INTO `tbl_row` (`row_id`, `row_parent`, `module_id`, `row_alias`, `category_id`, `row_active_status`, `row_order`, `show_on`, `row_create_date`, `row_create_by`, `row_update_date`, `row_update_by`, `publish_date`, `close_date`) VALUES
(78, 0, 138, '', 0, 1, 0, 0, '2019-12-03 18:55:40', 1, '2019-12-18 08:24:34', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 0, 125, '', 0, 1, 0, 0, '2019-12-03 17:38:32', 1, '2019-12-18 07:33:13', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 0, 137, '', 0, 1, 0, 0, '2019-12-03 17:44:01', 1, '2020-01-07 11:03:48', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 0, 124, 'services/prime-location', 0, 1, 1, 0, '2019-12-03 17:45:56', 1, '2020-01-02 15:42:26', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 0, 103, '', 0, 1, 0, 0, '2019-12-03 17:48:02', 1, '2019-12-03 19:05:05', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 0, 110, 'blog/membangun-sebuah-production-house', 0, 1, 0, 0, '2019-09-15 17:20:01', 1, '2019-09-18 14:40:23', 1, '2019-09-08 00:00:00', '2019-10-05 00:00:00'),
(83, 0, 124, 'services/reputation', 0, 1, 2, 0, '2019-12-03 20:18:45', 1, '2019-12-18 11:10:39', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 0, 140, 'about/providing-lifetime-&ltbr/&gt-sustainable-services', 0, 1, 0, 0, '2019-12-03 19:54:36', 1, '2020-01-02 11:55:44', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 0, 127, 'about_subpage/property-management', 0, 1, 3, 0, '2019-12-03 20:10:17', 1, '2019-12-03 20:11:11', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 0, 127, 'about_subpage/building-specification', 0, 1, 2, 0, '2019-12-03 20:10:54', 1, '2020-01-06 15:13:09', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 0, 126, '', 0, 1, 0, 0, '2019-09-15 20:40:15', 1, '2020-01-16 13:53:26', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 0, 127, 'about_subpage/vision', 0, 1, 1, 0, '2019-09-15 22:07:40', 1, '2019-12-31 14:07:04', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 0, 129, '', 0, 1, 0, 0, '2019-09-16 00:34:03', 1, '2020-01-16 13:52:27', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 0, 139, '', 0, 1, 0, 0, '2019-12-03 19:01:05', 1, '2019-12-30 16:39:18', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 0, 128, '', 0, 1, 0, 0, '2019-09-16 22:53:06', 1, '2019-09-18 14:37:47', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 0, 110, 'blog/dasdsadasdsa', 0, 1, 0, 0, '2019-09-18 13:51:08', 1, '2019-09-18 13:51:36', 1, '2019-09-17 00:00:00', '2019-09-20 00:00:00'),
(71, 0, 130, '', 0, 1, 0, 0, '2019-09-18 15:12:09', 1, '2019-12-03 21:32:47', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 0, 136, 'contactus_page/get-in-touch', 0, 1, 0, 0, '2019-12-05 15:02:06', 1, '2019-12-31 15:05:29', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 0, 124, 'services/secure-environment', 0, 1, 3, 0, '2019-12-03 20:19:19', 1, '2019-12-31 14:12:45', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 0, 133, 'facilitiesdescription/facilities', 0, 1, 0, 0, '2019-12-03 21:39:30', 1, '2020-01-02 12:03:00', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 0, 122, 'location/accessibility', 0, 1, 0, 0, '2019-12-04 16:44:27', 1, '2019-12-04 16:44:30', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 0, 132, 'Access/vehicle', 0, 1, 1, 0, '2019-12-04 16:47:06', 1, '2020-01-02 12:00:28', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 0, 132, 'Access/subway', 0, 1, 2, 0, '2019-12-04 16:47:27', 1, '2019-12-31 14:19:51', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 0, 142, 'tenant/be-part-of-iseb-community', 0, 1, 0, 0, '2019-12-04 17:55:45', 1, '2020-01-02 12:04:22', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 0, 134, '', 0, 1, 0, 0, '2019-12-04 17:57:32', 1, '2020-01-06 14:57:16', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 0, 135, 'floor_plate/typical-floor-plate', 0, 1, 0, 0, '2019-12-04 17:58:13', 1, '2020-01-06 15:07:01', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 91, 135, '', 0, 1, 0, 0, '2019-12-04 17:59:12', 1, '2020-01-06 15:08:00', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 91, 135, '', 0, 1, 0, 0, '2019-12-04 17:59:34', 1, '2020-01-03 18:02:27', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 0, 131, '', 0, 1, 0, 0, '2019-12-05 14:55:58', 1, '2019-12-05 14:56:03', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 0, 141, 'Facilities/security', 0, 1, 1, 0, '2019-12-06 09:01:44', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 0, 141, 'Facilities/public-transport-bus--mrt', 0, 1, 2, 0, '2019-12-06 09:09:29', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 0, 141, 'Facilities/banks', 0, 1, 3, 0, '2019-12-06 09:09:45', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 0, 141, 'Facilities/retail', 0, 1, 4, 0, '2019-12-06 09:09:59', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 0, 141, 'Facilities/tunnel-to-mall--hotel-apartment', 0, 1, 5, 0, '2019-12-06 09:10:27', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 0, 141, 'Facilities/valet-parking', 0, 1, 6, 0, '2019-12-06 09:10:43', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 0, 141, 'Facilities/19-lifts-in-each-tower', 0, 1, 7, 0, '2019-12-06 09:11:11', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 0, 141, 'Facilities/mailing--parcel-service', 0, 1, 8, 0, '2019-12-06 09:11:30', 1, '2019-12-06 09:12:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 0, 132, 'Access/taxi', 0, 1, 3, 0, '2019-12-10 16:23:58', 1, '2019-12-31 14:36:17', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 0, 132, 'Access/bus', 0, 1, 4, 0, '2019-12-10 16:24:16', 1, '2020-01-02 15:43:01', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 0, 132, 'Access/shuttle-bus', 0, 1, 5, 0, '2019-12-10 16:24:40', 1, '2019-12-31 14:20:35', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `user_active_status` int(1) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_expired` date NOT NULL,
  `user_create_date` datetime NOT NULL,
  `user_create_by` int(11) NOT NULL,
  `user_update_date` datetime NOT NULL,
  `user_update_by` int(11) NOT NULL,
  `user_change_password_date` datetime DEFAULT NULL,
  `user_level_id` int(11) NOT NULL,
  `token` varchar(128) DEFAULT NULL,
  `token_expired` datetime NOT NULL,
  `ip` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_pass`, `user_active_status`, `user_email`, `user_contact`, `user_expired`, `user_create_date`, `user_create_by`, `user_update_date`, `user_update_by`, `user_change_password_date`, `user_level_id`, `token`, `token_expired`, `ip`) VALUES
(1, 'superadmin', 'e10adc3949ba59abbe56e057f20f883e', 1, '', '', '0000-00-00', '0000-00-00 00:00:00', 0, '2019-06-12 18:39:13', 1, NULL, 1, NULL, '0000-00-00 00:00:00', NULL),
(6, 'stockexc', '64864f3c4a4bc76fe6c8d8b102402eb3', 1, 'stockexc@mail.com', '', '0000-00-00', '2019-12-20 20:10:27', 1, '0000-00-00 00:00:00', 0, NULL, 1, NULL, '0000-00-00 00:00:00', NULL),
(7, 'admin_stockexc', '8ae6b52e58ec2ca1b6f03cf00c0e26ef', 1, 'admin@stockexchangebldg.com', '', '0000-00-00', '2020-01-06 15:20:41', 6, '0000-00-00 00:00:00', 0, NULL, 3, NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `user_level_id` int(11) NOT NULL,
  `user_level_name` varchar(255) NOT NULL,
  `user_level_desc` varchar(200) NOT NULL,
  `user_level_active_status` int(1) NOT NULL,
  `user_level_create_date` datetime NOT NULL,
  `user_level_create_by` int(11) NOT NULL,
  `user_level_update_date` datetime DEFAULT NULL,
  `user_level_update_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`user_level_id`, `user_level_name`, `user_level_desc`, `user_level_active_status`, `user_level_create_date`, `user_level_create_by`, `user_level_update_date`, `user_level_update_by`) VALUES
(1, 'Super Administrator', 'Super Administrator', 1, '2011-08-19 10:49:45', 1, '2015-08-11 15:18:22', 1),
(3, 'Administrator', 'Administrator', 1, '2015-08-24 15:49:07', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_setting`
--
ALTER TABLE `cms_setting`
  ADD PRIMARY KEY (`setting_name`);

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tbl_access`
--
ALTER TABLE `tbl_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `user_level_id` (`user_level_id`,`module_id`);

--
-- Indexes for table `tbl_access_privilege`
--
ALTER TABLE `tbl_access_privilege`
  ADD PRIMARY KEY (`access_privilege_id`),
  ADD KEY `access_id` (`access_id`,`privilege_id`);

--
-- Indexes for table `tbl_alias`
--
ALTER TABLE `tbl_alias`
  ADD PRIMARY KEY (`alias_id`),
  ADD KEY `alias_category` (`alias_category`),
  ADD KEY `alias_active_status` (`alias_active_status`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_parent` (`category_parent`,`category_order`),
  ADD KEY `category_active_status` (`category_active_status`);

--
-- Indexes for table `tbl_category_type`
--
ALTER TABLE `tbl_category_type`
  ADD PRIMARY KEY (`category_type_id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `tbl_content_lang`
--
ALTER TABLE `tbl_content_lang`
  ADD PRIMARY KEY (`content_lang_id`);

--
-- Indexes for table `tbl_general`
--
ALTER TABLE `tbl_general`
  ADD PRIMARY KEY (`general_id`);

--
-- Indexes for table `tbl_label`
--
ALTER TABLE `tbl_label`
  ADD PRIMARY KEY (`label_id`),
  ADD KEY `name` (`label_title`);

--
-- Indexes for table `tbl_label_type`
--
ALTER TABLE `tbl_label_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `tbl_log_cms`
--
ALTER TABLE `tbl_log_cms`
  ADD PRIMARY KEY (`log_id_cms`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_parent` (`menu_parent`,`menu_order`),
  ADD KEY `menu_active_status` (`menu_active_status`);

--
-- Indexes for table `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `tbl_module_group`
--
ALTER TABLE `tbl_module_group`
  ADD PRIMARY KEY (`module_group_id`);

--
-- Indexes for table `tbl_module_privilege`
--
ALTER TABLE `tbl_module_privilege`
  ADD PRIMARY KEY (`module_privilege_id`),
  ADD KEY `module_id` (`module_id`,`privilege_id`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`options_id`);

--
-- Indexes for table `tbl_privilege`
--
ALTER TABLE `tbl_privilege`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Indexes for table `tbl_row`
--
ALTER TABLE `tbl_row`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`user_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_access`
--
ALTER TABLE `tbl_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_access_privilege`
--
ALTER TABLE `tbl_access_privilege`
  MODIFY `access_privilege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `tbl_alias`
--
ALTER TABLE `tbl_alias`
  MODIFY `alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tbl_category_type`
--
ALTER TABLE `tbl_category_type`
  MODIFY `category_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_content_lang`
--
ALTER TABLE `tbl_content_lang`
  MODIFY `content_lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `tbl_general`
--
ALTER TABLE `tbl_general`
  MODIFY `general_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_label`
--
ALTER TABLE `tbl_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `tbl_label_type`
--
ALTER TABLE `tbl_label_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log_cms`
--
ALTER TABLE `tbl_log_cms`
  MODIFY `log_id_cms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_module_group`
--
ALTER TABLE `tbl_module_group`
  MODIFY `module_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_module_privilege`
--
ALTER TABLE `tbl_module_privilege`
  MODIFY `module_privilege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tbl_privilege`
--
ALTER TABLE `tbl_privilege`
  MODIFY `privilege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_row`
--
ALTER TABLE `tbl_row`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `user_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
