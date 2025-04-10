-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2025 at 09:41 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animals`
--

-- --------------------------------------------------------

--
-- Table structure for table `butterfly`
--

CREATE TABLE `butterfly` (
  `butterfly_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `breed` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int NOT NULL,
  `active_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `butterfly`
--

INSERT INTO `butterfly` (`butterfly_id`, `name`, `description`, `breed`, `age`, `active_date`) VALUES
(8888, 'pixa', 'whimsical outlook on life', 'monarch', 20, '2025-03-01'),
(8890, 'jugg', 'looking toward evolution', 'leafwing', 19, '2025-03-07'),
(8893, 'moni', 'looking for resources', 'monarch', 22, '2025-03-20'),
(8899, 'zoi', 'love to create and socializing', 'Queen', 29, '2025-02-01'),
(8902, 'cat', 'looking for something new and a new perspective', 'leefwing', 30, '2025-04-10'),
(8903, 'jesus', 'building to a better future', 'monarch', 42, '2025-04-10'),
(8904, 'butt', 'im looking for fun', 'unknown', 44, '2025-04-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `butterfly`
--
ALTER TABLE `butterfly`
  ADD PRIMARY KEY (`butterfly_id`),
  ADD UNIQUE KEY `butterfly_id` (`butterfly_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `butterfly`
--
ALTER TABLE `butterfly`
  MODIFY `butterfly_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8905;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
