-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 10:11 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin@123', '01-04-20120 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(7, 'Oncologist', 14, 13, 3000, '2020-04-30', '1:00 PM', '2020-04-08 07:20:16', 1, 1, NULL),
(8, 'General Physician', 17, 10, 4000, '2020-04-17', '3:00 PM', '2020-04-08 07:21:29', 1, 1, NULL),
(9, 'ENT ', 18, 11, 2200, '2020-04-29', '4:00 PM', '2020-04-08 07:22:11', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(11, 'Dentist', 'Janice Johnson', 'Andheri, Mumbai', '3000', 1234567890, 'janice@hms.com', '5db1c0fe513f081097658b7caa45601a', '2020-04-08 07:02:38', '2020-04-08 07:54:26'),
(12, 'Gynecologist/Obstetrician', 'Prerna Bhavsar', 'Malad, Mumbai', '2000', 9876543210, 'prerna@hms.com', '751970acf288952a09bfdcdd0eb6cf61', '2020-04-08 07:03:24', '2020-04-08 07:54:48'),
(13, 'Dematologist', 'Aditya Jeswani', 'Vile Parle, Mumbai', '1000', 1122334455, 'aditya@hms.com', '2ea3760974d3d4d2d6179f30b2e9e0b0', '2020-04-08 07:04:17', '2020-04-08 07:55:13'),
(14, 'Oncologist', 'Shruti More', 'Goregaon, Mumbai', '3000', 9930564305, 'demo@hms.com', 'fea6b215070636bd71df8a5291566ae7', '2020-04-08 07:05:25', '2020-04-08 08:02:04'),
(15, 'Ayurveda', 'Parth Jhunjhunwala', 'Borivali, Mumbai', '2500', 2345623456, 'parth@hms.com', 'fabf7b7466b0da224e4dcaa5cd58b98d', '2020-04-08 07:06:32', '2020-04-08 07:58:03'),
(16, 'Homeopath', 'Kamna Agarwal', 'Mulund, Mumbai', '1500', 3456734567, 'kamna@hms.com', '3dd5d8cc3f01209944c1e9be3689aa1b', '2020-04-08 07:07:29', '2020-04-08 07:58:34'),
(17, 'General Physician', 'Kabir Kapoor', 'Juhu, Mumbai', '4000', 1231231234, 'kabir@hms.com', '516e3f37205eefc34f29ea9e9fe2c047', '2020-04-08 07:08:32', '2020-04-08 07:59:13'),
(18, 'ENT ', 'Sifat Sheikh', 'Mahim, Mumbai', '2200', 987898786, 'sifat@hms.com', '4feb137172fb584371cbc2cb3334dc4f', '2020-04-08 07:09:35', '2020-04-08 07:59:50'),
(19, 'Orthopedic', 'Sanya Khare', 'Worli, Mumbai', '1900', 456778904, 'sanya@hms.com', '0465bd12409c0ac6a6acc9f43c4a3bdd', '2020-04-08 07:11:00', '2020-04-08 08:00:48'),
(20, 'Pediatrician', 'Devansh Dalal', 'Bandra, Mumbai', '4500', 2341232345, 'devansh@hms.com', '3a927c7713c21bf3d51aa6d950fe0d4c', '2020-04-08 07:12:03', '2020-04-08 08:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, NULL, 'demopatient@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:25:57', NULL, 0),
(26, NULL, 'demopatient@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:26:11', NULL, 0),
(27, 14, 'demo@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:27:53', '08-04-2020 01:06:49 PM', 1),
(28, 14, 'demo@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:37:15', '08-04-2020 01:07:17 PM', 1),
(29, NULL, 'devansh@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:44:36', NULL, 0),
(30, NULL, 'devansh@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:44:50', NULL, 0),
(31, NULL, 'devansh@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:45:29', NULL, 0),
(32, NULL, '1231231234 ', 0x3a3a3100000000000000000000000000, '2020-04-08 07:58:47', NULL, 0),
(33, NULL, '2341232345 ', 0x3a3a3100000000000000000000000000, '2020-04-08 08:01:04', NULL, 0),
(34, 14, 'demo@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 08:02:32', '08-04-2020 01:32:35 PM', 1),
(35, 17, 'kabir@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 08:02:50', '08-04-2020 01:32:53 PM', 1),
(36, 18, 'sifat@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 08:03:05', '08-04-2020 01:33:07 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(14, 'Dentist', '2020-04-08 06:57:22', NULL),
(15, 'Gynecologist/Obstetrician', '2020-04-08 06:57:48', NULL),
(16, 'Dematologist', '2020-04-08 06:59:02', NULL),
(17, 'Ayurveda', '2020-04-08 06:59:12', NULL),
(18, 'Homeopath', '2020-04-08 06:59:22', NULL),
(19, 'Oncologist', '2020-04-08 06:59:29', NULL),
(20, 'General Physician', '2020-04-08 06:59:41', NULL),
(21, 'ENT ', '2020-04-08 06:59:51', NULL),
(22, 'Orthopedic', '2020-04-08 07:00:06', NULL),
(23, 'Pediatrician', '2020-04-08 07:00:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(4, 'Rachel Green', 'rachel@hms.com', 6784561234, 'Fax Number?', '2020-04-08 07:46:50', NULL, NULL, NULL),
(5, 'Carol Costa', 'carol@hms.com', 3423452345, ' Working hours?', '2020-04-08 07:47:31', '24 hrs', '2020-04-08 07:48:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(7, 14, 'Pheobe Buffay', 2341232345, 'pheobe@hms.com', 'female', 'Bandra, Mumbai', 23, 'Stomach cancer', '2020-04-08 07:32:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 13, 'demopatient@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:19:56', '08-04-2020 12:50:30 PM', 1),
(7, 10, 'chandler@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:20:52', '08-04-2020 12:51:32 PM', 1),
(8, 11, 'monica@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 07:21:53', '08-04-2020 12:52:15 PM', 1),
(9, 13, 'demopatient@hms.com', 0x3a3a3100000000000000000000000000, '2020-04-08 08:02:18', '08-04-2020 01:32:20 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(10, 'Chandler Bing', 'Goregaon, Mumbai', 'Mumbai', 'male', 'chandler@hms.com', '57f2762158430a552c616e23f41d13e6', '2020-04-08 07:16:28', '2020-04-08 07:50:25'),
(11, 'Monica Geller', 'Malad, Mumbai', 'Mumbai', 'female', 'monica@hms.com', '9bc01cd12593a6f1689f87ae8fc220aa', '2020-04-08 07:17:15', '2020-04-08 07:50:52'),
(12, 'Pheobe Buffay', 'Bandra, Mumbai', 'Mumbai', 'female', 'pheobe@hms.com', 'c5ca17f97e26586b42da6f07a5e76039', '2020-04-08 07:18:23', '2020-04-08 07:51:57'),
(13, 'Ross Geller', 'Churchgate, Mumbai', 'Mumbai', 'female', 'demopatient@hms.com', 'ce14df3c9a27e535fe796a063b8f42be', '2020-04-08 07:19:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
