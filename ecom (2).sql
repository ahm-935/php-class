-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 07:31 AM
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
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_types`
--

CREATE TABLE `adjustment_types` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `change_type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Aarong'),
(2, 'Yellow'),
(3, 'Illiyen'),
(4, 'Dorjibari');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Men\'s'),
(2, 'Women\'s'),
(3, 'Kid\'s');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `created-at` timestamp NOT NULL DEFAULT current_timestamp(),
  `transaction_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_adjustments`
--

CREATE TABLE `inventory_adjustments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `adjustment_type_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `order_placed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `point_of_restock` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `is_inactive` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `brand_id`, `short_description`, `price`, `quantity`, `point_of_restock`, `image`, `is_inactive`) VALUES
(1, 'kjdhfkdfh', 1, 1, 'cxvdfbdf', 456, 10, 10, '', 1),
(2, 'Sharee', 2, 1, 'kdjfhb', 5000, 50, 5, 'Array', 1),
(3, 'Sharee', 2, 1, 'fazsfgf', 5000, 10, 12, 'uploads/20260615-091234.jpg', 1),
(4, 'skfdj', 3, 1, 'gfdh', 1232, 10, 564, 'uploads/20260616-054219.jpg', 1),
(5, 'jhasgd', 1, 1, 'asdadf', 1234, 12, 45, 'uploads/20260616-055559.jpg', 0),
(6, '', 3, 1, '', 0, 0, 0, 'uploads/20260616-060124.png', 0),
(7, '', 1, 1, '', 0, 0, 0, 'uploads/20260616-063403.png', 0),
(8, 't-Shirt', 2, 3, 'n/a', 1499, 10, 5, 'uploads/product/20260819-064101.jpg', 1),
(9, 't-Shirt', 2, 3, 'n/a', 1499, 10, 5, 'uploads/product/20260819-064136.jpg', 1),
(10, 't-Shirt', 2, 3, 'n/a', 1499, 10, 5, 'uploads/product/20260819-064303.jpg', 1),
(11, 'Clementine', 2, 4, 'Architecto in recusa', 570, 420, 970, '', 1),
(12, 'Mona', 2, 1, 'Quibusdam officia ut', 597, 678, 305, 'uploads/product/20260819-070208.webp', 0),
(13, 'Indira', 1, 4, 'Omnis recusandae In', 598, 855, 964, 'uploads/product/20260819-070544.jpg', 1),
(14, 'Leah', 3, 4, 'Eos explicabo Fuga', 896, 562, 361, 'uploads/product/20260819-071542.jpg', 0),
(15, 'Punjabee', 2, 4, 'Nostrud maxime proid', 384, 637, 963, 'uploads/product/20260819-083228.jpg', 0),
(16, 'iPhone 16', 1, 2, 'Eum sit quidem lorem', 150000, 100, 5, 'uploads/product/20260819-090221.jpg', 1),
(17, 'Samsung', 1, 4, 'Samsung Galaxy S26 ', 120000, 25, 15, 'uploads/product/20260819-090450.jpg', 1),
(18, 't-Shirt', 2, 3, 'n/a', 1499, 10, 5, 'uploads/product/20260822-063710.jpg', 1),
(20, 'Louis', 3, 3, 'Deserunt praesentium', 565, 221, 997, 'uploads/product/20260827-091145.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Manager'),
(3, 'Editor'),
(4, 'Sale\'s Person'),
(5, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role_id` int(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`) VALUES
(14, 'Keya', 'asdf@gmail.com', 3, '$2y$10$fBudntseFw90H7/D36I4duJUFkEIlTEJynKr3UwGMPb1gsbC3RLXm'),
(15, 'Hasan', 'hasan@jhsd.com', 4, '$2y$10$PUYR8hhBlQ8MI7ow2a4CGu3jGQlM0gm4oaFxl8zGCVX3QsWEKXkYC'),
(16, 'Munna', 'munnaa76@yahoo.com', 4, '$2y$10$gc1UDmwBA/VFF3U2GCFK1OkzqRWpu845Z1SdU2pRt620/nlViEHhW'),
(17, 'Keya', 'keya@gmail.com', 1, '$2y$10$1d0eFrThsLqUODhu/gHnNuKu/eRyp.xk5tUme5GljMpBcCpafrOBS'),
(18, 'Khairul', 'khairul@jlksd.gd', 3, '$2y$10$IJnZMmx8geZrn/jnWtPE0usQcXlOmkeEH1bdU2oll.DF6IvGaFbLW'),
(19, 'Nahid', 'nahid@mail.com', 2, '$2y$10$uCmRBGBgkFSpeGzK64FeRezE9swmhpFLJ.QoNVyYHV3FOAea2D9AW'),
(20, 'Arif', 'arif@email.com', 3, '$2y$10$r8vY0VXGxThNlDiIn4T6ge4h7iNxT6gD65veu0diecfInaR.3Qcd6'),
(22, 'Munna', 'munna@example.com', 4, '$2y$10$19zPXYTz9MfFOepi98aoaOd4Wi2HuDA7QiBAr/K5pu3YK3uSgN8Nq'),
(24, 'khairul', 'kh@gmail.com', 3, '$2y$10$Ux457r9moR029dLHkE7sIeUVFcWUs9py7iMnpqZc8tzvPmqSEKIuy'),
(25, 'abc', 'abc@mail.com', 1, '$2y$10$aycqPEVEJE737VbqCCz7geLj9T2jFKkcQNpSMYRlPQ86o6J5Lfu2q'),
(28, 'Hridoy', 'hri@mail.com', 3, '$2y$10$rhTrNSPECeSVU5cEKubgrO.POW9szmewB76ULr9CbMwxUqAzfvWxi'),
(29, 'Munna', 'munna@mail.com', 2, '$2y$10$5Oe8c17MBRp.tgG3N6FWU.8j9cJUltKrV/2hhk6UCJlPLc4jROxm.'),
(36, 'Niaj', 'asdb@mail.com', 1, '$2y$10$rRJmmNJ/3.qUAhsr4uTHVOdxG8S.jJfsqKu9NPZxrHVRMhMs7r3ty'),
(43, 'Arif Hossain', 'arif@mail.com', 3, '$2y$10$NzGPGHTNO6whpaU/EQ9jbuyP4W/hKcwI.REZ1xu9kHuoeKBZqVSqW'),
(44, 'Saklaine', 'saklaine@mail.com', 4, '$2y$10$ON16R2FD3DemnrCWsoyNYOt1qdHfxLjis/NQ12zp2Y9/xZgY.DaV.'),
(45, 'Hakeem', 'nydabyqici@mailinator.com', 4, '$2y$10$X7StzrOXH7pdxEsX/PL13OVZvIe4C15axnPTyUBTSfLttAqpej2vS'),
(66, 'Abraham', 'vife@mailinator.com', 1, '$2y$10$NHhfmIZF9ow7TVul5eZqAO0mj0vBAI5Eq8FRtKSgJ1.SBE8LMbMKC'),
(67, 'Habib', 'habib@mailinator.com', 4, '$2y$10$W1SY.OkwpMcVzdCQh3uuR.qGi.EUKcl0D7Jle.dAY2bS3ly7aVXxa'),
(70, 'Niaj Morshed', 'niajmorshed@mail.com', 2, '$2y$10$reV5l3kB.PmRZWnR6e.I5..Je6ExzapHDvkxytflOCeroRl5pxWAG'),
(71, 'Hridoy', 'hridoy@mailinator.com', 4, '$2a$12$ym.euRiMOC.VydDoJ2jCJOuegRrFF1HHCIbgv843WDUvJK4whrMoO'),
(72, 'Murad', 'murad@mail.com', 1, '$2a$12$GRiLYM7RfK3hbUhCjrvFHeI7W/o.g5vdg/3rhYPMqYNP.UafcmWom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustment_types`
--
ALTER TABLE `adjustment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_adjustments`
--
ALTER TABLE `inventory_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
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
-- AUTO_INCREMENT for table `adjustment_types`
--
ALTER TABLE `adjustment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_adjustments`
--
ALTER TABLE `inventory_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
