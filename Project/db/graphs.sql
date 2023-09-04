-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 12:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graphs`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_process_files`
--

CREATE TABLE `business_process_files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `fileName` text DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `filtered` varchar(255) DEFAULT NULL,
  `filtered_details` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_process_folders`
--

CREATE TABLE `business_process_folders` (
  `id` int(11) NOT NULL,
  `username` mediumtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` mediumtext DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_process_folders`
--

INSERT INTO `business_process_folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'EAXee', 'EAXee', '0', '1', 'admin', '2023-03-01 11:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_files`
--

CREATE TABLE `catalog_files` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `catalog_name` varchar(256) NOT NULL,
  `element_name` varchar(256) NOT NULL,
  `xml_link` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_scripts`
--

CREATE TABLE `catalog_scripts` (
  `id` int(11) NOT NULL,
  `catalog_name` varchar(255) NOT NULL,
  `scriptName` varchar(255) NOT NULL,
  `scriptColumns` text NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chart_details`
--

CREATE TABLE `chart_details` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `element_name` varchar(255) DEFAULT NULL,
  `chart_title` varchar(255) DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) DEFAULT NULL,
  `chart_name` varchar(255) DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(50) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text DEFAULT NULL,
  `y_axis_label` text DEFAULT NULL,
  `x_axis_label` text DEFAULT NULL,
  `y_axis_title` text NOT NULL,
  `categories_array` text DEFAULT NULL,
  `operation_value` varchar(255) DEFAULT NULL,
  `attributesTextArea` mediumtext DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chart_details_copy`
--

CREATE TABLE `chart_details_copy` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `chart_title` varchar(255) DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) DEFAULT NULL,
  `chart_name` varchar(255) DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(50) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text DEFAULT NULL,
  `y_axis_label` text DEFAULT NULL,
  `x_axis_label` text DEFAULT NULL,
  `y_axis_title` text NOT NULL,
  `categories_array` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `modelName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `filtered` varchar(255) NOT NULL DEFAULT 'false',
  `filtered_details` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `username` mediumtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` mediumtext DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'EAXee', 'EAXee', '0', '1', 'admin', '2022-11-26 11:22:40'),
(101, 'ZAP', 'ZAP', 'ZAP', '0', '1', NULL, '2023-01-04 05:19:42'),
(102, 'ZAP', 'c:/Windows/system.ini', 'c:/Windows/system.ini', '0', '1', NULL, '2023-01-04 05:19:56'),
(103, 'ZAP', '../../../../../../../../../../../../../../../../Windows/system.ini', '../../../../../../../../../../../../../../../../Windows/system.ini', '0', '1', NULL, '2023-01-04 05:19:56'),
(104, 'ZAP', 'c:Windowssystem.ini', 'c:Windowssystem.ini', '0', '1', NULL, '2023-01-04 05:19:57'),
(105, 'ZAP', '................................Windowssystem.ini', '................................Windowssystem.ini', '0', '1', NULL, '2023-01-04 05:19:57'),
(106, 'ZAP', '/etc/passwd', '/etc/passwd', '0', '1', NULL, '2023-01-04 05:19:57'),
(107, 'ZAP', '../../../../../../../../../../../../../../../../etc/passwd', '../../../../../../../../../../../../../../../../etc/passwd', '0', '1', NULL, '2023-01-04 05:19:57'),
(108, 'ZAP', 'c:/', 'c:/', '0', '1', NULL, '2023-01-04 05:19:57'),
(109, 'ZAP', '/', '/', '0', '1', NULL, '2023-01-04 05:19:57'),
(110, 'ZAP', '../../../../../../../../../../../../../../../../', '../../../../../../../../../../../../../../../../', '0', '1', NULL, '2023-01-04 05:19:57'),
(111, 'ZAP', 'WEB-INF/web.xml', 'WEB-INF/web.xml', '0', '1', NULL, '2023-01-04 05:19:58'),
(112, 'ZAP', 'WEB-INFweb.xml', 'WEB-INFweb.xml', '0', '1', NULL, '2023-01-04 05:19:58'),
(113, 'ZAP', '/WEB-INF/web.xml', '/WEB-INF/web.xml', '0', '1', NULL, '2023-01-04 05:19:58'),
(114, 'ZAP', 'thishouldnotexistandhopefullyitwillnot', 'thishouldnotexistandhopefullyitwillnot', '0', '1', NULL, '2023-01-04 05:19:58'),
(115, 'ZAP', 'user_register', 'user_register', '0', '1', NULL, '2023-01-04 05:19:58'),
(116, 'ZAP', '/user_register', '/user_register', '0', '1', NULL, '2023-01-04 05:19:58'),
(117, 'ZAP', 'http://www.google.com/', 'http://www.google.com/', '0', '1', NULL, '2023-01-04 05:20:08'),
(118, 'ZAP', 'http://www.google.com:80/', 'http://www.google.com:80/', '0', '1', NULL, '2023-01-04 05:20:08'),
(119, 'ZAP', 'http://www.google.com', 'http://www.google.com', '0', '1', NULL, '2023-01-04 05:20:08'),
(120, 'ZAP', 'http://www.google.com/search?q=OWASP%20ZAP', 'http://www.google.com/search?q=OWASP%20ZAP', '0', '1', NULL, '2023-01-04 05:20:08'),
(121, 'ZAP', 'http://www.google.com:80/search?q=OWASP%20ZAP', 'http://www.google.com:80/search?q=OWASP%20ZAP', '0', '1', NULL, '2023-01-04 05:20:08'),
(122, 'ZAP', 'www.google.com/', 'www.google.com/', '0', '1', NULL, '2023-01-04 05:20:09'),
(123, 'ZAP', 'www.google.com:80/', 'www.google.com:80/', '0', '1', NULL, '2023-01-04 05:20:09'),
(124, 'ZAP', 'www.google.com', 'www.google.com', '0', '1', NULL, '2023-01-04 05:20:09'),
(125, 'ZAP', 'www.google.com/search?q=OWASP%20ZAP', 'www.google.com/search?q=OWASP%20ZAP', '0', '1', NULL, '2023-01-04 05:20:09'),
(126, 'ZAP', 'www.google.com:80/search?q=OWASP%20ZAP', 'www.google.com:80/search?q=OWASP%20ZAP', '0', '1', NULL, '2023-01-04 05:20:09'),
(127, 'ZAP', '5567846636619516933.owasp.org', '5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:24'),
(128, 'ZAP', 'http://5567846636619516933.owasp.org', 'http://5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:24'),
(129, 'ZAP', 'https://5567846636619516933.owasp.org', 'https://5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:24'),
(130, 'ZAP', 'https://5567846636619516933%2eowasp%2eorg', 'https://5567846636619516933%2eowasp%2eorg', '0', '1', NULL, '2023-01-04 05:20:25'),
(131, 'ZAP', 'http:\\5567846636619516933.owasp.org', 'http:\\5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:25'),
(132, 'ZAP', 'https:\\5567846636619516933.owasp.org', 'https:\\5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:25'),
(133, 'ZAP', '//5567846636619516933.owasp.org', '//5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:25'),
(134, 'ZAP', '\\5567846636619516933.owasp.org', '\\5567846636619516933.owasp.org', '0', '1', NULL, '2023-01-04 05:20:26'),
(135, 'ZAP', '<!--#EXEC cmd=\"ls /\"-->', '<!--#EXEC cmd=\"ls /\"-->', '0', '1', NULL, '2023-01-04 05:20:32'),
(136, 'ZAP', '\"><!--#EXEC cmd=\"ls /\"--><', '\"><!--#EXEC cmd=\"ls /\"--><', '0', '1', NULL, '2023-01-04 05:20:32'),
(137, 'ZAP', '<!--#EXEC cmd=\"dir \"-->', '<!--#EXEC cmd=\"dir \"-->', '0', '1', NULL, '2023-01-04 05:20:32'),
(138, 'ZAP', '\"><!--#EXEC cmd=\"dir \"--><', '\"><!--#EXEC cmd=\"dir \"--><', '0', '1', NULL, '2023-01-04 05:20:32'),
(139, 'ZAP', 'ZAP / sleep(15) ', 'ZAP / sleep(15) ', '0', '1', NULL, '2023-01-04 05:21:34'),
(140, 'ZAP', '\"java.lang.Thread.sleep\"(15000)', '\"java.lang.Thread.sleep\"(15000)', '0', '1', NULL, '2023-01-04 05:24:38'),
(141, 'ZAP', 'case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end', 'case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end', '0', '1', NULL, '2023-01-04 05:24:49'),
(142, 'ZAP', 'case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end -- ', 'case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end -- ', '0', '1', NULL, '2023-01-04 05:24:49'),
(143, 'ZAP', '\"case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end -- ', '\"case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end -- ', '0', '1', NULL, '2023-01-04 05:24:49'),
(144, 'ZAP', 'ZAP / case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end ', 'ZAP / case when cast(pg_sleep(15) as varchar) > \' then 0 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:49'),
(145, 'ZAP', 'case randomblob(100000) when not null then 1 else 1 end ', 'case randomblob(100000) when not null then 1 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:55'),
(146, 'ZAP', 'case randomblob(1000000) when not null then 1 else 1 end ', 'case randomblob(1000000) when not null then 1 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:55'),
(147, 'ZAP', '76ko7u9vsno59b4iiu0z8us3guvvdwjk2falcm5rsbslmo1l3kbuywv0d', '76ko7u9vsno59b4iiu0z8us3guvvdwjk2falcm5rsbslmo1l3kbuywv0d', '0', '1', NULL, '2023-01-04 05:24:55'),
(148, 'ZAP', 'case randomblob(10000000) when not null then 1 else 1 end ', 'case randomblob(10000000) when not null then 1 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:55'),
(149, 'ZAP', 'kcbpialq2q8htzummutxwv2ypi3vx06jcwkk04gq713twielai4fvw2fz5', 'kcbpialq2q8htzummutxwv2ypi3vx06jcwkk04gq713twielai4fvw2fz5', '0', '1', NULL, '2023-01-04 05:24:55'),
(150, 'ZAP', 'case randomblob(100000000) when not null then 1 else 1 end ', 'case randomblob(100000000) when not null then 1 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:55'),
(151, 'ZAP', 'case randomblob(1000000000) when not null then 1 else 1 end ', 'case randomblob(1000000000) when not null then 1 else 1 end ', '0', '1', NULL, '2023-01-04 05:24:55'),
(152, 'ZAP', '5374740006388975601.owasp.org', '5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(153, 'ZAP', 'http://5374740006388975601.owasp.org', 'http://5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(154, 'ZAP', 'https://5374740006388975601.owasp.org', 'https://5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(155, 'ZAP', 'https://5374740006388975601%2eowasp%2eorg', 'https://5374740006388975601%2eowasp%2eorg', '0', '1', NULL, '2023-01-04 05:28:19'),
(156, 'ZAP', 'http:\\5374740006388975601.owasp.org', 'http:\\5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(157, 'ZAP', 'https:\\5374740006388975601.owasp.org', 'https:\\5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(158, 'ZAP', '//5374740006388975601.owasp.org', '//5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(159, 'ZAP', '\\5374740006388975601.owasp.org', '\\5374740006388975601.owasp.org', '0', '1', NULL, '2023-01-04 05:28:19'),
(160, 'ZAP', '0W45pz4p', '0W45pz4p', '0', '1', NULL, '2023-01-04 05:28:29'),
(161, 'ZAP', 'ZAP0W45pz4p', 'ZAP0W45pz4p', '0', '1', NULL, '2023-01-04 05:28:29'),
(162, 'ZAP', 'zApPX4sS', 'zApPX4sS', '0', '1', NULL, '2023-01-04 05:28:33'),
(163, 'ZAP', '\"', '\"', '0', '1', NULL, '2023-01-04 05:28:47'),
(164, 'ZAP', 'ZAP\"', 'ZAP\"', '0', '1', NULL, '2023-01-04 05:28:47'),
(165, 'ZAP', ';', ';', '0', '1', NULL, '2023-01-04 05:28:47'),
(166, 'ZAP', 'ZAP;', 'ZAP;', '0', '1', NULL, '2023-01-04 05:28:47'),
(167, 'ZAP', 'ZAP AND 1=1 -- ', 'ZAP AND 1=1 -- ', '0', '1', NULL, '2023-01-04 05:28:48'),
(168, 'ZAP', 'ZAP AND 1=2 -- ', 'ZAP AND 1=2 -- ', '0', '1', NULL, '2023-01-04 05:28:48'),
(169, 'ZAP', 'ZAP OR 1=1 -- ', 'ZAP OR 1=1 -- ', '0', '1', NULL, '2023-01-04 05:28:48'),
(170, 'ZAP', 'ZAP UNION ALL select NULL -- ', 'ZAP UNION ALL select NULL -- ', '0', '1', NULL, '2023-01-04 05:28:49'),
(171, 'ZAP', 'ZAP\" UNION ALL select NULL -- ', 'ZAP\" UNION ALL select NULL -- ', '0', '1', NULL, '2023-01-04 05:28:49'),
(172, 'ZAP', 'ZAP) UNION ALL select NULL -- ', 'ZAP) UNION ALL select NULL -- ', '0', '1', NULL, '2023-01-04 05:28:49'),
(173, 'ZAP', NULL, NULL, '0', '1', NULL, '2023-01-04 05:32:19'),
(174, 'ZAP', '4eyxp8yi352d0krxej6j7kjbvtdgz6lm7dkrxyfzod6xqetl9nhfp5im', '4eyxp8yi352d0krxej6j7kjbvtdgz6lm7dkrxyfzod6xqetl9nhfp5im', '0', '1', NULL, '2023-01-04 05:33:11'),
(175, 'ZAP', 'khfpshqyfgnjpq2amt7d7qdmuo88igep92uolnv7i8f2vu7etxsx54wjt2r', 'khfpshqyfgnjpq2amt7d7qdmuo88igep92uolnv7i8f2vu7etxsx54wjt2r', '0', '1', NULL, '2023-01-04 05:33:12'),
(176, 'ZAP', '\";print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=\"', '\";print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));$var=\"', '0', '1', NULL, '2023-01-04 05:33:22'),
(177, 'ZAP', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}', '${@print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110))}', '0', '1', NULL, '2023-01-04 05:33:22'),
(178, 'ZAP', ';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));', ';print(chr(122).chr(97).chr(112).chr(95).chr(116).chr(111).chr(107).chr(101).chr(110));', '0', '1', NULL, '2023-01-04 05:33:22'),
(179, 'ZAP', '\"+response.write([748,291*910,046)+\"', '\"+response.write([748,291*910,046)+\"', '0', '1', NULL, '2023-01-04 05:33:22'),
(180, 'ZAP', '+response.write({0}*{1})+', '+response.write({0}*{1})+', '0', '1', NULL, '2023-01-04 05:33:23'),
(181, 'ZAP', 'response.write(748,291*910,046)', 'response.write(748,291*910,046)', '0', '1', NULL, '2023-01-04 05:33:23'),
(182, 'ZAP', 'cat /etc/passwd', 'cat /etc/passwd', '0', '1', NULL, '2023-01-04 05:33:34'),
(183, 'ZAP', 'ZAP&cat /etc/passwd&', 'ZAP&cat /etc/passwd&', '0', '1', NULL, '2023-01-04 05:33:34'),
(184, 'ZAP', 'ZAP;cat /etc/passwd;', 'ZAP;cat /etc/passwd;', '0', '1', NULL, '2023-01-04 05:33:34'),
(185, 'ZAP', 'ZAP\"&cat /etc/passwd&\"', 'ZAP\"&cat /etc/passwd&\"', '0', '1', NULL, '2023-01-04 05:33:35'),
(186, 'ZAP', 'ZAP\";cat /etc/passwd;\"', 'ZAP\";cat /etc/passwd;\"', '0', '1', NULL, '2023-01-04 05:33:35'),
(187, 'ZAP', 'ZAP&sleep 1.0&', 'ZAP&sleep 1.0&', '0', '1', NULL, '2023-01-04 05:33:35'),
(188, 'ZAP', 'ZAP;sleep 1.0;', 'ZAP;sleep 1.0;', '0', '1', NULL, '2023-01-04 05:33:35'),
(189, 'ZAP', 'ZAP\"&sleep 1.0&\"', 'ZAP\"&sleep 1.0&\"', '0', '1', NULL, '2023-01-04 05:33:35'),
(190, 'ZAP', 'ZAP\";sleep 1.0;\"', 'ZAP\";sleep 1.0;\"', '0', '1', NULL, '2023-01-04 05:33:35'),
(191, 'ZAP', 'type %SYSTEMROOT%win.ini', 'type %SYSTEMROOT%win.ini', '0', '1', NULL, '2023-01-04 05:33:35'),
(192, 'ZAP', 'ZAP&type %SYSTEMROOT%win.ini', 'ZAP&type %SYSTEMROOT%win.ini', '0', '1', NULL, '2023-01-04 05:33:36'),
(193, 'ZAP', 'ZAP|type %SYSTEMROOT%win.ini', 'ZAP|type %SYSTEMROOT%win.ini', '0', '1', NULL, '2023-01-04 05:33:36'),
(194, 'ZAP', 'ZAP\"&type %SYSTEMROOT%win.ini&\"', 'ZAP\"&type %SYSTEMROOT%win.ini&\"', '0', '1', NULL, '2023-01-04 05:33:36'),
(195, 'ZAP', 'ZAP\"|type %SYSTEMROOT%win.ini', 'ZAP\"|type %SYSTEMROOT%win.ini', '0', '1', NULL, '2023-01-04 05:33:36'),
(196, 'ZAP', 'ZAP&timeout /T 1.0', 'ZAP&timeout /T 1.0', '0', '1', NULL, '2023-01-04 05:33:36'),
(197, 'ZAP', 'ZAP|timeout /T 1.0', 'ZAP|timeout /T 1.0', '0', '1', NULL, '2023-01-04 05:33:36'),
(198, 'ZAP', 'ZAP\"&timeout /T 1.0&\"', 'ZAP\"&timeout /T 1.0&\"', '0', '1', NULL, '2023-01-04 05:33:36'),
(199, 'ZAP', 'ZAP\"|timeout /T 1.0', 'ZAP\"|timeout /T 1.0', '0', '1', NULL, '2023-01-04 05:33:36'),
(200, 'ZAP', 'get-help', 'get-help', '0', '1', NULL, '2023-01-04 05:33:37'),
(201, 'ZAP', 'ZAP;get-help', 'ZAP;get-help', '0', '1', NULL, '2023-01-04 05:33:37'),
(202, 'ZAP', 'ZAP\";get-help', 'ZAP\";get-help', '0', '1', NULL, '2023-01-04 05:33:37'),
(203, 'ZAP', 'ZAP;get-help #', 'ZAP;get-help #', '0', '1', NULL, '2023-01-04 05:33:37'),
(204, 'ZAP', 'ZAP;start-sleep -s 1.0', 'ZAP;start-sleep -s 1.0', '0', '1', NULL, '2023-01-04 05:33:37'),
(205, 'ZAP', 'ZAP\";start-sleep -s 1.0', 'ZAP\";start-sleep -s 1.0', '0', '1', NULL, '2023-01-04 05:33:37'),
(206, 'ZAP', 'ZAP;start-sleep -s 1.0 #', 'ZAP;start-sleep -s 1.0 #', '0', '1', NULL, '2023-01-04 05:33:37'),
(207, 'ZAP', 'utkQKcJhKmiNriwxspEWCFFJsxeYSDKLZeAQGCNQofXfxtlpOaxSkhOiurexnCRhNnpNwHeDlVQEVjlYMDqiPrnlEBfRddijqIhbDhAJhQAVORqNnBIJdtqmfFmXHpRqZXDeDqveBbYlBeROUIlfGmDNJRhKARPPAkqrWVoyqrVWftZovAHrCQUixarqeBwbyvtbKveqMuhLerFGbcUErqlLVUERpKGoWdqXPdKWYYhyTLZnGmRByNWaKqmAxaQ', 'utkQKcJhKmiNriwxspEWCFFJsxeYSDKLZeAQGCNQofXfxtlpOaxSkhOiurexnCRhNnpNwHeDlVQEVjlYMDqiPrnlEBfRddijqIhbDhAJhQAVORqNnBIJdtqmfFmXHpRqZXDeDqveBbYlBeROUIlfGmDNJRhKARPPAkqrWVoyqrVWftZovAHrCQUixarqeBwbyvtbKveqMuhLerFGbcUErqlLVUERpKGoWdqXPdKWYYhyTLZnGmRByNWaKqmAxaQXDMSVIrnwcmqAPYhgDCgKwFAsNVMdSulJfMWPbIkBFrlwmGjCGkOqhiangNDnbviEcJwPBuopfxaxdGpihyrdOlYtdXXElkioxeRTHQRMHAZqnrwlkZfjnjRDUHheqQAbvONtcXypIgScpWQnDCamQdeQUtcgGLXBbKTsfvZMoeAMncjvJJeyhUuxAMPbbwKvtjUykDxAgouRQHLisrvWEhbjrlWktahcnUqpiDegWSfbiMBMNIVnKsxAcyXtyiwpNAqhDWsqSkJVQZhiaxQUwgajGlAyavKMdvGrMElDBJmFHJLXIJPBRvrlAvWujlEEuTRObahXjGbyTPiyeoMPvmQeqIfGFIodpucKVHTVKpPdGeAiaPGWvYsjySwuvvgMFFkBUEnIYyPSTqRTQdIpjnpJJOAhIMvKBbOKwlcIPIrkoFnMHAeTvoqtVvQVwubZOhcHoocAPApJVJVJfDhOfcfFlKMKaiUaplCgMRpSMqhkWHOJCBxKtBuAMGmLvEMNGKHWsQaThgwEGfhVERnVExkTWBJNIYTWUxcmLoJNYotXSCJswsvuCgmFvnnwHEvivvRWctTRwQYgtFgrOCphEIlGFkKxExMgprZpEpqtvvwwiWTDpnKVmxZVpUDAoQcFdjPcOiEqZOcaNYSGYMuYZSpdSgASEaYOdKAIxsZENRhwDPHMgKdcVBDflYxWrfZLGSfTrtTyqJiyHFJkHjrCplvjafyItpywkYIuWwNrHtyIfejEJcyFuWKjrBmLipSDKLcpNoyFDIdAGrKOJOYJQeGQWpOCrbmxHBpUIcyxTajwxvHelEHMWbZDKjWBMDrXHrlMqisxPwjWxkmghxgCUIVylWqsyniZNCOPsJYSAKEWGTjhcZElTprDmfoEvaBwrRJfMqvhRJfbXnDjexecQQNopNRuHuWljfiatGXMQxxOTokLoSUduimAVVxvuXgoDDEDMHRaIqkxdtyGvkNyACMvHhqwnvhwvsfyeOovBBaPUsUsInIJgWhEyQxVcjSahsEsAgxHpJxOjaAVqVCJMWKpTCCiPRAGpRTZPgPwpTUdFYfFjeBnreQGpoepNlCEhsvjqneeLdcThCZBjlannOvodUiYqXbBmXhBUCTfNRnBTCCjKhXfhbUvwPPPVqtJSnOTbmTIBcfLBeFHmijZTDvycaFXANRQysWRuuMExWLqcELneNoaEUslHVphxQieUuVxQxWEbjTBcyEdNPdmcoLlDMtgZDMSkNsFxElCrvBaZWEHaEneWBkXkZSHFOpOLaPleUWlkdCSFCyprFxFnQdkjGtgxgHGlgkoYUHVVRhmxytbxuRSIohofDWStKqtAlrXpttBrYCuXaHnskaZcZHWwavLFiuPIhHaUMiobIYphnISEFMSqJuOGmfqJcTeThKHxGxvMWFhDoykxLDfJdOkjQwhXIocxXcrieAoGTghdmKWROsmXncjvaPqnqUyHfBeoUyhNKYEWbhEbInBusfYJIPAHQGBscfgaYJoAHqAJeIdVkCiAWkHaYsuipHETXlnqNPUEQainVxbyJwilujBxONTbkRLMKSmeByBdMTTJQUnLDxbbHOedIsCTPoiCfRsfeSTrEjwhIWDoYIMeYtQQURqqtLcFFvxHgquLdFryjAowRVGPstWHVqZxvwBixZafiVYQxqTsZZVLNZGmutmkQMDXrSVpXVMHIyYqwkgyiSBADsNAFltdTfOmltCGUZQYbUxBoVirjRBqXnDkImtjplrmFGVgwImfmvwcGyiChwKUJuDCHqgytNJqDstekOgnCCFyGpAijRiYwHAeSGdvdnSRcCHjsSsaVXZdMBaASnsqTVE', '0', '1', NULL, '2023-01-04 05:34:04'),
(208, 'ZAP', 'ZAP%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s\n', 'ZAP%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s%n%s\n', '0', '1', NULL, '2023-01-04 05:34:07'),
(209, 'ZAP', 'ZAP %1!s%2!s%3!s%4!s%5!s%6!s%7!s%8!s%9!s%10!s%11!s%12!s%13!s%14!s%15!s%16!s%17!s%18!s%19!s%20!s%21!n%22!n%23!n%24!n%25!n%26!n%27!n%28!n%29!n%30!n%31!n%32!n%33!n%34!n%35!n%36!n%37!n%38!n%39!n%40!n\n', 'ZAP %1!s%2!s%3!s%4!s%5!s%6!s%7!s%8!s%9!s%10!s%11!s%12!s%13!s%14!s%15!s%16!s%17!s%18!s%19!s%20!s%21!n%22!n%23!n%24!n%25!n%26!n%27!n%28!n%29!n%30!n%31!n%32!n%33!n%34!n%35!n%36!n%37!n%38!n%39!n%40!n\n', '0', '1', NULL, '2023-01-04 05:34:07'),
(210, 'ZAP', 'Set-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', 'Set-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', '0', '1', NULL, '2023-01-04 05:34:13'),
(211, 'ZAP', 'any\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', 'any\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', '0', '1', NULL, '2023-01-04 05:34:13'),
(212, 'ZAP', 'any?\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', 'any?\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', '0', '1', NULL, '2023-01-04 05:34:14'),
(213, 'ZAP', 'any\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', 'any\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', '0', '1', NULL, '2023-01-04 05:34:14'),
(214, 'ZAP', 'any?\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', 'any?\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f', '0', '1', NULL, '2023-01-04 05:34:14'),
(215, 'ZAP', 'any\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f\r\n', 'any\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f\r\n', '0', '1', NULL, '2023-01-04 05:34:14'),
(216, 'ZAP', 'any?\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f\r\n', 'any?\r\nSet-cookie: Tamper=12436926-82db-4921-89e9-babf7b7be98f\r\n', '0', '1', NULL, '2023-01-04 05:34:14'),
(217, 'ZAP', 'null', 'null', '0', '1', NULL, '2023-01-04 05:34:22'),
(218, 'ZAP', '', '', '0', '1', NULL, '2023-01-04 05:34:22'),
(219, 'ZAP', '@', '@', '0', '1', NULL, '2023-01-04 05:34:22'),
(220, 'ZAP', '+', '+', '0', '1', NULL, '2023-01-04 05:34:22'),
(221, 'ZAP', '\0', '\0', '0', '1', NULL, '2023-01-04 05:34:22'),
(222, 'ZAP', '|', '|', '0', '1', NULL, '2023-01-04 05:34:23'),
(223, 'ZAP', NULL, NULL, '0', '1', NULL, '2023-01-04 05:48:46'),
(224, 'ZAP', 'zApPX6sS', 'zApPX6sS', '0', '1', NULL, '2023-01-04 06:25:53'),
(225, 'ZAP', 'rnzyedup8a0g03hymyilo8b529rn98sodkjvrpdva14yquq034qsoz2i', 'rnzyedup8a0g03hymyilo8b529rn98sodkjvrpdva14yquq034qsoz2i', '0', '1', NULL, '2023-01-04 06:30:26'),
(226, 'ZAP', 'knwd7xxbtkcwc9ssorjaoqq2gneti954nri3ya75xvpaoatoextv21ro3', 'knwd7xxbtkcwc9ssorjaoqq2gneti954nri3ya75xvpaoatoextv21ro3', '0', '1', NULL, '2023-01-04 06:30:26'),
(227, 'ZAP', 'az11yp8x8lxxn3h03rhb4do8bb6idfqrxooy6ykg7aims4v12okmvgvic7', 'az11yp8x8lxxn3h03rhb4do8bb6idfqrxooy6ykg7aims4v12okmvgvic7', '0', '1', NULL, '2023-01-04 06:30:27'),
(228, 'ZAP', '\"+response.write([400,300*839,685)+\"', '\"+response.write([400,300*839,685)+\"', '0', '1', NULL, '2023-01-04 06:30:37'),
(229, 'ZAP', 'response.write(400,300*839,685)', 'response.write(400,300*839,685)', '0', '1', NULL, '2023-01-04 06:30:37'),
(230, 'ZAP', 'NqlqyvyfPKgWCkNKAPmWBNhbtyUtphFfrxReIcocjjWjWCYQdbWYiXrpQEtKljXcnNCjwIHpXTAldyBGgOtNcVsaSnQBopOHBTlyWWpMHDtDojovGTIEEijYoNxXQKAZFifIbZyBaevSdijdXaIlCwXxwEAkPHjPbZrvEWPQBPaHtxiLiEoCUSUiBllvfqbExvwqQjUqFPqSIgMaTjpoDmwSYYbjiDRQxybLHpQPgpUACEyUpONorWUNfNLTERj', 'NqlqyvyfPKgWCkNKAPmWBNhbtyUtphFfrxReIcocjjWjWCYQdbWYiXrpQEtKljXcnNCjwIHpXTAldyBGgOtNcVsaSnQBopOHBTlyWWpMHDtDojovGTIEEijYoNxXQKAZFifIbZyBaevSdijdXaIlCwXxwEAkPHjPbZrvEWPQBPaHtxiLiEoCUSUiBllvfqbExvwqQjUqFPqSIgMaTjpoDmwSYYbjiDRQxybLHpQPgpUACEyUpONorWUNfNLTERjMuqveIJFmlnGHYlVepiMcasJKPGcTIhibwSxAJFgyxxWVBcRZbFjkOWpaNZSUhwsBYtHYDjARwcHfgSPPnNqGxSXDUsNDmQUvnUAvnXmMLwNtsbfaqBSeXRQJefHwxLtFJYOxOibuMAySOOAgJoVwHMxZjpZPSUHJBakVIWxkItXkZVIZMorvFYEyZdvfsqAoAdVrnaOtATUeywfeSMCVrgwIVUxUJqkBFSqoZAolGaDyexyepNbjBIGLsDiKZHFcPTGHimYVrekBjsxivRixXlBkAsgjKEkeTsByXtJybgcSwVEgHgPxVbPvvOaWgUfdfRpMRpdAAgVdhIOEQMVTLGnSKvQubPkNGuLcteduVyroRUhTFifXwDUHqGKdCkayVSatJDgRXbCtKfFrTRKiQAMGcdTPIxBDIOjlQGlAQEWpfFykGERUdZTVsEmWWKZFDmwlbqSELuEvPApydMbUyyugeHUOSJKNkbaXVHGiHOaKXDOTPVtFKmmPbaHSATtNSxEabfTGolRxtjyTECDuUftixjHJRedLHFIcFgReXSgtjIHwCuTTZlXZobZxekfniIjgVgvQyFugiEnVqoItfjaSxNKrmhLowOAAqntpjgVCHqmYogjNTGlaUgvobPJLToGgStGVJibpeXDEJMRVypCdoPoERLmBSyEIelVUPCxngdsofkhCaWeFSmqRsQcuxLNSuUwJLpdiEsLJXMJaOwyMpBfpWrbXEAntlaVTbmVcSMvuhpvdUJiMAKZTZpvFnlDDPPlWWMeEQgobVnGuRNYshrdOcIUFWrKuFhyLdjafNiooZZRKZCJJSTYBDjehireVUgHNAumeLHsRnWqVQcYlHTHbkOuBPPZXIqNcxeHIhUIOlfYGJmvcDmPQHqeoLtLPPZDOiIlbJPjjqXWENuPRvNadKcosxcEVURKWdmfeYOCPmrvmaERqaglcXdKWZCBiCwOFekIEEZbEvAWPpHlxTobXYjUEvlkeYBTXeGbgNtDQcBENUsuNgrCbOjmKAfUqqSJIGqxofgAJMMIDXmuEbhIZNyXesQkemgnrGOEsqhynLaJZNfdypgkKsUPkvfNjyaTTIgHFWXMWwOIKoKgBVdvsdCrljupdBoBsEljLxHacocVaIXduoSOTFAOVyOQNPQpHrVBRKSvcNYMFdoJyulZHSPofxJKSMJAJYRpKgSpMUBOVuFVCkKKEgEtDQIbVejsHhZUQdRPwJVZcIOWdVebDMfPWEHvZLFrJrNbIHAJXbOSkVbaIXpZrORktQnlKWcoSwjfyIDdJBMLCqMNlLWwARQdQgQaGMXTDOAKRDIZyIfLkNTyTFCuMdDFCjvNgIyZHTyVayNwnqWLOTiExBdyUfGLTxCFICwnZLpgLKYhAcXHfDkAUFrnbOMTwomYiDmKhlqZhTjgZgAdEjAfOlKimeLvmRFOGwitMJrNSLCjgWVcnDXkLmlqImVTflrXUkWZjftYNoNkVKdWLLVlNdpDCkVKAJCMxXCmDBPdYIHFIErRgYapJFboHgvefYUKPILmoNBgkNOablkSNLqSauOqnrvpQfsoELQFkmcEMAmPoTaIwFBkLfeNNPdwwdmZAsBUPQILxFUWAOKuFMPBhgwZmiyFQDpLXvWTlfLcHkMeoKFlIRdFoURtjERfrqDSNBNFmehNrfsQToyRAdbjWIyxYmPYXjdsoCZYqGCvdefigBSteqEyLeNPYEIXmYseootYTcsHjLAHlZgqJhsZlMsOtAFDxTLBbffIiCONESElbBcgtRijomWaAfIWnGLMEMRpkBnNVRfaAbBUgEuoAtFnxaSQCDiyCRWnEGgILBJfhKdRa', '0', '1', NULL, '2023-01-04 06:31:16'),
(231, 'ZAP', 'Set-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', 'Set-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', '0', '1', NULL, '2023-01-04 06:31:22'),
(232, 'ZAP', 'any\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', 'any\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', '0', '1', NULL, '2023-01-04 06:31:23'),
(233, 'ZAP', 'any?\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', 'any?\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', '0', '1', NULL, '2023-01-04 06:31:23'),
(234, 'ZAP', 'any\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', 'any\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', '0', '1', NULL, '2023-01-04 06:31:23'),
(235, 'ZAP', 'any?\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', 'any?\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78', '0', '1', NULL, '2023-01-04 06:31:23'),
(236, 'ZAP', 'any\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78\r\n', 'any\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78\r\n', '0', '1', NULL, '2023-01-04 06:31:23'),
(237, 'ZAP', 'any?\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78\r\n', 'any?\r\nSet-cookie: Tamper=82981f00-eb49-4623-b36e-fb6d5a873a78\r\n', '0', '1', NULL, '2023-01-04 06:31:23'),
(238, 'ZAP', 'ujjc92wut3n37jvyjbtt3lp70qyg275ru7vwayzvg8s5459rks48qi5s1', 'ujjc92wut3n37jvyjbtt3lp70qyg275ru7vwayzvg8s5459rks48qi5s1', '0', '1', NULL, '2023-01-04 06:51:02'),
(239, 'ZAP', 'f2vh4cvlvxq4o6ggdpqae8xu7n28vnjxdhys27pgnruzc1ehiyu7qf8j4pd', 'f2vh4cvlvxq4o6ggdpqae8xu7n28vnjxdhys27pgnruzc1ehiyu7qf8j4pd', '0', '1', NULL, '2023-01-04 06:51:03'),
(240, 'ZAP', '\"+response.write([48,706*935,743)+\"', '\"+response.write([48,706*935,743)+\"', '0', '1', NULL, '2023-01-04 06:51:13'),
(241, 'ZAP', 'response.write(48,706*935,743)', 'response.write(48,706*935,743)', '0', '1', NULL, '2023-01-04 06:51:13'),
(242, 'ZAP', 'EiWZKaqiMmQxuSxblcetXsNwNHLJCLrcnOprKLXFJILtvLqaRhcaWjxcTSQVZBcSWhpCwiSlOCeoSNjwTkwRuVVCxDQFQVaQQZPTairPilgLgrvsHNWbDIQTaSyAPRRpIZalvUEdsgDvNrZMgpIOGVYymygQDfaFmUoXkiAaTMpLPyhEBDDjtTcShYPvlxjmORITWuuhuruBBNcwXEmtdLrIUygpRHUBYVvsChthmbUeIOlTZjheEpvCxYOlZlF', 'EiWZKaqiMmQxuSxblcetXsNwNHLJCLrcnOprKLXFJILtvLqaRhcaWjxcTSQVZBcSWhpCwiSlOCeoSNjwTkwRuVVCxDQFQVaQQZPTairPilgLgrvsHNWbDIQTaSyAPRRpIZalvUEdsgDvNrZMgpIOGVYymygQDfaFmUoXkiAaTMpLPyhEBDDjtTcShYPvlxjmORITWuuhuruBBNcwXEmtdLrIUygpRHUBYVvsChthmbUeIOlTZjheEpvCxYOlZlFKhSMtUdhZFungfEsYHYwKLMLfrAAePoBZmnpgpWYQYPIMDxDAyJtsXKVdJdBIRcEpyKqCwXLRRwGVuVthDniMSPuiVJPFTEukpRpCgrrnFcpnaVqItOraPIeXKBvlKnUbyePUBJjsrmZNyqPyhVQIvFMDwDlsJnLlmFNJubSLlclZgSWWxkayBuJbkcWgELwtkaHGdFAegccgViVYlhnPDeVfgchprFaKOUbXUqxCCJKQBrAIivkNdglbuvnDlWZnDfHJXyCToBiaXlTpcltdxlPjIJjiSbYOtQIAKVnkFVVOSLcqUIIEQOLZCZddnUZuyxbEpQlsELbTXkcwCgjCpbIKKkEWLAQOrPENSjnWXdnslceSeAjpsgGERJhdySxdijKpSSBOnHnGTBtMsHeNGnZBSdTWHUkdYmhKJcCJOcMHUNVdEeQqXNelyGvXInYZHaYyRDYuIqUQslEcJLpmPPFdVoNwApeTaBWrRbmjgGXQXFteBdOElNJVgQoUWUjaTODgwZHfGwfKGkFRpSmLwHjAUXyVoTqVaQRJxOvGuAahfOwqVBaMHUuQRqufEPYTENJvfSoUHSvrDkLURLhxDrURApXDCOMCEPKpVHSSjAkHoQPnqdQUvyyxwegRVmKKQhWeaONJnVimaEnkIcMJxaHhgmdUWcDVfeDGOpFFvHHBcxCexvAumEknMBZpETsfdSHaiiecEIpQwtKUFwWjpKBPpBZNIPgORtIbHdKhZdoSSEipUuqgrHEBDDHNOWdGEDSyVlfdILramWSoRyvfjBDyIinBDIxSckdOghmEiEMmANaWdNqHLeaApxNGSFxjXsLKxLwTGaAiRTlMIVbxcWeQhGaUpRcftPjZNstWyUXibTLtoForxbMouqnHgnoZblPRuaYvadeeVJFipZOeycBiNIVJgIjNASXcWehogtisewZpOiIDhxLKFhUqdKlZmUhDgffvJakQDndRXvmDaDeVDvLJsPnYdVTCQvkhxulvpsbyMpbNpOyPZXEAxoAUgDRCfZptLklYcLVKvNoUWLmnnpXcDeyRQoraevFEbWSXPCawZqxLXvvCHHTuKSmkimrUWnFyhIhNrdsJqqKvdUcyVvwGvgVxuqlXCYWZqAkXrSfCbfeiiLSMwhbhFyTmaoITciojKqcJWKPrnOodNkrbPOmUynIyZZgZfmRgxHneqOVglkLYUCYWEaZOxNkEFlgMysigHPfCRHVdnLMtavgMEcLNfsVHbpnLrfbKtqPjesyaLnuDOIvsKsqLTNuomevOqLHpmaQplqDZgSdYanTDKTUiZbMLNMOpYQUUifqfFTvfxHNInDkTKUtnaLOAdQRcsOKbZtHkZgBAoApTAqWcOYyXOUobMjgEFoMcTjpOOYpATmgsHIfgrCpfMPpGyIeuGmLijXtJktxtJSOtYaIKjaINIldKddsKaAlQdnneUGYwVKkcEkYsSCUbuIsyEircTHnMggBeQKkVNaCUODDYDpBCXXJsXBUMnFUUZGbDIbObITZyXgvbjuZENmCgTiNoKWukKLPFvZQVeZAhnEjgLMmSHMtZDNSZtTfFwdvLFMTZXFFLbopriMVsikkjjFXtYytxCHCyGcdevvdXYGeUkqaQJbGAgDUeVKsmdoxTKiitvTkFATpWPcHRKLONNsbAUwUZFeRFipEYMEVBsQYOsXvABLrkSQlgAOlelPFRODuOqOGbKgOeCIQyUjXpvttsDNApfaghhWoUEuDTqLqapsaQvdRbXMaqnRycefLguOhAyjVskxfUQrImrxwpUTVUcsmQtguFKfDXyTqoREQyVWAlckNpZfPJpYIHwFjQgAtTaKTx', '0', '1', NULL, '2023-01-04 06:51:51'),
(243, 'ZAP', 'Set-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', 'Set-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', '0', '1', NULL, '2023-01-04 06:51:59'),
(244, 'ZAP', 'any\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', 'any\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', '0', '1', NULL, '2023-01-04 06:51:59'),
(245, 'ZAP', 'any?\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', 'any?\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', '0', '1', NULL, '2023-01-04 06:51:59'),
(246, 'ZAP', 'any\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', 'any\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', '0', '1', NULL, '2023-01-04 06:51:59'),
(247, 'ZAP', 'any?\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', 'any?\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be', '0', '1', NULL, '2023-01-04 06:51:59'),
(248, 'ZAP', 'any\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be\r\n', 'any\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be\r\n', '0', '1', NULL, '2023-01-04 06:51:59'),
(249, 'ZAP', 'any?\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be\r\n', 'any?\r\nSet-cookie: Tamper=ea29b235-9310-4499-807e-bc2014f167be\r\n', '0', '1', NULL, '2023-01-04 06:51:59'),
(250, 'ZAP', NULL, NULL, '0', '1', NULL, '2023-01-04 06:58:37'),
(251, 'ZAP', NULL, NULL, '0', '1', NULL, '2023-01-04 07:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `json_graph`
--

CREATE TABLE `json_graph` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `graphname` text DEFAULT NULL,
  `Graph_json` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matrix_files`
