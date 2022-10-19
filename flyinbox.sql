-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2022 at 02:09 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swiftmail`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` varchar(10) NOT NULL,
  `admin_pass` varchar(10) NOT NULL,
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `a_id` (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pass`, `a_id`) VALUES
('SWA01', 'Aa123.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `i_id` int(10) NOT NULL AUTO_INCREMENT,
  `i_type` varchar(50) NOT NULL,
  `i_title` varchar(100) NOT NULL,
  `i_subject` varchar(200) NOT NULL,
  `i_message` varchar(1000) NOT NULL,
  `i_regdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `i_disdt` varchar(50) NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`i_id`, `i_type`, `i_title`, `i_subject`, `i_message`, `i_regdt`, `i_disdt`) VALUES
(18, 'Emergency Alert', 'WATCHER ', 'Release of the dog...', '<p><em><strong>CADET&nbsp;</strong></em></p>\r\n\r\n<p>Looking for some already great color combinations? Our&nbsp;<a href=\"http://htmlcolorcodes.com/color-chart/\">color chart</a>&nbsp;features flat design colors, Google&#39;s Material design scheme and the classic web safe color palette, all with Hex color codes.</p>\r\n', '2022-04-22 21:47:49', 'Saturday 23rd of April 2022 03:17:49 AM'),
(23, 'Emergency Alert', 'sg', 'etgerhd', '<p>erherhrt</p>\r\n', '2022-05-05 10:41:04', 'Thursday 5th of May 2022 04:11:04 PM'),
(21, 'Emergency Alert', 'Sample', 'PLEASE READ', '<p><span class=\"marker\"><em><strong>Hello...</strong></em></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2022-04-26 06:58:23', 'Tuesday 26th of April 2022 12:28:23 PM');

-- --------------------------------------------------------

--
-- Table structure for table `swift_cc`
--

