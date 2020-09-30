-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 09:29 AM
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
-- Table structure for table `twitter_keyword`
--

CREATE TABLE `twitter_keyword` (
  `id` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `keyword_status` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter_keyword`
--

INSERT INTO `twitter_keyword` (`id`, `keyword`, `keyword_status`) VALUES
(1, 'STUXNET', 'Y'),
(2, 'mohunbagan', 'Y'),
(3, 'eastbengal', 'Y'),
(4, 'ganguly', 'Y'),
(5, 'corona', 'Y'),
(6, 'sushant singh rajput', 'Y'),
(7, 'new education policy', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `twitter_keyword`
--
ALTER TABLE `twitter_keyword`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `twitter_keyword`
--
ALTER TABLE `twitter_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
