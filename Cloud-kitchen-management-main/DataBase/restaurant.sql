-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 07:11 PM
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
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `item`, `price`, `image`) VALUES
(1, 'punjabi', 'paneer lababdar', 350, 'paneer makhani.jpg'),
(2, 'south indian', 'dosa', 200, 'dosa.jpg'),
(3, 'punjabi', 'chole bhature', 250, 'chole bhature.jpeg'),
(4, 'south indian', 'Idli Sambar', 200, 'Idli Sambar.jpeg'),
(6, 'maharastra', 'vadapav', 50, 'vadapav.jpg'),
(16, 'south indian', 'mendu vada', 70, 'mendu vada.jpg'),
(17, 'punjabi', 'kaju korma', 150, 'kaju korma.jpg'),
(18, 'maharastra', 'poran poli', 80, 'poran poli.jpg'),
(19, 'maharastra', 'misal pav', 120, 'misal pav.jpg'),
(20, 'punjabi', 'paneer parathe', 80, 'paneer parathe.jpg'),
(21, 'gujarati', 'dhokla', 50, 'dhokla.jpg'),
(22, 'south indian', 'utapam', 70, 'utapam.jpg'),
(23, 'gujarati', 'kadi rotlo', 150, 'kadi rotlo.jpg'),
(24, 'gujarati', 'khichadi kadi', 90, 'khichadi kadi.jpg'),
(25, 'gujarati', 'handvo', 135, 'handvo.jpg'),
(26, 'punjabi', 'paneer makhani', 80, 'paneer makhani.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `message`) VALUES
(1, 'nih', 'nihardankhara1@gmail.com', 'asdasd asda d'),
(8, '123', 'niin@gmail.com', 'fk u varoon'),
(9, 'haresh', 'h@gmail.com', 'bhai mane vandho che '),
(10, '123', 'niin@gmail.com', 'hibyci');

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `id` int(11) NOT NULL,
  `ipv4` varchar(50) NOT NULL,
  `ipv6` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `isp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`id`, `ipv4`, `ipv6`, `country`, `state`, `city`, `time`, `isp`) VALUES
(59, '49.43.35.75', '2405:201:2015:8a0c:65e8:a65e:f6cc:5302', 'India', 'Gujarat', 'Surat', 20, ''),
(60, '49.43.35.75', '49.43.35.75', 'India', 'Gujarat', 'Surat', 75, ''),
(61, '49.43.35.75', '2405:201:2015:8a0c:e02a:772c:82d5:5c84', 'India', 'Gujarat', 'Surat', 8, ''),
(62, '42.105.165.246', '2402:3a80:1cee:b757:5dff:f931:3807:2bd0', 'India', 'Gujarat', 'Ahmedabad', 26, 'Vodafone Idea Ltd'),
(63, '49.43.35.75', '2405:201:2015:8a0c:dd02:1cc2:333a:e733', 'India', 'Gujarat', 'Surat', 5, 'Reliance Jio Infocomm Limited'),
(64, '49.43.35.75', '2405:201:2015:8a0c:f1d2:b1c4:7417:6df7', 'India', 'Gujarat', 'Surat', 25, 'Reliance Jio Infocomm Limited'),
(65, '49.43.35.75', '2405:201:2015:8a0c:2d56:ec11:1c2c:b95a', 'India', 'Gujarat', 'Surat', 2, 'Reliance Jio Infocomm Limited'),
(66, '27.54.184.1', '27.54.184.1', 'India', 'Gujarat', 'Surat', 14, 'Ishans Network');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `offer_on` varchar(100) NOT NULL,
  `start` date NOT NULL DEFAULT current_timestamp(),
  `valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `code`, `offer_on`, `start`, `valid`) VALUES
(11, 'BOGO', 'BOGO', '2024-04-09', '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `items` text NOT NULL,
  `quantity` varchar(70) NOT NULL,
  `amount` varchar(70) NOT NULL,
  `total` int(11) NOT NULL,
  `datee` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `username`, `items`, `quantity`, `amount`, `total`, `datee`) VALUES
