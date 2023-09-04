-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 08:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_process_folders`
--

INSERT INTO `business_process_folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'EAXee', 'EAXee', '0', '1', 'admin', '2023-05-06 11:44:35');

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
  `architecture_id` varchar(11) DEFAULT NULL,
  `owner_of_the_object` varchar(256) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_details`
--

CREATE TABLE `chart_details` (
  `id` int(10) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `element_name` varchar(255) DEFAULT NULL,
  `chart_title` varchar(255) DEFAULT NULL,
  `chart_title_in_arabic` varchar(255) DEFAULT NULL,
  `chart_name` varchar(255) DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `chart_operation` varchar(255) DEFAULT NULL,
  `y_axis_data` text DEFAULT NULL,
  `y_axis_label` text DEFAULT NULL,
  `x_axis_label` text DEFAULT NULL,
  `y_axis_title` text DEFAULT NULL,
  `categories_array` text DEFAULT NULL,
  `operation_value` varchar(255) DEFAULT NULL,
  `attributesTextArea` mediumtext DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `architecture_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `idsToNameDict` text NOT NULL DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `filtered` varchar(255) NOT NULL DEFAULT 'false',
  `filtered_details` text DEFAULT NULL,
  `architecture_id` varchar(11) DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `username`, `company_name`, `modelName`, `graph_json`, `idsToNameDict`, `parent_id`, `status`, `filtered`, `filtered_details`, `architecture_id`, `owner_of_the_object`, `last_time_updated`) VALUES
(28, 'admin', 'EAXee', 'vvng', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"BusApp_546\" style=\"shape=label;strokeColor=#0d0d82;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"268.300048828125\" y=\"123.20000457763672\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"AppIntrfce_141\" style=\"shape=label;strokeColor=#0d0d82;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-interface.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"400.300048828125\" y=\"222.40001678466797\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"BusCpblty_0\" style=\"shape=label;strokeColor=#008000;fillColor=#65fc65;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-capability.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" vertex=\"1\" parent=\"1\"><mxGeometry x=\"438.70001220703125\" y=\"94.40003204345703\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell></root></mxGraphModel>', '', 45, '1', 'false', NULL, '39', 'admin', '2023-07-04 11:28:27'),
(29, 'admin', 'EAXee', 'vvng', '<mxGraphModel><root><mxCell id=\"0\"/><mxCell id=\"1\" parent=\"0\"/><mxCell id=\"2\" value=\"BusApp_617\" style=\"shape=label;strokeColor=#0d0d82;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-application.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"268.300048828125\" y=\"123.20000457763672\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"3\" value=\"AppIntrfce_161\" style=\"shape=label;strokeColor=#0d0d82;fillColor=#70e5fa;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/application-interface.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"400.300048828125\" y=\"222.40001678466797\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell><mxCell id=\"4\" value=\"BusCpblty_1\" style=\"shape=label;strokeColor=#008000;fillColor=#65fc65;rounded=1;shadow=0;strokeWidth=0;image=http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/business-capability.svg;imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;\" parent=\"1\" vertex=\"1\"><mxGeometry x=\"438.70001220703125\" y=\"94.40003204345703\" width=\"140\" height=\"60\" as=\"geometry\"/></mxCell></root></mxGraphModel>', '', 47, '1', 'false', 'null', '41', 'admin', '2023-07-04 11:29:32');

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
  `architecture_id` varchar(10) DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `architecture_id`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'EAXee', 'EAXee', '0', '1', 'ARCH_1', 'admin', '2023-08-12 13:01:10'),
(106, 'admin', 'EAXee', 'MZ Enterprises', '0', '1', 'ARCH_10', 'admin', '2023-08-30 07:27:01'),
(107, 'admin', 'EAXee', 'Ah Associates', '0', '1', 'ARCH_11', 'admin', '2023-08-30 07:27:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `architecture_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `idsToNameDict` text NOT NULL DEFAULT '',
  `tooltipDict` text NOT NULL DEFAULT '',
  `contextMenuMultipleRelationsDict` text NOT NULL DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `architecture_id` varchar(11) DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizational_tabs`
--

CREATE TABLE `organizational_tabs` (
  `id` int(10) NOT NULL,
  `tab_id` varchar(255) DEFAULT NULL,
  `tab_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `architecture_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organizational_tabs`
--

INSERT INTO `organizational_tabs` (`id`, `tab_id`, `tab_name`, `username`, `company_name`, `architecture_id`) VALUES
(1, 'tabs-2', 'page1', 'admin', 'EAXee', 'ARCH_1');

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
  `status` text DEFAULT NULL,
  `architecture_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catalog_files`
--
ALTER TABLE `catalog_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `catalog_scripts`
--
ALTER TABLE `catalog_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_details`
--
ALTER TABLE `chart_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `json_graph`
--
ALTER TABLE `json_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matrix_files`
--
ALTER TABLE `matrix_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `navigation_files`
--
ALTER TABLE `navigation_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `organizational_tabs`
--
ALTER TABLE `organizational_tabs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
