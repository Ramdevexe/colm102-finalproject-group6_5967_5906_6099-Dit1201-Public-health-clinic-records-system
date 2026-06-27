-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2026 at 01:02 PM
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
-- Database: `public health clinic records system`
--

-- --------------------------------------------------------

--
-- Table structure for table `appiiontment`
--

CREATE TABLE `appiiontment` (
  `APPIONTMENTID` int(11) NOT NULL,
  `AD` date DEFAULT NULL,
  `PATIENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appiiontment`
--

INSERT INTO `appiiontment` (`APPIONTMENTID`, `AD`, `PATIENTID`) VALUES
(101, '2026-06-26', 111),
(102, '2026-06-26', 112),
(103, '2026-06-01', 113),
(104, '2026-06-30', 114),
(105, '2026-06-30', 115);

-- --------------------------------------------------------

--
-- Table structure for table `medicalstaffs`
--

CREATE TABLE `medicalstaffs` (
  `STAFFID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SPECIALITY` varchar(100) DEFAULT NULL,
  `COTACT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalstaffs`
--

INSERT INTO `medicalstaffs` (`STAFFID`, `NAME`, `GENDER`, `SPECIALITY`, `COTACT`) VALUES
(1, 'Imram sesay', 'male', 'neurologist', '+2327788110'),
(2, 'Haja sesay', 'female', 'Detist', '+2327788111'),
(3, 'Juel lawson', 'male', 'Gynaecologist', '+2327788112'),
(4, 'Ahmed', 'male', 'neurologist', '+2327788113');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENTID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `COTACT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENTID`, `NAME`, `GENDER`, `DOB`, `COTACT`) VALUES
(111, 'JOHN DOE', 'MALE', '2007-05-10', '+232733881'),
(112, 'MICHEAL MYAZ', 'MALE', '2007-06-10', '+232733882'),
(113, 'FANTA BANGURA', 'FEMALE', '2007-07-10', '+232733883'),
(114, 'GEORGE WASHINGTON', 'MALE', '2007-08-10', '+232733884'),
(115, 'MADA BIO', 'MALE', '2008-05-10', '+234733881');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `VISITID` int(11) NOT NULL,
  `DOV` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`VISITID`, `DOV`) VALUES
(201, '2026-06-26'),
(202, '2026-06-26'),
(203, '2026-06-01'),
(204, '2026-06-30'),
(205, '2026-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appiiontment`
--
ALTER TABLE `appiiontment`
  ADD PRIMARY KEY (`APPIONTMENTID`),
  ADD KEY `PATIENTID` (`PATIENTID`);

--
-- Indexes for table `medicalstaffs`
--
ALTER TABLE `medicalstaffs`
  ADD PRIMARY KEY (`STAFFID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENTID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`VISITID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appiiontment`
--
ALTER TABLE `appiiontment`
  ADD CONSTRAINT `appiiontment_ibfk_1` FOREIGN KEY (`PATIENTID`) REFERENCES `patient` (`PATIENTID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
