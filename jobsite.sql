-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `name`, `email`, `phone`, `skills`, `experience`, `location`, `password`) VALUES
(10, 'Siam', 'siam@gmail.com', 1356453432, 'Python, Java, PHP, SQL', 'none', 'Dhaka', 'siam1234'),
(11, 'sinka', 'sinka@gmail.com', 1898765643, 'Python', 'none', 'Dhaka', 'sinka1234'),
(13, 'aa', 'aa', 11, 'aa', 'aa', 'aa', 'aa'),
(19, 'saba', 'saba@gmail.com', 2147483647, 'C++, JAVA', '6 months', 'Dhaka', '12345'),
(20, 'siam sadman', 'siamsadman@gmail.com', 1916902840, 'Python, Javascript, Web Dev', '6 months', 'Dhaka', '123'),
(21, 'Anngon', 'anngongg@gmail.com', 1851461767, 'Python, ', '1 month', 'gazipur', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `company`, `email`, `industry`, `location`, `password`) VALUES
(2, 'Siam', 'Thryve', 'Thryve@gmail.com', 'manufacturing', 'Dhaka', '1234'),
(3, 'dipita', 'Arong', 'arong@gmail.com', 'manufacturing', 'Dhaka', '1234'),
(4, 'siam sadman', 'Average IT', 'AverageIT@gmail.com', 'IT', 'Tangail', '9988'),
(5, 'Scyther', 'BracU IT', 'bracuit@gmail.com', 'IT', 'Dhaka', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(5) NOT NULL,
  `company_id` int(5) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `location` varchar(50) NOT NULL,
  `required_skill` varchar(200) NOT NULL,
  `required_experience` varchar(200) NOT NULL,
  `salary` int(10) NOT NULL,
  `posted_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `company_id`, `title`, `description`, `location`, `required_skill`, `required_experience`, `salary`, `posted_date`) VALUES
(8, 2, 'ok', 'ok', 'ok', 'ok', 'ok', 0, '2024-09-01'),
(9, 2, 'modarator', 'no money only love', 'Dhaka', 'none', 'none', 500, '2024-01-01'),
(10, 2, 'It assistant', 'A very courageous person to handle daily It related complains ', 'Rajshahi', 'none', 'none', 1000, '2024-02-02'),
(11, 3, 'guard', 'protect ', 'Dhaka', 'strong', '5 years', 5, '2024-03-03'),
(13, 4, 'IT Manager', 'Looking for someone who is excited to be a manager', 'Tangail', 'Fluent in Speaking ', '6 months', 20000, '2024-05-05'),
(14, 4, 'Software Engineer ', 'Looking for a Software Engineer to develop and maintain software applications while ensuring performance. Collaborate with teams to create innovative solutions.', 'Chottogram', 'Python, Java, Rust', '3 years', 60000, '2024-01-01'),
(15, 4, 'Jr. Software Engineer', 'Our company is looking for very hard worker team member.', 'Dhaka', 'java, php', 'none', 14000, '2024-02-05'),
(16, 4, 'Executive It', 'You will driven the  it team as a leader to accomplish technology as per requirements of the company', 'Gazipur', 'communication skill,', '3 years of working experience', 10000, '2024-09-22'),
(17, 5, 'Software Engineer', 'Applicants should be able to work in area of Bangladesh.S/he should be able to knowledge of modern authorization', 'Bangladesh', 'AJJAX,HTTP,JSON', '5 years', 25000, '2024-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `job_application`
--

CREATE TABLE `job_application` (
  `application_id` int(5) NOT NULL,
  `candidate_id` int(5) NOT NULL,
  `job_id` int(5) NOT NULL,
  `rating` int(3) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_application`
--

INSERT INTO `job_application` (`application_id`, `candidate_id`, `job_id`, `rating`, `comments`) VALUES
(1, 10, 8, 7, 'not bad'),
(7, 10, 9, 5, 'good'),
(8, 19, 11, 2, 'bad'),
(17, 20, 14, 10, 'very good'),
(19, 20, 9, NULL, NULL),
(20, 21, 9, 7, 'not bad'),
(21, 21, 13, NULL, NULL),
(23, 20, 15, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `job_application`
--
ALTER TABLE `job_application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `candidate_id_fk` (`candidate_id`),
  ADD KEY `job_id_fk` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `job_application`
--
ALTER TABLE `job_application`
  MODIFY `application_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `job_application`
--
ALTER TABLE `job_application`
  ADD CONSTRAINT `job_application_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  ADD CONSTRAINT `job_application_ibfk_3` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
