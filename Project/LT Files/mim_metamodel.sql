-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mim_metamodel`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_066` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_069` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_072` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_075` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_077` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_084` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_087` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_088` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_089` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_090` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_091` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_092` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_093` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_094` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_095` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_096` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_010`, `ATT_011`, `ATT_013`, `ATT_021`, `ATT_066`, `ATT_069`, `ATT_072`, `ATT_075`, `ATT_077`, `ATT_084`, `ATT_087`, `ATT_088`, `ATT_089`, `ATT_090`, `ATT_091`, `ATT_092`, `ATT_093`, `ATT_094`, `ATT_095`, `ATT_096`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Actor_BAYoD30', '', 'Actor0', '', 'Null', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'admin', '2022-07-30', '14:31:35', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:31:35'),
(2, 'Actor_j38ItV1', '', 'Actor1', '', 'Null', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'admin', '2022-07-30', '14:31:37', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:31:37'),
(3, 'Actor_9Ts1W72', '', 'Actor2', '', 'Null', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'admin', '2022-07-30', '14:31:39', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `aggregation`
--

CREATE TABLE `aggregation` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_function`
--

CREATE TABLE `application_function` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_interface`
--

CREATE TABLE `application_interface` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `architecture_state`
--

CREATE TABLE `architecture_state` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` date DEFAULT NULL,
  `ATT_035` date DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `architecture_state`
--

INSERT INTO `architecture_state` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_010`, `ATT_014`, `ATT_020`, `ATT_023`, `ATT_025`, `ATT_031`, `ATT_033`, `ATT_034`, `ATT_035`, `ATT_036`, `ATT_037`, `ATT_038`, `ATT_039`, `ATT_040`, `ATT_041`, `ATT_042`, `ATT_043`, `ATT_044`, `ATT_045`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Architecture State_9gSWvt0', '', 'ArchState0', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:11', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:11'),
(2, 'Architecture State_bOgXO81', '', 'ArchState1', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:12', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:12'),
(3, 'Architecture State_EAQFI92', '', 'ArchState2', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:14', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:14'),
(4, 'Architecture State_uT9Mm43', '', 'ArchState3', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:24', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:24'),
(5, 'Architecture State_JnMCkM4', '', 'ArchState4', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:25', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:25'),
(6, 'Architecture State_ECSNO55', '', 'ArchState5', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1', 'admin', '2022-07-30', '14:52:28', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-30 09:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `arm`
--

CREATE TABLE `arm` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `association`
--

CREATE TABLE `association` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `association`
--

INSERT INTO `association` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Gap Test_X_Business_Application_kXXGcN0', 'Gap Test', 'Business_Application_kXXGcN0', '', '', '1', NULL, '2022-07-30 08:36:33'),
(2, 'Gap Test2_X_Business_Application_kXXGcN', 'Gap Test2---Gap', 'Business_Application_kXXGcN', '', '', '1', NULL, '2022-07-30 08:38:19'),
(3, 'Gap Test2_X_Business_Application_kXXG', 'Gap Test2---Gap', 'Business_Application_kXXG', '', '', '1', NULL, '2022-07-30 08:38:25'),
(4, 'Gap Test2_X_Business_Application_kXXG1', 'Gap Test2---Gap', 'Business_Application_kXXG1', '', '', '1', NULL, '2022-07-30 08:38:39'),
(5, 'Gap Test2_X_Business_Application_kXXG1i', 'Gap Test2---Gap', 'Business_Application_kXXG1i', '', '', '1', NULL, '2022-07-30 08:47:31'),
(6, 'Gap Test2_X_Business_Application_kXXG1iu', 'Gap Test2---Gap', 'Business_Application_kXXG1iu', '', '', '1', NULL, '2022-07-30 08:48:37'),
(7, 'Gap Test2_X_Business_Application_kXXG1iup', 'Gap Test2---Gap', 'Business_Application_kXXG1iup', '', '', '1', NULL, '2022-07-30 08:48:43'),
(8, 'Actor_BAYoD30_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:13'),
(9, 'Actor_j38ItV1_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:13'),
(10, 'Actor_9Ts1W72_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:13'),
(11, 'Actor_BAYoD30_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:34'),
(12, 'Actor_j38ItV1_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:34'),
(13, 'Actor_9Ts1W72_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:34'),
(14, 'Actor_9Ts1W72_X_Business_Application_YmJa2532v', 'Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:34'),
(15, 'Actor_j38ItV1_X_Business_Application_YmJa2532v', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:47'),
(16, 'Actor_9Ts1W72_X_Business_Application_YmJa2532v', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:47'),
(17, 'Actor_9Ts1W72_X_Business_Application_YmJa2532v', 'Actor_9Ts1W72---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:47'),
(18, 'Actor_BAYoD30_X_Business_Application_YmJa2532v', 'Actor_BAYoD30---Actor', 'Business_Application_YmJa2532v', '', '', '1', NULL, '2022-07-30 09:32:47'),
(19, 'Actor_j38ItV1_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:17:44'),
(20, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:17:44'),
(21, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:17:44'),
(22, 'Actor_BAYoD30_X_Business_Application_YmJa253', 'Actor_BAYoD30---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:17:44'),
(23, 'Actor_j38ItV1_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:11'),
(24, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:11'),
(25, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:11'),
(26, 'Actor_BAYoD30_X_Business_Application_YmJa253', 'Actor_BAYoD30---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:11'),
(27, 'Actor_j38ItV1_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:36'),
(28, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:36'),
(29, 'Actor_9Ts1W72_X_Business_Application_YmJa253', 'Actor_9Ts1W72---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:36'),
(30, 'Actor_BAYoD30_X_Business_Application_YmJa253', 'Actor_BAYoD30---Actor', 'Business_Application_YmJa253', '', '', '1', NULL, '2022-08-01 13:19:36'),
(31, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:18'),
(32, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:18'),
(33, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:18'),
(34, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:33'),
(35, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:33'),
(36, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:33'),
(37, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:33'),
(38, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:43'),
(39, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:43'),
(40, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:43'),
(41, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:43'),
(42, 'Actor_9Ts1W72_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:43'),
(43, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:56'),
(44, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:57'),
(45, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:57'),
(46, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:57'),
(47, 'Actor_9Ts1W72_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:57'),
(48, 'Actor_9Ts1W72_X_hussain1', 'Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:22:57'),
(49, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(50, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(51, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(52, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(53, 'Actor_9Ts1W72_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(54, 'Actor_9Ts1W72_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(55, 'Actor_j38ItV1_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:11'),
(56, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(57, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(58, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(59, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(60, 'Actor_9Ts1W72_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(61, 'Actor_9Ts1W72_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(62, 'Actor_j38ItV1_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(63, 'Actor_BAYoD30_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:23:22'),
(64, 'Actor_BAYoD30_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(65, 'Actor_j38ItV1_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(66, 'Actor_9Ts1W72_X_hussain1', 'Actor_BAYoD30---Actor,Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(67, 'Actor_j38ItV1_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(68, 'Actor_9Ts1W72_X_hussain1', 'Actor_j38ItV1---Actor,Actor_9Ts1W72---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(69, 'Actor_9Ts1W72_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(70, 'Actor_j38ItV1_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(71, 'Actor_BAYoD30_X_hussain1', 'Actor_9Ts1W72---Actor,Actor_j38ItV1---Actor,Actor_BAYoD30---Actor', 'hussain1', '', '', '1', NULL, '2022-08-01 13:25:41'),
(72, 'Gap Test2_X_Business_Application_kXXG1iup', 'Gap Test2---Gap', 'Business_Application_kXXG1iup', '', '', '1', NULL, '2022-08-01 13:40:58'),
(73, 'Gap Test2_X_Business_Application_kXXG1iup22', 'Gap Test2---Gap', 'Business_Application_kXXG1iup22', '', '', '1', NULL, '2022-08-04 07:57:16'),
(74, 'Gap Test2_X_Business_Application_kXXG1', 'Gap Test2---Gap', 'Business_Application_kXXG1', '', '', '1', NULL, '2022-08-04 07:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `attributes_information`
--

CREATE TABLE `attributes_information` (
  `id` int(10) NOT NULL,
  `Element_Name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Attribute_Type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Target_Rel_Element` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Source_Rel_Element` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Self_Generated_Attribute` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Actual_Attribute` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Is_Grouped` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Group_Style` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Group_Caption` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Attribute_Format` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Page_Number` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Page_Title` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Is_Page_Grouped` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Group_Page_Title` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Group_Page_ID` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Allowable_Values` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Attribute_Tip` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Bidirection_Relationship_Pair` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Single_or_Multiple` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Maximum_Number_of_Object_Occurrence` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Relationship` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Relationship_Overload_Text` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes_information`
--

INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(2, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(3, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(4, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(5, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core System;Support System', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(6, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Version', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(7, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Access URL', 'No', 'N/A', 'N/A', 'URL', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(8, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Service Channel', 'No', 'N/A', 'N/A', 'Multi List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Web;Mobile App;Mobile Web;Client Server;Kiosk;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(9, 'Business_Application', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00339', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(10, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Is Standard?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(11, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(12, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(13, 'Business_Application', 'Relationship', 'N/A', 'Actor', 'ATT_013', 'Business Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00001', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(14, 'Business_Application', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00002', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-07-26 12:58:35'),
(15, 'Business_Application', 'Relationship', 'N/A', 'Actor', 'ATT_015', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00003', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-07-26 12:58:35'),
(16, 'Business_Application', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_016', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00004', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(17, 'Business_Application', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_017', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00005', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(18, 'Business_Application', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_018', 'Beneficiary', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00006', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(19, 'Business_Application', 'Relationship', 'National_Program', 'N/A', 'ATT_019', 'National Programs', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00007', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(20, 'Business_Application', 'Relationship', 'Actor', 'N/A', 'ATT_020', 'Name of Vendor', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00360', 'Single', 'N/A', 'Association', 'Provided by', '1', NULL, '2022-07-26 12:58:35'),
(21, 'Business_Application', 'Relationship', 'Location', 'N/A', 'ATT_021', 'Locations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00363', 'Multiple', 'Unlimited', 'Association', 'Deployed on', '1', NULL, '2022-07-26 12:58:35'),
(22, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(23, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Functional Adequacy', 'Yes', 'Simple', 'Functional Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(24, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Speed to Market', 'Yes', 'Simple', 'Functional Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(25, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Data Management', 'Yes', 'Simple', 'Functional Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(26, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Integration', 'Yes', 'Simple', 'Functional Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(27, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Application Security', 'Yes', 'Simple', 'Functional Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(28, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Performance and Scalability', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(29, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Availability/Reliability', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(30, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Maintainability', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(31, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Implementation', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(32, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Customizability', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(33, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Usability', 'Yes', 'Simple', 'Technical Perspective', 'Number', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(34, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Note on Maturity', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Maturity', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(35, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Development Type', 'No', 'N/A', 'N/A', 'List', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;COTS-Customized;COTS-Configured;Outsourcing Development;In-House Development;Unknown', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(36, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Availability', 'No', 'N/A', 'N/A', 'List', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(37, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Confidentiality', 'No', 'N/A', 'N/A', 'List', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(38, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Total Development Cost', 'No', 'N/A', 'N/A', 'Number', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(39, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Annual Maintenance Cost', 'No', 'N/A', 'N/A', 'Number', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(40, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(41, 'Business_Application', 'Relationship', 'Service_Contract', 'N/A', 'ATT_041', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00202', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(42, 'Business_Application', 'Relationship', 'N/A', 'Principle', 'ATT_042', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00008', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(43, 'Business_Application', 'Relationship', 'N/A', 'Risk', 'ATT_043', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00010', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(44, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(45, 'Business_Application', 'Relationship', 'Business_Service', 'N/A', 'ATT_045', 'Business Service', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00337', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(46, 'Business_Application', 'Relationship', 'Business_Capability', 'N/A', 'ATT_046', 'Realized Business Capability', 'Yes', 'Shared', 'Capability/Function/Process', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00361', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(47, 'Business_Application', 'Relationship', 'Business_Function', 'N/A', 'ATT_047', 'Realized Business Function', 'Yes', 'Shared', 'Capability/Function/Process', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00362', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(48, 'Business_Application', 'Relationship', 'Business_Process', 'N/A', 'ATT_048', 'Realized Business Process', 'Yes', 'Shared', 'Capability/Function/Process', 'Object', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00375', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(49, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(50, 'Business_Application', 'Relationship', 'N/A', 'Application_Function', 'ATT_050', 'Supporting Application Function', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00011', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(51, 'Business_Application', 'Relationship', 'ARM', 'N/A', 'ATT_051', 'ARM', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00012', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(52, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Note on Application', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(53, 'Business_Application', 'Relationship', 'Business_Application', 'N/A', 'ATT_053', 'Composed of Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00013', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(54, 'Business_Application', 'Relationship', 'N/A', 'Business_Application', 'ATT_054', 'Part of Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00013', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(55, 'Business_Application', 'Relationship', 'Business_Application', 'N/A', 'ATT_055', 'Aggregates Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00014', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(56, 'Business_Application', 'Relationship', 'N/A', 'Business_Application', 'ATT_056', 'Aggregated by Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00014', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(57, 'Business_Application', 'Relationship', 'Business_Application', 'N/A', 'ATT_057', 'Specialized Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00015', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(58, 'Business_Application', 'Relationship', 'N/A', 'Business_Application', 'ATT_058', 'Specialized by Business Applications', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00015', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(59, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_059', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(60, 'Business_Application', 'Relationship', 'Data', 'N/A', 'ATT_060', 'Business Data', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00016', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(61, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Note on Business Data', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(62, 'Business_Application', 'Relationship', 'GSB', 'N/A', 'ATT_062', 'GSB', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00358', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(63, 'Business_Application', 'Relationship', 'Application_Interface', 'N/A', 'ATT_063', 'Provided Interfaces', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00017', 'Multiple', 'Unlimited', 'Realization', 'Provides', '1', NULL, '2022-07-26 12:58:35'),
(64, 'Business_Application', 'Relationship', 'N/A', 'Application_Interface', 'ATT_064', 'Utilized Interfaces', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00018', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(65, 'Business_Application', 'Relationship', 'Business_Application', 'N/A', 'ATT_065', 'Information Flows to', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00019', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(66, 'Business_Application', 'Relationship', 'N/A', 'Business_Application', 'ATT_066', 'Information Flows From', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00019', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(67, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_067', 'Note on Information Flow', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(68, 'Business_Application', 'Relationship', 'N/A', 'Hardware', 'ATT_068', 'Hardware', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00020', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(69, 'Business_Application', 'Relationship', 'N/A', 'Software', 'ATT_069', 'Software', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00340', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(70, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_070', 'Customization Level', 'No', 'N/A', 'N/A', 'List', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'Null;N/A;Low;Medium;High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(71, 'Business_Application', 'Relationship', 'N/A', 'Technology_Node', 'ATT_071', 'Utilized Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00021', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(72, 'Business_Application', 'Relationship', 'Technology_Node', 'N/A', 'ATT_072', 'Deployed On Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00336', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-07-26 12:58:35'),
(73, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_073', 'Note on Technology', 'No', 'N/A', 'N/A', 'Rich Text', '11.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(74, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_074', 'Cloud Migration Strategy', 'No', 'N/A', 'N/A', 'List', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'Null;Yes;No;Already Adopted;Unknown', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(75, 'Business_Application', 'Relationship', 'Requirement', 'N/A', 'ATT_075', 'Addressed Requirements', 'No', 'N/A', 'N/A', 'Object', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00022', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(76, 'Business_Application', 'Relationship', 'N/A', 'Gap', 'ATT_076', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00023', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(77, 'Business_Application', 'Relationship', 'N/A', 'Digital_Project', 'ATT_077', 'Digital Project', 'No', 'N/A', 'N/A', 'Object', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00338', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(78, 'Business_Application', 'Relationship', 'N/A', 'Architecture_State', 'ATT_078', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00024', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(79, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_079', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '12.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(80, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_080', 'Object State', 'No', 'N/A', 'N/A', 'List', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Planned;Active;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(81, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_081', 'Start Date', 'No', 'N/A', 'N/A', 'Date', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(82, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_082', 'End Date', 'No', 'N/A', 'N/A', 'Date', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(83, 'Business_Application', 'Relationship', 'Business_Application', 'N/A', 'ATT_083', 'Replaced Business Applications', 'No', 'N/A', 'N/A', 'Object', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00025', 'Multiple', 'Unlimited', 'Association', 'Replaces', '1', NULL, '2022-07-26 12:58:35'),
(84, 'Business_Application', 'Relationship', 'N/A', 'Business_Application', 'ATT_084', 'Replaced by Business Applications', 'No', 'N/A', 'N/A', 'Object', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00025', 'Multiple', 'Unlimited', 'Association', 'Replaced by', '1', NULL, '2022-07-26 12:58:35'),
(85, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_085', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '13.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(86, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_086', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '14.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(87, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_087', '#', 'Yes', 'Tabular', 'Change History', 'Number', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(88, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_088', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(89, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_089', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(90, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_090', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(91, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_091', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(92, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_092', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(93, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_093', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(94, 'Business_Application', 'Primary', 'N/A', 'N/A', 'ATT_094', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '15.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(95, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(96, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(97, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(98, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(99, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Data Interface;Internal Service Interface;External Service Interface;User Experience Interface;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(100, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(101, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(102, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00147', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(103, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00148', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-07-26 12:58:35'),
(104, 'Application_Interface', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00149', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-07-26 12:58:35'),
(105, 'Application_Interface', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00150', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(106, 'Application_Interface', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00151', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(107, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(108, 'Application_Interface', 'Relationship', 'N/A', 'Principle', 'ATT_014', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00153', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(109, 'Application_Interface', 'Relationship', 'N/A', 'Risk', 'ATT_015', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00154', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(110, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(111, 'Application_Interface', 'Relationship', 'N/A', 'Business_Application', 'ATT_017', 'Provided by Business Application', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00017', 'Multiple', 'Unlimited', 'Realization', 'Provided by', '1', NULL, '2022-07-26 12:58:35'),
(112, 'Application_Interface', 'Relationship', 'Business_Application', 'N/A', 'ATT_018', 'Utilized by Business Application', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00018', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(113, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Applications', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Applications', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(114, 'Application_Interface', 'Relationship', 'Data', 'N/A', 'ATT_020', 'Exchanged Data', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00155', 'Multiple', 'Unlimited', 'Association', 'Exchanges', '1', NULL, '2022-07-26 12:58:35'),
(115, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Data', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(116, 'Application_Interface', 'Relationship', 'N/A', 'Software', 'ATT_022', 'Used Software', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00364', 'Multiple', 'Unlimited', 'Serving', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(117, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Transfer Mode', 'No', 'N/A', 'N/A', 'List', '6.0', 'Technology', 'No', 'N/A', 'N/A', 'Null;Synchronous;Asynchronous', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(118, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Transfer Type', 'No', 'N/A', 'N/A', 'List', '6.0', 'Technology', 'No', 'N/A', 'N/A', 'Null;File Transfer;Database Access;Remote Procedure Call;Message-based;Misc', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(119, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Note on Technology', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(120, 'Application_Interface', 'Relationship', 'Requirement', 'N/A', 'ATT_026', 'Addressed Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00156', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(121, 'Application_Interface', 'Relationship', 'N/A', 'Gap', 'ATT_027', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00157', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(122, 'Application_Interface', 'Relationship', 'N/A', 'Architecture_State', 'ATT_028', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00158', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(123, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(124, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(125, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_031', '#', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(126, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_032', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(127, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(128, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(129, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(130, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(131, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_037', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(132, 'Application_Interface', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(133, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(134, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(135, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(136, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(137, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(138, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(139, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(140, 'Application_Function', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00164', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(141, 'Application_Function', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00165', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(142, 'Application_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00166', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(143, 'Application_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00167', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(144, 'Application_Function', 'Relationship', 'National_Program', 'N/A', 'ATT_012', 'Assigned to National Program', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00168', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(145, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(146, 'Application_Function', 'Relationship', 'Business_Application', 'N/A', 'ATT_014', 'Supported Business Applications', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Business Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00011', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(147, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Note on Business Application', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Business Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(148, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_016', 'Composed of Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00159', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(149, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_017', 'Part of Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00159', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(150, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_018', 'Aggregates Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00160', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(151, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_019', 'Aggregated by Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00160', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(152, 'Application_Function', 'Relationship', 'Application_Function', 'N/A', 'ATT_020', 'Specializes Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00161', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(153, 'Application_Function', 'Relationship', 'N/A', 'Application_Function', 'ATT_021', 'Specialized by Application Functions', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00161', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(154, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(155, 'Application_Function', 'Relationship', 'N/A', 'Risk', 'ATT_023', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00335', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(156, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(157, 'Application_Function', 'Relationship', 'N/A', 'Gap', 'ATT_025', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00162', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(158, 'Application_Function', 'Relationship', 'N/A', 'Architecture_State', 'ATT_026', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00163', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(159, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(160, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '7.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(161, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_029', '#', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(162, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_030', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(163, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(164, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(165, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(166, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(167, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_035', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(168, 'Application_Function', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(169, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(170, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(171, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(172, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(173, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(174, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(175, 'ARM', 'Relationship', 'N/A', 'Business_Application', 'ATT_07', 'Business Applications', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Business Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00012', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(176, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Note on Business Applications', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Business Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(177, 'ARM', 'Relationship', 'ARM', 'N/A', 'ATT_09', 'Composed of ARM', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00134', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(178, 'ARM', 'Relationship', 'N/A', 'ARM', 'ATT_010', 'Part of ARM', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00134', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(179, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Note on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(180, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '4.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(181, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_013', '#', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(182, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_014', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(183, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(184, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(185, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(186, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(187, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_019', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(188, 'ARM', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(189, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(190, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(191, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(192, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(193, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core Process;Support Process;IT Process', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(194, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Automation Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Manual;Semi Automated;Fully Automated', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(195, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Average Execution Time', 'No', 'N/A', 'N/A', 'Number', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(196, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Escalation Method', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(197, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(198, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(199, 'Business_Process', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Process Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00031', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(200, 'Business_Process', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Process Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00032', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(201, 'Business_Process', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00033', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(202, 'Business_Process', 'Relationship', 'N/A', 'Role', 'ATT_014', 'Process Participant Roles', 'Yes', 'Shared', 'Process Participants', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00034', 'Multiple', 'Unlimited', 'Assignment', 'is Participated/Executed by', '1', NULL, '2022-07-26 12:58:35'),
(203, 'Business_Process', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_015', 'Process Participant Organization Units', 'Yes', 'Shared', 'Process Participants', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00089', 'Multiple', 'Unlimited', 'Assignment', 'is Participated/Executed by', '1', NULL, '2022-07-26 12:58:35'),
(204, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_016', 'Subordinate Processes', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00035', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(205, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_017', 'Superior Processes', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00035', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(206, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(207, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_019', 'Composed of Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00036', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(208, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_020', 'Part of Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00036', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(209, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_021', 'Aggregates Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00037', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(210, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_022', 'Aggregated by Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00037', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(211, 'Business_Process', 'Relationship', 'Business_Process', 'N/A', 'ATT_023', 'Specialized Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00038', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(212, 'Business_Process', 'Relationship', 'N/A', 'Business_Process', 'ATT_024', 'Specialized by Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00038', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(213, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Note on Process Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(214, 'Business_Process', 'Relationship', 'N/A', 'Goal', 'ATT_026', 'Process Performance Goals/Objectives', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00047', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(215, 'Business_Process', 'Relationship', 'N/A', 'Principle', 'ATT_027', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00039', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(216, 'Business_Process', 'Relationship', 'N/A', 'Risk', 'ATT_028', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00041', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(217, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Process Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(218, 'Business_Process', 'Relationship', 'Business_Capability', 'N/A', 'ATT_030', 'Realized Capabilities', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00042', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(219, 'Business_Process', 'Relationship', 'Business_Service', 'N/A', 'ATT_031', 'Realized Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00043', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(220, 'Business_Process', 'Relationship', 'Value_Chain', 'N/A', 'ATT_032', 'Realized Value Chains', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00044', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(221, 'Business_Process', 'Relationship', 'N/A', 'Business_Application', 'ATT_033', 'Realized by Business Application', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00375', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(222, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(223, 'Business_Process', 'Relationship', 'Data', 'N/A', 'ATT_035', 'Input Data', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00045', 'Multiple', 'Unlimited', 'Access', 'as Input', '1', NULL, '2022-07-26 12:58:35'),
(224, 'Business_Process', 'Relationship', 'Data', 'N/A', 'ATT_036', 'Output Data', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00046', 'Multiple', 'Unlimited', 'Access', 'as Output', '1', NULL, '2022-07-26 12:58:35'),
(225, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Note on Data', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(226, 'Business_Process', 'Relationship', 'N/A', 'Gap', 'ATT_038', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00183', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(227, 'Business_Process', 'Relationship', 'N/A', 'Architecture_State', 'ATT_039', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00184', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(228, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(229, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Strategic Importance', 'No', 'N/A', 'N/A', 'List', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Very Low;Low;Medium;High;Very High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(230, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Is Compliance Needed?', 'No', 'N/A', 'N/A', 'CheckBox', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(231, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Compliance Level', 'No', 'N/A', 'N/A', 'List', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Bad;Medium;Good;Excellent', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(232, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_044', 'IT Support', 'No', 'N/A', 'N/A', 'List', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;No Support;Low Support;Moderate Support;High Support', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(233, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Current Maturity', 'No', 'N/A', 'N/A', 'List', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Initial;Adhoc;Defined;Managed;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(234, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Target Maturity', 'No', 'N/A', 'N/A', 'List', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Initial;Adhoc;Defined;Managed;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(235, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(236, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Documentation Status', 'No', 'N/A', 'N/A', 'List', '9.0', 'Documentation', 'No', 'N/A', 'N/A', 'Null;Documented;Partial Documented;Not Documented', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(237, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Last Updated on', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Documentation', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(238, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Process Diagram', 'No', 'N/A', 'N/A', 'File', '9.0', 'Documentation', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(239, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Note on Documentation', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Documentation', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(240, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(241, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_053', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(242, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(243, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_055', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '11.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(244, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_056', '#', 'Yes', 'Tabular', 'Change History', 'Number', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(245, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_057', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(246, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(247, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_059', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(248, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(249, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_061', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(250, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_062', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(251, 'Business_Process', 'Primary', 'N/A', 'N/A', 'ATT_063', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(252, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(253, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(254, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(255, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(256, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(257, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(258, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(259, 'Business_Function', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00169', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(260, 'Business_Function', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00170', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(261, 'Business_Function', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Part of Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00102', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(262, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_011', 'Subordinate Business Functions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00172', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(263, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_012', 'Superior Business Functions', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00172', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(264, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(265, 'Business_Function', 'Relationship', 'Actor', 'N/A', 'ATT_014', 'Customer', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00174', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(266, 'Business_Function', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_015', 'Customer Organization Unit', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00175', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(267, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Customers', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(268, 'Business_Function', 'Relationship', 'Business_Capability', 'N/A', 'ATT_017', 'Realized Business Capability', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00178', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(269, 'Business_Function', 'Relationship', 'Business_Service', 'N/A', 'ATT_018', 'Realized Business Service', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00179', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(270, 'Business_Function', 'Relationship', 'N/A', 'Business_Application', 'ATT_019', 'Realized by Business Application', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00362', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(271, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(272, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_021', 'Composed of Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00171', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(273, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_022', 'Part of Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00171', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(274, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_023', 'Aggregates Business Function', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00176', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(275, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_024', 'Aggregated by Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00176', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(276, 'Business_Function', 'Relationship', 'Business_Function', 'N/A', 'ATT_025', 'Specializes Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00177', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(277, 'Business_Function', 'Relationship', 'N/A', 'Business_Function', 'ATT_026', 'Specialized by Business Functions', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00177', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(278, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(279, 'Business_Function', 'Relationship', 'N/A', 'Gap', 'ATT_028', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00180', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(280, 'Business_Function', 'Relationship', 'N/A', 'Architecture_State', 'ATT_029', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00181', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(281, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(282, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(283, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_032', '#', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(284, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_033', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(285, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(286, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(287, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(288, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(289, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_038', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(290, 'Business_Function', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(291, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(292, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(293, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(294, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(295, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(296, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(297, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(298, 'Business_Service', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Service Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00057', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(299, 'Business_Service', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Service Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00058', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(300, 'Business_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00059', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(301, 'Business_Service', 'Relationship', 'Business_Service', 'N/A', 'ATT_011', 'Subordinate Services', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00060', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(302, 'Business_Service', 'Relationship', 'N/A', 'Business_Service', 'ATT_012', 'Superior Services', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00060', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(303, 'Business_Service', 'Relationship', 'National_Program', 'N/A', 'ATT_013', 'Assigned to National Program', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00061', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(304, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(305, 'Business_Service', 'Relationship', 'Actor', 'N/A', 'ATT_015', 'Customer', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00051', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(306, 'Business_Service', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_016', 'Customer Organization Unit', 'Yes', 'Shared', 'Customers', 'Object', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00063', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(307, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Customers', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Customers', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(308, 'Business_Service', 'Relationship', 'N/A', 'Business_Process', 'ATT_018', 'Business Process', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00043', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(309, 'Business_Service', 'Relationship', 'N/A', 'Business_Application', 'ATT_019', 'Business Application', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00337', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(310, 'Business_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_020', 'Technology Service', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00072', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(311, 'Business_Service', 'Relationship', 'N/A', 'Business_Function', 'ATT_021', 'Business Function', 'Yes', 'Shared', 'Realized by Architecture Objects', 'Object', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00179', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(312, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(313, 'Business_Service', 'Relationship', 'Business_Service', 'N/A', 'ATT_023', 'Composed of Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00064', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(314, 'Business_Service', 'Relationship', 'N/A', 'Business_Service', 'ATT_024', 'Part of Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00064', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(315, 'Business_Service', 'Relationship', 'Business_Service', 'N/A', 'ATT_025', 'Aggregates Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00065', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(316, 'Business_Service', 'Relationship', 'N/A', 'Business_Service', 'ATT_026', 'Aggregated by Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00065', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(317, 'Business_Service', 'Relationship', 'Business_Service', 'N/A', 'ATT_027', 'Specializes Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00066', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(318, 'Business_Service', 'Relationship', 'N/A', 'Business_Service', 'ATT_028', 'Specialized by Business Services', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00066', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(319, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(320, 'Business_Service', 'Relationship', 'Service_Contract', 'N/A', 'ATT_030', 'Service Contracts', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00067', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(321, 'Business_Service', 'Relationship', 'N/A', 'Goal', 'ATT_031', 'Performance Goals/Objectives', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00068', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(322, 'Business_Service', 'Relationship', 'N/A', 'Principle', 'ATT_032', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00069', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(323, 'Business_Service', 'Relationship', 'N/A', 'Risk', 'ATT_033', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00071', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(324, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Service Controls', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(325, 'Business_Service', 'Relationship', 'Requirement', 'N/A', 'ATT_035', 'Addressed Requirement', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Requirement', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00370', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(326, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Note on Requirement', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Requirement', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(327, 'Business_Service', 'Relationship', 'N/A', 'Gap', 'ATT_037', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00185', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(328, 'Business_Service', 'Relationship', 'N/A', 'Digital_Project', 'ATT_038', 'Digital Project', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00347', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(329, 'Business_Service', 'Relationship', 'N/A', 'Architecture_State', 'ATT_039', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00186', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(330, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(331, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_041', 'IT Support', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;No Support;Low Support;Moderate Support;High Support', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(332, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Current Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Manual;Automated;Data Centric;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(333, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Target Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Manual;Automated;Data Centric;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(334, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(335, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Lifecycle Status', 'No', 'N/A', 'N/A', 'List', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Ideation;In Development;In Production;Stopped;Decommission', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(336, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Production Date', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(337, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Stopped/Decommission Date', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(338, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(339, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '11.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(340, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_050', '#', 'Yes', 'Tabular', 'Change History', 'Number', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(341, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_051', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(342, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(343, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_053', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(344, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(345, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_055', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(346, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_056', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(347, 'Business_Service', 'Primary', 'N/A', 'N/A', 'ATT_057', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(348, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(349, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(350, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(351, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(352, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;SLA;OLA;Underpinning Contract (UC);License;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(353, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(354, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(355, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Contract Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00145', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(356, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Contract Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00200', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(357, 'Service_Contract', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00201', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(358, 'Service_Contract', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Contract Organizations', 'Yes', 'Shared', 'Contract Partners/Vendors', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00209', 'Multiple', 'N/A', 'Association', 'is Partnered by', '1', NULL, '2022-07-26 12:58:35'),
(359, 'Service_Contract', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Contract Individuals', 'Yes', 'Shared', 'Contract Partners/Vendors', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00210', 'Multiple', 'N/A', 'Association', 'is Partnered by', '1', NULL, '2022-07-26 12:58:35'),
(360, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(361, 'Service_Contract', 'Relationship', 'N/A', 'Business_Service', 'ATT_014', 'Impacted Business Service', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00067', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(362, 'Service_Contract', 'Relationship', 'N/A', 'Business_Application', 'ATT_015', 'Impacted Business Application', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00202', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(363, 'Service_Contract', 'Relationship', 'N/A', 'Hardware', 'ATT_016', 'Impacted Hardware', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00204', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(364, 'Service_Contract', 'Relationship', 'N/A', 'Technology_Service', 'ATT_017', 'Impacted Technology Service', 'Yes', 'Shared', 'Impacted Architecture Objects', 'Object', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00205', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(365, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Note on Impacted Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Impact', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(366, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_019', 'Composed of Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00206', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(367, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_020', 'Part of Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00206', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(368, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_021', 'Aggregates Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00207', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(369, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_022', 'Aggregated by Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00207', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(370, 'Service_Contract', 'Relationship', 'Service_Contract', 'N/A', 'ATT_023', 'Specializes Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00208', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(371, 'Service_Contract', 'Relationship', 'N/A', 'Service_Contract', 'ATT_024', 'Specialized by Contracts', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00208', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(372, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(373, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Service Hours', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Level', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(374, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Availability', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Level', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(375, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Other Service Level', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Level', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(376, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Service Level', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Service Level', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(377, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(378, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(379, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(380, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '7.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(381, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_034', '#', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(382, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_035', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(383, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(384, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(385, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(386, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(387, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_040', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(388, 'Service_Contract', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(389, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(390, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(391, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(392, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(393, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(394, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(395, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(396, 'Business_Capability', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Capability Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00189', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(397, 'Business_Capability', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Capability Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00190', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(398, 'Business_Capability', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Supported by Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00103', 'Multiple', 'Unlimited', 'Association', 'Supported by', '1', NULL, '2022-07-26 12:58:35'),
(399, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_011', 'Subordinate Capabilities', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00191', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(400, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_012', 'Superior Capabilities', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00191', 'Multiple', 'Unlimited', 'Association', 'is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(401, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(402, 'Business_Capability', 'Relationship', 'N/A', 'Business_Process', 'ATT_014', 'Realized by Business Processes', 'Yes', 'Shared', 'Realized by Business Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00042', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(403, 'Business_Capability', 'Relationship', 'N/A', 'Business_Function', 'ATT_015', 'Realized by Business Functions', 'Yes', 'Shared', 'Realized by Business Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00178', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(404, 'Business_Capability', 'Relationship', 'N/A', 'Business_Application', 'ATT_016', 'Realized by Business Application', 'Yes', 'Shared', 'Realized by Business Objects', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00361', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(405, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(406, 'Business_Capability', 'Relationship', 'Value_Chain', 'N/A', 'ATT_018', 'Served Value Chains', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Value Chain', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00197', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(407, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Value Chain', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Value Chain', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(408, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_020', 'Composed of Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00193', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(409, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_021', 'Part of Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00193', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(410, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_022', 'Aggregates Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00194', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(411, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_023', 'Aggregated by Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00194', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(412, 'Business_Capability', 'Relationship', 'Business_Capability', 'N/A', 'ATT_024', 'Specializes Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00195', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(413, 'Business_Capability', 'Relationship', 'N/A', 'Business_Capability', 'ATT_025', 'Specialized by Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00195', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(414, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(415, 'Business_Capability', 'Relationship', 'N/A', 'Risk', 'ATT_027', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Risk', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00199', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(416, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Risk', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(417, 'Business_Capability', 'Relationship', 'N/A', 'Gap', 'ATT_029', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00187', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(418, 'Business_Capability', 'Relationship', 'N/A', 'Architecture_State', 'ATT_030', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00188', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(419, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(420, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '9.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(421, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_033', '#', 'Yes', 'Tabular', 'Change History', 'Number', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(422, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_034', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(423, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(424, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(425, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(426, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(427, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_039', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(428, 'Business_Capability', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(429, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(430, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(431, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(432, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(433, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Core;Support;IT;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(434, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(435, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(436, 'Value_Chain', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00299', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(437, 'Value_Chain', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00300', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(438, 'Value_Chain', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Supported by Organization Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00301', 'Multiple', 'Unlimited', 'Association', 'Supported by', '1', NULL, '2022-07-26 12:58:35'),
(439, 'Value_Chain', 'Relationship', 'Value_Chain', 'N/A', 'ATT_011', 'Composed of Value Chains', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(440, 'Value_Chain', 'Relationship', 'N/A', 'Value_Chain', 'ATT_012', 'Part of Value Chains', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(441, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(442, 'Value_Chain', 'Relationship', 'N/A', 'Business_Process', 'ATT_014', 'Realized by Business Processes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00044', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(443, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(444, 'Value_Chain', 'Relationship', 'N/A', 'Business_Capability', 'ATT_016', 'Served by Business Capability', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Business Capability', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00197', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(445, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Business Capability', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Business Capability', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(446, 'Value_Chain', 'Relationship', 'Value_Chain', 'N/A', 'ATT_018', 'Composed of Value Chains', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(447, 'Value_Chain', 'Relationship', 'N/A', 'Value_Chain', 'ATT_019', 'Part of Value Chains', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00302', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(448, 'Value_Chain', 'Relationship', 'N/A', 'Gap', 'ATT_020', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00304', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(449, 'Value_Chain', 'Relationship', 'N/A', 'Architecture_State', 'ATT_021', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00305', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(450, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(451, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '7.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(452, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_024', '#', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(453, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_025', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(454, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(455, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(456, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(457, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(458, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_030', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(459, 'Value_Chain', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(460, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(461, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(462, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(463, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(464, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Master;Inventory;Transaction;Audit;Regulatory;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(465, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Business Object', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Structured;Unstructured', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(466, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Data Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Structured;Unstructured', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(467, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Data Classification', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Public;Internal;Confidential;Restricted', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(468, 'Data', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00354', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(469, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(470, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(471, 'Data', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Data Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00092', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(472, 'Data', 'Relationship', 'N/A', 'Actor', 'ATT_013', 'Data Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00093', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(473, 'Data', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_014', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00212', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(474, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(475, 'Data', 'Relationship', 'N/A', 'Business_Application', 'ATT_016', 'Business Application', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00016', 'Multiple', 'Unlimited', 'Access', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(476, 'Data', 'Relationship', 'N/A', 'Business_Process', 'ATT_017', 'Input to', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00045', 'Multiple', 'Unlimited', 'Access', 'Input into', '1', NULL, '2022-07-26 12:58:35'),
(477, 'Data', 'Relationship', 'N/A', 'Business_Process', 'ATT_018', 'Output From', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00046', 'Multiple', 'Unlimited', 'Access', 'Output from', '1', NULL, '2022-07-26 12:58:35'),
(478, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Access', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Data Access', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(479, 'Data', 'Relationship', 'Database', 'N/A', 'ATT_020', 'Assigned to Databases', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Database', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00222', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(480, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Databases', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Database', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(481, 'Data', 'Relationship', 'GSB', 'N/A', 'ATT_022', 'GSB', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00359', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(482, 'Data', 'Relationship', 'N/A', 'Application_Interface', 'ATT_023', 'Exchanged by Interfaces', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00155', 'Multiple', 'Unlimited', 'Association', 'Exchanged by', '1', NULL, '2022-07-26 12:58:35'),
(483, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Interfaces', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Interfaces', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(484, 'Data', 'Relationship', 'N/A', 'Principle', 'ATT_025', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00213', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(485, 'Data', 'Relationship', 'N/A', 'Risk', 'ATT_026', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00215', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(486, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(487, 'Data', 'Relationship', 'Data', 'N/A', 'ATT_028', 'Referenced to Data', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00221', 'Multiple', 'Unlimited', 'Association', 'Referenced to', '1', NULL, '2022-07-26 12:58:35'),
(488, 'Data', 'Relationship', 'N/A', 'Data', 'ATT_029', 'Referenced from Data', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00221', 'Multiple', 'Unlimited', 'Association', 'Referenced from', '1', NULL, '2022-07-26 12:58:35'),
(489, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Note on Data Reference', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Data Reference', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(490, 'Data', 'Relationship', 'Data', 'N/A', 'ATT_031', 'Composed of Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00218', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(491, 'Data', 'Relationship', 'N/A', 'Data', 'ATT_032', 'Part of Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00218', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(492, 'Data', 'Relationship', 'Data', 'N/A', 'ATT_033', 'Aggregates Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00219', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(493, 'Data', 'Relationship', 'N/A', 'Data', 'ATT_034', 'Aggregated by Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00219', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(494, 'Data', 'Relationship', 'Data', 'N/A', 'ATT_035', 'Specializes Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00220', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(495, 'Data', 'Relationship', 'N/A', 'Data', 'ATT_036', 'Specialized by Data', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00220', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(496, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(497, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Confidentiality', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(498, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Integrity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(499, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Availability', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(500, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(501, 'Data', 'Relationship', 'N/A', 'Gap', 'ATT_042', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00216', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(502, 'Data', 'Relationship', 'N/A', 'Architecture_State', 'ATT_043', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00217', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(503, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(504, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '11.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(505, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_046', '#', 'Yes', 'Tabular', 'Change History', 'Number', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(506, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_047', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(507, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(508, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(509, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(510, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(511, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_052', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(512, 'Data', 'Primary', 'N/A', 'N/A', 'ATT_053', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(513, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(514, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(515, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(516, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(517, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Operational;Analytical/Decision Support;Data Warehouse;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(518, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Location', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Centralized;Distributed', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(519, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(520, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(521, 'Database', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00223', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(522, 'Database', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00224', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-07-26 12:58:35'),
(523, 'Database', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00225', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-07-26 12:58:35'),
(524, 'Database', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00226', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(525, 'Database', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00227', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(526, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(527, 'Database', 'Relationship', 'N/A', 'Data', 'ATT_015', 'Assigned Data', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00222', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(528, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Data', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(529, 'Database', 'Relationship', 'N/A', 'Principle', 'ATT_017', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00229', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(530, 'Database', 'Relationship', 'N/A', 'Risk', 'ATT_018', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00231', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(531, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(532, 'Database', 'Relationship', 'N/A', 'Software', 'ATT_020', 'Provided by Software', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Software', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00366', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(533, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Software', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Software', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(534, 'Database', 'Relationship', 'Hardware', 'N/A', 'ATT_022', 'Deployed on Hardware', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00234', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-07-26 12:58:35'),
(535, 'Database', 'Relationship', 'Technology_Node', 'N/A', 'ATT_023', 'Deployed on Technology Node', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00235', 'Multiple', 'Unlimited', 'Assignment', 'Deployed on', '1', NULL, '2022-07-26 12:58:35'),
(536, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Deployment', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(537, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Confidentiality', 'No', 'N/A', 'N/A', 'List', '7.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(538, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Integrity', 'No', 'N/A', 'N/A', 'List', '7.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(539, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Availability', 'No', 'N/A', 'N/A', 'List', '7.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(540, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(541, 'Database', 'Relationship', 'N/A', 'Gap', 'ATT_029', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00232', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(542, 'Database', 'Relationship', 'N/A', 'Architecture_State', 'ATT_030', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00233', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(543, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(544, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Lifecycle Status', 'No', 'N/A', 'N/A', 'List', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Ideation;In Development;In Production;Stopped;Decommission', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(545, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Production Date', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(546, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Stopped/Decommission Date', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(547, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(548, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '10.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(549, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_037', '#', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(550, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_038', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(551, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(552, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(553, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(554, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(555, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_043', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(556, 'Database', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(557, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(558, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(559, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(560, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(561, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic Driver;Business Driver;Technology Driver;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(562, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(563, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(564, 'Driver', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00309', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(565, 'Driver', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00310', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(566, 'Driver', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00311', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(567, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(568, 'Driver', 'Relationship', 'National_Program', 'N/A', 'ATT_012', 'Associated National Program', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00312', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(569, 'Driver', 'Relationship', 'N/A', 'Goal', 'ATT_013', 'Associated Goal', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00306', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(570, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Context', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(571, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '4.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(572, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_016', '#', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(573, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_017', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(574, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(575, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(576, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(577, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(578, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_022', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(579, 'Driver', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(580, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(581, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(582, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(583, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(584, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic Goal;Business Goal;Technology Goal;Objective', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(585, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(586, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(587, 'Goal', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Owner', 'Yes', 'Shared', 'Goal Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00094', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(588, 'Goal', 'Relationship', 'N/A', 'Role', 'ATT_09', 'Owner Role', 'Yes', 'Shared', 'Goal Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00109', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(589, 'Goal', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager', 'Yes', 'Shared', 'Goal Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00095', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(590, 'Goal', 'Relationship', 'N/A', 'Role', 'ATT_011', 'Manager Role', 'Yes', 'Shared', 'Goal Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00113', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(591, 'Goal', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00096', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(592, 'Goal', 'Relationship', 'National_Program', 'N/A', 'ATT_013', 'Associated National Program', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00097', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(593, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(594, 'Goal', 'Relationship', 'N/A', 'Indicator', 'ATT_015', 'Associated Indicator', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Indicators', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00026', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(595, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Indicator', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Indicators', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(596, 'Goal', 'Relationship', 'Goal', 'N/A', 'ATT_017', 'Composed of Goals', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00313', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(597, 'Goal', 'Relationship', 'N/A', 'Goal', 'ATT_018', 'Part of Goals', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00313', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(598, 'Goal', 'Relationship', 'Business_Process', 'N/A', 'ATT_019', 'Business Process', 'Yes', 'Shared', 'Business Objects', 'Object', '5.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00047', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(599, 'Goal', 'Relationship', 'Business_Service', 'N/A', 'ATT_020', 'Business Service', 'Yes', 'Shared', 'Business Objects', 'Object', '5.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00068', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(600, 'Goal', 'Relationship', 'N/A', 'Digital_Project', 'ATT_021', 'Digital Project', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00345', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(601, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Architecture Objects', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(602, 'Goal', 'Relationship', 'Driver', 'N/A', 'ATT_023', 'Associated Drivers', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00306', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(603, 'Goal', 'Relationship', 'N/A', 'Principle', 'ATT_024', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00307', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(604, 'Goal', 'Relationship', 'N/A', 'Risk', 'ATT_025', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00308', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(605, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(606, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(607, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '7.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(608, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(609, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '8.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(610, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_031', '#', 'Yes', 'Tabular', 'Change History', 'Number', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(611, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_032', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(612, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(613, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(614, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(615, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(616, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_037', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(617, 'Goal', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '9.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(618, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(619, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(620, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(621, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(622, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Quantitative Indicator:Qualitative Indicator', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(623, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(624, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(625, 'Indicator', 'Relationship', 'Goal', 'N/A', 'ATT_08', 'Goal', 'Yes', 'Shared', 'Goals/Principles', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00026', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(626, 'Indicator', 'Relationship', 'Principle', 'N/A', 'ATT_09', 'Principle', 'Yes', 'Shared', 'Goals/Principles', 'Object', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00367', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(627, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Measurement Frequency', 'No', 'N/A', 'N/A', 'List', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'Null;Once;Weekly;Monthly;Quarterly;Annually', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(628, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Note on Definition', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(629, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '3.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(630, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '3.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(631, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(632, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '4.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(633, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_016', '#', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(634, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_017', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(635, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(636, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(637, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(638, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(639, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_022', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(640, 'Indicator', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(641, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(642, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(643, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(644, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business;Data;Application;Technology;Information Security;Interoperability;Governance;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(645, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Priority', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Low;Medium;High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(646, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Statement', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(647, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Rationale', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(648, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Implication', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(649, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(650, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(651, 'Principle', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Owner', 'Yes', 'Shared', 'Principle Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00076', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(652, 'Principle', 'Relationship', 'N/A', 'Role', 'ATT_012', 'Owner Role', 'Yes', 'Shared', 'Principle Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00108', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(653, 'Principle', 'Relationship', 'N/A', 'Actor', 'ATT_013', 'Manager', 'Yes', 'Shared', 'Principle Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00077', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(654, 'Principle', 'Relationship', 'N/A', 'Role', 'ATT_014', 'Manager Role', 'Yes', 'Shared', 'Principle Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00112', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(655, 'Principle', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_015', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00078', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(656, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(657, 'Principle', 'Relationship', 'Business_Application', 'N/A', 'ATT_017', 'Business Application', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00008', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(658, 'Principle', 'Relationship', 'Business_Process', 'N/A', 'ATT_018', 'Business Processes', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00039', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(659, 'Principle', 'Relationship', 'Business_Service', 'N/A', 'ATT_019', 'Business Services', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00069', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(660, 'Principle', 'Relationship', 'Data', 'N/A', 'ATT_020', 'Data', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00213', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(661, 'Principle', 'Relationship', 'Requirement', 'N/A', 'ATT_021', 'Requirements', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00292', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(662, 'Principle', 'Relationship', 'Digital_Project', 'N/A', 'ATT_022', 'Digital Projects', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00321', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(663, 'Principle', 'Relationship', 'Hardware', 'N/A', 'ATT_023', 'Hardware', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00236', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(664, 'Principle', 'Relationship', 'Software', 'N/A', 'ATT_024', 'Software', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00373', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(665, 'Principle', 'Relationship', 'Technology_Service', 'N/A', 'ATT_025', 'Technology Services', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00268', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(666, 'Principle', 'Relationship', 'Application_Interface', 'N/A', 'ATT_026', 'Application Interfaces', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00153', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(667, 'Principle', 'Relationship', 'Database', 'N/A', 'ATT_027', 'Databases', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00229', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(668, 'Principle', 'Relationship', 'Goal', 'N/A', 'ATT_028', 'Goals', 'Yes', 'Shared', 'Architecture Objects', 'Object', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00307', 'Multiple', 'Unlimited', 'Association', 'Applied to', '1', NULL, '2022-07-26 12:58:35'),
(669, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Compliance', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Compliance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'null', '1', NULL, '2022-07-26 12:58:35'),
(670, 'Principle', 'Relationship', 'N/A', 'Risk', 'ATT_030', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00083', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(671, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Associated Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(672, 'Principle', 'Relationship', 'N/A', 'Indicator', 'ATT_032', 'Associated Indicator', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Measurement', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00367', 'N/A', 'N/A', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(673, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Note on Measurement', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Measurement', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(674, 'Principle', 'Relationship', 'Principle', 'N/A', 'ATT_034', 'Composed of Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00080', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(675, 'Principle', 'Relationship', 'N/A', 'Principle', 'ATT_035', 'Part of Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00080', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(676, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Note on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(677, 'Principle', 'Relationship', 'N/A', 'Gap', 'ATT_037', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00323', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(678, 'Principle', 'Relationship', 'N/A', 'Architecture_State', 'ATT_038', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00085', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(679, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(680, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(681, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(682, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(683, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '9.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(684, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_044', '#', 'Yes', 'Tabular', 'Change History', 'Number', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(685, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_045', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(686, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(687, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(688, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(689, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(690, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_050', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(691, 'Principle', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(692, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(693, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(694, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(695, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(696, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic;Legal & Regulatory;Political & Social;Security & Fraud;Financial;Reputation;Liquidity;Business;Operational;Market;Systems;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(697, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Risk Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Candidate;Identified;Analyzed;Planned;Responded;Monitired;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(698, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Risk Source', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Internal;External;Internal & External', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(699, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Risk Probability', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Very Low;Low;Medium;High;Very High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(700, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Risk Impact', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Low;Medium;High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(701, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Impact Start Date', 'No', 'N/A', 'N/A', 'Date', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(702, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Impact End Date', 'No', 'N/A', 'N/A', 'Date', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(703, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(704, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(705, 'Risk', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Owner', 'Yes', 'Shared', 'Risk Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00053', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(706, 'Risk', 'Relationship', 'N/A', 'Role', 'ATT_015', 'Owner Role', 'Yes', 'Shared', 'Risk Owner', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00106', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(707, 'Risk', 'Relationship', 'N/A', 'Actor', 'ATT_016', 'Manager', 'Yes', 'Shared', 'Risk Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00081', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(708, 'Risk', 'Relationship', 'N/A', 'Role', 'ATT_017', 'Manager Role', 'Yes', 'Shared', 'Risk Manager', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00110', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(709, 'Risk', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_018', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00082', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(710, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(711, 'Risk', 'Relationship', 'Business_Application', 'N/A', 'ATT_020', 'Business Applications', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00010', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(712, 'Risk', 'Relationship', 'Business_Service', 'N/A', 'ATT_021', 'Business Services', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00071', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(713, 'Risk', 'Relationship', 'Application_Interface', 'N/A', 'ATT_022', 'Application Interfaces', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00154', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(714, 'Risk', 'Relationship', 'Application_Function', 'N/A', 'ATT_023', 'Application Functions', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00335', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(715, 'Risk', 'Relationship', 'Business_Process', 'N/A', 'ATT_024', 'Business Processes', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00041', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(716, 'Risk', 'Relationship', 'Data', 'N/A', 'ATT_025', 'Data', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00215', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(717, 'Risk', 'Relationship', 'Database', 'N/A', 'ATT_026', 'Databases', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00231', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(718, 'Risk', 'Relationship', 'Goal', 'N/A', 'ATT_027', 'Goals', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00308', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(719, 'Risk', 'Relationship', 'Principle', 'N/A', 'ATT_028', 'Principles', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00083', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(720, 'Risk', 'Relationship', 'Digital_Project', 'N/A', 'ATT_029', 'Digital Projects', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00320', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(721, 'Risk', 'Relationship', 'Technology_Node', 'N/A', 'ATT_030', 'Technology Nodes', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00255', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(722, 'Risk', 'Relationship', 'Hardware', 'N/A', 'ATT_031', 'Hardware', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00238', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(723, 'Risk', 'Relationship', 'Software', 'N/A', 'ATT_032', 'Software', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00374', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(724, 'Risk', 'Relationship', 'Technology_Service', 'N/A', 'ATT_033', 'Technology Services', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00270', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(725, 'Risk', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_034', 'Data Circuits', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00283', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(726, 'Risk', 'Relationship', 'Location', 'N/A', 'ATT_035', 'Locations', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00118', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(727, 'Risk', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_036', 'Organization Units', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00119', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(728, 'Risk', 'Relationship', 'Business_Capability', 'N/A', 'ATT_037', 'Business Capabilities', 'Yes', 'Shared', 'Risked Architecture Objects', 'Object', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00199', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(729, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Risk Response', 'No', 'N/A', 'N/A', 'List', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'Null;Accept;Mitigate;Transfer;Avoid', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(730, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Risk Mitigation Plan', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(731, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Note on Risked Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Risked Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(732, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '4.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(733, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_042', '#', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(734, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_043', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(735, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(736, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(737, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(738, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(739, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_048', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(740, 'Risk', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(741, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(742, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(743, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(744, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(745, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Consultation Project;New App Establishment Project;Systen Upgrade;Operation & Maintenance;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(746, 'Digital_Project', 'Relationship', 'N/A', 'Actor', 'ATT_06', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00341', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(747, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(748, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(749, 'Digital_Project', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00314', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(750, 'Digital_Project', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00315', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(751, 'Digital_Project', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00316', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(752, 'Digital_Project', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_012', 'Beneficiary', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00346', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(753, 'Digital_Project', 'Relationship', 'National_Program', 'N/A', 'ATT_013', 'National Program', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00317', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(754, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(755, 'Digital_Project', 'Relationship', 'N/A', 'Actor', 'ATT_015', 'Assigned Team', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Team', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00055', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(756, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Note on Team', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Team', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(757, 'Digital_Project', 'Relationship', 'Requirement', 'N/A', 'ATT_017', 'Addressed Requirements', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Addressed Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00334', 'Multiple', 'N/A', 'Association', 'Addresses', '1', NULL, '2022-07-26 12:58:35'),
(758, 'Digital_Project', 'Relationship', 'Business_Service', 'N/A', 'ATT_018', 'Business Service', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Addressed Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00347', 'Multiple', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(759, 'Digital_Project', 'Relationship', 'Business_Application', 'N/A', 'ATT_019', 'Business Application', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Addressed Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00338', 'Multiple', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(760, 'Digital_Project', 'Relationship', 'Gap', 'N/A', 'ATT_020', 'Addressed Gaps', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Addressed Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00146', 'Multiple', 'N/A', 'Aggregation', 'Addresses', '1', NULL, '2022-07-26 12:58:35'),
(761, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Objects', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Addressed Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(762, 'Digital_Project', 'Relationship', 'Digital_Project', 'N/A', 'ATT_022', 'Composed of Digital Projects', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00318', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(763, 'Digital_Project', 'Relationship', 'N/A', 'Digital_Project', 'ATT_023', 'Part of Digital Projects', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00318', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(764, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Composition', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(765, 'Digital_Project', 'Relationship', 'Digital_Project', 'N/A', 'ATT_025', 'Depends on Digital Projects', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00319', 'Multiple', 'Unlimited', 'Association', 'Depends on', '1', NULL, '2022-07-26 12:58:35'),
(766, 'Digital_Project', 'Relationship', 'N/A', 'Digital_Project', 'ATT_026', 'Dependent Digital Projects', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00319', 'Multiple', 'Unlimited', 'Association', 'Dependent', '1', NULL, '2022-07-26 12:58:35'),
(767, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Note on Dependancy', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Dependancy', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(768, 'Digital_Project', 'Relationship', 'Goal', 'N/A', 'ATT_028', 'Vision 2030', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00345', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(769, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Vision 2030', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(770, 'Digital_Project', 'Relationship', 'N/A', 'Principle', 'ATT_030', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00321', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(771, 'Digital_Project', 'Relationship', 'N/A', 'Risk', 'ATT_031', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00320', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(772, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(773, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Planned Start Date', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(774, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Planned End Date', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(775, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Status', 'No', 'N/A', 'N/A', 'List', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;In Preparation;Ongoing;Closed', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(776, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(777, 'Digital_Project', 'Relationship', 'N/A', 'ICT_Project_Classification', 'ATT_037', 'ICT Project Classification (Primary)', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00342', 'Single', 'N/A', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(778, 'Digital_Project', 'Relationship', 'N/A', 'ICT_Project_Classification', 'ATT_038', 'ICT Project Classification (Secondary)', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00343', 'Multiple', 'Unlimited', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(779, 'Digital_Project', 'Relationship', 'N/A', 'Vendor_Classification', 'ATT_039', 'Vendor Classification', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00344', 'Multiple', 'Unlimited', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(780, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Note on Classification', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(781, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '10.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(782, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_042', '#', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(783, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_043', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(784, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(785, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(786, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(787, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(788, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_048', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(789, 'Digital_Project', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(790, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(791, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(792, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(793, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(794, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(795, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(796, 'Architecture_State', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_07', 'Organization Units', 'Yes', 'Shared', 'Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00329', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(797, 'Architecture_State', 'Relationship', 'Role', 'N/A', 'ATT_08', 'Roles', 'Yes', 'Shared', 'Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00331', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(798, 'Architecture_State', 'Relationship', 'Location', 'N/A', 'ATT_09', 'Locations', 'Yes', 'Shared', 'Organization Objects', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00327', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(799, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(800, 'Architecture_State', 'Relationship', 'Business_Application', 'N/A', 'ATT_011', 'Business Applications', 'Yes', 'Shared', 'Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00024', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(801, 'Architecture_State', 'Relationship', 'Application_Interface', 'N/A', 'ATT_012', 'Application Interfaces', 'Yes', 'Shared', 'Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00158', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(802, 'Architecture_State', 'Relationship', 'Application_Function', 'N/A', 'ATT_013', 'Application Functions', 'Yes', 'Shared', 'Application Objects', 'Object', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00163', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(803, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Application', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Application', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(804, 'Architecture_State', 'Relationship', 'Business_Process', 'N/A', 'ATT_015', 'Business Processes', 'Yes', 'Shared', 'Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00184', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(805, 'Architecture_State', 'Relationship', 'Business_Function', 'N/A', 'ATT_016', 'Business Functions', 'Yes', 'Shared', 'Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00181', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(806, 'Architecture_State', 'Relationship', 'Business_Service', 'N/A', 'ATT_017', 'Business Services', 'Yes', 'Shared', 'Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00186', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(807, 'Architecture_State', 'Relationship', 'Business_Capability', 'N/A', 'ATT_018', 'Business Capabilities', 'Yes', 'Shared', 'Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00188', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(808, 'Architecture_State', 'Relationship', 'Value_Chain', 'N/A', 'ATT_019', 'Value Chains', 'Yes', 'Shared', 'Business Objects', 'Object', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00305', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(809, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Note on Business', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Business', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(810, 'Architecture_State', 'Relationship', 'Data', 'N/A', 'ATT_021', 'Data', 'Yes', 'Shared', 'Data Objects', 'Object', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00217', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(811, 'Architecture_State', 'Relationship', 'Database', 'N/A', 'ATT_022', 'Databases', 'Yes', 'Shared', 'Associated to Data', 'Object', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00233', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(812, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Note on Data', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Data', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(813, 'Architecture_State', 'Relationship', 'Principle', 'N/A', 'ATT_024', 'Principles', 'Yes', 'Shared', 'Governance Objects', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00085', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(814, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(815, 'Architecture_State', 'Relationship', 'Technology_Node', 'N/A', 'ATT_026', 'Technology Nodes', 'Yes', 'Shared', 'Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00257', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(816, 'Architecture_State', 'Relationship', 'Hardware', 'N/A', 'ATT_027', 'Hardware', 'Yes', 'Shared', 'Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00240', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(817, 'Architecture_State', 'Relationship', 'Software', 'N/A', 'ATT_028', 'Software', 'Yes', 'Shared', 'Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00368', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(818, 'Architecture_State', 'Relationship', 'Technology_Service', 'N/A', 'ATT_029', 'Technology Services', 'Yes', 'Shared', 'Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00273', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(819, 'Architecture_State', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_030', 'Data Circuits', 'Yes', 'Shared', 'Technology Objects', 'Object', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00285', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(820, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Note on Technology', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(821, 'Architecture_State', 'Relationship', 'N/A', 'Gap', 'ATT_032', 'Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00027', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(822, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Note on Gaps', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Gaps', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(823, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Valid From', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(824, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Valid Till', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(825, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(826, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '10.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(827, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_038', '#', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(828, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_039', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(829, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(830, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(831, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(832, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(833, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_044', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(834, 'Architecture_State', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(835, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(836, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(837, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(838, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(839, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Business;Application;Data;Technology;Governance;Organization', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(840, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(841, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(842, 'Gap', 'Relationship', 'Business_Application', 'N/A', 'ATT_08', 'Business Application', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00023', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(843, 'Gap', 'Relationship', 'Application_Interface', 'N/A', 'ATT_09', 'Application Interface', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00157', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(844, 'Gap', 'Relationship', 'Application_Function', 'N/A', 'ATT_010', 'Application Function', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00162', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(845, 'Gap', 'Relationship', 'Business_Process', 'N/A', 'ATT_011', 'Business Process', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00183', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(846, 'Gap', 'Relationship', 'Business_Function', 'N/A', 'ATT_012', 'Business Function', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00180', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(847, 'Gap', 'Relationship', 'Business_Service', 'N/A', 'ATT_013', 'Business Service', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00185', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(848, 'Gap', 'Relationship', 'Business_Capability', 'N/A', 'ATT_014', 'Business Capability', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00187', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(849, 'Gap', 'Relationship', 'Value_Chain', 'N/A', 'ATT_015', 'Value Chain', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00304', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(850, 'Gap', 'Relationship', 'Data', 'N/A', 'ATT_016', 'Data', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00216', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(851, 'Gap', 'Relationship', 'Database', 'N/A', 'ATT_017', 'Database', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00232', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(852, 'Gap', 'Relationship', 'Principle', 'N/A', 'ATT_018', 'Principle', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00323', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(853, 'Gap', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_019', 'Organization Unit', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00328', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(854, 'Gap', 'Relationship', 'Role', 'N/A', 'ATT_020', 'Role', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00330', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(855, 'Gap', 'Relationship', 'Location', 'N/A', 'ATT_021', 'Location', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00326', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(856, 'Gap', 'Relationship', 'Technology_Node', 'N/A', 'ATT_022', 'Technology Node', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00256', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(857, 'Gap', 'Relationship', 'Hardware', 'N/A', 'ATT_023', 'Hardware', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00239', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(858, 'Gap', 'Relationship', 'Software', 'N/A', 'ATT_024', 'Software', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00369', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(859, 'Gap', 'Relationship', 'Technology_Service', 'N/A', 'ATT_025', 'Technology Service', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00272', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(860, 'Gap', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_026', 'Data Circuit', 'Yes', 'Shared', 'Associated Objects', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00284', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(861, 'Gap', 'Relationship', 'Architecture_State', 'N/A', 'ATT_027', 'Gap Between Architecture States', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00027', 'Multiple', '2.0', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(862, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Gap Status', 'No', 'N/A', 'N/A', 'List', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'Null;New Object;Deleted Object;Changed Object', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(863, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Gap Definition', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Gap Definition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(864, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_030', 'Composed of Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00028', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(865, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_031', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00028', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(866, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_032', 'Aggregates Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00029', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(867, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_033', 'Aggregated by Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00029', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(868, 'Gap', 'Relationship', 'Gap', 'N/A', 'ATT_034', 'Specialized Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00030', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(869, 'Gap', 'Relationship', 'N/A', 'Gap', 'ATT_035', 'Specialized by Gaps', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00030', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(870, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(871, 'Gap', 'Relationship', 'N/A', 'Digital_Project', 'ATT_037', 'Addressed by Digital Project', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Gap Planning', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00146', 'Single', 'N/A', 'Aggregation', 'Addressed by', '1', NULL, '2022-07-26 12:58:35'),
(872, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Note on Gap Planning', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Gap Planning', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(873, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '5.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(874, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_040', '#', 'Yes', 'Tabular', 'Change History', 'Number', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(875, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_041', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(876, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(877, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(878, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(879, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(880, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_046', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(881, 'Gap', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '6.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(882, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(883, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(884, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(885, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(886, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Strategic Requirement;Business Requirement;Technology Requirement;Stakeholder Requirement;Solution Requirement;Transition Requirement;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(887, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Status', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;New;Under Review;In Process;Implemented;Rejected', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(888, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Priority', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Low;Medium;High', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(889, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(890, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(891, 'Requirement', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Requester', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00287', 'Single', 'N/A', 'Association', 'is Requested by', '1', NULL, '2022-07-26 12:58:35'),
(892, 'Requirement', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Requester Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00288', 'Single', 'N/A', 'Association', 'is Requested by', '1', NULL, '2022-07-26 12:58:35'),
(893, 'Requirement', 'Relationship', 'N/A', 'Actor', 'ATT_012', 'Responder', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00289', 'Single', 'N/A', 'Association', 'is Responded by', '1', NULL, '2022-07-26 12:58:35'),
(894, 'Requirement', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Responder Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00290', 'Single', 'N/A', 'Association', 'is Responded by', '1', NULL, '2022-07-26 12:58:35'),
(895, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(896, 'Requirement', 'Relationship', 'N/A', 'Business_Application', 'ATT_015', 'Business Application', 'Yes', 'Shared', 'Fulfilled by Architecture Objects', 'Object', '3.0', 'Fulfilment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00022', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(897, 'Requirement', 'Relationship', 'N/A', 'Application_Interface', 'ATT_016', 'Application Interface', 'Yes', 'Shared', 'Fulfilled by Architecture Objects', 'Object', '3.0', 'Fulfilment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00156', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(898, 'Requirement', 'Relationship', 'N/A', 'Business_Service', 'ATT_017', 'Business Service', 'Yes', 'Shared', 'Fulfilled by Architecture Objects', 'Object', '3.0', 'Fulfilment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00370', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(899, 'Requirement', 'Relationship', 'N/A', 'Technology_Service', 'ATT_018', 'Technology Service', 'Yes', 'Shared', 'Fulfilled by Architecture Objects', 'Object', '3.0', 'Fulfilment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00271', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(900, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Fulfilment', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Fulfilment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(901, 'Requirement', 'Relationship', 'N/A', 'Principle', 'ATT_020', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Principles', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00292', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(902, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Principles', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Principles', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(903, 'Requirement', 'Relationship', 'N/A', 'Digital_Project', 'ATT_022', 'Addressed by Digital Projects', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Digital Project', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00334', 'Multiple', 'Unlimited', 'Association', 'Addressed by', '1', NULL, '2022-07-26 12:58:35'),
(904, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Note on Digital Projects', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Digital Project', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(905, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Request Date', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(906, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Expected Fulfilment Date', 'No', 'N/A', 'N/A', 'Date', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(907, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(908, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '7.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(909, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_028', '#', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(910, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_029', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(911, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(912, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(913, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(914, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(915, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_034', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(916, 'Requirement', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(917, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(918, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(919, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(920, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(921, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(922, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(923, 'National_Program', 'Relationship', 'N/A', 'Actor', 'ATT_07', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00073', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(924, 'National_Program', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00074', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(925, 'National_Program', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_09', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00371', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(926, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(927, 'National_Program', 'Relationship', 'N/A', 'Business_Application', 'ATT_011', 'Business Applications', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00007', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(928, 'National_Program', 'Relationship', 'N/A', 'Application_Function', 'ATT_012', 'Application Functions', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00168', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(929, 'National_Program', 'Relationship', 'N/A', 'Business_Service', 'ATT_013', 'Business Services', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00061', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(930, 'National_Program', 'Relationship', 'N/A', 'Driver', 'ATT_014', 'Drivers', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00312', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(931, 'National_Program', 'Relationship', 'N/A', 'Goal', 'ATT_015', 'Goals', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00097', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(932, 'National_Program', 'Relationship', 'N/A', 'Digital_Project', 'ATT_016', 'Digital Projects', 'Yes', 'Shared', 'Assigned Architecture Objects', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00317', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(933, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Architecture Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(934, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '4.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(935, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_019', '#', 'Yes', 'Tabular', 'Change History', 'Number', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(936, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_020', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(937, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(938, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(939, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(940, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(941, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_025', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(942, 'National_Program', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '5.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(943, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(944, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(945, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(946, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(947, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Branch;Sector;Division;General Department;Department;Section;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(948, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(949, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(950, 'Organization_Unit', 'Relationship', 'N/A', 'Actor', 'ATT_08', 'Unit Head/Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00088', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(951, 'Organization_Unit', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_09', 'Subordinate Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00086', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(952, 'Organization_Unit', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Superior Units', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00086', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(953, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(954, 'Organization_Unit', 'Relationship', 'Business_Application', 'N/A', 'ATT_012', 'Owns Business Applications', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00004', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(955, 'Organization_Unit', 'Relationship', 'Business_Process', 'N/A', 'ATT_013', 'Owns Business Processes', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00033', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(956, 'Organization_Unit', 'Relationship', 'Business_Service', 'N/A', 'ATT_014', 'Owns Business Service', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00059', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(957, 'Organization_Unit', 'Relationship', 'Principle', 'N/A', 'ATT_015', 'Owns Principles', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00078', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(958, 'Organization_Unit', 'Relationship', 'Risk', 'N/A', 'ATT_016', 'Owns Risks', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00082', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(959, 'Organization_Unit', 'Relationship', 'Goal', 'N/A', 'ATT_017', 'Owns Goals', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00096', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(960, 'Organization_Unit', 'Relationship', 'National_Program', 'N/A', 'ATT_018', 'Owns National Program', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00371', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(961, 'Organization_Unit', 'Relationship', 'Application_Interface', 'N/A', 'ATT_019', 'Owns Application Interfaces', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00150', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(962, 'Organization_Unit', 'Relationship', 'Application_Function', 'N/A', 'ATT_020', 'Owns Application Functions', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00166', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(963, 'Organization_Unit', 'Relationship', 'Service_Contract', 'N/A', 'ATT_021', 'Owns Service Contracts', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00201', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(964, 'Organization_Unit', 'Relationship', 'Data', 'N/A', 'ATT_022', 'Owns Data', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00212', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(965, 'Organization_Unit', 'Relationship', 'Database', 'N/A', 'ATT_023', 'Owns Databases', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00226', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(966, 'Organization_Unit', 'Relationship', 'Hardware', 'N/A', 'ATT_024', 'Owns Hardware', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00243', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(967, 'Organization_Unit', 'Relationship', 'Software', 'N/A', 'ATT_025', 'Owns Software', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00376', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(968, 'Organization_Unit', 'Relationship', 'Technology_Node', 'N/A', 'ATT_026', 'Owns Technology Nodes', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00249', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(969, 'Organization_Unit', 'Relationship', 'Technology_Service', 'N/A', 'ATT_027', 'Owns Technology Service', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00262', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(970, 'Organization_Unit', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_028', 'Owns Data Circuits', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00280', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(971, 'Organization_Unit', 'Relationship', 'Driver', 'N/A', 'ATT_029', 'Owns Drivers', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00311', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(972, 'Organization_Unit', 'Relationship', 'Digital_Project', 'N/A', 'ATT_030', 'Owns Digital Projects', 'Yes', 'Shared', 'Objects Ownership', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00316', 'N/A', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(973, 'Organization_Unit', 'Relationship', 'Business_Application', 'N/A', 'ATT_031', 'Manages Business Applications', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00005', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(974, 'Organization_Unit', 'Relationship', 'Application_Interface', 'N/A', 'ATT_032', 'Manages Application Interfaces', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00151', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(975, 'Organization_Unit', 'Relationship', 'Application_Function', 'N/A', 'ATT_033', 'Manages Application Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00167', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(976, 'Organization_Unit', 'Relationship', 'Database', 'N/A', 'ATT_034', 'Manages Databases', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00227', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(977, 'Organization_Unit', 'Relationship', 'Technology_Node', 'N/A', 'ATT_035', 'Manages Technology Nodes', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00250', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(978, 'Organization_Unit', 'Relationship', 'Technology_Service', 'N/A', 'ATT_036', 'Manages Technology Services', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00263', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(979, 'Organization_Unit', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_037', 'Manages Data Circuits', 'Yes', 'Shared', 'Objects Manager', 'Object', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00281', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(980, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Note on Responsibility', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(981, 'Organization_Unit', 'Relationship', 'N/A', 'Business_Service', 'ATT_039', 'Served by Business Services', 'Yes', 'Shared', 'Beneficiary', 'Object', '4.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00063', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(982, 'Organization_Unit', 'Relationship', 'N/A', 'Business_Application', 'ATT_040', 'Served by Business Applications', 'Yes', 'Shared', 'Beneficiary', 'Object', '4.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00006', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(983, 'Organization_Unit', 'Relationship', 'N/A', 'Digital_Project', 'ATT_041', 'Served by Digital Projects', 'Yes', 'Shared', 'Beneficiary', 'Object', '4.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00346', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(984, 'Organization_Unit', 'Relationship', 'N/A', 'Business_Function', 'ATT_042', 'Served by Business Functions', 'Yes', 'Shared', 'Beneficiary', 'Object', '4.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00175', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(985, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Note on Beneficiary', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(986, 'Organization_Unit', 'Relationship', 'N/A', 'Actor', 'ATT_044', 'Staff', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Structure', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00056', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(987, 'Organization_Unit', 'Relationship', 'Role', 'N/A', 'ATT_045', 'Roles', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Structure', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00091', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(988, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Note on Organization Unit Structure', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Structure', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(989, 'Organization_Unit', 'Relationship', 'Business_Function', 'N/A', 'ATT_047', 'Business Function', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Busines Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00102', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(990, 'Organization_Unit', 'Relationship', 'Business_Capability', 'N/A', 'ATT_048', 'Supported Capabilities', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Busines Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00103', 'Multiple', 'Unlimited', 'Association', 'Supports', '1', NULL, '2022-07-26 12:58:35'),
(991, 'Organization_Unit', 'Relationship', 'Business_Process', 'N/A', 'ATT_049', 'Supported Processes', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Busines Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00089', 'Multiple', 'Unlimited', 'Assignment', 'Supports', '1', NULL, '2022-07-26 12:58:35'),
(992, 'Organization_Unit', 'Relationship', 'Value_Chain', 'N/A', 'ATT_050', 'Supported Value Chains', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Busines Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00301', 'Multiple', 'Unlimited', 'Assignment', 'Supports', '1', NULL, '2022-07-26 12:58:35'),
(993, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Note on Business Context', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Busines Context', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(994, 'Organization_Unit', 'Relationship', 'Requirement', 'N/A', 'ATT_052', 'Requested Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00288', 'Multiple', 'Unlimited', 'Association', 'Requests', '1', NULL, '2022-07-26 12:58:35'),
(995, 'Organization_Unit', 'Relationship', 'Requirement', 'N/A', 'ATT_053', 'Responded Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00290', 'Multiple', 'Unlimited', 'Association', 'Responds', '1', NULL, '2022-07-26 12:58:35'),
(996, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Note on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(997, 'Organization_Unit', 'Relationship', 'Service_Contract', 'N/A', 'ATT_055', 'Contracts/Licenses', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Contracts/Licenses', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00209', 'Multiple', 'Unlimited', 'Association', 'Partner in', '1', NULL, '2022-07-26 12:58:35'),
(998, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_056', 'Note on Contracts/Licenses', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Contracts/Licenses', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(999, 'Organization_Unit', 'Relationship', 'Location', 'N/A', 'ATT_057', 'Location', 'No', 'N/A', 'N/A', 'Object', '9.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00090', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1000, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_058', 'Note on Location', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1001, 'Organization_Unit', 'Relationship', 'N/A', 'Risk', 'ATT_059', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00119', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1002, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_060', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1003, 'Organization_Unit', 'Relationship', 'N/A', 'Gap', 'ATT_061', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00328', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1004, 'Organization_Unit', 'Relationship', 'N/A', 'Architecture_State', 'ATT_062', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '11.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00329', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1005, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_063', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '11.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1006, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_064', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '12.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1007, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_065', '#', 'Yes', 'Tabular', 'Change History', 'Number', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1008, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_066', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1009, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_067', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1010, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_068', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1011, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_069', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1012, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_070', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1013, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_071', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1014, 'Organization_Unit', 'Primary', 'N/A', 'N/A', 'ATT_072', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '13.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1015, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1016, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1017, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1018, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1019, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Committee;Working Group;Employee;Vendor;Customer;Supplier;Partner;User Group;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1020, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Internal/External', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Internal;External', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1021, 'Actor', 'Relationship', 'N/A', 'Actor', 'ATT_07', 'Superior', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00049', 'Single', 'N/A', 'Association', 'is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(1022, 'Actor', 'Relationship', 'Actor', 'N/A', 'ATT_08', 'Subordinates', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00049', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(1023, 'Actor', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_09', 'Assigned to Organization Unit', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00056', 'Single', 'N/A', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1024, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1025, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1026, 'Actor', 'Relationship', 'N/A', 'Role', 'ATT_012', 'Assigned Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Role Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00050', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1027, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Roles', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Role Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1028, 'Actor', 'Relationship', 'Business_Application', 'N/A', 'ATT_014', 'Authorized Applications', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00339', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1029, 'Actor', 'Relationship', 'Digital_Project', 'N/A', 'ATT_015', 'Authorized Digital Projects', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00341', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1030, 'Actor', 'Relationship', 'Hardware', 'N/A', 'ATT_016', 'Authorized Hardware', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00348', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1031, 'Actor', 'Relationship', 'Software', 'N/A', 'ATT_017', 'Authorized Software', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00353', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1032, 'Actor', 'Relationship', 'Data', 'N/A', 'ATT_018', 'Authorized Data', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00354', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1033, 'Actor', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_019', 'Authorized Data Circuit', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00355', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1034, 'Actor', 'Relationship', 'Location', 'N/A', 'ATT_020', 'Authorized Location', 'Yes', 'Shared', 'Authorized Objects', 'Object', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00357', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1035, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Authorization', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Authorization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1036, 'Actor', 'Relationship', 'Business_Application', 'N/A', 'ATT_022', 'Owns Business Applications', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00001', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1037, 'Actor', 'Relationship', 'Business_Process', 'N/A', 'ATT_023', 'Owns Business Processes', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00031', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1038, 'Actor', 'Relationship', 'Business_Service', 'N/A', 'ATT_024', 'Owns Business Services', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00057', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1039, 'Actor', 'Relationship', 'Data', 'N/A', 'ATT_025', 'Owns Data', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00092', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1040, 'Actor', 'Relationship', 'National_Program', 'N/A', 'ATT_026', 'Owns National Programs', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00073', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1041, 'Actor', 'Relationship', 'Location', 'N/A', 'ATT_027', 'Owns Locations', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00114', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1042, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_028', 'Owns Service Contracts', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00145', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1043, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_029', 'Owns Application Interfaces', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00147', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1044, 'Actor', 'Relationship', 'Application_Function', 'N/A', 'ATT_030', 'Owns Application Functions', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00164', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1045, 'Actor', 'Relationship', 'Business_Function', 'N/A', 'ATT_031', 'Owns Business Functions', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00169', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1046, 'Actor', 'Relationship', 'Database', 'N/A', 'ATT_032', 'Owns Databases', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00223', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1047, 'Actor', 'Relationship', 'Hardware', 'N/A', 'ATT_033', 'Owns Hardware', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00241', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1048, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_034', 'Owns Technology Nodes', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00247', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1049, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_035', 'Owns Technology Service', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00259', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1050, 'Actor', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_036', 'Owns Data Circuits', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00278', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1051, 'Actor', 'Relationship', 'Value_Chain', 'N/A', 'ATT_037', 'Owns Value Chains', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00299', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1052, 'Actor', 'Relationship', 'Driver', 'N/A', 'ATT_038', 'Owns Drivers', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00309', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1053, 'Actor', 'Relationship', 'Digital_Project', 'N/A', 'ATT_039', 'Owns Digital Projects', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00314', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1054, 'Actor', 'Relationship', 'Business_Capability', 'N/A', 'ATT_040', 'Owns Business Capabilities', 'Yes', 'Shared', 'Ownership', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00189', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1055, 'Actor', 'Relationship', 'Business_Process', 'N/A', 'ATT_041', 'Manages Business Processes', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00032', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1056, 'Actor', 'Relationship', 'Business_Service', 'N/A', 'ATT_042', 'Manages Business Services', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00058', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1057, 'Actor', 'Relationship', 'National_Program', 'N/A', 'ATT_043', 'Manages National Programs', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00074', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1058, 'Actor', 'Relationship', 'Organization_Unit', 'N/A', 'ATT_044', 'Manages Organization Units', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00088', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1059, 'Actor', 'Relationship', 'Data', 'N/A', 'ATT_045', 'Manages Data', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00093', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1060, 'Actor', 'Relationship', 'Location', 'N/A', 'ATT_046', 'Manages Locations', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00115', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1061, 'Actor', 'Relationship', 'Application_Function', 'N/A', 'ATT_047', 'Manages Application Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00165', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1062, 'Actor', 'Relationship', 'Business_Function', 'N/A', 'ATT_048', 'Manages Business Functions', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00170', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1063, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_049', 'Manages Service Contracts', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00200', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1064, 'Actor', 'Relationship', 'Hardware', 'N/A', 'ATT_050', 'Manages Hardware', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00242', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1065, 'Actor', 'Relationship', 'Data_Circuit', 'N/A', 'ATT_051', 'Manages Data Circuits', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00279', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1066, 'Actor', 'Relationship', 'Value_Chain', 'N/A', 'ATT_052', 'Manages Value Chains', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00300', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1067, 'Actor', 'Relationship', 'Driver', 'N/A', 'ATT_053', 'Manages Drivers', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00310', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1068, 'Actor', 'Relationship', 'Digital_Project', 'N/A', 'ATT_054', 'Manages Digital Projects', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00315', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1069, 'Actor', 'Relationship', 'Business_Capability', 'N/A', 'ATT_055', 'Manages Business Capabilities', 'Yes', 'Shared', 'Objects Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00190', 'Multiple', 'Unlimited', 'Association', 'Manages', '1', NULL, '2022-07-26 12:58:35'),
(1070, 'Actor', 'Relationship', 'Business_Application', 'N/A', 'ATT_056', 'Manages Development of Business Applications', 'Yes', 'Shared', 'Development Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00002', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-07-26 12:58:35'),
(1071, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_057', 'Manages Development of Application Interfaces', 'Yes', 'Shared', 'Development Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00148', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-07-26 12:58:35'),
(1072, 'Actor', 'Relationship', 'Database', 'N/A', 'ATT_058', 'Manages Development of Databases', 'Yes', 'Shared', 'Development Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00224', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-07-26 12:58:35'),
(1073, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_059', 'Manages Development of Technology Nodes', 'Yes', 'Shared', 'Development Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00248', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-07-26 12:58:35'),
(1074, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_060', 'Manages Development of Technology Services', 'Yes', 'Shared', 'Development Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00260', 'Multiple', 'Unlimited', 'Association', 'Manages (Development)', '1', NULL, '2022-07-26 12:58:35'),
(1075, 'Actor', 'Relationship', 'Business_Application', 'N/A', 'ATT_061', 'Manages Operation of Business Applications', 'Yes', 'Shared', 'Operation Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00003', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-07-26 12:58:35'),
(1076, 'Actor', 'Relationship', 'Application_Interface', 'N/A', 'ATT_062', 'Manages Operation of Application Interfaces', 'Yes', 'Shared', 'Operation Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00149', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-07-26 12:58:35'),
(1077, 'Actor', 'Relationship', 'Database', 'N/A', 'ATT_063', 'Manages Operation of Databases', 'Yes', 'Shared', 'Operation Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00225', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-07-26 12:58:35'),
(1078, 'Actor', 'Relationship', 'Technology_Node', 'N/A', 'ATT_064', 'Manages Operation of Technology Nodes', 'Yes', 'Shared', 'Operation Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00254', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-07-26 12:58:35'),
(1079, 'Actor', 'Relationship', 'Technology_Service', 'N/A', 'ATT_065', 'Manages Operation of Technology Services', 'Yes', 'Shared', 'Operation Manager', 'Object', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00261', 'Multiple', 'Unlimited', 'Association', 'Manages (Operation)', '1', NULL, '2022-07-26 12:58:35'),
(1080, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_066', 'Note on Responsibility', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Responsibility', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1081, 'Actor', 'Relationship', 'N/A', 'Business_Service', 'ATT_067', 'Business Service Beneficiary', 'Yes', 'Shared', 'Beneficiary', 'Object', '5.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00051', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1082, 'Actor', 'Relationship', 'N/A', 'Business_Function', 'ATT_068', 'Business Function Beneficiary', 'Yes', 'Shared', 'Beneficiary', 'Object', '5.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00174', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1083, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_069', 'Note on Beneficiary', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Beneficiary', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1084, 'Actor', 'Relationship', 'Actor', 'N/A', 'ATT_070', 'Composed of Actor', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00054', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1085, 'Actor', 'Relationship', 'N/A', 'Actor', 'ATT_071', 'Part of Actor', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00054', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1086, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_072', 'Note on Actor Composition', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Composition', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1087, 'Actor', 'Relationship', 'Requirement', 'N/A', 'ATT_073', 'Requested Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00287', 'Multiple', 'Unlimited', 'Association', 'Requests', '1', NULL, '2022-07-26 12:58:35'),
(1088, 'Actor', 'Relationship', 'Requirement', 'N/A', 'ATT_074', 'Responded Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00289', 'Multiple', 'Unlimited', 'Association', 'Responds', '1', NULL, '2022-07-26 12:58:35'),
(1089, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_075', 'Note on Requirements', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Requirements', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1090, 'Actor', 'Relationship', 'Digital_Project', 'N/A', 'ATT_076', 'Assigned Digital Projects', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Digital Project', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00055', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1091, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_077', 'Note on Digital Projects', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Digital Project', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1092, 'Actor', 'Relationship', 'Risk', 'N/A', 'ATT_078', 'Owns Risks', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00053', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1093, 'Actor', 'Relationship', 'Goal', 'N/A', 'ATT_079', 'Owns Goals', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00094', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1094, 'Actor', 'Relationship', 'Principle', 'N/A', 'ATT_080', 'Owns Principles', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00076', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1095, 'Actor', 'Relationship', 'Risk', 'N/A', 'ATT_081', 'Manages Risks', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00081', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1096, 'Actor', 'Relationship', 'Goal', 'N/A', 'ATT_082', 'Manages Goals', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00095', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1097, 'Actor', 'Relationship', 'Principle', 'N/A', 'ATT_083', 'Manages Principles', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00077', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1098, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_084', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1099, 'Actor', 'Relationship', 'N/A', 'Business_Application', 'ATT_085', 'Business Application', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Vendor/Partner', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00360', 'Multiple', 'Unlimited', 'Association', 'Provides', '1', NULL, '2022-07-26 12:58:35'),
(1100, 'Actor', 'Relationship', 'Service_Contract', 'N/A', 'ATT_086', 'License/Contract', 'No', 'N/A', 'N/A', 'Object', '10.0', 'Vendor/Partner', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00210', 'Multiple', 'Unlimited', 'Association', 'Provides', '1', NULL, '2022-07-26 12:58:35'),
(1101, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_087', 'Note on Vendor/Partner', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Vendor/Partner', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1102, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_088', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '11.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1103, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_089', '#', 'Yes', 'Tabular', 'Change History', 'Number', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1104, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_090', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1105, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_091', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1106, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_092', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1107, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_093', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1108, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_094', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1109, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_095', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1110, 'Actor', 'Primary', 'N/A', 'N/A', 'ATT_096', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1111, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1112, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1113, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1114, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1115, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1116, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1117, 'Role', 'Relationship', 'Role', 'N/A', 'ATT_07', 'Subordinate Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00105', 'Multiple', 'Unlimited', 'Association', 'Is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(1118, 'Role', 'Relationship', 'N/A', 'Role', 'ATT_08', 'Superior Roles', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00105', 'Multiple', 'Unlimited', 'Association', 'Is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(1119, 'Role', 'Relationship', 'Actor', 'N/A', 'ATT_09', 'Actors Assignment', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00050', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1120, 'Role', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_010', 'Referenced Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00091', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1121, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1122, 'Role', 'Relationship', 'Business_Process', 'N/A', 'ATT_012', 'Process', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00034', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1123, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Note on Process Assignment', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Process Assignment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1124, 'Role', 'Relationship', 'Risk', 'N/A', 'ATT_014', 'Owns Risks', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00106', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1125, 'Role', 'Relationship', 'Goal', 'N/A', 'ATT_015', 'Owns Goals', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00109', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1126, 'Role', 'Relationship', 'Principle', 'N/A', 'ATT_016', 'Owns Principles', 'Yes', 'Shared', 'Governance Objects Ownership', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00108', 'Multiple', 'Unlimited', 'Association', 'is Owner of', '1', NULL, '2022-07-26 12:58:35'),
(1127, 'Role', 'Relationship', 'Risk', 'N/A', 'ATT_017', 'Manages Risks', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00110', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1128, 'Role', 'Relationship', 'Goal', 'N/A', 'ATT_018', 'Manages Goals', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00113', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1129, 'Role', 'Relationship', 'Principle', 'N/A', 'ATT_019', 'Manages Principles', 'Yes', 'Shared', 'Governance Objects Manager', 'Object', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00112', 'Multiple', 'Unlimited', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1130, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1131, 'Role', 'Relationship', 'N/A', 'Gap', 'ATT_021', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00330', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1132, 'Role', 'Relationship', 'N/A', 'Architecture_State', 'ATT_022', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00331', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1133, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1134, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '6.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1135, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_025', '#', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1136, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_026', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1137, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1138, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1139, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1140, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1141, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_031', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1142, 'Role', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1143, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1144, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1145, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1146, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1147, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Inside the headquarter of ministry/institution;Branch of the ministry/Institution;Cloud environment;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1148, 'Location', 'Relationship', 'N/A', 'Actor', 'ATT_06', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00357', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1149, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1150, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1151, 'Location', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Location Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00114', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1152, 'Location', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Location Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00115', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1153, 'Location', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_011', 'Organization Unit(s)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00090', 'Multiple', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1154, 'Location', 'Relationship', 'Location', 'N/A', 'ATT_012', 'Composed of Locations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00117', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1155, 'Location', 'Relationship', 'N/A', 'Location', 'ATT_013', 'Part of Locations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00117', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1156, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1157, 'Location', 'Relationship', 'N/A', 'Hardware', 'ATT_015', 'Hardware', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00350', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1158, 'Location', 'Relationship', 'N/A', 'Technology_Node', 'ATT_016', 'Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00252', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1159, 'Location', 'Relationship', 'N/A', 'Data_Circuit', 'ATT_017', 'To Data Circuits', 'Yes', 'Shared', 'Data Circuit', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00286', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1160, 'Location', 'Relationship', 'N/A', 'Data_Circuit', 'ATT_018', 'From Data Circuits', 'Yes', 'Shared', 'Data Circuit', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00356', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1161, 'Location', 'Relationship', 'N/A', 'Business_Application', 'ATT_019', 'Business Applications', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00363', 'Multiple', 'Unlimited', 'Association', 'Deploys', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1162, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Note on Architecture Objects', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Architecture Objects', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1163, 'Location', 'Relationship', 'N/A', 'Risk', 'ATT_021', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00118', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1164, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1165, 'Location', 'Relationship', 'N/A', 'Gap', 'ATT_023', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00326', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1166, 'Location', 'Relationship', 'N/A', 'Architecture_State', 'ATT_024', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00327', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1167, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1168, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '6.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1169, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_027', '#', 'Yes', 'Tabular', 'Change History', 'Number', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1170, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_028', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1171, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1172, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1173, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1174, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1175, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_033', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1176, 'Location', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '7.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1177, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1178, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1179, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1180, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1181, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Cluster;Server;Infrastructure;Network;Storage;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1182, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Is Standard?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1183, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1184, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1185, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00247', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1186, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00248', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1187, 'Technology_Node', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00254', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1188, 'Technology_Node', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00249', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1189, 'Technology_Node', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00250', 'Single', 'N/A', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1190, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1191, 'Technology_Node', 'Relationship', 'Hardware', 'N/A', 'ATT_015', 'Hardware', 'Yes', 'Shared', 'Included Hardware/Software', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00253', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1192, 'Technology_Node', 'Relationship', 'Software', 'N/A', 'ATT_016', 'Software', 'Yes', 'Shared', 'Included Hardware/Software', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00333', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1193, 'Technology_Node', 'Relationship', 'Technology_Node', 'N/A', 'ATT_017', 'Assigned to Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00258', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1194, 'Technology_Node', 'Relationship', 'N/A', 'Technology_Node', 'ATT_018', 'Assigned from Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00258', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1195, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1196, 'Technology_Node', 'Relationship', 'Business_Application', 'N/A', 'ATT_020', 'Utilized by Business Applications', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00021', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1197, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Utilization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1198, 'Technology_Node', 'Relationship', 'N/A', 'Business_Application', 'ATT_022', 'Business Applications', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '5.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00336', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-07-26 12:58:35'),
(1199, 'Technology_Node', 'Relationship', 'N/A', 'Database', 'ATT_023', 'Databases', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '5.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00235', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-07-26 12:58:35'),
(1200, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Deployment', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1201, 'Technology_Node', 'Relationship', 'Location', 'N/A', 'ATT_025', 'Locations', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00252', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1202, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Location', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1203, 'Technology_Node', 'Relationship', 'N/A', 'Risk', 'ATT_027', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00255', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1204, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1205, 'Technology_Node', 'Relationship', 'N/A', 'Gap', 'ATT_029', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00256', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1206, 'Technology_Node', 'Relationship', 'N/A', 'Architecture_State', 'ATT_030', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00257', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1207, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1208, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '9.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1209, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_033', '#', 'Yes', 'Tabular', 'Change History', 'Number', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1210, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_034', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1211, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1212, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1213, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1214, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1215, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_039', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1216, 'Technology_Node', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1217, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1218, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1219, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1220, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1221, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Input;Processing;Storage;Output;Communication,Internal Components', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1222, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Version', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1223, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Vendor', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1224, 'Hardware', 'Relationship', 'N/A', 'Vendor_Classification', 'ATT_08', 'Vendor Classification', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00351', 'Multiple', 'Unlimited', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1225, 'Hardware', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00348', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1226, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Is Standard?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1227, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1228, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1229, 'Hardware', 'Relationship', 'N/A', 'Actor', 'ATT_013', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00241', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1230, 'Hardware', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00242', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1231, 'Hardware', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_015', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00243', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1232, 'Hardware', 'Relationship', 'Location', 'N/A', 'ATT_016', 'Location', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00350', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1233, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1234, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Business Criticality', 'No', 'N/A', 'N/A', 'List', '3.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Not Critical;Essential;Critical', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1235, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Total Cost', 'No', 'N/A', 'N/A', 'Number', '3.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1236, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_020', 'Maintenance Cost', 'No', 'N/A', 'N/A', 'Number', '3.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1237, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Number of Hardware', 'No', 'N/A', 'N/A', 'Number', '3.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1238, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1239, 'Hardware', 'Relationship', 'Business_Application', 'N/A', 'ATT_023', 'Business Applications', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00020', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1240, 'Hardware', 'Relationship', 'N/A', 'Database', 'ATT_024', 'Database', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00234', 'Multiple', 'Unlimited', 'Assignment', 'Deploys', '1', NULL, '2022-07-26 12:58:35'),
(1241, 'Hardware', 'Relationship', 'Technology_Service', 'N/A', 'ATT_025', 'Technology Services', 'Yes', 'Shared', 'Deployed Architecture Objects', 'Object', '4.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00246', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1242, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Deployment', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Deployment', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1243, 'Hardware', 'Relationship', 'N/A', 'Software', 'ATT_027', 'Software', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00349', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1244, 'Hardware', 'Relationship', 'TRM', 'N/A', 'ATT_028', 'TRM', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00245', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1245, 'Hardware', 'Relationship', 'N/A', 'Technology_Node', 'ATT_029', 'Hardware Type', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00253', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1246, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_030', 'Note on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1247, 'Hardware', 'Relationship', 'Service_Contract', 'N/A', 'ATT_031', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '6.0', 'License/Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00204', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1248, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Note on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'License/Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1249, 'Hardware', 'Relationship', 'N/A', 'Principle', 'ATT_033', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00236', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1250, 'Hardware', 'Relationship', 'N/A', 'Risk', 'ATT_034', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00238', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1251, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1252, 'Hardware', 'Relationship', 'N/A', 'Gap', 'ATT_036', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00239', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1253, 'Hardware', 'Relationship', 'N/A', 'Architecture_State', 'ATT_037', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00240', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1254, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1255, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Object State', 'No', 'N/A', 'N/A', 'List', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Planned;Active;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1256, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Start Date', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1257, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_041', 'End Date', 'No', 'N/A', 'N/A', 'Date', '9.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1258, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '10.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1259, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_043', '#', 'Yes', 'Tabular', 'Change History', 'Number', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1260, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_044', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1261, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1262, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1263, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1264, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1265, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_049', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1266, 'Hardware', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '11.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1267, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1268, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1269, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1270, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1271, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Software;Infrastructure;Systems;Network;Database;Communication;Datacenter;Information Security', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1272, 'TRM', 'Relationship', 'N/A', 'TRM', 'ATT_06', 'Superior', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00277', 'Single', 'N/A', 'Association', 'is Subordinate of', '1', NULL, '2022-07-26 12:58:35'),
(1273, 'TRM', 'Relationship', 'TRM', 'N/A', 'ATT_07', 'Subordinates', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00277', 'Multiple', 'Unlimited', 'Association', 'is Superior of', '1', NULL, '2022-07-26 12:58:35'),
(1274, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1275, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1276, 'TRM', 'Relationship', 'N/A', 'Hardware', 'ATT_010', 'Hardware', 'Yes', 'Shared', 'Realized by', 'Object', '2.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00245', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1277, 'TRM', 'Relationship', 'N/A', 'Software', 'ATT_011', 'Software', 'Yes', 'Shared', 'Realized by', 'Object', '2.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00372', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1278, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Note on Realization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Realization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1279, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '3.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1280, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_014', '#', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1281, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_015', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1282, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1283, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1284, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1285, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1286, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_020', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1287, 'TRM', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1288, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1289, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1290, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1291, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1292, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Infrastructure Service;Systems Service;Network Service;Data Service;Communication Service;Datacenter Service;Information Security Service', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1293, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Is Standard?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1294, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1295, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1296, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_09', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00259', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1297, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Manager Development', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00260', 'Single', 'N/A', 'Association', 'Development Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1298, 'Technology_Service', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager Operations', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00261', 'Single', 'N/A', 'Association', 'Operations Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1299, 'Technology_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00262', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1300, 'Technology_Service', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00263', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1301, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization ', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1302, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_015', 'Composed of Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00265', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1303, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_016', 'Part of Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00265', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1304, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_017', 'Aggregates Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00266', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1305, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_018', 'Aggregated by Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00266', 'Multiple', 'Unlimited', 'Aggregation', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1306, 'Technology_Service', 'Relationship', 'Technology_Service', 'N/A', 'ATT_019', 'Specializes Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00267', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1307, 'Technology_Service', 'Relationship', 'N/A', 'Technology_Service', 'ATT_020', 'Specialized by Technology Services', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00267', 'Multiple', 'Unlimited', 'Specialization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1308, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Note on Orchestration', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Orchestration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1309, 'Technology_Service', 'Relationship', 'N/A', 'Hardware', 'ATT_022', 'Provided by Hardware', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00246', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1310, 'Technology_Service', 'Relationship', 'N/A', 'Software', 'ATT_023', 'Provided by Software', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00365', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1311, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Note on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Technology', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1312, 'Technology_Service', 'Relationship', 'Business_Service', 'N/A', 'ATT_025', 'Realized Business Service', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Business Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00072', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1313, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Note on Business Service', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Business Service', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1314, 'Technology_Service', 'Relationship', 'N/A', 'Principle', 'ATT_027', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00268', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1315, 'Technology_Service', 'Relationship', 'N/A', 'Risk', 'ATT_028', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00270', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1316, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_029', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1317, 'Technology_Service', 'Relationship', 'Requirement', 'N/A', 'ATT_030', 'Realized Requirements', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00271', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1318, 'Technology_Service', 'Relationship', 'N/A', 'Gap', 'ATT_031', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00272', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1319, 'Technology_Service', 'Relationship', 'N/A', 'Architecture_State', 'ATT_032', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00273', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1320, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1321, 'Technology_Service', 'Relationship', 'Service_Contract', 'N/A', 'ATT_034', 'Service/License Contracts', 'No', 'N/A', 'N/A', 'Object', '8.0', 'Service Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00205', 'Multiple', 'Unlimited', 'Assignment', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1322, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Note on Contracts', 'No', 'N/A', 'N/A', 'Rich Text', '8.0', 'Service Contracts', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1323, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Is Compliance Needed?', 'No', 'N/A', 'N/A', 'CheckBox', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1324, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_037', 'Compliance Level', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Bad;Medium;Good;Excellent', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1325, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_038', 'IT Support', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;No Support;Low Support;Moderate Support;High Support', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1326, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Current Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Manual;Automated;Data Centric;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1327, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Target Maturity', 'No', 'N/A', 'N/A', 'List', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'Null;Manual;Automated;Data Centric;Optimized', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1328, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_041', 'Note on Characteristics', 'No', 'N/A', 'N/A', 'Rich Text', '9.0', 'Characteristics', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1329, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Lifecycle Status', 'No', 'N/A', 'N/A', 'List', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Ideation;In Development;In Production;Stopped;Decommission', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1330, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_043', 'Production Date', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1331, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_044', 'Stopped/Decommission Date', 'No', 'N/A', 'N/A', 'Date', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1332, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Note on Lifecycle', 'No', 'N/A', 'N/A', 'Rich Text', '10.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1333, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '11.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1334, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_047', '#', 'Yes', 'Tabular', 'Change History', 'Number', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1335, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_048', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1336, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_049', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1337, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1338, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_051', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1339, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_052', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1340, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_053', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1341, 'Technology_Service', 'Primary', 'N/A', 'N/A', 'ATT_054', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '12.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1342, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1343, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1344, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1345, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1346, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;MPLS;Fiber Optic;Wireless;Cable Internet;T-1;Other', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1347, 'Data_Circuit', 'Relationship', 'N/A', 'Actor', 'ATT_06', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00355', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1348, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Object State', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Planned;Active;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1349, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1350, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1351, 'Data_Circuit', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00278', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1352, 'Data_Circuit', 'Relationship', 'N/A', 'Actor', 'ATT_011', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00279', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1353, 'Data_Circuit', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_012', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00280', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1354, 'Data_Circuit', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_013', 'Manager Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00281', 'Single', 'N/A', 'Association', 'is Manager of', '1', NULL, '2022-07-26 12:58:35'),
(1355, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1356, 'Data_Circuit', 'Relationship', 'Location', 'N/A', 'ATT_015', 'From Location', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00286', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1357, 'Data_Circuit', 'Relationship', 'Location', 'N/A', 'ATT_016', 'To Location', 'No', 'N/A', 'N/A', 'Object', '3.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00356', 'Single', 'N/A', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1358, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Location', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Location', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1359, 'Data_Circuit', 'Relationship', 'N/A', 'Risk', 'ATT_018', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00283', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1360, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Note on Risks', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Risks', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1361, 'Data_Circuit', 'Relationship', 'N/A', 'Gap', 'ATT_020', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00284', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1362, 'Data_Circuit', 'Relationship', 'N/A', 'Architecture_State', 'ATT_021', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00285', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1363, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1364, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Subscription Cost per Year', 'No', 'N/A', 'N/A', 'Number', '6.0', 'Subscription', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1365, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_024', 'Bandwidth', 'No', 'N/A', 'N/A', 'List', '6.0', 'Subscription', 'No', 'N/A', 'N/A', 'Null;T1;T2;T3;T4;E1;E2;E3;OC1;OC3;OC12;OC;24OC48;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1366, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_025', 'Name of Service Provider', 'No', 'N/A', 'N/A', 'Text', '6.0', 'Subscription', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1367, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_026', 'Circuit Contract', 'No', 'N/A', 'N/A', 'File', '6.0', 'Subscription', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1368, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_027', 'Note on Subscription', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Subscription', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1369, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '7.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1370, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_029', '#', 'Yes', 'Tabular', 'Change History', 'Number', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1371, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_030', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1372, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_031', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1373, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1374, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_033', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1375, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_034', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1376, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_035', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1377, 'Data_Circuit', 'Primary', 'N/A', 'N/A', 'ATT_036', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '8.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1378, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1379, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1380, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1381, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1382, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Version', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1383, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Type', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Operating System;WEB/WAS;Middleware;DBMS;Modeling Tool;Graphical Tool;Mail;Virus Vaccine (Anti malware);EAMS;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1384, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_07', 'OSS/COTS?', 'No', 'N/A', 'N/A', 'List', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'Null;Open source software;COTS', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1385, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Vendor', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1386, 'Software', 'Relationship', 'N/A', 'Vendor_Classification', 'ATT_09', 'Vendor Classification', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00352', 'Multiple', 'Unlimited', 'Association', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1387, 'Software', 'Relationship', 'N/A', 'Actor', 'ATT_010', 'Authorized User Group', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00353', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1388, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Is Standard?', 'No', 'N/A', 'N/A', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1389, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_012', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1390, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1391, 'Software', 'Relationship', 'N/A', 'Actor', 'ATT_014', 'Owner', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1392, 'Software', 'Relationship', 'N/A', 'Actor', 'ATT_015', 'Manager', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'Single', 'Unlimited', 'Association', 'is Managed by', '1', NULL, '2022-07-26 12:58:35'),
(1393, 'Software', 'Relationship', 'N/A', 'Organization_Unit', 'ATT_016', 'Owner Organization Unit', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00376', 'Single', 'N/A', 'Association', 'is Owned by', '1', NULL, '2022-07-26 12:58:35'),
(1394, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Note on Organization', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Organization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1395, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Software License Policy', 'Yes', 'Simple', 'N/A', 'List', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'Null;User;CPU/Socket;Server Based;Site based;Perpetual Licenses;Others', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1396, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Number of Licenses', 'Yes', 'Simple', 'N/A', 'Number', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1397, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_020', 'License Contract', 'Yes', 'Simple', 'N/A', 'File', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1398, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_021', 'Total Cost', 'No', 'N/A', 'N/A', 'Number', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1399, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_022', 'Annual Maintenance Cost', 'No', 'N/A', 'N/A', 'Number', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1400, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_023', 'Note on Licensing', 'No', 'N/A', 'N/A', 'Rich Text', '3.0', 'Licensing', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1401, 'Software', 'Relationship', 'Business_Application', 'N/A', 'ATT_024', 'Business Applications', 'Yes', 'Shared', 'Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00340', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1402, 'Software', 'Relationship', 'Database', 'N/A', 'ATT_025', 'Utilized by Databases', 'Yes', 'Shared', 'Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00366', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1403, 'Software', 'Relationship', 'Technology_Service', 'N/A', 'ATT_026', 'Utilized by Technology Services', 'Yes', 'Shared', 'Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00365', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1404, 'Software', 'Relationship', 'Application_Interface', 'N/A', 'ATT_027', 'Utilized by Interface', 'Yes', 'Shared', 'Architecture Objects', 'Object', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00364', 'Multiple', 'Unlimited', 'Serving', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1405, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_028', 'Note on Utilization', 'No', 'N/A', 'N/A', 'Rich Text', '4.0', 'Utilization', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1406, 'Software', 'Relationship', 'TRM', 'N/A', 'ATT_029', 'Realized TRMs', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00372', 'Multiple', 'Unlimited', 'Realization', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1407, 'Software', 'Relationship', 'Hardware', 'N/A', 'ATT_030', 'Hardware', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00349', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1408, 'Software', 'Relationship', 'N/A', 'Technology_Node', 'ATT_031', 'Part of Technology Nodes', 'No', 'N/A', 'N/A', 'Object', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00333', 'Multiple', 'Unlimited', 'Composition', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1409, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_032', 'Note on Technologies', 'No', 'N/A', 'N/A', 'Rich Text', '5.0', 'Technologies', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1410, 'Software', 'Relationship', 'N/A', 'Principle', 'ATT_033', 'Associated Principles', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00373', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1411, 'Software', 'Relationship', 'N/A', 'Risk', 'ATT_034', 'Associated Risks', 'No', 'N/A', 'N/A', 'Object', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00374', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1412, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_035', 'Note on Governance', 'No', 'N/A', 'N/A', 'Rich Text', '6.0', 'Governance', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1413, 'Software', 'Relationship', 'N/A', 'Gap', 'ATT_036', 'Part of Gaps', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00369', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1414, 'Software', 'Relationship', 'N/A', 'Architecture_State', 'ATT_037', 'Architecture States', 'No', 'N/A', 'N/A', 'Object', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00368', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1415, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_038', 'Note on Migration', 'No', 'N/A', 'N/A', 'Rich Text', '7.0', 'Migration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1416, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_039', 'Object State', 'No', 'N/A', 'N/A', 'List', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'Null;Planned;Active;Retired', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1417, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_040', 'Start Date', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1418, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_041', 'End Date', 'No', 'N/A', 'N/A', 'Date', '8.0', 'Lifecycle', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1419, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_042', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '9.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1420, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_043', '#', 'Yes', 'Tabular', 'Change History', 'Number', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1421, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_044', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1422, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_045', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1423, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_046', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1424, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_047', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');
INSERT INTO `attributes_information` (`id`, `Element_Name`, `Attribute_Type`, `Target_Rel_Element`, `Source_Rel_Element`, `Self_Generated_Attribute`, `Actual_Attribute`, `Is_Grouped`, `Group_Style`, `Group_Caption`, `Attribute_Format`, `Page_Number`, `Page_Title`, `Is_Page_Grouped`, `Group_Page_Title`, `Group_Page_ID`, `Allowable_Values`, `Attribute_Tip`, `Bidirection_Relationship_Pair`, `Single_or_Multiple`, `Maximum_Number_of_Object_Occurrence`, `Relationship`, `Relationship_Overload_Text`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1425, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_048', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1426, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_049', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1427, 'Software', 'Primary', 'N/A', 'N/A', 'ATT_050', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '10.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1428, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1429, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1430, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1431, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1432, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1433, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1434, 'ICT_Project_Classification', 'Relationship', 'Digital_Project', 'N/A', 'ATT_07', 'Digital Project (Primary)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00342', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1435, 'ICT_Project_Classification', 'Relationship', 'Digital_Project', 'N/A', 'ATT_08', 'Digital Project (Secondary)', 'No', 'N/A', 'N/A', 'Object', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00343', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1436, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Note on Classification', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1437, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '3.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1438, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_011', '#', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1439, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_012', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1440, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1441, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1442, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1443, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1444, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_017', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1445, 'ICT_Project_Classification', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1446, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1447, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1448, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1449, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1450, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1451, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1452, 'Vendor_Classification', 'Relationship', 'Digital_Project', 'N/A', 'ATT_07', 'Digital Project', 'Yes', 'Shared', 'Products/Services', 'Object', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00344', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1453, 'Vendor_Classification', 'Relationship', 'Hardware', 'N/A', 'ATT_08', 'Hardware', 'Yes', 'Shared', 'Products/Services', 'Object', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00351', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1454, 'Vendor_Classification', 'Relationship', 'Software', 'N/A', 'ATT_09', 'Software', 'Yes', 'Shared', 'Products/Services', 'Object', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00352', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1455, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Note on Classification', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Classification', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1456, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '3.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1457, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_012', '#', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1458, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_013', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1459, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1460, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1461, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1462, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_017', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1463, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_018', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1464, 'Vendor_Classification', 'Primary', 'N/A', 'N/A', 'ATT_019', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1465, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1466, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_02', 'Short Name', 'No', 'N/A', 'N/A', 'Short Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1467, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_03', 'ID', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1468, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Description', 'No', 'N/A', 'N/A', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1469, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1470, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1471, 'GSB', 'Relationship', 'N/A', 'Business_Application', 'ATT_07', 'Business Application', 'Yes', 'Shared', 'Utilization', 'Object', '2.0', 'Integration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00358', 'Multiple', 'Unlimited', 'Association', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1472, 'GSB', 'Relationship', 'N/A', 'Data', 'ATT_08', 'Data', 'Yes', 'Shared', 'Utilization', 'Object', '2.0', 'Integration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'BR00359', 'Multiple', 'Unlimited', 'Flow', 'Default', '1', NULL, '2022-07-26 12:58:35'),
(1473, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Note on Integration', 'No', 'N/A', 'N/A', 'Rich Text', '2.0', 'Integration', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1474, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Attached Files', 'No', 'N/A', 'N/A', 'File', '3.0', 'Attachments', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1475, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_011', '#', 'Yes', 'Tabular', 'Change History', 'Number', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1476, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_012', 'User', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1477, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_013', 'Date', 'Yes', 'Tabular', 'Change History', 'Date', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1478, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_014', 'Time', 'Yes', 'Tabular', 'Change History', 'Time', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1479, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_015', 'Attribute', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1480, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_016', 'Old Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1481, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_017', 'New Value', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1482, 'GSB', 'Primary', 'N/A', 'N/A', 'ATT_018', 'Action', 'Yes', 'Tabular', 'Change History', 'Text', '4.0', 'Change History', 'No', 'N/A', 'N/A', 'N/A', 'This is a test sentence that has been placed to check the functionality. Later it sould be replaced by the proper tip text.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1483, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1484, 'Composition', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1485, 'Composition', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1486, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1487, 'Composition', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1488, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1489, 'Aggregation', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1490, 'Aggregation', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1491, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1492, 'Aggregation', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1493, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1494, 'Assignment', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1495, 'Assignment', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1496, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1497, 'Assignment', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1498, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1499, 'Realization', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1500, 'Realization', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1501, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1502, 'Realization', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1503, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1504, 'Serving', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1505, 'Serving', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1506, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1507, 'Serving', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1508, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1509, 'Access', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1510, 'Access', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1511, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1512, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1513, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_06', 'Create', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1514, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_07', 'Read', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1515, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_08', 'Update', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1516, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_09', 'Delete', 'Yes', 'Simple', 'Access Type', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1517, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_010', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1518, 'Access', 'Primary', 'N/A', 'N/A', 'ATT_011', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1519, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1520, 'Association', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1521, 'Association', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1522, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1523, 'Association', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1524, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1525, 'Flow', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1526, 'Flow', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1527, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1528, 'Flow', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1529, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_01', 'Name', 'No', 'N/A', 'N/A', 'Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', ' ', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1530, 'Specialization', 'System', 'N/A', 'Get', 'ATT_02', 'From', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1531, 'Specialization', 'System', 'Get', 'N/A', 'ATT_03', 'To', 'No', 'N/A', 'N/A', 'Object', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1532, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_04', 'Action Required?', 'Yes', 'Simple', 'Action Required', 'CheckBox', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'FALSE;TRUE', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35'),
(1533, 'Specialization', 'Primary', 'N/A', 'N/A', 'ATT_05', 'Action Note', 'Yes', 'Simple', 'Action Required', 'Rich Text', '1.0', 'General Information', 'No', 'N/A', 'N/A', 'N/A', 'This is a test script.', 'null', 'N/A', 'N/A', 'N/A', 'N/A', '1', NULL, '2022-07-26 12:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `business_application`
--

CREATE TABLE `business_application` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_052` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_059` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_061` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_067` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_070` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_073` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_074` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_079` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_080` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_081` date DEFAULT NULL,
  `ATT_082` date DEFAULT NULL,
  `ATT_085` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_086` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_087` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_088` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_089` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_090` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_091` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_092` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_093` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_094` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_application`
--

INSERT INTO `business_application` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_07`, `ATT_08`, `ATT_010`, `ATT_011`, `ATT_012`, `ATT_022`, `ATT_023`, `ATT_024`, `ATT_025`, `ATT_026`, `ATT_027`, `ATT_028`, `ATT_029`, `ATT_030`, `ATT_031`, `ATT_032`, `ATT_033`, `ATT_034`, `ATT_035`, `ATT_036`, `ATT_037`, `ATT_038`, `ATT_039`, `ATT_040`, `ATT_044`, `ATT_049`, `ATT_052`, `ATT_059`, `ATT_061`, `ATT_067`, `ATT_070`, `ATT_073`, `ATT_074`, `ATT_079`, `ATT_080`, `ATT_081`, `ATT_082`, `ATT_085`, `ATT_086`, `ATT_087`, `ATT_088`, `ATT_089`, `ATT_090`, `ATT_091`, `ATT_092`, `ATT_093`, `ATT_094`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Business_Application_kXXG1', '', '0', '', 'Null', '', '', '', '', '', '', '', '333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1##2##3##4##5##6##7##8##9##10##11##12##13', 'admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##umerkhan##umerkhan', '2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-08-01##2022-08-04##2022-08-04##2022-08-04##2022-08-04##2022-08-04', '13:36:19##13:38:19##13:38:25##13:38:39##13:47:31##13:48:37##13:48:43##18:40:58##12:56:09##12:56:19##12:57:07##12:57:16##12:57:32', ' ##Name##Name##Name##Name##Name##Name##Functional Adequacy## ## ## ##Name##Name', ' ##Business_Application_kXXGcN0##Business_Application_kXXGcN0##Business_Application_kXXGcN0##Business_Application_kXXG1##Business_Application_kXXG1##Business_Application_kXXG1## ## ## ## ##Business_Application_kXXG1iup##Business_Application_kXXG1iup22', ' ##Business_Application_kXXGcN##Business_Application_kXXG##Business_Application_kXXG1##Business_Application_kXXG1i##Business_Application_kXXG1iu##Business_Application_kXXG1iup##333## ## ## ##Business_Application_kXXG1iup22##Business_Application_kXXG1', 'Create##Update##Update##Update##Update##Update##Update##Update##Delete##Restore##Delete##Update##Update', '0', 'admin', '2022-08-04 07:57:32'),
(2, 'Business_Application_YmJa253', 'fgfg', '1', '', 'Null', '', '', '', '', '', '', '', '355', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '', '1##2##3##4##5##6##7##8##9##10##11##12##13##14##15##16##17##18##19##20##21', 'admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin', '2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-07-30##2022-08-01##2022-08-01##2022-08-01', '13:39:06##13:39:08##13:39:55##13:49:13##14:05:35##14:11:32##14:19:23##14:22:08##14:23:02##14:24:08##14:24:52##14:24:54##14:24:56##14:32:13##14:32:34##14:32:47##14:32:47##14:32:47##18:17:44##18:19:11##18:19:35', ' ##Name##Name##Name##Name##Name##Name##Name##Name##Name##Name##Name##Name##Business Owner##Manager Development##Business Owner##Manager Development##Manager Operations##Name##Short Name##Functional Adequacy', ' ##Business_Application_YmJnZN1##Business_Application_YmJnZN##Business_Application_YmJnZ##Business_Application_YmJnZ9##Business_Application_YmJnZ##Business_Application_YmJn##Business_Application_YmJ##Business_Application_YmJa##Business_Application_YmJa2##Business_Application_YmJa25##Business_Application_YmJa25##Business_Application_YmJa25## ## ##Actor_BAYoD30, Actor_j38ItV1, Actor_9Ts1W72## ## ##Business_Application_YmJa2532v## ## ', ' ##Business_Application_YmJnZN##Business_Application_YmJnZ##Business_Application_YmJnZ9##Business_Application_YmJnZ##Business_Application_YmJn##Business_Application_YmJ##Business_Application_YmJa##Business_Application_YmJa2##Business_Application_YmJa25##Business_Application_YmJa253##Business_Application_YmJa2532##Business_Application_YmJa2532v##Actor_BAYoD30, Actor_j38ItV1, Actor_9Ts1W72##Actor_9Ts1W72##Actor_j38ItV1, Actor_9Ts1W72##Actor_9Ts1W72##Actor_BAYoD30##Business_Application_YmJa253##fgfg##355', 'Create##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update', '1', 'admin', '2022-08-01 13:19:35'),
(3, 'hussain1', 'mh', '45', '', 'Null', '2.1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-08-01', '2022-08-09', '', '', '1##2##3##4##5##6##7##8##9##10##11##12##13##14', 'admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin##admin', '2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01##2022-08-01', '18:21:27##18:21:33##18:21:39##18:21:48##18:21:56##18:22:06##18:22:18##18:22:33##18:22:43##18:22:56##18:23:11##18:23:21##18:25:41##18:25:41', ' ##Name##Name##Short Name##ID##Version##Business Owner##Manager Development##Manager Development##Manager Operations##Manager Operations##Manager Operations##Start Date##End Date', ' ##Business_Application_dMMxpQ2##hussain## ##2## ## ## ##Actor_j38ItV1## ##Actor_9Ts1W72##Actor_9Ts1W72, Actor_j38ItV1##1900-01-01##1900-01-01', ' ##hussain##hussain1##mh##45##2.1##Actor_BAYoD30, Actor_j38ItV1, Actor_9Ts1W72##Actor_j38ItV1##Actor_j38ItV1, Actor_9Ts1W72##Actor_9Ts1W72##Actor_9Ts1W72, Actor_j38ItV1##Actor_9Ts1W72, Actor_j38ItV1, Actor_BAYoD30##2022-08-01##2022-08-09', 'Create##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update##Update', '1', 'admin', '2022-08-01 13:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `business_capability`
--

CREATE TABLE `business_capability` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business_function`
--

CREATE TABLE `business_function` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business_process`
--

CREATE TABLE `business_process` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` date DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_052` date DEFAULT NULL,
  `ATT_053` date DEFAULT NULL,
  `ATT_054` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_055` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_056` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_057` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_058` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_059` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_060` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_061` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_062` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_063` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business_service`
--

CREATE TABLE `business_service` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` date DEFAULT NULL,
  `ATT_047` date DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_052` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_053` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_054` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_055` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_056` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_057` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

CREATE TABLE `composition` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_052` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_053` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `database`
--

CREATE TABLE `database` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` date DEFAULT NULL,
  `ATT_034` date DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_circuit`
--

CREATE TABLE `data_circuit` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `digital_project`
--

CREATE TABLE `digital_project` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` date DEFAULT NULL,
  `ATT_034` date DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `flow`
--

CREATE TABLE `flow` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gap`
--

CREATE TABLE `gap` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gap`
--

INSERT INTO `gap` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_07`, `ATT_028`, `ATT_029`, `ATT_036`, `ATT_038`, `ATT_039`, `ATT_040`, `ATT_041`, `ATT_042`, `ATT_043`, `ATT_044`, `ATT_045`, `ATT_046`, `ATT_047`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Gap Test2', '', 'Gap0', '', 'Null', '', '', '', '', '', '', '', '1##2##3##4', 'admin##admin##admin##admin', '2022-07-30##2022-07-30##2022-07-30##2022-07-30', '13:35:27##13:35:34##13:36:33##13:37:18', ' ##Name##Associated Objects##Name', ' ##Gap_mZoOTw0## ##Gap Test', ' ##Gap Test##Business_Application_kXXGcN0##Gap Test2', 'Create##Update##Update##Update', '1', 'admin', '2022-07-30 08:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` date DEFAULT NULL,
  `ATT_028` date DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gsb`
--

CREATE TABLE `gsb` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gsb`
--

INSERT INTO `gsb` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_09`, `ATT_010`, `ATT_011`, `ATT_012`, `ATT_013`, `ATT_014`, `ATT_015`, `ATT_016`, `ATT_017`, `ATT_018`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'GSB_vdgm7z', '', 'GSB0', '', '', '', '', '', '1##2', 'admin##admin', '2022-07-30##2022-07-30', '13:38:50##13:38:52', ' ##Name', ' ##GSB_vdgm7z0', ' ##GSB_vdgm7z', 'Create##Update', '1', 'admin', '2022-07-30 08:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` date DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ict_project_classification`
--

CREATE TABLE `ict_project_classification` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `indicator`
--

CREATE TABLE `indicator` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` date DEFAULT NULL,
  `ATT_013` date DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `national_program`
--

CREATE TABLE `national_program` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organization_unit`
--

CREATE TABLE `organization_unit` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_054` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_056` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_058` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_060` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_063` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_064` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_065` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_066` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_067` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_068` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_069` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_070` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_071` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_072` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization_unit`
--

INSERT INTO `organization_unit` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_07`, `ATT_011`, `ATT_038`, `ATT_043`, `ATT_046`, `ATT_051`, `ATT_054`, `ATT_056`, `ATT_058`, `ATT_060`, `ATT_063`, `ATT_064`, `ATT_065`, `ATT_066`, `ATT_067`, `ATT_068`, `ATT_069`, `ATT_070`, `ATT_071`, `ATT_072`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Organization Unit_7hrgcA0', '', 'OrgUnit0', '', 'Null', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'admin', '2022-07-26', '18:00:14', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-26 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `principle`
--

CREATE TABLE `principle` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` date DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `realization`
--

CREATE TABLE `realization` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(10) NOT NULL,
  `Source` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Destination` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Source_P_Key` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Destination_P_Key` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Source_Attribute_Name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Destination_Attribute_Name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Source_Attribute_Value` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Destination_Attribute_Value` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Relationship_Type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Bidirection_Relationship_Pair` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `Source`, `Destination`, `Source_P_Key`, `Destination_P_Key`, `Source_Attribute_Name`, `Destination_Attribute_Name`, `Source_Attribute_Value`, `Destination_Attribute_Value`, `Relationship_Type`, `Bidirection_Relationship_Pair`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(28, 'Actor', 'Business_Application', NULL, '1', 'Owns Business Applications', 'Business Owner', 'Business_Application_YmJa253', 'Actor_j38ItV1', 'Association', 'BR00001', '1', NULL, '2022-08-01 13:19:36'),
(29, 'Actor', 'Business_Application', NULL, '1', 'Owns Business Applications', 'Business Owner', 'Business_Application_YmJa253', 'Actor_9Ts1W72', 'Association', 'BR00001', '1', NULL, '2022-08-01 13:19:36'),
(30, 'Actor', 'Business_Application', NULL, '1', 'Manages Development of Business Applications', 'Manager Development', 'Business_Application_YmJa253', 'Actor_9Ts1W72', 'Association', 'BR00002', '1', NULL, '2022-08-01 13:19:36'),
(31, 'Actor', 'Business_Application', NULL, '1', 'Manages Operation of Business Applications', 'Manager Operations', 'Business_Application_YmJa253', 'Actor_BAYoD30', 'Association', 'BR00003', '1', NULL, '2022-08-01 13:19:36'),
(65, 'Actor', 'Business_Application', NULL, '45', 'Owns Business Applications', 'Business Owner', 'hussain1', 'Actor_BAYoD30', 'Association', 'BR00001', '1', NULL, '2022-08-01 13:25:41'),
(66, 'Actor', 'Business_Application', NULL, '45', 'Owns Business Applications', 'Business Owner', 'hussain1', 'Actor_j38ItV1', 'Association', 'BR00001', '1', NULL, '2022-08-01 13:25:41'),
(67, 'Actor', 'Business_Application', NULL, '45', 'Owns Business Applications', 'Business Owner', 'hussain1', 'Actor_9Ts1W72', 'Association', 'BR00001', '1', NULL, '2022-08-01 13:25:41'),
(68, 'Actor', 'Business_Application', NULL, '45', 'Manages Development of Business Applications', 'Manager Development', 'hussain1', 'Actor_j38ItV1', 'Association', 'BR00002', '1', NULL, '2022-08-01 13:25:41'),
(69, 'Actor', 'Business_Application', NULL, '45', 'Manages Development of Business Applications', 'Manager Development', 'hussain1', 'Actor_9Ts1W72', 'Association', 'BR00002', '1', NULL, '2022-08-01 13:25:41'),
(70, 'Actor', 'Business_Application', NULL, '45', 'Manages Operation of Business Applications', 'Manager Operations', 'hussain1', 'Actor_9Ts1W72', 'Association', 'BR00003', '1', NULL, '2022-08-01 13:25:41'),
(71, 'Actor', 'Business_Application', NULL, '45', 'Manages Operation of Business Applications', 'Manager Operations', 'hussain1', 'Actor_j38ItV1', 'Association', 'BR00003', '1', NULL, '2022-08-01 13:25:41'),
(72, 'Actor', 'Business_Application', NULL, '45', 'Manages Operation of Business Applications', 'Manager Operations', 'hussain1', 'Actor_BAYoD30', 'Association', 'BR00003', '1', NULL, '2022-08-01 13:25:41'),
(75, 'Gap', 'Business_Application', NULL, '0', 'Business Application', 'Part of Gaps', 'Business_Application_kXXG1', 'Gap Test2', 'Association', 'BR00023', '1', NULL, '2022-08-04 07:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` date DEFAULT NULL,
  `ATT_025` date DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `risk`
--

CREATE TABLE `risk` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` date DEFAULT NULL,
  `ATT_011` date DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_contract`
--

CREATE TABLE `service_contract` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` date DEFAULT NULL,
  `ATT_031` date DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `serving`
--

CREATE TABLE `serving` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` date DEFAULT NULL,
  `ATT_041` date DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_044` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id`, `ATT_01`, `ATT_02`, `ATT_03`, `ATT_04`, `ATT_05`, `ATT_06`, `ATT_07`, `ATT_08`, `ATT_011`, `ATT_012`, `ATT_013`, `ATT_017`, `ATT_018`, `ATT_019`, `ATT_020`, `ATT_021`, `ATT_022`, `ATT_023`, `ATT_028`, `ATT_032`, `ATT_035`, `ATT_038`, `ATT_039`, `ATT_040`, `ATT_041`, `ATT_042`, `ATT_043`, `ATT_044`, `ATT_045`, `ATT_046`, `ATT_047`, `ATT_048`, `ATT_049`, `ATT_050`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'Software_Ix9ymD0', '', 'Software0', '', '', 'Null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1900-01-01', '1900-01-01', '', '1', 'admin', '2022-07-26', '18:00:15', ' ', ' ', ' ', 'Create', '1', 'admin', '2022-07-26 13:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `technology_node`
--

CREATE TABLE `technology_node` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_032` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_034` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `technology_service`
--

CREATE TABLE `technology_service` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_033` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_035` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_036` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_037` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_038` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_039` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_040` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_041` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_042` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_043` date DEFAULT NULL,
  `ATT_044` date DEFAULT NULL,
  `ATT_045` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_046` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_047` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_048` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_049` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_050` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_051` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_052` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_053` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_054` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trm`
--

CREATE TABLE `trm` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_08` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_09` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_020` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_021` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_chain`
--

CREATE TABLE `value_chain` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_07` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_022` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_023` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_024` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_025` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_026` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_027` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_028` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_029` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_030` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_031` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_classification`
--

CREATE TABLE `vendor_classification` (
  `id` int(10) NOT NULL,
  `ATT_01` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_02` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_03` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_04` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_05` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_06` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_010` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_011` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_012` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_013` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_014` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_015` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_016` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_017` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_018` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `ATT_019` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aggregation`
--
ALTER TABLE `aggregation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_function`
--
ALTER TABLE `application_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_interface`
--
ALTER TABLE `application_interface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `architecture_state`
--
ALTER TABLE `architecture_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arm`
--
ALTER TABLE `arm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_information`
--
ALTER TABLE `attributes_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_application`
--
ALTER TABLE `business_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_capability`
--
ALTER TABLE `business_capability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_function`
--
ALTER TABLE `business_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_process`
--
ALTER TABLE `business_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_service`
--
ALTER TABLE `business_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `database`
--
ALTER TABLE `database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_circuit`
--
ALTER TABLE `data_circuit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_project`
--
ALTER TABLE `digital_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gap`
--
ALTER TABLE `gap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gsb`
--
ALTER TABLE `gsb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ict_project_classification`
--
ALTER TABLE `ict_project_classification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicator`
--
ALTER TABLE `indicator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_program`
--
ALTER TABLE `national_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_unit`
--
ALTER TABLE `organization_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principle`
--
ALTER TABLE `principle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realization`
--
ALTER TABLE `realization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk`
--
ALTER TABLE `risk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_contract`
--
ALTER TABLE `service_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving`
--
ALTER TABLE `serving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_node`
--
ALTER TABLE `technology_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_service`
--
ALTER TABLE `technology_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trm`
--
ALTER TABLE `trm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_chain`
--
ALTER TABLE `value_chain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_classification`
--
ALTER TABLE `vendor_classification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aggregation`
--
ALTER TABLE `aggregation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_function`
--
ALTER TABLE `application_function`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_interface`
--
ALTER TABLE `application_interface`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `architecture_state`
--
ALTER TABLE `architecture_state`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `arm`
--
ALTER TABLE `arm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `association`
--
ALTER TABLE `association`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `attributes_information`
--
ALTER TABLE `attributes_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1534;

--
-- AUTO_INCREMENT for table `business_application`
--
ALTER TABLE `business_application`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `business_capability`
--
ALTER TABLE `business_capability`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_function`
--
ALTER TABLE `business_function`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_process`
--
ALTER TABLE `business_process`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_service`
--
ALTER TABLE `business_service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database`
--
ALTER TABLE `database`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_circuit`
--
ALTER TABLE `data_circuit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_project`
--
ALTER TABLE `digital_project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gap`
--
ALTER TABLE `gap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gsb`
--
ALTER TABLE `gsb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ict_project_classification`
--
ALTER TABLE `ict_project_classification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicator`
--
ALTER TABLE `indicator`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `national_program`
--
ALTER TABLE `national_program`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization_unit`
--
ALTER TABLE `organization_unit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `principle`
--
ALTER TABLE `principle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `realization`
--
ALTER TABLE `realization`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_contract`
--
ALTER TABLE `service_contract`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serving`
--
ALTER TABLE `serving`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_node`
--
ALTER TABLE `technology_node`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology_service`
--
ALTER TABLE `technology_service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trm`
--
ALTER TABLE `trm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_chain`
--
ALTER TABLE `value_chain`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_classification`
--
ALTER TABLE `vendor_classification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