DROP TABLE IF EXISTS `swift_cc`;
CREATE TABLE IF NOT EXISTS `swift_cc` (
  `sc_id` int(10) NOT NULL AUTO_INCREMENT,
  `sc_from` varchar(50) NOT NULL,
  `sc_to` varchar(50) NOT NULL,
  `sc_cc` varchar(50) NOT NULL,
  `sc_sub` varchar(250) NOT NULL,
  `sc_msg` varchar(1000) NOT NULL,
  `sc_file` varchar(500) NOT NULL,
  `sc_file_type` varchar(500) NOT NULL,
  `sc_file_blob` blob NOT NULL,
  `sc_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_cc`
--

INSERT INTO `swift_cc` (`sc_id`, `sc_from`, `sc_to`, `sc_cc`, `sc_sub`, `sc_msg`, `sc_file`, `sc_file_type`, `sc_file_blob`, `sc_dt`) VALUES
(35, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'DD', '', '', '', '', '2022-04-23 16:52:07'),
(36, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 16:54:21'),
(10, 'kokspam@swift.com', 'kokspam@swift.com', '', 'QEWRT', '', '', '', '', '2022-04-22 16:16:33'),
(37, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 16:58:39'),
(38, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 17:04:23'),
(33, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 13:19:06'),
(34, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'dc', '', '', '', '', '2022-04-23 16:51:33'),
(48, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p>Hello <strong>WORLD</strong>...</p>\r\n\r\n<p>Just a sample message...</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870393139452e746d70, '2022-04-25 05:42:55'),
(49, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample guide', '<p>dgajddffdede</p>\r\n', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870334542342e746d70, '2022-04-26 07:00:35'),
(52, 'kalyan@swift.com', 'vsa.vsarun@swift.com', 'kokspam@swift.com', 'KALYAN SAMPLE', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>QDWFEGRD</td>\r\n			<td>WEGR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WREGR</td>\r\n			<td>WRER</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RWE</td>\r\n			<td>RWE</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>SAMPLE...</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870323433302e746d70, '2022-04-28 15:18:13'),
(55, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p><em><strong>Draft </strong></em>sample text...</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870354537462e746d70, '2022-04-30 10:05:24'),
(57, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p><em><strong>Hello...</strong></em></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>uk</td>\r\n			<td>dfb</td>\r\n		</tr>\r\n		<tr>\r\n			<td>rgd</td>\r\n			<td>erg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>rg</td>\r\n			<td>erg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870384346412e746d70, '2022-05-05 10:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `swift_draft`
--

DROP TABLE IF EXISTS `swift_draft`;
CREATE TABLE IF NOT EXISTS `swift_draft` (
  `sd_id` int(10) NOT NULL AUTO_INCREMENT,
  `sd_from` varchar(50) NOT NULL,
  `sd_to` varchar(50) NOT NULL,
  `sd_cc` varchar(50) NOT NULL,
  `sd_sub` varchar(250) NOT NULL,
  `sd_msg` varchar(1000) NOT NULL,
  `sd_file` varchar(500) NOT NULL,
  `sd_file_type` varchar(500) NOT NULL,
  `sd_file_blob` blob NOT NULL,
  `sd_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `swift_inbox`
--

DROP TABLE IF EXISTS `swift_inbox`;
CREATE TABLE IF NOT EXISTS `swift_inbox` (
  `si_id` int(10) NOT NULL AUTO_INCREMENT,
  `si_from` varchar(50) NOT NULL,
  `si_to` varchar(50) NOT NULL,
  `si_cc` varchar(50) NOT NULL,
  `si_sub` varchar(250) NOT NULL,
  `si_msg` varchar(1000) NOT NULL,
  `si_file` varchar(500) NOT NULL,
  `si_file_type` varchar(500) NOT NULL,
  `si_file_blob` longblob NOT NULL,
  `si_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`si_id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_inbox`
--

INSERT INTO `swift_inbox` (`si_id`, `si_from`, `si_to`, `si_cc`, `si_sub`, `si_msg`, `si_file`, `si_file_type`, `si_file_blob`, `si_dt`) VALUES
(105, 'vsa.vsarun@swift.com', 'ammar@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p>Sample...</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870423930352e746d70, '2022-05-05 10:39:59'),
(95, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p>Hello <strong>WORLD</strong>...</p>\r\n\r\n<p>Just a sample message...</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870393139452e746d70, '2022-04-25 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `swift_mail_txn`
--

DROP TABLE IF EXISTS `swift_mail_txn`;
CREATE TABLE IF NOT EXISTS `swift_mail_txn` (
  `smt_id` int(10) NOT NULL AUTO_INCREMENT,
  `smt_from` varchar(50) NOT NULL,
  `smt_to` varchar(50) NOT NULL,
  `smt_cc` varchar(50) NOT NULL,
  `smt_sub` varchar(250) NOT NULL,
  `smt_msg` varchar(1000) NOT NULL,
  `smt_file` varchar(500) NOT NULL,
  `smt_file_type` varchar(500) NOT NULL,
  `smt_file_blob` blob NOT NULL,
  `smt_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`smt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_mail_txn`
--

INSERT INTO `swift_mail_txn` (`smt_id`, `smt_from`, `smt_to`, `smt_cc`, `smt_sub`, `smt_msg`, `smt_file`, `smt_file_type`, `smt_file_blob`, `smt_dt`) VALUES
(15, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'Sample', '<p>ascsd</p>\r\n', '', '', '', '2022-03-28 22:23:40'),
(16, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'qwfcqwas', '<p>xsas</p>\r\n', '', '', '', '2022-03-28 22:23:49'),
(14, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'Sample from Ammar', '<p>SAMPLE</p>\r\n', '', '', '', '2022-03-28 22:20:33'),
(13, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'From Ammar', '<p>Sample...</p>\r\n', '', '', '', '2022-03-28 22:15:26'),
(12, 'vsa.vsarun@swift.com', 'kokspam@swift.com', '', 'Sample', '<p>Sample</p>\r\n', '', '', '', '2022-03-28 22:00:56'),
(17, 'kokspam@swift.com', 'vsa.vsarun@swift.com', '', 'Simply...', '<p>Sample...</p>\r\n', '', '', '', '2022-03-28 22:27:50'),
(18, 'vsa.vsarun@swift.com', 'mm.ammar@swift.com', 'kokspam@swift.com', 'CC TEST', '<p>SASHBCJH</p>\r\n', '', '', '', '2022-03-28 22:35:10'),
(19, 'kokspam@swift.com', 'vsa.vsarun@swift.com', 'mm.ammar@swift.com', 'TEST MESSAGE WITH CC', '<p>HI,&nbsp;</p>\r\n\r\n<p>I AM<em> SAMPLE</em><strong> TEXT.</strong>..</p>\r\n', '', '', '', '2022-03-29 04:35:35'),
(20, 'mm.ammar@swift.com', 'vsa.vsarun@swift.com', 'kokspam@swift.com', 'DRAFT TEST', '<p>WFwefe</p>\r\n', '', '', '', '2022-03-29 04:37:51'),
(21, 'ouvesmk@swift.com', 'kokspam@swift.com', 'mm.ammar@swift.com', 'NEW ENTRY...', '<p>HI HELLO,</p>\r\n\r\n<p>I AM OUVES...</p>\r\n', '', '', '', '2022-03-29 04:52:35'),
(22, 'mm.ammar@swift.com', 'mm.ammar@swift.com', 'kokspam@swift.com', 'Sample', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '2022-03-29 05:44:36'),
(23, 'vsa.vsarun@swift.com', 'mm.ammar@swift.com', 'kokspam@swift.com', 'Sample', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>RGT</td>\r\n			<td>FGF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FGF</td>\r\n			<td>GF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GF</td>\r\n			<td>RTGRG</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '2022-03-29 06:15:34'),
(24, 'kokspam@swift.com', 'vsa.vsarun@swift.com', '', 'efes', '<p>wefwesf</p>\r\n', '', '', '', '2022-04-15 15:46:34'),
(25, 'kokspam@swift.com', 'vsa.vsarun@swift.com', '', 'efsgd', '<p>ergerd</p>\r\n', '', '', '', '2022-04-15 15:48:02'),
(26, 'kokspam@swift.com', 'vsa.vsarun@swift.com', '', '56ht', '<p>5yhrth</p>\r\n', '', '', '', '2022-04-15 16:00:46'),
(27, 'kokspam@swift.com', 'vsa.vsarun@swift.com', '', 'bd', '<p>ergvv</p>\r\n', '', '', '', '2022-04-15 17:39:55'),
(28, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'SELF', '<p>SELF...</p>\r\n', '', '', '', '2022-04-16 10:52:12'),
(29, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'SELF 2', '<p>WQCAC</p>\r\n', '', '', '', '2022-04-16 10:54:37'),
(30, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample', '', '', '', '', '2022-04-16 12:37:13'),
(31, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample Self', '', '', '', '', '2022-04-16 12:39:05'),
(32, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample', '<p>eff</p>\r\n', '', '', '', '2022-04-16 12:48:31'),
(33, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'wetgrytr', '', '', '', '', '2022-04-16 12:56:32'),
(34, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'SELF SAMPLE', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 15:33:49'),
(35, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample', '<p>Sample</p>\r\n', '', '', '', '2022-04-16 15:49:10'),
(36, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:07:45'),
(37, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:27:14'),
(38, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:29:05'),
(39, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:31:06'),
(40, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:34:14'),
(41, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:35:29'),
(42, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>DONE...</p>\r\n', '', '', '', '2022-04-16 17:40:11'),
(43, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'ASDF', '<p>HI HELLOOO...</p>\r\n\r\n<p><strong>SDFG</strong></p>\r\n', '', '', '', '2022-04-16 17:41:06'),
(44, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'DD', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong><em>DONE...</em></strong></p>\r\n', '', '', '', '2022-04-16 17:42:56'),
(45, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'DD', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Done...</p>\r\n\r\n<p><em><strong>THANK YOU...</strong></em></p>\r\n', '', '', '', '2022-04-16 17:44:04'),
(46, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'DD', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong><em>FESGR</em></strong></p>\r\n', '', '', '', '2022-04-16 17:45:56'),
(47, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'sdhfgkjkl', 'adsfdgfhj', '', '', '', '2022-04-20 04:16:18'),
(48, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'adsfrdtjykuli;', 'zfsgdxfhcgjkjlk;l\';\'', '', '', '', '2022-04-20 04:17:39'),
(49, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'eretrtyu', 'wsgdfhjb', '', '', '', '2022-04-20 08:19:15'),
(50, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'sdfgbn', '<p>dfgh</p>\r\n', '', '', '', '2022-04-22 06:50:10'),
(51, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'ADSFG', '', '', '', '', '2022-04-22 07:26:56'),
(52, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample', '<p>sdfgh</p>\r\n', '', '', '', '2022-04-22 13:09:18'),
(53, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '', '', '', '', '2022-04-22 13:23:38'),
(54, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<p>wfgdfghj</p>\r\n', '', '', '', '2022-04-22 13:25:26'),
(55, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<p><em>ASDFGHJ</em></p>\r\n\r\n<p><em>R<strong>WAESRDYTUFYIU</strong></em></p>\r\n', '', '', '', '2022-04-22 13:26:12'),
(56, 'karthikeyan@swift.com', 'vsa.vsarun@swift.com', 'kokspam@swift.com', 'Sample 123', '<p><em><strong>HI,</strong></em></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>3</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '2022-04-22 14:19:55'),
(57, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '', '', '', '', '2022-04-22 15:40:12'),
(58, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '', '', '', '', '2022-04-22 15:43:27'),
(59, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '', '', '', '', '2022-04-22 15:44:36'),
(60, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '<p>A<em>SD</em><strong>FG</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>FSZGD</td>\r\n			<td>ADFSGD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>da</td>\r\n			<td>DA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Daf</td>\r\n			<td>FSG</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '2022-04-22 16:15:37'),
(61, 'kokspam@swift.com', 'kokspam@swift.com', '', 'QEWRT', '', '', '', '', '2022-04-22 16:16:33'),
(62, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'AWESJ', '<p>sadsfg</p>\r\n\r\n<p>earfsgdhfjg.astzd&nbsp; zsdggxfh</p>\r\n', '', '', '', '2022-04-22 16:17:09'),
(63, 'kokspam@swift.com', 'kokspam@swift.com', 'kokspam@swift.com', 'Sample 123', '', '', '', '', '2022-04-22 16:30:01'),
(64, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '<p>AGEHR W4RHE&nbsp; 535Y&nbsp; 4 UY</p>\r\n\r\n<p>Y 45HS&nbsp; &nbsp; 3 55 Y5&nbsp; &nbsp;J 3NR 3RKJNR&nbsp; &nbsp; JHVH&nbsp;</p>\r\n', '', '', '', '2022-04-22 19:43:42'),
(65, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '<p>sdfghg y35e&nbsp; &nbsp; &nbsp; &nbsp; 3bjhbik kn&nbsp; &nbsp;ikjuhwuhuo</p>\r\n\r\n<p>edugwiek&nbsp; &nbsp;lihuihujb&nbsp; &nbsp; kihujh&nbsp; &nbsp; uhdhweuohweuoh</p>\r\n', '', '', '', '2022-04-22 20:07:44'),
(66, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'ASDFGH', '<p>SQWER&nbsp; &nbsp; &nbsp; &nbsp; eiiu oijon&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>iuhiuhio&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ijoiji&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;jijiji&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ikjoii</p>\r\n\r\n<p>uhiuhho&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; oijioj&nbsp; &nbsp; &nbsp; dws</p>\r\n', '', '', '', '2022-04-22 20:13:03'),
(67, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '<p><em>dgtfhj</em></p>\r\n\r\n<p><strong>sadfg</strong></p>\r\n', '', '', '', '2022-04-22 20:48:30'),
(68, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'beginners-guide-meditation-1-1.jpg', 'image/jpeg', 0x433a77616d703634096d707068703544372e746d70, '2022-04-23 09:38:07'),
(69, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'ARUN_AMMAR_OUVES Capstone review - 1-signed.pdf', '', '', '2022-04-23 10:41:18'),
(70, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870354345462e746d70, '2022-04-23 10:44:01'),
(71, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'ARUN_AMMAR_OUVES Capstone review - 1-signed.pdf', '', '', '2022-04-23 10:45:06'),
(72, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870443633432e746d70, '2022-04-23 10:54:22'),
(73, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'ARUN_AMMAR_OUVES Capstone review - 1-signed.pdf', '', '', '2022-04-23 11:21:35'),
(74, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'ARUN_AMMAR_OUVES Capstone review - 1-signed.pdf', '', '', '2022-04-23 11:23:09'),
(75, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'ARUN_AMMAR_OUVES Capstone review - 1-signed.pdf', '', '', '2022-04-23 11:23:48'),
(76, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870413937382e746d70, '2022-04-23 11:29:08'),
(77, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870393236322e746d70, '2022-04-23 11:30:08'),
(78, 'vsa.vsarun@swift.com', '', '', '', '', '', '', '', '2022-04-23 11:31:49'),
(79, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'VSA OSP DA-3.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0x433a77616d703634096d70706870384137412e746d70, '2022-04-23 11:32:17'),
(80, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870363030442e746d70, '2022-04-23 11:50:40'),
(81, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'beginners-guide-meditation-1-1.jpg', 'image/jpeg', 0x433a77616d703634096d70706870443836432e746d70, '2022-04-23 11:54:27'),
(82, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870423245412e746d70, '2022-04-23 11:56:29'),
(83, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870314646462e746d70, '2022-04-23 12:14:25'),
(84, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 13:19:06'),
(85, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'dc', '', '', '', '', '2022-04-23 16:51:33'),
(86, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'DD', '', '', '', '', '2022-04-23 16:52:07'),
(87, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 16:54:21'),
(88, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 16:58:39'),
(89, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 17:04:23'),
(90, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p>zxcvw 2r&nbsp;</p>\r\n\r\n<p>4eryhtg</p>\r\n', '', '', '', '2022-04-23 17:05:27'),
(91, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-04-23 19:06:08'),
(92, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870383444342e746d70, '2022-04-23 19:12:06'),
(93, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'DOC', '', 'VSA OSP DA-3.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0x433a77616d703634096d70706870434630352e746d70, '2022-04-23 19:17:53'),
(94, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'DD', '', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870443341302e746d70, '2022-04-23 19:20:05'),
(95, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'DRAFT TEST', '<p>Sample...</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870353338342e746d70, '2022-04-23 19:41:23'),
(96, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '', '', '', '', '2022-04-23 20:00:31'),
(97, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample 123', '', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870424436412e746d70, '2022-04-23 20:06:57'),
(98, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '', '', '', '', '2022-04-24 20:59:28'),
(99, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p>Hello <strong>WORLD</strong>...</p>\r\n\r\n<p>Just a sample message...</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870393139452e746d70, '2022-04-25 05:42:55'),
(100, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample guide', '<p>dgajddffdede</p>\r\n', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870334542342e746d70, '2022-04-26 07:00:35'),
(101, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'DD', '<p>cgvcvgfbcvvc cvgf</p>\r\n', '', '', '', '2022-04-26 07:02:08'),
(102, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p>daxdcdcdcssdfs</p>\r\n', '', '', '', '2022-04-26 07:05:17'),
(103, 'kalyan@swift.com', 'vsa.vsarun@swift.com', 'kokspam@swift.com', 'KALYAN SAMPLE', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>QDWFEGRD</td>\r\n			<td>WEGR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WREGR</td>\r\n			<td>WRER</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RWE</td>\r\n			<td>RWE</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>SAMPLE...</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870323433302e746d70, '2022-04-28 15:18:12'),
(104, 'kokspam@swift.com', 'kalyan@swift.com', 'kalyan@swift.com', 'KOK', '<p><strong>JWAIUVRUJD</strong></p>\r\n\r\n<p><em>QEFARGAER</em></p>\r\n\r\n<p><em>WEGEARHEHTSETH</em></p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870453739422e746d70, '2022-04-28 15:20:08'),
(105, 'kalyan@swift.com', 'kalyan@swift.com', 'kalyan@swift.com', 'DD', '<p>qwfegrhgfmhj</p>\r\n', '', '', '', '2022-04-28 15:22:09'),
(106, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p><em><strong>Draft </strong></em>sample text...</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870354537462e746d70, '2022-04-30 10:05:23'),
(107, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'DD', '<p><em><strong>WORLD...</strong></em></p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870394631462e746d70, '2022-04-30 10:06:45'),
(108, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p><em><strong>Hello...</strong></em></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>uk</td>\r\n			<td>dfb</td>\r\n		</tr>\r\n		<tr>\r\n			<td>rgd</td>\r\n			<td>erg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>rg</td>\r\n			<td>erg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870384346412e746d70, '2022-05-05 10:31:03'),
(109, 'vsa.vsarun@swift.com', 'ammar@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p>Sample...</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870423930352e746d70, '2022-05-05 10:39:59'),
(110, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', 'Sample', '<p>asDFGVBMWAESHFGC&nbsp;</p>\r\n', '', '', '', '2022-05-08 13:37:05'),
(111, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', '', '', '', '', '', '', '2022-05-08 13:41:22'),
(112, 'sundar@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'SUNDAR', '<p><em><strong>HI HELLO...</strong></em></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '1.jpg', 'image/jpeg', 0x433a77616d703634096d70706870423930302e746d70, '2022-05-08 14:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `swift_mail_user`
--

DROP TABLE IF EXISTS `swift_mail_user`;
CREATE TABLE IF NOT EXISTS `swift_mail_user` (
  `smu_fname` varchar(50) NOT NULL,
  `smu_lname` varchar(50) NOT NULL,
  `swift_id` varchar(10) NOT NULL,
  `smu_dob` date NOT NULL,
  `smu_cnum` varchar(10) NOT NULL,
  `smu_mail` varchar(50) NOT NULL,
  `smu_pass` varchar(15) NOT NULL,
  `smu_id` double NOT NULL AUTO_INCREMENT,
  `smu_reg_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`smu_mail`),
  UNIQUE KEY `smu_id` (`smu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_mail_user`
--

INSERT INTO `swift_mail_user` (`smu_fname`, `smu_lname`, `swift_id`, `smu_dob`, `smu_cnum`, `smu_mail`, `smu_pass`, `smu_id`, `smu_reg_dt`) VALUES
('ARUN', 'VS', 'SW001', '2001-09-20', '9638527410', 'vsa.vsarun@swift.com', 'Aa123.', 1, '0000-00-00 00:00:00'),
('SRI', 'KOKILA', 'SW002', '2001-07-05', '6382835007', 'kokspam@swift.com', 'Bb123.', 2, '2022-03-22 04:37:35'),
('AMMAR', 'MALACK', 'SW003', '2000-11-16', '8870803615', 'ammar@swift.com', 'Aa123.', 3, '2022-03-26 06:53:19'),
('OUVES', 'MK', 'SW004', '2002-07-26', '9638527410', 'ouvesmk@swift.com', 'Aa123.', 4, '2022-03-29 04:51:51'),
('Sundar', 'K', 'SW015', '2001-11-24', '8110022918', 'sundar@swift.com', 'Aa123.', 16, '2022-05-08 13:57:27'),
('KALYAN', 'S', 'SW005', '2001-12-02', '9638527410', 'kalyan@swift.com', 'Aa123.', 15, '2022-04-28 15:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `swift_sent`
--

DROP TABLE IF EXISTS `swift_sent`;
CREATE TABLE IF NOT EXISTS `swift_sent` (
  `ss_id` int(10) NOT NULL AUTO_INCREMENT,
  `ss_from` varchar(50) NOT NULL,
  `ss_to` varchar(50) NOT NULL,
  `ss_cc` varchar(50) NOT NULL,
  `ss_sub` varchar(250) NOT NULL,
  `ss_msg` varchar(1000) NOT NULL,
  `ss_file` varchar(500) NOT NULL,
  `ss_file_type` varchar(500) NOT NULL,
  `ss_file_blob` blob NOT NULL,
  `ss_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_sent`
--

INSERT INTO `swift_sent` (`ss_id`, `ss_from`, `ss_to`, `ss_cc`, `ss_sub`, `ss_msg`, `ss_file`, `ss_file_type`, `ss_file_blob`, `ss_dt`) VALUES
(8, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'From Ammar', '<p>Sample...</p>\r\n', '', '', '', '2022-03-28 22:15:26'),
(9, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'Sample from Ammar', '<p>SAMPLE</p>\r\n', '', '', '', '2022-03-28 22:20:33'),
(10, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'Sample', '<p>ascsd</p>\r\n', '', '', '', '2022-03-28 22:23:41'),
(11, 'mm.ammar@swift.com', 'kokspam@swift.com', '', 'qwfcqwas', '<p>xsas</p>\r\n', '', '', '', '2022-03-28 22:23:49'),
(98, 'kokspam@swift.com', 'kalyan@swift.com', 'kalyan@swift.com', 'KOK', '<p><strong>JWAIUVRUJD</strong></p>\r\n\r\n<p><em>QEFARGAER</em></p>\r\n\r\n<p><em>WEGEARHEHTSETH</em></p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870453739422e746d70, '2022-04-28 15:20:08'),
(15, 'mm.ammar@swift.com', 'vsa.vsarun@swift.com', 'kokspam@swift.com', 'DRAFT TEST', '<p>WFwefe</p>\r\n', '', '', '', '2022-03-29 04:37:51'),
(16, 'ouvesmk@swift.com', 'kokspam@swift.com', 'mm.ammar@swift.com', 'NEW ENTRY...', '<p>HI HELLO,</p>\r\n\r\n<p>I AM OUVES...</p>\r\n', '', '', '', '2022-03-29 04:52:35'),
(17, 'mm.ammar@swift.com', 'mm.ammar@swift.com', 'kokspam@swift.com', 'Sample', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '2022-03-29 05:44:36'),
(103, 'vsa.vsarun@swift.com', 'ammar@swift.com', 'vsa.vsarun@swift.com', 'DRAFT TEST', '<p>Sample...</p>\r\n', 'AA.jpg', 'image/jpeg', 0x433a77616d703634096d70706870423930352e746d70, '2022-05-05 10:39:59'),
(93, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample', '<p>Hello <strong>WORLD</strong>...</p>\r\n\r\n<p>Just a sample message...</p>\r\n', 'download.pdf', 'application/pdf', 0x433a77616d703634096d70706870393139452e746d70, '2022-04-25 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `swift_trash`
--

DROP TABLE IF EXISTS `swift_trash`;
CREATE TABLE IF NOT EXISTS `swift_trash` (
  `st_id` int(10) NOT NULL AUTO_INCREMENT,
  `st_from` varchar(50) NOT NULL,
  `st_to` varchar(50) NOT NULL,
  `st_cc` varchar(50) NOT NULL,
  `st_sub` varchar(250) NOT NULL,
  `st_msg` varchar(1000) NOT NULL,
  `st_file` varchar(500) NOT NULL,
  `st_file_type` varchar(500) NOT NULL,
  `st_file_blob` blob NOT NULL,
  `st_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `st_rec_dt` varchar(50) NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_trash`
--

INSERT INTO `swift_trash` (`st_id`, `st_from`, `st_to`, `st_cc`, `st_sub`, `st_msg`, `st_file`, `st_file_type`, `st_file_blob`, `st_dt`, `st_rec_dt`) VALUES
(49, 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'vsa.vsarun@swift.com', 'Sample guide', '<p>dgajddffdede</p>\r\n', 'AAA (1).png', 'image/png', 0x433a77616d703634096d70706870334542342e746d70, '2022-04-26 07:00:55', '2022-04-26 12:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `swift_user`
--

DROP TABLE IF EXISTS `swift_user`;
CREATE TABLE IF NOT EXISTS `swift_user` (
  `swift_id` varchar(5) NOT NULL,
  `su_name` varchar(100) NOT NULL,
  `su_dob` date NOT NULL,
  `su_gender` varchar(20) NOT NULL,
  `su_city` varchar(50) NOT NULL,
  `su_state` varchar(50) NOT NULL,
  `su_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`swift_id`),
  UNIQUE KEY `su_id` (`su_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swift_user`
--

INSERT INTO `swift_user` (`swift_id`, `su_name`, `su_dob`, `su_gender`, `su_city`, `su_state`, `su_id`) VALUES
('SW002', 'VS ARUN', '2022-03-09', 'MALE', 'SALEM', 'TAMILNADU', 17),
('SW001', 'SRI KOKILA', '2022-03-18', 'FEMALE', 'VELLORE', 'TAMILNADU', 14),
('SW003', 'AMMAR AA', '2001-11-16', 'MALE', 'EARTH', 'SOLAR SYSTEM', 25),
('SW004', 'MK OUVES', '2002-07-26', 'MALE', 'EARTH', 'SOLAR SYSTEM', 26),
('SW015', 'SUNDAR', '2022-05-11', 'MALE', 'EARTH', 'SOLAR SYSTEM', 33),
('SW007', 'AMMAR MM', '2022-05-13', 'MALE', 'Salem', 'TAMILNADU', 32);

-- --------------------------------------------------------

--
-- Table structure for table `trial`
--

DROP TABLE IF EXISTS `trial`;
CREATE TABLE IF NOT EXISTS `trial` (
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
