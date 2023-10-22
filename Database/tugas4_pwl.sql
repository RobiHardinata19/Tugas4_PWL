-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 01:26 PM
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
-- Database: `tugas4_pwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(2, 'eec341a0-403e-43cd-a3ba-d89afb8371fa', 'Sepatu nike', 140000, 2, '2023-10-22 10:34:58', '2023-10-22 10:34:58'),
(6, 'db33de27-b8a1-4dd9-b420-c9f9fb183cfd', 'Sepatu nike 1', 140000, 4, '2023-10-22 11:09:43', '2023-10-22 11:09:43'),
(7, '31b30b85-7b32-4a45-a97c-191249b1077f', 'Sepatu nike 2', 140000, 4, '2023-10-22 11:09:47', '2023-10-22 11:09:47'),
(8, '411192fe-76b1-42ac-86a6-b42cf353b19b', 'Sepatu nike 3', 140000, 4, '2023-10-22 11:09:51', '2023-10-22 11:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('XB1ATzbD2xhl-MvZU8NXMGOhaHhDptz2', '2023-10-23 11:17:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"8ba17ac4-8c01-4d21-9571-a463f27f2ef8\"}', '2023-10-22 11:16:56', '2023-10-22 11:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(2, 'de31610d-0507-4b31-8a67-469eb0428d2e', 'robiUser', 'robiuser@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$5J9E26VOsoe3lRjV5xQ2OA$TuKObiwPOr1dW/e3uG7+oktjwT+fyDy4HyADhq8xrvU', 'user', '2023-10-22 10:15:09', '2023-10-22 10:15:09'),
(3, '3f3ed954-933c-4a1b-a55f-6b42b2b9f647', 'User2', 'user2@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$KbncaD9dguzU47HN7dYjJg$O1w6CfVGcMhjx/GRrLA434faUAr9Z0UHy06QCvluJRQ', 'user', '2023-10-22 11:02:02', '2023-10-22 11:02:02'),
(4, '8ba17ac4-8c01-4d21-9571-a463f27f2ef8', 'robiAdmin', 'robiAdmin@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$7wOwwtbkVhmpQkzBF9fl2w$Adyi0oI5XnF5HNdaOPrCPExQy76xeeQuNcKOzB/OdMo', 'admin', '2023-10-22 11:08:43', '2023-10-22 11:08:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
