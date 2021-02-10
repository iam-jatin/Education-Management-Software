-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 12:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_testing_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_students`
--

CREATE TABLE `all_students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `college_id` varchar(20) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_students`
--

INSERT INTO `all_students` (`id`, `name`, `year`, `branch`, `roll_no`, `college_id`, `phone_number`, `email_id`, `first_name`, `last_name`, `address`, `city`, `country`, `postal`) VALUES
(25, 'Test Student', '1st Year', 'CSE', 2100110001, 'AEC21CS001', 9876543210, 'teststudent@gmail.com', 'Test', 'Student', 'Test Student Address', 'Test City', '', 200001),
(26, 'Test Student 1', '1st Year', 'CSE', 2100110002, 'AEC21CS002', 9876543210, 'teststudent1@gmail.com', 'Test', 'Student 1', 'Test Student Address 1', 'Test City', '', 200001),
(27, 'Test Student 2', '2nd Year', 'CSE', 2100110003, 'AEC21CS003', 9876543210, 'teststudent2@gmail.com', 'Test', 'Student 2', 'Test Student Address 2', 'Test City', '', 200001),
(28, 'Test Student 3', '2nd Year', 'CSE', 2100110004, 'AEC21CS004', 9876543210, 'teststudent3@gmail.com', 'Test', 'Student 3', 'Test Student Address 3', 'Test City', '', 200001),
(29, 'Test Student 4', '3rd Year', 'CSE', 2100110005, 'AEC21CS005', 9876543210, 'teststudent4@gmail.com', 'Test', 'Student 4', 'Test Student Address 4', 'Test City', '', 200001),
(30, 'Test Student 5', '3rd Year', 'CSE', 2100110006, 'AEC21CS006', 9876543210, 'teststudent5@gmail.com', 'Test', 'Student 5', 'Test Student Address 5', 'Test City', '', 200001),
(31, 'Test Student 6', '4th Year', 'CSE', 2100110007, 'AEC21CS007', 9876543210, 'teststudent6@gmail.com', 'Test', 'Student 6', 'Test Student Address 6', 'Test City', '', 200001),
(32, 'Test Student 7', '4th Year', 'CSE', 2100110008, 'AEC21CS008', 9876543210, 'teststudent7@gmail.com', 'Test', 'Student 7', 'Test Student Address 7', 'Test City', '', 200001);

-- --------------------------------------------------------

--
-- Table structure for table `all_teachers`
--

CREATE TABLE `all_teachers` (
  `reg_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department` varchar(35) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `college_id` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `postal` int(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_teachers`
--

INSERT INTO `all_teachers` (`reg_id`, `name`, `first_name`, `last_name`, `department`, `subject`, `college_id`, `email_id`, `password`, `phone_number`, `address`, `city`, `country`, `postal`, `role`) VALUES
(10026, 'Test Teacher', 'Test', 'Teacher', 'CSE', 'Chemistry', 'AECT21001', 'testteacher@gmail.com', '', 9876543210, 'Test Teacher Address', 'Test City', '', 200001, 'Teacher'),
(10027, 'Test Teacher 1', 'Test ', 'Teacher 1', 'Civil Engg.', 'History', 'AECT21002', 'testteacher1@gmail.com', '', 9876543210, 'Test Teacher Address 1', 'Test City', '', 200001, 'Teacher'),
(10028, 'Test Teacher 2', 'Test', 'Teacher 2', 'Mechanical Engg.', 'Physics', 'AECT21003', 'testteacher2@gmail.com', '', 9876543210, 'Test Teacher Address 2', 'Test City', '', 200001, 'Teacher'),
(10029, 'Test Teacher 3', 'Test', 'Teacher 3', 'CSE', 'Computer', 'AECT21CS004', 'testteacher3@gmail.com', '', 9876543210, 'Test Teacher Address 3', 'Test City', '', 200001, 'Teacher'),
(10030, 'Test Staff', 'Test', 'Staff', 'Library', '', 'AECS21001', 'teststaff@gmail.com', '', 9876543210, 'Test Staff Address', 'Test City', '', 200001, 'Staff'),
(10031, ' Test Staff 1', 'Test', 'Staff 1', 'Fee Management', '', 'AECS21002', 'teststaff1@gmail.com', '', 9876543210, 'Test Staff Address 1', 'Test City', '', 200001, 'Staff'),
(10032, 'Test Staff 2', 'Test', 'Staff 2', 'Bus Management', '', 'AECS21003', 'teststaff2@gmail.com', '', 9876543210, 'Test Staff Address 2', 'Test City', '', 200001, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) NOT NULL,
  `roll_no` bigint(15) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_split`
--

CREATE TABLE `course_split` (
  `id` int(11) NOT NULL,
  `headline` varchar(50) NOT NULL,
  `year` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_split`
