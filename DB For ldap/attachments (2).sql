-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 08:14 AM
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
-- Database: `attachments`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment_files`
--

CREATE TABLE `attachment_files` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `attachmentName` text DEFAULT NULL,
  `graph_json` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_folders`
--

CREATE TABLE `attachment_folders` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `folder_name` text DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `owner_of_the_object` varchar(255) DEFAULT NULL,
  `last_time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attachment_folders`
--

INSERT INTO `attachment_folders` (`id`, `username`, `company_name`, `folder_name`, `parent_id`, `status`, `owner_of_the_object`, `last_time_updated`) VALUES
(1, 'admin', 'EAXee', 'EAXee', '0', '1', 'admin', '2023-05-06 08:22:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment_files`
--
ALTER TABLE `attachment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachment_folders`
--
ALTER TABLE `attachment_folders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment_files`
--
ALTER TABLE `attachment_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachment_folders`
--
ALTER TABLE `attachment_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
