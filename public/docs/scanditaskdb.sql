-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 09:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scanditaskdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_type` char(10) NOT NULL DEFAULT 'Book' CHECK (`product_type` = 'Book'),
  `weight` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `product_type`, `weight`) VALUES
(1, 'Book', 1),
(46, 'Book', 2),
(48, 'Book', 1),
(49, 'Book', 1),
(52, 'Book', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_type` char(10) NOT NULL DEFAULT 'DVD-disk' CHECK (`product_type` = 'DVD-disk'),
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dvd`
--

INSERT INTO `dvd` (`id`, `product_type`, `size`) VALUES
(12, 'DVD-disk', 32),
(47, 'DVD-disk', 200),
(50, 'DVD-disk', 200),
(53, 'DVD-disk', 300);

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_type` char(10) NOT NULL DEFAULT 'Furniture' CHECK (`product_type` = 'Furniture'),
  `dimensions` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `product_type`, `dimensions`) VALUES
(3, 'Furniture', '23X34X23'),
(4, 'Furniture', '34x4x50'),
(12, 'Furniture', '20X40X50'),
(14, 'Furniture', '23X44X44'),
(34, 'Furniture', '34X45X45'),
(35, 'Furniture', '44X67X77'),
(36, 'Furniture', '34X54X34'),
(39, 'Furniture', '34X56X78'),
(51, 'Furniture', '23X40X90');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` char(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `product_type` char(10) NOT NULL CHECK (`product_type` in ('DVD-disk','Book','Furniture'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`, `product_type`) VALUES
(1, 'djhd-dhhhd-dhdb', 'sql-book', '35.00', 'Book'),
(3, 'tttt-dg-fjjf5', 'chair-plus', '77.00', 'Furniture'),
(4, 'ufdghd-dhdvb', 'fine chair', '99.00', 'Furniture'),
(12, 'hhf-dhdg-fjjf', 'ntech-dvd', '80.00', 'DVD-disk'),
(14, 'dhdh-dhhhd-dhdh', 'chair', '23.00', 'Furniture'),
(22, 'dhndn-dnnnd-dnndn', 'chair_model', '34.00', 'Furniture'),
(24, 'hhhd-hdhd-dj', 'nice chair', '200.00', 'Furniture'),
(26, 'djjd-djdj-jjdj', 'chair-tgg', '89.00', 'Furniture'),
(28, 'hhhh-00000000-djdjd', 'chair-model 90', '34.00', 'Furniture'),
(29, 'ddd-ddhhd-dhdhd', 'chair-high', '34.00', 'Furniture'),
(30, 'dhhd-dhdh0dhd', 'chair-i90', '345.00', 'Furniture'),
(34, 'djjdj-ddhhd', 'chair-golden', '34.00', 'Furniture'),
(35, 'sjjsh-dhjdhdh-dhdh', 'chair-fantasy', '35.00', 'Furniture'),
(36, 'dfffd-dhdb0-d', 'chair-blue', '24.00', 'Furniture'),
(39, 'dhhd-dnbd-ndn', 'chair-hine', '89.00', 'Furniture'),
(46, 'dhhd-dhhd0dhhd', 'child-peace', '90.00', 'Book'),
(47, 'hdhd-dhhdhd-oOOoo', 'tech-disk', '120.00', 'DVD-disk'),
(48, 'dhhd-dhhd-0d', 'book-green', '23.00', 'Book'),
(49, 'hd-0Ooo-9', 'how to be good person', '23.00', 'Book'),
(50, 'GgJjO0-0k', 'tech dell-disk', '23.00', 'DVD-disk'),
(51, 'H-h0h-hd0', 'multi Sofa', '120.00', 'Furniture'),
(52, 'ddf-dgh-hhh', 'nice home book III', '90.00', 'Book'),
(53, 'ffff-hhh-ii', 'tech-mod disk', '89.00', 'DVD-disk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `dvd`
--
ALTER TABLE `dvd`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_cons_fk_ref_product` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dvd`
--
ALTER TABLE `dvd`
  ADD CONSTRAINT `dvd_cons_fk_ref_product` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `furniture`
--
ALTER TABLE `furniture`
  ADD CONSTRAINT `furniture_cons_fk_ref_product` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
