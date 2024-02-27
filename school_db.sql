-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2024 at 03:45 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `number` text COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `city` text COLLATE utf8mb4_general_ci NOT NULL,
  `state` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `email`, `number`, `address`, `city`, `state`, `image`) VALUES
(1, 'CITY MONTESSRI SCHOOL', 'cms@gmail.com', '1234567890', 'Kamta', 'Lucknow', 'UP', 'cms.jpg'),
(2, 'CITY CONVENT SCHOOL', 'ccs@gmail.com', '1234567890', 'Chinahat', 'Lucknow', 'UP', 'ccs.jpeg'),
(3, 'ST JOSEPH SCHOOL', 'sjh@gmail.com', '9875653233', 'Faizabad', 'Lucknow', 'UP', 'joseph.jpg'),
(4, 'AMITY UNIVERSITY', 'amity@gmail.com', '9450257803', 'allahabaad', 'Allahabad', 'UP', 'amity.jpg'),
(5, 'jaipuria school', 'jay@gmail.com', '9885642560', 'kanpur', 'Kanpur', 'UP', 'jaipuria.jpeg'),
(6, 'Kendriya Vidyalaya', 'kd@gmail.com', '9895652025', 'patna', 'Kanpur', 'Bihar', 'kendiriya.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