--

CREATE TABLE `matrix_files` (
  `id` int(11) NOT NULL,
  `matrix_name` varchar(255) NOT NULL,
  `matrix_element1` varchar(255) NOT NULL,
  `matrix_element2` varchar(255) NOT NULL,
  `matrix_relation` varchar(255) NOT NULL,
  `parentID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `navigation_files`
--

CREATE TABLE `navigation_files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `navigationName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizational_tabs`
--

CREATE TABLE `organizational_tabs` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizational_tabs_copy`
--

CREATE TABLE `organizational_tabs_copy` (
  `id` int(11) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roadmap`
--

CREATE TABLE `roadmap` (
  `id` int(11) NOT NULL,
  `RoadMap_Name` varchar(255) DEFAULT NULL,
  `Element_Name` varchar(255) DEFAULT NULL,
  `Start_Date` varchar(255) DEFAULT NULL,
  `End_Date` varchar(255) DEFAULT NULL,
  `Legend` varchar(255) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_process_files`
--
ALTER TABLE `business_process_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_process_folders`
--
ALTER TABLE `business_process_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_files`
--
ALTER TABLE `catalog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_scripts`
--
ALTER TABLE `catalog_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_details`
--
ALTER TABLE `chart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_details_copy`
--
ALTER TABLE `chart_details_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `json_graph`
--
ALTER TABLE `json_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrix_files`
--
ALTER TABLE `matrix_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_files`
--
ALTER TABLE `navigation_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizational_tabs_copy`
--
ALTER TABLE `organizational_tabs_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roadmap`
--
ALTER TABLE `roadmap`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_process_files`
--
ALTER TABLE `business_process_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_process_folders`
--
ALTER TABLE `business_process_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog_files`
--
ALTER TABLE `catalog_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_scripts`
--
ALTER TABLE `catalog_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_details`
--
ALTER TABLE `chart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_details_copy`
--
ALTER TABLE `chart_details_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `json_graph`
--
ALTER TABLE `json_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matrix_files`
--
ALTER TABLE `matrix_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navigation_files`
--
ALTER TABLE `navigation_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizational_tabs_copy`
--
ALTER TABLE `organizational_tabs_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
