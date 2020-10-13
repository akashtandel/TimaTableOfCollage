-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 09:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcal19005`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`c_id`, `c_name`, `status`) VALUES
(1, 'A-201', 'yes'),
(2, 'A-202', 'yes'),
(3, 'A-203', 'yes'),
(4, 'A-204', 'yes'),
(5, 'A-205', 'yes'),
(6, 'A-206', 'yes'),
(7, 'B-201', 'yes'),
(8, 'B-202', 'yes'),
(9, 'B-203', 'yes'),
(10, 'B-204', 'yes'),
(11, 'B-205', 'yes'),
(12, 'B-206', 'yes'),
(13, '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty`
--

CREATE TABLE `tbl_faculty` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_nname` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faculty`
--

INSERT INTO `tbl_faculty` (`f_id`, `f_name`, `f_nname`, `status`) VALUES
(1, 'Ms.Khusbu Y Patel', 'KYP', 'yes'),
(2, 'Ms.Jainisha H Taillor', 'JHT', 'yes'),
(3, 'Dr.Jaishree K Tailor', 'JKT', 'yes'),
(4, 'Ms.Zarana M Kanani', 'ZMK', 'yes'),
(5, 'Mr.Kevin K Bhavsar', 'KKB', 'yes'),
(6, 'Dr.Jikitsha R Sheth', 'JRS', 'yes'),
(7, 'Dr.Kalpesh B Lad', 'KBL', 'yes'),
(8, 'Mr.Pratik B Nayak', 'PBN', 'yes'),
(9, 'Mr.Vivek R Fumakia', 'VRF', 'yes'),
(10, '', '', 'yes'),
(11, 'Mr.Amish D Patel', 'ADP', 'yes'),
(12, 'Ms.Puja R Sharma', 'PRS', 'yes'),
(13, 'Ms.Unnati Y Shah', 'UYS', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program`
--

CREATE TABLE `tbl_program` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_program`
--

INSERT INTO `tbl_program` (`p_id`, `p_name`, `status`) VALUES
(1, 'MCA', 'yes'),
(2, 'BCA', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semester`
--

CREATE TABLE `tbl_semester` (
  `sem_id` int(11) NOT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_semester`
--

INSERT INTO `tbl_semester` (`sem_id`, `semester`, `status`) VALUES
(1, '1st', 'yes'),
(2, '2en', 'yes'),
(3, '3rd', 'yes'),
(4, '4th', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `s_id` int(11) NOT NULL,
  `s_code` varchar(50) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`s_id`, `s_code`, `s_name`, `status`) VALUES
(1, '040010424', 'Advanced web programming paradigm', 'yes'),
(2, '040010425', 'Mobile Application Development ', 'yes'),
(3, '040010426', 'Fundamentals of Data Science ', 'yes'),
(4, '040010427', 'Introduction to Knowledge Management ', 'yes'),
(5, '040010405', 'Project ', 'yes'),
(6, '040010406', 'Dissertation ', 'yes'),
(7, '040010420', 'Information Security and Digital Forensics ', 'yes'),
(8, '040010428', 'Introduction to Information Retrieval ', 'yes'),
(9, '040010422', ' Fundamentals of Digital Image Processing ', 'yes'),
(10, '040010429', ' Fundamentals of Search Engine Optimization ', 'yes'),
(11, '', 'Elective*', 'yes'),
(12, '01001', 'sem1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjectallocation`
--

CREATE TABLE `tbl_subjectallocation` (
  `sa_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjectallocation`
--

INSERT INTO `tbl_subjectallocation` (`sa_id`, `p_id`, `sem_id`, `f_id`, `s_id`, `status`) VALUES
(1, 1, 4, 1, 1, 'yes'),
(2, 1, 4, 2, 2, 'yes'),
(3, 1, 4, 3, 3, 'yes'),
(4, 1, 4, 4, 4, 'yes'),
(5, 1, 4, 5, 7, 'yes'),
(6, 1, 4, 6, 8, 'yes'),
(7, 1, 4, 7, 9, 'yes'),
(8, 1, 4, 8, 10, 'yes'),
(9, 1, 4, 9, 5, 'yes'),
(10, 1, 4, 10, 11, 'yes'),
(11, 1, 1, 1, 12, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjecttime`
--

CREATE TABLE `tbl_subjecttime` (
  `st_id` int(11) NOT NULL,
  `sa_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjecttime`
--

INSERT INTO `tbl_subjecttime` (`st_id`, `sa_id`, `c_id`, `type`, `status`) VALUES
(1, 1, 9, 'TH', 'yes'),
(3, 2, 5, 'P', 'yes'),
(4, 2, 5, 'P', 'yes'),
(5, 3, 9, 'TH', 'yes'),
(7, 3, 9, 'TH', 'yes'),
(8, 1, 1, 'TH', 'yes'),
(9, 9, 9, 'PW', 'yes'),
(10, 9, 9, 'PW', 'yes'),
(11, 1, 5, 'P', 'yes'),
(12, 10, 13, 'TH', 'yes'),
(13, 1, 5, 'P', 'yes'),
(14, 2, 9, 'TH', 'yes'),
(15, 1, 9, 'TH', 'yes'),
(17, 10, 13, 'TH', 'yes'),
(18, 10, 13, 'P', 'yes'),
(19, 4, 9, 'TH', 'yes'),
(20, 1, 9, 'TH', 'yes'),
(21, 2, 5, 'P', 'yes'),
(22, 2, 5, 'P', 'yes'),
(23, 4, 9, 'TH', 'yes'),
(24, 9, 9, 'PW', 'yes'),
(25, 1, 9, 'TH', 'yes'),
(26, 2, 9, 'TH', 'yes'),
(27, 3, 5, 'P', 'yes'),
(28, 3, 5, 'P', 'yes'),
(29, 10, 13, 'P', 'yes'),
(33, 1, 5, 'P', 'yes'),
(34, 9, 9, 'PW', 'yes'),
(35, 9, 9, 'PW', 'yes'),
(36, 9, 9, 'PW', 'yes'),
(37, 10, 13, 'TH', 'yes'),
(38, 1, 5, 'P', 'yes'),
(39, 3, 9, 'TH', 'yes'),
(40, 2, 9, 'TH', 'yes'),
(41, 4, 9, 'TH', 'yes'),
(42, 3, 5, 'P', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timetable`
--

CREATE TABLE `tbl_timetable` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `time1` varchar(50) NOT NULL,
  `time2` varchar(50) NOT NULL,
  `monday` varchar(100) NOT NULL,
  `tuesday` varchar(100) NOT NULL,
  `wednesday` varchar(100) NOT NULL,
  `thursday` varchar(100) NOT NULL,
  `friday` varchar(100) NOT NULL,
  `saturday` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timetable`
--

INSERT INTO `tbl_timetable` (`id`, `p_id`, `time1`, `time2`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`) VALUES
(1, 1, '08:30', '09:25', '040010422<br>ADP<br>B-203', '040010426<br>JKT<br>B-203', '040010425<br>JHT<br>B-203', '040010427<br>ZMK<br>B-203\r\n	\r\n', 'Elective*(p)', ''),
(2, 1, '09:25', '10:20', '040010422<br>ADP<br>B-203', '040010405(PW)<br>JRS&ZMK\r\n<br>B-203', 'Elective*(T)', '040010405(PW)<br>KYP&JHT\r\n<br>B-203', 'Elective*(T)', ''),
(3, 1, '10:20', '11:15', '040010422<br>ADP<br>B-203', '040010405(PW)<br>JKT&PRS\r\n<br>B-203', 'Elective*(p)', '040010405(PW)<br>KYP&KBL\r\n<br>B-203', '040010426<br>JKT\r\n<br>B-203', ''),
(4, 1, '11:55', '12:50', '040010422<br>ADP<br>B-203', '040010424(P)<br>KYP&VRF\r\n<br>A-205&A-206', '040010427<br>ZMK\r\n<br>B-203', '040010424<br>KYP\r\n<br>B-203', '040010424(P)<br>KYP&JHT\r\n<br>A-205&A-206', ''),
(5, 1, '12:50', '01:45', '040010422<br>ADP<br>B-203', '040010424(P)<br>KYP&VRF\r\n<br>A-205&A-206', '040010424<br>KYP\r\n<br>B-203', '040010425<br>JHT\r\n<br>B-203', '040010424(P)<br>KYP&VRF\r\n<br>A-205&A-206', ''),
(6, 1, '01:55', '02:50', '040010422<br>ADP<br>B-203', '040010425<br>JHT\r\n<br>B-203', '040010425(P)<br>JHT&UYS\r\n<br>A-205&A-206', '040010426(P)<br>JKT&ADP\r\n<br>A-205&A-206', '040010405(PW)<br>ZKM&KBL<br>\r\nB-203', ''),
(7, 1, '02:50', '03:45', '040010422<br>ADP<br>B-203', '040010424<br>KYP\r\n<br>B-203', '040010425(P)<br>JHT&KKB<br>\r\nA-205&A-206', '040010426(P)<br>JKT&ZKM<br>\r\nA-205&A-206', '040010425<br>JHT<br>\r\nB-203', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timetable1`
--

CREATE TABLE `tbl_timetable1` (
  `t_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `time1` varchar(20) DEFAULT NULL,
  `time2` varchar(20) DEFAULT NULL,
  `day` varchar(20) NOT NULL,
  `st_id` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timetable1`
--

INSERT INTO `tbl_timetable1` (`t_id`, `p_id`, `sem_id`, `time1`, `time2`, `day`, `st_id`, `status`) VALUES
(1, 1, 4, '08:30', '09:25', 'monday', 1, 'yes'),
(3, 1, 4, '02:50', '03:45', 'monday', 3, 'yes'),
(4, 1, 4, '01:55', '02:50', 'monday', 4, 'yes'),
(5, 1, 4, '12:50', '01:45', 'monday', 5, 'yes'),
(7, 1, 4, '08:30', '09:25', 'tuesday', 7, 'yes'),
(8, 1, 1, '08:30', '09:25', 'monday', 8, 'yes'),
(9, 1, 4, '09:25', '10:20', 'tuesday', 9, 'yes'),
(10, 1, 4, '10:20', '11:15', 'tuesday', 10, 'yes'),
(11, 1, 4, '11:55', '12:50', 'tuesday', 11, 'yes'),
(12, 1, 4, '11:55', '12:50', 'monday', 12, 'yes'),
(13, 1, 4, '12:50', '01:45', 'tuesday', 13, 'yes'),
(14, 1, 4, '01:55', '02:50', 'tuesday', 14, 'yes'),
(15, 1, 4, '02:50', '03:45', 'tuesday', 15, 'yes'),
(17, 1, 4, '09:25', '10:20', 'wednesday', 17, 'yes'),
(18, 1, 4, '10:20', '11:15', 'wednesday', 18, 'yes'),
(19, 1, 4, '11:55', '12:50', 'wednesday', 19, 'yes'),
(20, 1, 4, '12:50', '01:45', 'wednesday', 20, 'yes'),
(21, 1, 4, '01:55', '02:50', 'wednesday', 21, 'yes'),
(22, 1, 4, '02:50', '03:45', 'wednesday', 22, 'yes'),
(23, 1, 4, '08:30', '09:25', 'thursday', 23, 'yes'),
(24, 1, 4, '09:25', '10:20', 'thursday', 24, 'yes'),
(25, 1, 4, '11:55', '12:50', 'thursday', 25, 'yes'),
(26, 1, 4, '12:50', '01:45', 'thursday', 26, 'yes'),
(27, 1, 4, '02:50', '03:45', 'thursday', 27, 'yes'),
(28, 1, 4, '01:55', '02:50', 'thursday', 28, 'yes'),
(29, 1, 4, '08:30', '09:25', 'friday', 29, 'yes'),
(33, 1, 4, '12:50', '01:45', 'friday', 33, 'yes'),
(34, 1, 4, '01:55', '02:50', 'friday', 34, 'yes'),
(35, 1, 4, '02:50', '03:45', 'friday', 35, 'yes'),
(36, 1, 4, '10:20', '11:15', 'thursday', 36, 'yes'),
(37, 1, 4, '09:25', '10:20', 'friday', 37, 'yes'),
(38, 1, 4, '11:55', '12:50', 'friday', 38, 'yes'),
(39, 1, 4, '10:20', '11:15', 'friday', 39, 'yes'),
(40, 1, 4, '08:30', '09:25', 'wednesday', 40, 'yes'),
(41, 1, 4, '09:25', '10:20', 'monday', 41, 'yes'),
(42, 1, 4, '10:20', '11:15', 'monday', 42, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`) VALUES
(1, 'Akash', '9574122890', 'tandelakash90@gmail.com'),
(2, 'ASHISH', '9876543213', 'ashish007@gmail.com'),
(3, 'BHARTI', '9876567890', 'bharti87@gmail.com'),
(22, 'akash', 'aaka', 'aaak'),
(23, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_program`
--
ALTER TABLE `tbl_program`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_semester`
--
ALTER TABLE `tbl_semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_subjectallocation`
--
ALTER TABLE `tbl_subjectallocation`
  ADD PRIMARY KEY (`sa_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `f_id` (`f_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `tbl_subjecttime`
--
ALTER TABLE `tbl_subjecttime`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `sa_id` (`sa_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timetable1`
--
ALTER TABLE `tbl_timetable1`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_faculty`
--
ALTER TABLE `tbl_faculty`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_program`
--
ALTER TABLE `tbl_program`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_subjectallocation`
--
ALTER TABLE `tbl_subjectallocation`
  ADD CONSTRAINT `tbl_subjectallocation_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tbl_program` (`p_id`),
  ADD CONSTRAINT `tbl_subjectallocation_ibfk_2` FOREIGN KEY (`sem_id`) REFERENCES `tbl_semester` (`sem_id`),
  ADD CONSTRAINT `tbl_subjectallocation_ibfk_3` FOREIGN KEY (`f_id`) REFERENCES `tbl_faculty` (`f_id`),
  ADD CONSTRAINT `tbl_subjectallocation_ibfk_4` FOREIGN KEY (`s_id`) REFERENCES `tbl_subject` (`s_id`);

--
-- Constraints for table `tbl_subjecttime`
--
ALTER TABLE `tbl_subjecttime`
  ADD CONSTRAINT `tbl_subjecttime_ibfk_1` FOREIGN KEY (`sa_id`) REFERENCES `tbl_subjectallocation` (`sa_id`),
  ADD CONSTRAINT `tbl_subjecttime_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `tbl_class` (`c_id`);

--
-- Constraints for table `tbl_timetable1`
--
ALTER TABLE `tbl_timetable1`
  ADD CONSTRAINT `tbl_timetable1_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `tbl_program` (`p_id`),
  ADD CONSTRAINT `tbl_timetable1_ibfk_2` FOREIGN KEY (`sem_id`) REFERENCES `tbl_semester` (`sem_id`),
  ADD CONSTRAINT `tbl_timetable1_ibfk_3` FOREIGN KEY (`st_id`) REFERENCES `tbl_subjecttime` (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
