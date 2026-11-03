-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 07:30 AM
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
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `manager_name`, `email`, `phone_number`, `location`, `status`) VALUES
(1, 'Lalbagh ', 'Jahid ', 'sdlk@ljdk.fdf', '443555', 'dhaka', 'Operating'),
(2, 'Dhanmondi', 'Kabir ', 'Kabir@jksjh.dopsd', '4565565676', 'Dhanmondi ', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(11) NOT NULL,
  `traching_id` int(11) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `parcel_type` varchar(50) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT 0.00,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `rider_id` int(11) DEFAULT NULL,
  `tracking_id` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `traching_id`, `sender_name`, `receiver_name`, `origin`, `destination`, `parcel_type`, `weight`, `delivery_charge`, `status`, `date`, `rider_id`, `tracking_id`, `updated_at`) VALUES
(15, 0, 'Raju', 'Mithu', '', 'Rangpur', 'Electronics', '500gm', 120.00, 'Shipped', '2026-06-21', 2, 'TRK-617156', '2026-06-30 03:45:48'),
(17, 0, 'Rana', 'Mahir', '', 'Dhanmondi', 'Documents', '200gm', 100.00, 'Shipped', '2026-06-21', 2, 'TRK-641123', '2026-06-30 03:44:54'),
(18, 0, 'Rana', 'Mahir', '', 'Dhanmondi', 'Documents', '200gm', 100.00, 'Shipped', '2026-06-21', 2, 'TRK-641123', '2026-06-30 03:44:54'),
(19, 0, 'Al-Amin', 'Mukul', '', 'Rajshahi', 'Clothing', '500gm', 100.00, 'Shipped', '2026-06-21', 5, 'TRK-935667', '2026-07-01 05:40:23'),
(24, 0, 'Khairul', 'Munna', '', 'Dhaka', 'Liquid', '5ltr', 200.00, 'Shipped', '2026-06-27', 2, 'TRK-837620', '2026-07-01 06:02:16'),
(25, 0, 'Khairul', 'Munna', '', 'Dhaka', 'Liquid', '5ltr', 200.00, 'Pending', '2026-06-27', NULL, 'TRK-596234', '2026-06-30 05:51:40'),
(26, 0, 'Imtiaz', 'Zubayer', '', 'Rajshahi', 'Clothing', '1200gm', 150.00, 'Delivered', '2026-06-30', 4, 'TRK-750709', '2026-06-30 06:56:02'),
(27, 0, 'Shifat', 'Forhad', '', 'Cumilla', 'Liquid', '4', 0.00, 'Shipped', '2026-06-30', 5, 'TRK-967215', '2026-07-01 05:40:23'),
(28, 0, 'Julfikar', 'Shuvo', '', 'Tangail', 'Liquid', '10', 480.00, 'Returned', '2026-06-30', 4, 'TRK-767916', '2026-07-01 04:44:47'),
(29, 0, 'sdfs', 'sdf', '', 'fdgdf', 'Electronics', '1', 100.00, 'Shipped', '2026-06-30', 2, 'TRK-892606', '2026-07-01 06:02:16'),
(30, 0, 'hkkj', 'kjbkj', '', 'nkj', 'Documents', '1', 50.00, '', '2026-07-01', NULL, 'TRK-349480', '2026-07-01 04:42:40'),
(31, 0, 'Galib', 'Nurul', '', 'Khulna', 'Electronics', '2kg', 130.00, '', '2026-07-01', NULL, 'TRK-711040', '2026-07-01 04:58:15'),
(32, 0, 'Sabbir', 'Rahat', '', 'Chattogram', 'Electronics', '8', 310.00, '', '2026-07-01', NULL, 'TRK-883756', '2026-07-01 06:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `total_delivery` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`id`, `name`, `phone`, `vehicle`, `total_delivery`, `status`) VALUES
(2, 'Samir ', '4634321', 'Truck', 10, 'Active'),
(3, 'Mahfuj Alam', '+880123456789', 'Van', 10, 'Active'),
(4, 'Haidar Ali', '01254789923', 'Truck', 20, 'Active'),
(5, 'Robiul', '016485666845', 'Cycle', 33, 'Active'),
(6, 'Tanveer', '01236554654', 'Bike', 17, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'Rider');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(4, 'MD. ARIF HUSHAIN MUNNA', 'munnaa517@yahoo.com', '$2y$10$0pfI8lf/.eE2LNWdbI8jWu.7oFphbZMJnS57P167y.b', 2),
(6, 'Nadir', 'nadir@gmail.com', '$2y$10$hTQtN9t..RCaDZjxGf1raeV2IE0aD6VEX3mPoH5Wp0T', 2),
(7, 'Mahfuj', 'mahfuj@example.com', '$2y$10$WtT1xVFdjk1JwhLBlozQr.kJgmWV8OdLsUvC0QZBHtK', 2),
(8, 'Zubayer', 'zubayer@example.com', '$2y$10$FRJX.WH7kMYNasPXkjt.buyEvlYpETib4WJv03Mg6rN', 2),
(9, 'Noushin', 'noushin@example.com', '$2y$10$f6wouY2d1PmSRq8dhdR9zuq9lYshzRNRZrU64TxHiRJ', 2),
(10, 'Jarif', 'jarif@example.com', '$2y$10$UXjeB0CxSUI4oZ1XIHXzMunzobBW7fzJSW5DRgmUxXT', 2),
(11, 'Niaj', 'niaj@example.com', '$2y$10$yu0.mRymnf8gQUvmIxd3u.U34hGpKu8iVJb5QrW82NK', 2),
(12, 'Tanveer', 'tanveer@example.com', '$2y$10$RhKjKw3L5fehInhUBkeFUupHtuG.vtjEALeSImtn5C6', 2),
(13, 'Arif Hushain', 'ahm@mail.com', '$2y$10$UG5QKUYQJf33TQjcsluhKuv2o7W213DtIKhqIjxfEcy', 2),
(15, 'asia', 'asia@mail.com', '$2y$10$lO1GS4Kr2yjAe.R/RhOyDeyN17vT1E0FLsrV3vQO8oF', 2),
(16, 'mina', 'mina@mail.com', '$2y$10$zgUkrqydK2uV1mIXEAiBqu2CIugX6H5SsdzSBybJCfuxwXTnAzJrG', 1),
(17, 'Hasan', 'hasan@mail.com', '$2y$10$2b/D30Ik5AnkO9ePJpUYcObGyBkSdmy6UQgMukuNZUmjXhG6JyFby', 1),
(18, 'Bashar', 'bashar@mail.com', '$2y$10$Ov3/Hq.XuGimFY8RhxEL/ucV.RMF3sEn9orebB9syCbk9gF3lSJSC', 2),
(19, 'Juyel', 'juyel@mail.com', '$2y$10$S2X83wAlFOIWQ/Yp0Dr62uPRzc5rYcR1oA/5BxhrdSWp07/EqGzdG', 3),
(20, 'Sagor', 'sagor@mail.com', '$2y$10$i7fI/xjvw5CPpENa4vfsBu2gdJk6lDFaSCsSUlphNOBd4MPjx86FC', 1),
(21, 'Jisan', 'jisan@mail.com', '$2y$10$FriCwD/HBQBNy7Aw6XOt4OYsR22dZ2nmjy2CyLNydC0MJ1b/Sa9xy', 2),
(22, 'Khalid', 'khalid@mail.com', '$2y$10$n4RuvAERiYefj.kKM6w7r.6gKTaKxEM.jkAiQE1xAPRPqY0RjHYWW', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rider` (`rider_id`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parcels`
--
ALTER TABLE `parcels`
  ADD CONSTRAINT `fk_rider` FOREIGN KEY (`rider_id`) REFERENCES `riders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
