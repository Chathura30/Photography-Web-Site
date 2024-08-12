-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 01:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malcom photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` int(50) NOT NULL,
  `Date` date NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Events` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `bookingdetails`
--

INSERT INTO `bookingdetails` (`Name`, `Email`, `Contact`, `Date`, `Location`, `Events`) VALUES
('', 'chathura20011030@gmail.com', 112123456, '2023-01-05', 'UK', ''),
('chathura jayasanka ', 'chathura20011030@gmail.com', 2147483647, '2023-09-05', 'Sri Lanka', 'portrait'),
('K.H.Chathura jayasanka ', 'chathura20011030@gmail.com', 776682734, '2023-08-09', 'Sri Lanka', 'special event'),
('Sandun tharaka', 'chathura20011030@gmail.com', 112123456, '2023-08-24', 'UK', '');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `name`, `email`, `contact`, `country`) VALUES
(5, '', 'chathurajayasnka@gmail.com', 776682734, 'Scotland'),
(6, '', 'chathura20011030@gmail.com', 776682734, 'Sri Lanka'),
(7, '', 'fashion.art.1030@gmail.com', 2147483647, 'UK'),
(8, '', 'kamal@gmail.com', 112123456, 'Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`ID`, `Name`, `Email`, `Message`) VALUES
(0, '', '', ''),
(2, 'chathura jayasanka ', 'chathura20011030@gmail.com', 'komk'),
(3, 'Sandun tharaka', 'chathura20011030@gmail.com', 'Hi'),
(4, 'Piumal', 'chathura20011030@gmail.com', 'Enquiry'),
(5, 'Sandun tharaka', 'chathura20011030@gmail.com', 'HI');

-- --------------------------------------------------------

--
-- Table structure for table `portrait`
--

CREATE TABLE `portrait` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `Name` varchar(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`Name`, `Description`, `price`) VALUES
('Portraits', 'Studio or outdoor sessions', 1000),
('Special Eve', 'Studio and outdoor sessions', 2000),
('Weddings', 'Full-day coverage and including editing', 8000),
('Wild Life', 'Full Coverage With Editing', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `specialevent`
--

CREATE TABLE `specialevent` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `specialevent`
--

INSERT INTO `specialevent` (`ID`, `Name`, `Imagepath`) VALUES
(1, 'Specialevent', 'chuttersnap-aEnH4hJ_Mrs-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`ID`, `Name`, `Imagepath`) VALUES
(1, 'Weddings', 'alvin-mahmudov-NSVJAAXOYHs-unsplash.jpg'),
(2, 'Portrait', 'christian-buehner-DItYlc26zVI-unsplash.jpg'),
(3, 'Portrait', 'christian-buehner-DItYlc26zVI-unsplash.jpg'),
(4, 'Portrait', 'christopher-campbell-rDEOVtE7vOs-unsplash.jpg'),
(5, 'Weddings', 'olivia-bauso-30UOqDM5QW0-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `wildlife`
--

INSERT INTO `wildlife` (`ID`, `Name`, `Imagepath`) VALUES
(1, 'chathura', 'ahmed-galal-Lh7ec6Fhq-U-unsplash.jpg'),
(2, 'wild life', 'hu-chen-BRXn1JtdXtc-unsplash.jpg'),
(3, 'wild life', 'scott-carroll-favQn8WgRyk-unsplash.jpg'),
(4, 'lion', 'hu-chen-BRXn1JtdXtc-unsplash.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `portrait`
--
ALTER TABLE `portrait`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `specialevent`
--
ALTER TABLE `specialevent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portrait`
--
ALTER TABLE `portrait`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialevent`
--
ALTER TABLE `specialevent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
