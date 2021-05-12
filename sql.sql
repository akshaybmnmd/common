-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 04:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `camrent`
--

CREATE TABLE `camrent` (
  `id` int(255) NOT NULL,
  `keyvalue` int(255) DEFAULT NULL,
  `timestamp` varchar(30) NOT NULL,
  `day` int(40) NOT NULL,
  `mnth` int(20) NOT NULL,
  `year` int(10) NOT NULL,
  `page` varchar(200) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camrent`
--

INSERT INTO `camrent` (`id`, `keyvalue`, `timestamp`, `day`, `mnth`, `year`, `page`, `ip`, `type`) VALUES
(1, 1, '1620824199', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(2, 1, '1620824208', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(3, 1, '1620824210', 12, 5, 2021, '../views/account.php', '::1', NULL),
(4, 1, '1620824213', 12, 5, 2021, '../booking/index.php', '::1', NULL),
(5, 1, '1620824215', 12, 5, 2021, '../booking/open-booking.php?id=1', '::1', NULL),
(6, 1, '1620824219', 12, 5, 2021, '../views/account.php', '::1', NULL),
(7, 1, '1620824221', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(8, 1, '1620824222', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(9, 1, '1620824223', 12, 5, 2021, '../booking/index.php', '::1', NULL),
(10, 1, '1620824224', 12, 5, 2021, '../views/account.php', '::1', NULL),
(11, 1, '1620824225', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(12, 1, '1620824712', 12, 5, 2021, '../signup/index.php', '::1', NULL),
(13, 1, '1620824719', 12, 5, 2021, '../login/index.php', '::1', NULL),
(14, 1, '1620824738', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(15, 15, '1620824758', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(16, 15, '1620824782', 12, 5, 2021, '../booking/index.php', '::1', NULL),
(17, 15, '1620824783', 12, 5, 2021, '../views/account.php', '::1', NULL),
(18, 15, '1620824784', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(19, 15, '1620824785', 12, 5, 2021, '../views/account.php', '::1', NULL),
(20, 15, '1620824785', 12, 5, 2021, '../booking/index.php', '::1', NULL),
(21, 15, '1620824788', 12, 5, 2021, '../views/account.php', '::1', NULL),
(22, 15, '1620824789', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(23, 15, '1620824790', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(24, 15, '1620824790', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(25, 15, '1620824790', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(26, 15, '1620824791', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(27, 15, '1620824791', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(28, 15, '1620824791', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(29, 15, '1620824791', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(30, 15, '1620824791', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(31, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(32, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(33, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(34, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(35, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(36, 15, '1620824792', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(37, 15, '1620824879', 12, 5, 2021, '../home.php', '::1', NULL),
(38, 38, '1620828295', 12, 5, 2021, '../views/homepage.php', '::1', NULL),
(39, 38, '1620828298', 12, 5, 2021, '../home.php', '::1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camrent`
--
ALTER TABLE `camrent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camrent`
--
ALTER TABLE `camrent`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
