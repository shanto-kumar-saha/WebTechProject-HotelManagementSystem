-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 05:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_name` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`, `user_type`) VALUES
('a', '$2y$10$aOga8DRnA3poFuqNOYB4pe8FhuMPtIPaGyzeLO3OF9aXjY9ug8OkC', 1),
('ay', '$2y$10$dozzc4U5gpo18SMVOFpnYeF5o.k8WILjcXGb934n4woyCUcusDWIe', 4),
('C', '$2y$10$mtIJkWJ6AtGAA/E7hZpNUuC2KcygJRrIE6xvM7dju6DCzJxIGYcHC', 2),
('D', '$2y$10$Cc.YN2rzKJBwOio45hD63uAvRNzkvf8hDwMGjMtMaKjRIsR3C6MEC', 1),
('m', '$2y$10$Bf.ScMlEmqMvVfJhMmvepeZ8m8JaRygbbmeukpZKKeTX4KdBZDSOe', 2),
('P', '$2y$10$8oOzLl09Z..Pp5AUbi2qkuEshcfYLBlNcseoVdESCRAlCbiajbCRK', 3),
('pk', '$2y$10$U67LRyJhBHrhXHkVO3W2U.TbOigIYnP1VCzhLayRW.yf9nlRoOSZa', 4),
('Q', '$2y$10$LLUZso0cimaFlt85nRprFuar/8z06C7Gkyxz.zCYkTWY/vptYhnle', 2),
('S', '$2y$10$oVo3.iCz7tRpYwYKSgm9eeUze1NiAeWZk4WXayVKcakSpG71/9f3O', 2),
('U', '$2y$10$6HDpvTWe/Eq98TKKGJBrguV./zV6CijgikwMRguUk1JQ7Snk/p70S', 1),
('W', '$2y$10$YlQMDkbCiHeAFAPYNFb6D.Xd3Ix63AcsINuQGpuaTE8I/aGHLUqvC', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pre_booking`
--

CREATE TABLE `pre_booking` (
  `serial` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `payment` int(6) NOT NULL,
  `Totalcost` int(50) NOT NULL,
  `Payment_due` int(10) DEFAULT NULL,
  `check_in` varchar(12) DEFAULT NULL,
  `check_out` varchar(12) DEFAULT NULL,
  `pre_check_in` varchar(12) NOT NULL,
  `pre_check_out` varchar(12) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_booking`
--

INSERT INTO `pre_booking` (`serial`, `user_name`, `room_number`, `payment`, `Totalcost`, `Payment_due`, `check_in`, `check_out`, `pre_check_in`, `pre_check_out`, `status`) VALUES
(32, 'A', 'PS9', 400, 2000, 1600, '2020-09-22', ' 2020-09-24 ', '2020-09-22', '2020-09-24', 'Old'),
(36, 'A', 'PS9', 200, 1000, 800, 'N', 'N', '2020-09-20', '2020-09-21', 'New'),
(37, 'A', 'ED30', 600, 3000, 2400, 'N', 'N', '2020-09-22', '2020-09-24', 'New'),
(38, 'A', 'ED19', 40, 200, 160, 'N', 'N', '2020-09-20', '2020-09-21', 'New'),
(41, 'U', 'ES20', 900, 4500, 3600, '2020-09-22', ' 2020-09-25 ', '2020-09-22', '2020-09-25', 'Old'),
(42, 'U', 'ED33', 900, 4500, 3600, '2020-09-22', ' 2020-09-24 ', '2020-09-22', '2020-09-25', 'Old');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist_timing`
--

CREATE TABLE `receptionist_timing` (
  `serial` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `entry_time` varchar(15) NOT NULL,
  `exit_time` varchar(15) NOT NULL,
  `u_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist_timing`
--

INSERT INTO `receptionist_timing` (`serial`, `user_name`, `date`, `entry_time`, `exit_time`, `u_date`) VALUES
(12, 'M', ' 2020-09-22', ' 07:52:23pm ', ' 08:12:38pm ', 'M. 2020-09-22'),
(13, 'S', ' 2020-09-22', ' 08:15:01pm ', ' 08:15:05pm ', 'S. 2020-09-22'),
(14, 'Q', ' 2020-09-22', ' 08:15:08pm ', ' 08:15:11pm ', 'Q. 2020-09-22'),
(15, 'M', ' 2020-09-23', ' 01:40:25am ', ' 09:50:43pm ', 'M. 2020-09-23'),
(16, 'M', ' 2020-09-24', ' 01:59:24am ', ' 05:41:48am ', 'M. 2020-09-24'),
(17, 'C', ' 2020-09-24', ' 02:23:40am ', ' 02:23:57am ', 'C. 2020-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `reportbox`
--

CREATE TABLE `reportbox` (
  `sl` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `massage` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportbox`
--

INSERT INTO `reportbox` (`sl`, `name`, `receiver`, `subject`, `massage`, `date`) VALUES
(1, 'choyon Das pulock', 'Manager', 'asdassda', 'jhbhbhbhb', '2020-09-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `serial` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `nid_no` varchar(17) NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `total_room_price` int(6) NOT NULL,
  `payment` int(10) NOT NULL,
  `payment_due` int(10) NOT NULL,
  `check_in` varchar(12) NOT NULL,
  `check_out` varchar(12) NOT NULL,
  `booked_by` varchar(10) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`serial`, `user_name`, `phone_no`, `nid_no`, `room_number`, `total_room_price`, `payment`, `payment_due`, `check_in`, `check_out`, `booked_by`, `status`) VALUES
(4, 'A', 0, 'N', 'PS9', 2000, 1000, 1000, '2020-09-22', '2020-09-24', 'M', 'Old'),
(5, 'U', 0, 'N', 'ES20', 4500, 4500, 0, '2020-09-22', '2020-09-24', 'M', 'Old'),
(6, 'U', 0, 'N', 'ED33', 4500, 1500, 3000, '2020-09-22', '2020-09-24', 'U', 'Old'),
(7, 'choyon Das pulock', 1786762093, '', 'ED19', 400, 400, 0, '2020-09-23', '2020-09-25', 'M', 'New'),
(8, 'choyon Das pulock', 1786762093, '', 'BS15', 3000, 1000, 2000, '2020-09-23', '2020-09-25', 'M', 'New'),
(9, 'choyon Das pulock', 1786762093, '5444444444', 'PS18', 3000, 1000, 2000, '2020-09-24', '2020-09-26', 'M', 'New'),
(10, 'choyon Das pulock', 1786762093, '88888', 'PF24', 2500, 500, 2000, '2020-09-24', '2020-09-25', 'M', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

CREATE TABLE `room_details` (
  `serial` int(11) NOT NULL,
  `class` varchar(18) NOT NULL,
  `category` varchar(30) NOT NULL,
  `room_number` varchar(15) NOT NULL,
  `price` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_details`
--

INSERT INTO `room_details` (`serial`, `class`, `category`, `room_number`, `price`) VALUES
(9, 'Premium', 'Single', 'PS9', 1000),
(10, 'Premium', 'Double', 'PD10', 2000),
(11, 'Premium', 'Family', 'PF12', 2500),
(12, 'Economy', 'Single', 'ES12', 1500),
(13, 'Economy', 'Double', 'ED13', 2500),
(14, 'Economy', 'Family', 'EF14', 3000),
(15, 'Basic', 'Single', 'BS15', 1500),
(16, 'Basic', 'Double', 'BD16', 2000),
(17, 'Basic', 'Family', 'BF17', 2500),
(18, 'Premium', 'Single', 'PS18', 1500),
(19, 'Economy', 'Double', 'ED19', 200),
(20, 'Economy', 'Single', 'ES20', 1500),
(21, 'Basic', 'Double', 'BD21', 1500),
(22, 'Premium', 'Single', 'PS22', 1500),
(23, 'Premium', 'Double', 'PD23', 2000),
(24, 'Premium', 'Family', 'PF24', 2500),
(25, 'Economy', 'Single', 'ES25', 1500),
(26, 'Premium', 'Single', 'PS26', 1500),
(27, 'Premium', 'Single', 'PS27', 1500),
(28, 'Premium', 'Single', 'PS28', 1500),
(29, 'Basic', 'Double', 'BD29', 1500),
(30, 'Economy', 'Double', 'ED30', 1500),
(31, 'Premium', 'Single', 'PS31', 1500),
(32, 'Premium', 'Double', 'PD32', 1500),
(33, 'Economy', 'Double', 'ED33', 1500),
(34, 'Economy', 'Family', 'EF34', 1500),
(35, 'Economy', 'Double', 'ED35', 1500),
(36, 'Economy', 'Double', 'ED36', 1500),
(37, 'Economy', 'Double', 'ED37', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `name` varchar(18) NOT NULL,
  `email` varchar(30) NOT NULL,
  `user_name` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `national_id` varchar(10) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `user_name`, `password`, `national_id`, `phone`, `address`) VALUES
(17, 'choyon Das pulock', 'pulock1510@gmail.com', 'a', '$2y$10$aOga8DRnA3poFuqNOYB4pe8FhuMPtIPaGyzeLO3OF9aXjY9ug8OkC', '915', 1786762093, 'House no#55 ,noddapara,daskhinpara jame mosjid road'),
(18, 'choyon Das pulock', 'pulock1510@gmail.com', 'D', '$2y$10$Cc.YN2rzKJBwOio45hD63uAvRNzkvf8hDwMGjMtMaKjRIsR3C6MEC', '23', 1786762093, 'House no#55 ,noddapara,daskhinpara jame mosjid road'),
(19, 'choyon Das pulock', 'pulock1510@gmail.com', 'U', '$2y$10$6HDpvTWe/Eq98TKKGJBrguV./zV6CijgikwMRguUk1JQ7Snk/p70S', '65151156', 1786762093, 'House no#55 ,noddapara,daskhinpara jame mosjid road');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `pre_booking`
--
ALTER TABLE `pre_booking`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `receptionist_timing`
--
ALTER TABLE `receptionist_timing`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `u_date` (`u_date`);

--
-- Indexes for table `reportbox`
--
ALTER TABLE `reportbox`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `room_details`
--
ALTER TABLE `room_details`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `room_number` (`room_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pre_booking`
--
ALTER TABLE `pre_booking`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `receptionist_timing`
--
ALTER TABLE `receptionist_timing`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reportbox`
--
ALTER TABLE `reportbox`
  MODIFY `sl` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_details`
--
ALTER TABLE `room_details`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
