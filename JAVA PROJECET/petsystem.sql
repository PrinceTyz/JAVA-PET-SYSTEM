-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 20, 2023 at 05:45 AM
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
-- Database: `petsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `owner_info`
--

CREATE TABLE `owner_info` (
  `owner` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Contact_NO` int(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_info`
--

INSERT INTO `owner_info` (`owner`, `address`, `Contact_NO`, `Email`, `id`) VALUES
('prince', 'liwasan', 98424323, 'louie@gmail.com', 4),
('yuri', 'sta rita', 9324234, 'yuri@gmail.com', 10),
('heker', 'pinambaran', 93232323, 'heker@gmail.com', 11),
('prince', 'salangan', 95435432, 'butik@gmail.com', 12),
('john', 'salangan', 9432423, 'princelouielabao@gmail.com', 24),
('werqr', 'wqrewqrqe', 2342342, 'ewrewrwer', 33),
('werewr', 'asdfdasfsa', 9787897, 'sdfsda@gmail.com', 34),
('qweqwe', 'ewrwer', 234234324, 'rtytry@gmail.com', 44),
('prince', 'salangan', 98432432, 'louielabao@gmail.com', 55);

-- --------------------------------------------------------

--
-- Table structure for table `petpatient_info`
--

CREATE TABLE `petpatient_info` (
  `id` int(11) NOT NULL,
  `Pet_name` varchar(50) DEFAULT NULL,
  `Breeds` varchar(50) DEFAULT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petpatient_info`
--

INSERT INTO `petpatient_info` (`id`, `Pet_name`, `Breeds`, `Disease`, `Gender`, `Date`, `Time`, `owner_id`) VALUES
(1, 'qewqewq', 'Bulldog', 'weqeqwewq', 'MALE', '29-05-2023', '22:13:39:PM', 44),
(11, 'prince', 'Bulldog', 'dsdassa', 'FEMALE', '29-05-2023', '11', 11),
(12, 'baby', 'Shizshu', 'infection', 'FEMALE', '29-05-2023', '00:32:21:AM', 12),
(13, 'jacky', 'Bulldog', 'infection', 'FEMALE', '30-05-2023', '10:10:21:AM', 44),
(17, 'happy', 'Shizshu', 'infection', 'FEMALE', '29-05-2023', '00:40:25:AM', 24),
(54, 'husky', 'Bulldog', 'infection', 'FEMALE', '29-05-2023', '', 55),
(234, 'prince', 'Bulldog', 'infection', 'FEMALE', '29-05-2023', '22:14:58:PM', 44);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owner_info`
--
ALTER TABLE `owner_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petpatient_info`
--
ALTER TABLE `petpatient_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_petpatient_owner` (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner_info`
--
ALTER TABLE `owner_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `petpatient_info`
--
ALTER TABLE `petpatient_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `petpatient_info`
--
ALTER TABLE `petpatient_info`
  ADD CONSTRAINT `fk_petpatient_owner` FOREIGN KEY (`owner_id`) REFERENCES `owner_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