(7, '123', '[\"paneer parathe\", \"kaju korma\", \"handvo\", \"khichadi kadi\"]', '[6, 9, 7, 7]', '[80, 150, 135, 90]', 3405, '2024-04-18 16:03:05'),
(8, '123', '[\"Idli Sambar\", \"kadi rotlo\"]', '[1, 1]', '[200, 150]', 350, '2024-04-18 16:16:07'),
(9, '123', '[\"mendu vada\", \"utapam\"]', '[1, 1]', '[70, 70]', 140, '2024-04-18 16:17:07'),
(10, '123', '[\"poran poli\", \"handvo\"]', '[1, 1]', '[80, 135]', 215, '2024-04-18 16:17:27'),
(11, '123', '[\"utapam\", \"mendu vada\", \"Idli Sambar\"]', '[1, 1, 1]', '[70, 70, 200]', 340, '2024-04-18 16:20:00'),
(12, '123', '[\"mendu vada\", \"Idli Sambar\"]', '[1, 1]', '[70, 200]', 270, '2024-04-18 16:21:02'),
(13, '123', '[\"utapam\", \"mendu vada\", \"dhokla\"]', '[1, 1, 1]', '[70, 70, 50]', 190, '2024-04-18 16:22:10'),
(14, '123', '[\"paneer parathe\"]', '[1]', '[80]', 80, '2024-04-19 17:04:03'),
(15, '123', '[\"kaju korma\", \"chole bhature\"]', '[1, 1]', '[150, 250]', 400, '2024-04-19 17:44:54'),
(16, '123', '[\"handvo\"]', '[69]', '[135]', 9315, '2024-04-19 18:59:52'),
(17, '123', '[\"mendu vada\"]', '[1]', '[70]', 70, '2024-04-20 00:33:53'),
(18, 'haresh', '[\"paneer parathe\", \"paneer makhani\", \"Idli Sambar\"]', '[1, 1, 1]', '[80, 80, 200]', 360, '2024-04-20 00:39:23'),
(19, 'haresh', '[\"chole bhature\"]', '[1]', '[250]', 250, '0000-00-00 00:00:00'),
(20, 'haresh', '[\"dosa\"]', '[1]', '[200]', 200, '2024-04-19 19:19:32'),
(21, 'haresh', '[\"mendu vada\"]', '[1]', '[70]', 70, '2024-04-19 19:20:50'),
(22, 'haresh', '[\"paneer parathe\"]', '[1]', '[80]', 80, NULL),
(23, 'haresh', '[\"paneer lababdar\"]', '[1]', '[350]', 350, '2024-04-19 19:26:44'),
(24, 'haresh', '[\"chole bhature\"]', '[1]', '[250]', 250, '2024-04-20 00:58:02'),
(25, 'haresh', '[\"handvo\", \"dhokla\"]', '[1, 1]', '[135, 50]', 185, '2024-04-20 00:58:52'),
(26, 'haresh', '[\"vadapav\"]', '[1]', '[50]', 50, '2024-04-20 00:59:09'),
(29, '123', '[\"paneer parathe\", \"mendu vada\", \"handvo\"]', '[1, 1, 1]', '[80, 70, 135]', 285, '2024-04-20 03:15:00'),
(30, '123', '[\"khichadi kadi\", \"handvo\"]', '[1, 1]', '[90, 135]', 225, '2024-04-20 03:26:48'),
(32, '123', '[\"Idli Sambar\", \"dosa\"]', '[1, 1]', '[200, 200]', 400, '2024-04-20 03:52:05'),
(34, 'haresh', '[\"kaju korma\"]', '[1]', '[150]', 150, '2024-04-20 12:56:41'),
(35, 'haresh', '[\"chole bhature\"]', '[1]', '[250]', 250, '2024-04-20 12:57:45'),
(36, 'haresh', '[\"paneer lababdar\"]', '[1]', '[350]', 350, '2024-04-20 12:58:19'),
(37, 'haresh', '[\"khichadi kadi\", \"handvo\", \"kadi rotlo\"]', '[1, 6, 1]', '[90, 135, 150]', 1050, '2024-04-20 13:00:12'),
(38, 'haresh', '[\"dhokla\"]', '[1]', '[50]', 50, '2024-04-20 13:01:02'),
(39, '123', '[\"poran poli\", \"misal pav\"]', '[8, 1]', '[80, 120]', 760, '2024-04-20 13:01:36'),
(40, 'haresh', '[\"dosa\"]', '[1]', '[200]', 200, '2024-04-20 13:04:39'),
(41, '123', '[\"paneer lababdar\", \"dosa\"]', '[1, 1]', '[350, 200]', 550, '2024-04-20 14:37:25'),
(42, '123', '[\"paneer lababdar\", \"chole bhature\"]', '[4, 1]', '[350, 250]', 1650, '2025-04-05 22:37:37');

--
-- Triggers `order_history`
--
DELIMITER $$
CREATE TRIGGER `order_transfer` AFTER INSERT ON `order_history` FOR EACH ROW INSERT INTO order_pending (username,items,quantity,total_amount,datee) SELECT username,items,quantity,total,datee from order_history WHERE id=(select MAX(id) from order_history)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `order_pending`
--

CREATE TABLE `order_pending` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `items` text NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `datee` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_pending`
--

INSERT INTO `order_pending` (`id`, `username`, `items`, `quantity`, `total_amount`, `datee`) VALUES
(88, 'haresh', '[\"khichadi kadi\", \"handvo\", \"kadi rotlo\"]', '[1, 6, 1]', 1050, '2024-04-20 00:00:00'),
(90, '123', '[\"poran poli\", \"misal pav\"]', '[8, 1]', 760, '2024-04-20 13:01:36'),
(91, 'haresh', '[\"dosa\"]', '[1]', 200, '2024-04-20 13:04:39'),
(92, '123', '[\"paneer lababdar\", \"dosa\"]', '[1, 1]', 550, '2024-04-20 14:37:25'),
(93, '123', '[\"paneer lababdar\", \"chole bhature\"]', '[4, 1]', 1650, '2025-04-05 22:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `item` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `item`, `quantity`) VALUES
(1, 'tomato', 70),
(2, 'onion', 70),
(3, 'avacado', 885),
(4, 'lettuce', 10),
(5, 'capsicum', 77);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `username`, `email`, `phno`, `passwd`, `description`) VALUES
(1, 'nihar', 'nihar07', 'nihd@gmail.com', 100000, 'nihar007@#', 'customer'),
(8, 'Nih', '123', 'niin@gmail.com', 156653, '789', 'customer'),
(14, 'Nihar Dankhara', 'nihar', 'nihardankhara1@gmail.com', 2651352, 'nihar07', 'manager'),
(15, 'rajkumar', 'rajj', 'raj@gmail.com', 253154813, '123', 'customer'),
(16, 'haresh', 'haresh', 'h@gmail.com', 5135151, 'haresh', 'customer'),
(18, 'mehul', 'mehul', 'mehul@gmail.com', 56, 'mehul', 'manager'),
(30, 'Chase', 'nihar7', 'niha@gmail.com', 5465431979, 'nihar', 'manager'),
(34, 'mehul', 'mehulpativar', 'mehulpativar@gmail.com', 15315, 'mehul123', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`) USING BTREE;

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_pending`
--
ALTER TABLE `order_pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phno` (`phno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_pending`
--
ALTER TABLE `order_pending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
