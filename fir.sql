-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 10:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fir`
--

-- --------------------------------------------------------

--
-- Table structure for table `registerfir`
--

CREATE TABLE `registerfir` (
  `id` int(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `Date_of_complaint` date NOT NULL,
  `gender` varchar(250) NOT NULL,
  `father` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `afirst_name` varchar(250) NOT NULL,
  `alast_name` varchar(250) NOT NULL,
  `aaddress` varchar(500) NOT NULL,
  `relation` varchar(250) NOT NULL,
  `police` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerfir`
--

INSERT INTO `registerfir` (`id`, `first_name`, `last_name`, `Date_of_complaint`, `gender`, `father`, `address`, `email`, `phone`, `afirst_name`, `alast_name`, `aaddress`, `relation`, `police`, `subject`) VALUES
(13, 'Mohan', 'Rao', '2020-04-28', 'Male', 'Achuta Rao', 'j-716 keshavpuram kalyanpur kanpur', 'chandradeepanjali313@gmail.com', '8090497260', 'gfyiufgu', 'ygfyt', 'j-716 keshavpuram kalyanpur kanpur', 'son', 'yugyg', 'Accidental'),
(14, 'Mohan123', 'Rao', '2020-04-28', 'Male', 'Achuta Rao', 'j-716 keshavpuram kalyanpur kanpur', 'chandradeepanjali313@gmail.com', '8090497260', 'gfyiufgu', 'ygfyt', 'j-716 keshavpuram kalyanpur kanpur', 'son', 'yugyg', 'Accidental'),
(15, 'dh', 'juihiu', '2020-04-28', 'Male', 'uyg', 'tyytf', 't@h.c', 'uyuiu', 'njih', 'uihiuh', 'ihui', 'iuhiu', 'iuhiuh', 'Accidental'),
(16, 'sum', '', '0000-00-00', 'Male', '', '', '', '', '', '', '', '', '', ''),
(17, 'sumesh', 'agnihotri', '0000-00-00', 'Male', 'mahesh', 'j-716 keshavpuram kalyanpur kanpur', 'sumesh.psit@gmail.com', '8090497260', 'ugyt', 'ygbytfyt', 'yfytdf', 'yugfytd', 'hugu', 'Threatning'),
(18, 'sumesh', 'agnihotri', '0000-00-00', 'Male', 'mahesh', 'j-716 keshavpuram kalyanpur kanpur', 'sumesh.psit@gmail.com', '8090497260', 'ugyt', 'ygbytfyt', 'yfytdf', 'yugfytd', 'hugu', 'Threatning');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(10) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`) VALUES
(1, 'sumesh', '986bcdf891179992f3b90b6f7a5addb4', '9f6e6800cfae7749eb6c486619254b9c'),
(2, 'Aman', '2bf2e089898743beb3aa3a88f0a08a82', 'ccda1683d8c97f8f2dff2ea7d649b42c'),
(3, 'aman', 'a7f73cb443fd2fada9b3079e6d816f1f', '7fcefd57e1b4dd0aa950faffd1ef99a9'),
(4, 'aman', 'b1015b84d923391ee2d0c108ba4eeff9', '7fcefd57e1b4dd0aa950faffd1ef99a9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registerfir`
--
ALTER TABLE `registerfir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registerfir`
--
ALTER TABLE `registerfir`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
