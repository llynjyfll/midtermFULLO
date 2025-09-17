-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2025 at 02:50 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `courseID` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(50) NOT NULL,
  `credits` int NOT NULL,
  `description` varchar(50) NOT NULL,
  `instructorID` int NOT NULL,
  PRIMARY KEY (`courseID`),
  KEY `instructorID` (`instructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `credits`, `description`, `instructorID`) VALUES
(1, 'BSIT', 27, 'techno', 1234),
(2, 'BSIT', 27, 'techno', 5678);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE IF NOT EXISTS `enrollment` (
  `enrollID` int NOT NULL,
  `studentID` int NOT NULL AUTO_INCREMENT,
  `courseID` int NOT NULL,
  `enrollDate` date NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `courseID_2` (`courseID`),
  UNIQUE KEY `studentID` (`studentID`),
  KEY `courseID` (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=2223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollID`, `studentID`, `courseID`, `enrollDate`, `grade`) VALUES
(1122, 1111, 5555, '0000-00-00', 95),
(3344, 2222, 6666, '0000-00-00', 90);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
CREATE TABLE IF NOT EXISTS `instructors` (
  `instructorID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `Password` int NOT NULL,
  PRIMARY KEY (`instructorID`)
) ENGINE=InnoDB AUTO_INCREMENT=5679 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`instructorID`, `name`, `email`, `description`, `Password`) VALUES
(1, 'Franz Barrido', 'Franz@email.com', 'tall', 0),
(2, 'Jay Jagonio', 'Jay@email.com', 'crazy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `studentID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int NOT NULL,
  `course` varchar(50) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=2223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentID`, `name`, `email`, `mobile`, `course`) VALUES
(111, 'Jeny An Tesleforo', 'jenyan@gmail.com', 2147483647, 'BSIT'),
(2222, 'Denmar Daylisan', 'Denmar@gmail.com', 2147483647, 'BSIT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
