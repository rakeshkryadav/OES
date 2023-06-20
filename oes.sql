-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 11:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` varchar(30) NOT NULL,
  `ansid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6444c91ebd6e7', '6444c91ec7e20'),
('6444c91f4709a', '6444c91f53671'),
('6444c91f907e5', '6444c91fbb174'),
('6444c9200679b', '6444c92019973'),
('6444c92054437', '6444c92060660'),
('6444c920a088d', '6444c920aa0ab'),
('6444c920e4caf', '6444c920f0fa2'),
('6444c9214a82f', '6444c921555d6'),
('6444c921953ea', '6444c9219eec6'),
('6444c921c684c', '6444c921cd5b9'),
('6445152f9f587', '6445153047a7c'),
('644515307cd70', '6445153086869'),
('645f2ad9cae2f', '645f2adb44643'),
('645f2adbc67c3', '645f2adbd29be'),
('645f2adc1fc90', '645f2adc3030f'),
('645f2adc57f26', '645f2adc65a24'),
('645f2adcd8614', '645f2adce61a0'),
('645f2add1c4c5', '645f2add233b0'),
('645f2add5030b', '645f2add5f380'),
('645f2adda8c02', '645f2addb4e1a'),
('645f2addeccab', '645f2addf3988'),
('645f2ade271ba', '645f2ade30a56'),
('6484a1d491295', '6484a1d49e9b5'),
('6484a1d4d54db', '6484a1d4deb67'),
('6484a1d517ca9', '6484a1d52403b'),
('6484a1d577154', '6484a1d585ed3');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('6444c39cb3c73', 'Computer Sc', 1, 0, 10, 10, 'Computer science test', 'cs', '2023-04-23 05:35:24'),
('6445150f50253', 'Abc', 1, 0, 2, 10, 'abc', 'abc', '2023-04-23 11:22:55'),
('645f1dc82cef5', 'Maths', 5, 1, 10, 20, 'Mathematics Test Paper', 'Maths math', '2023-05-13 05:19:04'),
('6484a0f350070', 'Java', 1, 0, 4, 5, 'java test paper', 'java', '2023-06-10 16:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('645cce4697fc4', 'Rakesh Kr Yadav', 'rakesh@gmail.com', 'Project', 'This is a great website.', '2023-05-11', '01:15:18pm'),
('647d6c2da6ba8', 'vivek', 'vivek@gmail.com', 'abc', 'adkjfadfg', '2023-06-05', '07:01:33am'),
('6488a1a8c0fd0', 'Vivek', 'vivek@gmail.com', 'feedback', 'this is a great platform for online examination.\r\nthank-you', '2023-06-13', '07:04:40pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('hjwhdjd12322@gmail.com', '6445150f50253', 0, 2, 0, 2, '2023-06-05 04:58:56'),
('55fgd@gmail.com', '645f1dc82cef5', -4, 10, 1, 9, '2023-06-05 07:10:20'),
('rakesh@gmail.com', '6445150f50253', 0, 2, 0, 2, '2023-06-10 15:44:16'),
('admin@gmail.com', '6445150f50253', 0, 2, 0, 2, '2023-06-10 16:00:09'),
('admin@gmail.com', '6444c39cb3c73', 4, 10, 4, 6, '2023-06-10 16:07:46'),
('rakesh@gmail.com', '6484a0f350070', 3, 4, 3, 1, '2023-06-10 16:19:12'),
('rakesh@gmail.com', '6444c39cb3c73', 4, 10, 4, 7, '2023-06-10 16:21:53'),
('vivek@gmail.com', '6484a0f350070', 3, 4, 3, 1, '2023-06-13 16:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6444c91ebd6e7', 'Charlie Babbage', '6444c91ec7e1a'),
('6444c91ebd6e7', 'Dennis Ritchie', '6444c91ec7e1f'),
('6444c91ebd6e7', 'Charles Babbage', '6444c91ec7e20'),
('6444c91ebd6e7', 'Ken Thompson', '6444c91ec7e21'),
('6444c91f4709a', 'Central Process Unit', '6444c91f5366d'),
('6444c91f4709a', 'Central Processing Unit', '6444c91f53671'),
('6444c91f4709a', 'Central Programming Unit', '6444c91f53672'),
('6444c91f4709a', 'Central Progressive Unit', '6444c91f53673'),
('6444c91f907e5', 'Arithmetic Logic Unit', '6444c91fbb174'),
('6444c91f907e5', 'Arithmetic Local Unit', '6444c91fbb178'),
('6444c91f907e5', 'Advance Logical Unit', '6444c91fbb179'),
('6444c91f907e5', 'None of these', '6444c91fbb17a'),
('6444c9200679b', 'Transistors', '6444c9201996a'),
('6444c9200679b', 'ULSI Chips', '6444c92019972'),
('6444c9200679b', 'Vacuum Tubes', '6444c92019973'),
('6444c9200679b', 'LSI Chips', '6444c92019974'),
('6444c92054437', 'Mini Frame Computer', '6444c92060660'),
('6444c92054437', 'Super Computer', '6444c92060664'),
('6444c92054437', 'Workstations', '6444c92060665'),
('6444c92054437', 'Personal Computer', '6444c92060666'),
('6444c920a088d', 'Random Access Memory', '6444c920aa0a3'),
('6444c920a088d', 'Central Process Unit', '6444c920aa0ab'),
('6444c920a088d', 'Read Only Memory', '6444c920aa0ad'),
('6444c920a088d', 'Hard Disk', '6444c920aa0ae'),
('6444c920e4caf', 'Scanner', '6444c920f0f9d'),
('6444c920e4caf', 'Touch screen monitor', '6444c920f0fa2'),
('6444c920e4caf', 'Speaker', '6444c920f0fa3'),
('6444c920e4caf', 'Digitizer', '6444c920f0fa4'),
('6444c9214a82f', '2', '6444c921555d1'),
('6444c9214a82f', '4', '6444c921555d6'),
('6444c9214a82f', '8', '6444c921555d7'),
('6444c9214a82f', '16', '6444c921555d8'),
('6444c921953ea', '1073741824', '6444c9219eea8'),
('6444c921953ea', '1024', '6444c9219eec4'),
('6444c921953ea', '1000', '6444c9219eec5'),
('6444c921953ea', '125', '6444c9219eec6'),
('6444c921c684c', '34', '6444c921cd5b3'),
('6444c921c684c', '69', '6444c921cd5b7'),
('6444c921c684c', '90', '6444c921cd5b8'),
('6444c921c684c', '122', '6444c921cd5b9'),
('6445152f9f587', 'abc', '6445153047a7c'),
('6445152f9f587', 'b', '6445153047a82'),
('6445152f9f587', 'c', '6445153047a83'),
('6445152f9f587', 'd', '6445153047a84'),
('644515307cd70', 'zy', '644515308685f'),
('644515307cd70', 'xy', '6445153086866'),
('644515307cd70', 'ya', '6445153086868'),
('644515307cd70', 'xyz', '6445153086869'),
('645f2ad9cae2f', '60', '645f2adb4463b'),
('645f2ad9cae2f', '68', '645f2adb44643'),
('645f2ad9cae2f', '70', '645f2adb44644'),
('645f2ad9cae2f', '78', '645f2adb44645'),
('645f2adbc67c3', '720', '645f2adbd29a2'),
('645f2adbc67c3', '100', '645f2adbd29bd'),
('645f2adbc67c3', '120', '645f2adbd29be'),
('645f2adbc67c3', '24', '645f2adbd29bf'),
('645f2adc1fc90', '100', '645f2adc3030f'),
('645f2adc1fc90', '200', '645f2adc30314'),
('645f2adc1fc90', '150', '645f2adc30315'),
('645f2adc1fc90', '50', '645f2adc30316'),
('645f2adc57f26', '60', '645f2adc65a1c'),
('645f2adc57f26', '210', '645f2adc65a22'),
('645f2adc57f26', '65', '645f2adc65a24'),
('645f2adc57f26', '70', '645f2adc65a25'),
('645f2adcd8614', '100', '645f2adce619c'),
('645f2adcd8614', '110', '645f2adce61a0'),
('645f2adcd8614', '95', '645f2adce61a1'),
('645f2adcd8614', '120', '645f2adce61a2'),
('645f2add1c4c5', '-12', '645f2add233a9'),
('645f2add1c4c5', '12', '645f2add233ae'),
('645f2add1c4c5', '18', '645f2add233af'),
('645f2add1c4c5', '38', '645f2add233b0'),
('645f2add5030b', '49.45', '645f2add5f379'),
('645f2add5030b', '49.25', '645f2add5f37e'),
('645f2add5030b', '49.55', '645f2add5f37f'),
('645f2add5030b', '47.35', '645f2add5f380'),
('645f2adda8c02', '1', '645f2addb4e14'),
('645f2adda8c02', '2', '645f2addb4e19'),
('645f2adda8c02', '3', '645f2addb4e1a'),
('645f2adda8c02', '4', '645f2addb4e1b'),
('645f2addeccab', '16', '645f2addf3983'),
('645f2addeccab', '25', '645f2addf3988'),
('645f2addeccab', '36', '645f2addf3989'),
('645f2addeccab', '47', '645f2addf398a'),
('645f2ade271ba', '10', '645f2ade30a56'),
('645f2ade271ba', '20', '645f2ade30a5b'),
('645f2ade271ba', '30', '645f2ade30a5c'),
('645f2ade271ba', '40', '645f2ade30a5d'),
('6484a1d491295', 'processor', '6484a1d49e9ae'),
('6484a1d491295', 'language', '6484a1d49e9b5'),
('6484a1d491295', 'ram', '6484a1d49e9b6'),
('6484a1d491295', 'island', '6484a1d49e9b7'),
('6484a1d4d54db', 'static', '6484a1d4deb61'),
('6484a1d4d54db', 'var', '6484a1d4deb66'),
('6484a1d4d54db', 'final', '6484a1d4deb67'),
('6484a1d4d54db', 'const', '6484a1d4deb68'),
('6484a1d517ca9', '0', '6484a1d524037'),
('6484a1d517ca9', '1', '6484a1d52403b'),
('6484a1d517ca9', '2', '6484a1d52403c'),
('6484a1d517ca9', '3', '6484a1d52403d'),
('6484a1d577154', 'no', '6484a1d585ece'),
('6484a1d577154', 'yes', '6484a1d585ed3'),
('6484a1d577154', 'both a b', '6484a1d585ed4'),
('6484a1d577154', 'none', '6484a1d585ed5');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` varchar(30) NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('6444c39cb3c73', '6444c91ebd6e7', 'Who was the father of computer?', 4, 1),
('6444c39cb3c73', '6444c91f4709a', 'What is the full form of CPU?', 4, 2),
('6444c39cb3c73', '6444c91f907e5', 'What is the full form of ALU?', 4, 3),
('6444c39cb3c73', '6444c9200679b', 'Which electronics component is used in first generation computers?', 4, 4),
('6444c39cb3c73', '6444c92054437', 'Which is not a correct type of a computer?', 4, 5),
('6444c39cb3c73', '6444c920a088d', 'Which part of the computer is considered as Brain of the Computer?', 4, 6),
('6444c39cb3c73', '6444c920e4caf', 'Which can be the input and output devices both?', 4, 7),
('6444c39cb3c73', '6444c9214a82f', ' One Nibble has how many Bits?', 4, 8),
('6444c39cb3c73', '6444c921953ea', 'One GB (Giga Bit) contains how many MB (Giga Byte)?', 4, 9),
('6444c39cb3c73', '6444c921c684c', 'ASCII value of z', 4, 10),
('6445150f50253', '6445152f9f587', 'abc', 4, 1),
('6445150f50253', '644515307cd70', 'xyz', 4, 2),
('645f1dc82cef5', '645f2ad9cae2f', '23+45', 4, 1),
('645f1dc82cef5', '645f2adbc67c3', '5!', 4, 2),
('645f1dc82cef5', '645f2adc1fc90', '20% of 500', 4, 3),
('645f1dc82cef5', '645f2adc57f26', '30 * 2 + 5', 4, 4),
('645f1dc82cef5', '645f2adcd8614', '55+55', 4, 5),
('645f1dc82cef5', '645f2add1c4c5', '10-(-15)+65/5', 4, 6),
('645f1dc82cef5', '645f2add5030b', '100-50.65', 4, 7),
('645f1dc82cef5', '645f2adda8c02', '1+2', 4, 8),
('645f1dc82cef5', '645f2addeccab', '5*5', 4, 9),
('645f1dc82cef5', '645f2ade271ba', '100/10', 4, 10),
('6484a0f350070', '6484a1d491295', 'what is java in computer science', 4, 1),
('6484a0f350070', '6484a1d4d54db', 'which keyword is used to make a variable value constant in java', 4, 2),
('6484a0f350070', '6484a1d517ca9', 'output of the code\r\nint i = 0;\r\nsystem.out.println ++i;', 4, 3),
('6484a0f350070', '6484a1d577154', 'is java case sensitive', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('55fgd@gmail.com', -4, '2023-06-05 07:10:21'),
('hjwhdjd12322@gmail.com', 0, '2023-06-05 04:58:56'),
('rakesh@gmail.com', 39, '2023-06-10 16:21:53'),
('vivek@gmail.com', 3, '2023-06-13 16:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Avijit', 'M', '5588', '55fgd@gmail.com', 848, 'adcaec3805aa912c0d0b14a81bedb6ff'),
('Piyush', 'M', '3245', 'hjwhdjd12322@gmail.com', 9878645234, '8b82bd2ef31d867db598fba5014e1762'),
('Rakesh Kumar Yadav', 'M', '1234', 'rakesh@gmail.com', 2233445566, '827ccb0eea8a706c4c34a16891f84e7b'),
('Vivek', 'M', '903', 'vivek@gmail.com', 9988776655, '01cfcd4f6b8770febfb40cb906715822');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optionid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
