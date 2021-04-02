-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 172.16.2.3:3306
-- Generation Time: Mar 26, 2021 at 03:03 PM
-- Server version: 10.3.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pearlpre_demo_instance1`
--
CREATE DATABASE IF NOT EXISTS `pearlpre_demo_instance1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pearlpre_demo_instance1`;

-- --------------------------------------------------------

--
-- Table structure for table `codes_current`
--

CREATE TABLE `codes_current` (
  `code_id` int(7) NOT NULL,
  `idemployee` int(11) NOT NULL,
  `idsession` int(11) NOT NULL,
  `idleader` int(11) NOT NULL,
  `date` date NOT NULL,
  `idsystem_codes` int(11) NOT NULL DEFAULT 5,
  `devplan` int(1) DEFAULT NULL,
  `devassign_id` int(7) DEFAULT NULL,
  `turnoverprobability` int(3) DEFAULT NULL,
  `currperfappraisal` int(11) DEFAULT NULL,
  `competency_version` int(11) DEFAULT NULL,
  `comp1_code` int(1) UNSIGNED DEFAULT 5,
  `comp2_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp3_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp4_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp5_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp6_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp7_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp8_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp9_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp10_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp11_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp12_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp13_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp14_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `comp15_code` int(1) UNSIGNED ZEROFILL DEFAULT 5,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `codes_current`
--

INSERT INTO `codes_current` (`code_id`, `idemployee`, `idsession`, `idleader`, `date`, `idsystem_codes`, `devplan`, `devassign_id`, `turnoverprobability`, `currperfappraisal`, `competency_version`, `comp1_code`, `comp2_code`, `comp3_code`, `comp4_code`, `comp5_code`, `comp6_code`, `comp7_code`, `comp8_code`, `comp9_code`, `comp10_code`, `comp11_code`, `comp12_code`, `comp13_code`, `comp14_code`, `comp15_code`, `modified_date`) VALUES
(1, 3, 5, 21, '2010-06-21', 2, 0, 11, 100, 2, 1, 5, 2, 1, 2, 2, 1, 2, 1, 2, 2, 2, 2, 2, 1, 2, '2021-02-23 19:46:16'),
(2, 4, 5, 21, '2010-06-16', 2, 0, NULL, 20, 2, 1, 2, 2, 2, 3, 3, 2, 3, 2, 2, 3, 2, 2, 3, 3, 2, '2014-01-28 14:15:57'),
(3, 5, 5, 21, '2010-06-16', 2, 0, NULL, 40, 2, 1, 2, 2, 1, 3, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, '2014-01-28 14:16:28'),
(4, 6, 5, 21, '2010-06-16', 2, 0, NULL, 100, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, '2014-01-28 14:16:23'),
(5, 7, 5, 21, '2010-06-16', 2, 1, 13, 10, 2, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 2, 3, 3, 2, 2, 2, '2014-01-29 17:23:58'),
(6, 8, 5, 21, '2010-06-17', 3, 0, NULL, 50, 3, 1, 3, 3, 3, 3, 3, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, '2014-01-28 14:16:02'),
(7, 9, 5, 21, '2010-06-17', 2, 0, NULL, 60, 2, 1, 2, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, '2014-01-28 14:16:55'),
(8, 10, 5, 21, '2010-06-17', 2, 0, NULL, 90, 3, 1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 1, 2, '2014-01-28 14:16:58'),
(9, 11, 5, 21, '2010-06-17', 2, 0, NULL, 40, 3, 1, 2, 2, 2, 3, 2, 2, 2, 2, 1, 2, 2, 1, 3, 2, 3, '2014-01-28 14:17:02'),
(10, 12, 5, 21, '2010-06-17', 4, 0, NULL, 100, 4, 1, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 4, 3, 3, '2014-04-16 13:37:47'),
(11, 13, 5, 21, '2010-06-16', 2, 0, 14, 0, 3, 1, 2, 2, 2, 2, 2, 3, 2, 3, 2, 1, 2, 2, 1, 2, 2, '2020-10-24 06:34:06'),
(12, 16, 5, 21, '2010-06-16', 1, 0, NULL, 100, 2, 1, 1, 2, 1, 2, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 2, '2014-01-28 14:17:12'),
(13, 17, 5, 21, '2010-06-17', 2, 0, NULL, 50, 1, 1, 1, 2, 2, 3, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, '2014-01-28 14:17:16'),
(14, 18, 5, 21, '2010-06-17', 3, 1, 12, 50, 4, 1, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, '2014-01-29 15:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `financials`
--

CREATE TABLE `financials` (
  `idfinancials` int(6) NOT NULL,
  `type` varchar(12) NOT NULL,
  `idsession` int(11) NOT NULL,
  `period` varchar(15) NOT NULL,
  `value` decimal(12,0) NOT NULL,
  `forecast_green` int(3) DEFAULT NULL,
  `forecast_blue` int(3) DEFAULT NULL,
  `forecast_yellow` int(3) DEFAULT NULL,
  `forecast_red` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `financials`
--

INSERT INTO `financials` (`idfinancials`, `type`, `idsession`, `period`, `value`, `forecast_green`, `forecast_blue`, `forecast_yellow`, `forecast_red`) VALUES
(8, 'revenue', 5, 'current', 80, 5, 15, 73, 7),
(9, 'netincome', 5, 'current', 4, 10, 25, 64, 1),
(10, 'revenue', 5, '12month', 100, 30, 30, 39, 1),
(11, 'netincome', 5, '12month', 10, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_targets`
--

CREATE TABLE `session_targets` (
  `idtarget` int(6) NOT NULL,
  `idsession` int(11) NOT NULL,
  `idleader` int(11) NOT NULL,
  `sp_target` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session_targets`
--

INSERT INTO `session_targets` (`idtarget`, `idsession`, `idleader`, `sp_target`) VALUES
(5, 2, 800001, NULL),
(6, 5, 21, 35);

-- --------------------------------------------------------

--
-- Table structure for table `system_codes`
--

CREATE TABLE `system_codes` (
  `idsystem_codes` int(11) NOT NULL,
  `codename` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codenumeric` int(11) NOT NULL,
  `codedescription` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codedefinition` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_codes`
--

INSERT INTO `system_codes` (`idsystem_codes`, `codename`, `codenumeric`, `codedescription`, `codedefinition`) VALUES
(0, 'TN', 0, NULL, ''),
(1, 'RED', 1, NULL, ''),
(2, 'YELLOW', 2, NULL, ''),
(3, 'BLUE', 3, NULL, ''),
(4, 'GREEN', 4, NULL, ''),
(5, 'NONE', 5, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes_current`
--
ALTER TABLE `codes_current`
  ADD PRIMARY KEY (`code_id`),
  ADD KEY `fk_codes_current_employee` (`idemployee`),
  ADD KEY `fk_codes_current_system_codes1` (`idsystem_codes`),
  ADD KEY `fk_codes_current_session` (`idsession`),
  ADD KEY `fk_codes_current_devassign_id` (`devassign_id`);

--
-- Indexes for table `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`idfinancials`);

--
-- Indexes for table `session_targets`
--
ALTER TABLE `session_targets`
  ADD PRIMARY KEY (`idtarget`);

--
-- Indexes for table `system_codes`
--
ALTER TABLE `system_codes`
  ADD PRIMARY KEY (`idsystem_codes`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes_current`
--
ALTER TABLE `codes_current`
  MODIFY `code_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `financials`
--
ALTER TABLE `financials`
  MODIFY `idfinancials` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session_targets`
--
ALTER TABLE `session_targets`
  MODIFY `idtarget` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
