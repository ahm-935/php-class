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
-- Database: `lms_db`
--

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(180) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'web-development', 'Learn frontend, backend and full-stack web development.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(2, 'Programming', 'programming', 'Learn programming languages and software development.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(3, 'Database Management', 'database-management', 'Learn MySQL, SQL and database management systems.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(4, 'UI/UX Design', 'ui-ux-design', 'Learn user interface and user experience design.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(5, 'Mobile App Development', 'mobile-app-development', 'Learn Android, iOS and cross-platform app development.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(6, 'Data Science', 'data-science', 'Learn data analysis, statistics and data science.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(7, 'Artificial Intelligence', 'artificial-intelligence', 'Learn AI, machine learning and deep learning.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(8, 'Digital Marketing', 'digital-marketing', 'Learn SEO, social media marketing and online advertising.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(9, 'Graphic Design', 'graphic-design', 'Learn graphic design, Photoshop and visual design.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(10, 'Cyber Security', 'cyber-security', 'Learn cybersecurity, ethical hacking and network security.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(11, 'Cloud Computing', 'cloud-computing', 'Learn cloud platforms, deployment and cloud technologies.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34'),
(12, 'DevOps', 'devops', 'Learn CI/CD, Docker, Kubernetes and DevOps practices.', NULL, 'Active', '2026-08-22 03:40:34', '2026-08-22 03:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `duration_hours` decimal(5,2) DEFAULT NULL,
  `level` enum('Beginner','Intermediate','Advanced') DEFAULT 'Beginner',
  `language` varchar(50) DEFAULT 'English',
  `status` enum('Draft','Published','Archived') DEFAULT 'Draft',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `title`, `description`, `category_id`, `instructor_id`, `price`, `discount_price`, `image`, `duration_hours`, `level`, `language`, `status`, `created_at`, `updated_at`) VALUES
(1, 'web-dev', 'sdfbjk', 'kjk alksj', 1, 1, 2000.00, NULL, 'uploads/product/20260822-075742.jpg', 2.00, '', 'jhg', '', '2026-08-22 05:57:42', '2026-08-25 04:18:04'),
(3, 'web-devhfhj', 'sdfbjk', 'mnbas', 1, 1, 2000.00, NULL, 'uploads/product/20260822-080411.jpg', 2.00, '', 'jhg', '', '2026-08-22 06:04:11', '2026-08-25 04:17:56'),
(6, 'web-devlopement', 'sdfbjk', 'asdaj', 1, 1, 2000.00, NULL, 'uploads/product/20260822-081328.jpg', NULL, '', 'jhg', '', '2026-08-22 06:13:28', '2026-08-25 04:17:46'),
(7, 'At unde dignissimos', 'Magna rem tempora al', 'Voluptas eius dolore', 4, 100, 42.00, NULL, 'uploads/product/20260825-051633.jpg', 91.00, 'Beginner', 'Quia facere cupidita', 'Published', '2026-08-25 03:16:33', '2026-08-25 03:16:33'),
(8, 'Tempora expedita est', 'Assumenda quidem inc', 'Ex ea duis deserunt', 7, 54, 63.00, NULL, NULL, 17.00, 'Intermediate', 'Sint laboriosam mag', 'Published', '2026-08-25 04:28:25', '2026-08-25 04:28:25'),
(9, '121', 'Programming', 'programming for better', 6, 39, 38.00, NULL, NULL, 30.00, 'Advanced', 'English', 'Draft', '2026-08-25 05:00:42', '2026-08-25 05:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','active','completed','cancelled') DEFAULT 'active',
  `payment_status` enum('unpaid','paid','refunded') DEFAULT 'unpaid',
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `course_id`, `enrollment_date`, `status`, `payment_status`, `transaction_id`) VALUES
(1, 1, 6, '2026-08-25 03:16:51', 'active', 'unpaid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration_minutes` int(11) DEFAULT 0,
  `video_url` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `payment_method` varchar(50) DEFAULT 'Card/Bkash',
  `payment_status` enum('pending','completed','failed') DEFAULT 'completed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `course_id`, `amount`, `transaction_id`, `payment_method`, `payment_status`, `created_at`) VALUES
(1, 1, 7, 42.00, 'TXN_0JQFHZDT', 'Card/Bkash', 'completed', '2026-08-25 04:16:34'),
(2, 1, 3, 2000.00, 'TXN_T8W8QFTS', 'Card/Bkash', 'completed', '2026-08-25 04:18:57'),
(3, 1, 8, 63.00, 'TXN_1FTX93ZD', 'Card/Bkash', 'completed', '2026-08-25 04:58:14'),
(4, 1, 9, 38.00, 'TXN_XKNM68NG', 'Card/Bkash', 'completed', '2026-08-25 05:01:07');

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
(18, 't-Shirt', 2, 3, 'n/a', 1499, 10, 5, 'uploads/product/20260822-063710.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Administrator'),
(2, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `role_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`) VALUES
(2, 'Arif Hushain', 'career2026@gmail.com', 0, '$2y$10$H4IU6WwF7RgTFHHN9DnFZeLo8BhGi3TcfaewgjAXZ1Xrukfh.SXtu'),
(3, 'Arif Hushain', 'arif@mail.com', 1, '$2a$12$Bp0UWlEw.W4rvTyJHe1NreM5QmxTOrnZ.XTjtbJ52pPx7T0lbjE8y'),
(4, 'Munna', 'munna2mail.com', 2, '123'),
(5, 'Elizabeth', 'zymumunus@mailinator.com', 0, '$2y$10$toRUXR4x.X.71SXdvCaVROGYA.mRgthLxxj5UNkzF4XG.J.hfMfpa'),
(6, 'Hasan', 'hasan@mail.com', 2, '$2y$10$azhfWMfnUXl2DPSiPsCjfuyobKloFbkyHczaykP.7HmztQe6iRFWC'),
(8, 'Hridoy Khan', 'hridoy@mailinator.com', 2, '$2y$10$QTdibLAIuHdEB27XeV/b/.ERSqkZYS80eI7KYRct87N7xnc5xdqqu'),
(10, 'Arif', 'arif@mail.com', 0, '$2y$10$hqVwF1fdp9pREHgZELCOK.KC2HR5tbookB0l/RR2D6FHM4lLIsQo2'),
(11, 'Ronan', 'zuwebelyni@mailinator.com', 2, '$2y$10$bMBBC94Bt/9T0lHtZm4bCuVTD6HOos5gBCE8.GOfFpVVgIZzav/Z.'),
(12, 'Niaj Morshed', 'niajmorshed@mail.com', 0, '$2y$10$rXc/iUeHY4Lpc0wxXiwayusJs01Ei2/lU0XRtIvHz0MDU40wXVPAG'),
(13, 'Aline', 'barobivox@mailinator.com', 2, '$2y$10$pZxbb.2cGnuy7OM6ql02l.kF2LEQvDs0oAHVE/jknUCO8kp94cd/G'),
(14, 'Selim Khan', 'toneke@mailinator.com', 1, '$2y$10$TIHR.20.LV1DGMU8KJPD6u3oeFPHeNfXcgYbGM29dcl.50W881WLS'),
(15, 'Ivory', 'sanujopymi@mailinator.com', 1, '$2y$10$mTXRQVdSXdbxwavdZozU/eFNSr4hlsl.Rg4wqnbFTuDl2zoGdLsdO'),
(16, 'Ferdinand', 'lijamycul@mailinator.com', 1, '$2y$10$Ooy2CEkAnT85eVy4fzMtSefplqcCzxhnDo0b/.RR9pNXjc56hgxZe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course` (`course`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_course_unique` (`user_id`,`course_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
