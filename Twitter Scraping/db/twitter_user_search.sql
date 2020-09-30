-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 11:45 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spf`
--

-- --------------------------------------------------------

--
-- Table structure for table `twitter_user_search`
--

CREATE TABLE `twitter_user_search` (
  `twitter_id` int(50) NOT NULL,
  `twitter_user_id` bigint(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `screen_name` text NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status_count` int(10) NOT NULL,
  `followers` int(10) NOT NULL,
  `friends` int(10) NOT NULL,
  `profile_pic_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter_user_search`
--

INSERT INTO `twitter_user_search` (`twitter_id`, `twitter_user_id`, `full_name`, `screen_name`, `location`, `status_count`, `followers`, `friends`, `profile_pic_url`) VALUES
(1, 964059113922609152, 'Luke Slytalker & The Force', '_Luke_Slytalker', 'peelin\' onions off the darknet', 8499, 10007, 1336, 'https://pbs.twimg.com/profile_images/1192262914868035584/NP5wb0va_normal.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `twitter_user_search`
--
ALTER TABLE `twitter_user_search`
  ADD PRIMARY KEY (`twitter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `twitter_user_search`
--
ALTER TABLE `twitter_user_search`
  MODIFY `twitter_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