--

INSERT INTO `course_split` (`id`, `headline`, `year`) VALUES
(1, 'B.Tech (Computer Science and Engineering)', '1st Year'),
(2, 'B.Tech (Computer Science and Engineering)', '2nd Year'),
(3, 'B.Tech (Computer Science and Engineering)', '3rd Year'),
(4, 'B.Tech (Computer Science and Engineering)', '4th Year'),
(5, 'B.Tech (Civil Engineering)', '1st Year'),
(6, 'B.Tech (Civil Engineering)', '2nd Year'),
(7, 'B.Tech (Civil Engineering)', '3rd Year'),
(8, 'B.Tech (Civil Engineering)', '4th Year'),
(9, 'B.Tech (Mechanical Engineering)', '1st Year'),
(10, 'B.Tech (Mechanical Engineering)', '2nd Year'),
(11, 'B.Tech (Mechanical Engineering)', '3rd Year'),
(12, 'B.Tech (Mechanical Engineering)', '4th Year');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE `marksheet` (
  `id` int(11) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `subjects` varchar(30) NOT NULL,
  `ct-1` int(4) NOT NULL,
  `ct-2` int(4) NOT NULL,
  `ct-3` int(4) NOT NULL,
  `ut` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marksheet`
--

INSERT INTO `marksheet` (`id`, `roll_no`, `subjects`, `ct-1`, `ct-2`, `ct-3`, `ut`) VALUES
(1, 2100110001, 'Compiler Design', 27, 29, 30, 70),
(2, 2100110001, 'DBMS', 28, 30, 30, 80),
(3, 2100110003, 'Machine Learning', 30, 30, 29, 90),
(4, 2100110002, 'Compiler Design', 25, 20, 29, 60),
(5, 2100110002, 'DBMS', 22, 23, 24, 89),
(6, 2100110004, 'Machine Learning', 30, 30, 29, 90),
(7, 2100110006, 'Compiler Design', 27, 29, 30, 70),
(8, 2100110005, 'DBMS', 28, 30, 30, 80),
(9, 2100110007, 'Machine Learning', 30, 30, 29, 90),
(10, 2100110005, 'Compiler Design', 25, 20, 29, 60),
(11, 2100110003, 'DBMS', 22, 23, 24, 89),
(12, 2100110004, 'Machine Learning', 30, 30, 29, 90);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(5) NOT NULL,
  `reg_id` int(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `more` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `reg_id`, `month`, `amount`, `status`, `more`) VALUES
(1, 10026, 'January', 30000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(3, 10027, 'January', 10000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(5, 10028, 'January', 30000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(6, 10029, 'January', 10000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(7, 10030, 'January', 10000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(8, 10031, 'January', 30000, 'Paid', 'https://business.paytm.com/payment-invoices'),
(9, 10032, 'January', 10000, 'Paid', 'https://business.paytm.com/payment-invoices');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `user_type`, `password`) VALUES
(1, 'Test Admin', 'admin@gmail.com', 'admin', 'pass@123'),
(2, 'Test User Teacher', 'teacher@gmail.com', 'user', 'pass@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_students`
--
ALTER TABLE `all_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_teachers`
--
ALTER TABLE `all_teachers`
  ADD UNIQUE KEY `reg_id` (`reg_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_split`
--
ALTER TABLE `course_split`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksheet`
--
ALTER TABLE `marksheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_students`
--
ALTER TABLE `all_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `all_teachers`
--
ALTER TABLE `all_teachers`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `course_split`
--
ALTER TABLE `course_split`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `marksheet`
--
ALTER TABLE `marksheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
