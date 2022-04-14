-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 08:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toolhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `short_note` text DEFAULT NULL,
  `size` decimal(11,2) NOT NULL,
  `price` double(11,2) NOT NULL,
  `type` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `rating` decimal(4,1) NOT NULL,
  `developer` varchar(30) NOT NULL,
  `dwn_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `short_note`, `size`, `price`, `type`, `img`, `rating`, `developer`, `dwn_link`) VALUES
(1, 'Sublime Text', 'Sublime Text is a commercial source code editor. It natively supports many programming languages and markup languages. Users can expand its functionality with plugins, typically community-built and maintained under free-software licenses.', 'Sublime Text is a sophisticated text editor for code, markup and prose', '18.26', 0.00, 'IDE', 'assets/svg/sublime-text.svg', '4.6', 'Sublime HQ', ''),
(2, 'MS Excel', 'Microsoft Excel is a spreadsheet developed by Microsoft for Windows, macOS, Android and iOS. It features calculation or computation capabilities, graphing tools, pivot tables, and a macro programming language called Visual Basic for Applications.', 'Microsoft Excel is the industry leading spreadsheet software program, a powerful data visualization and analysis tool.', '726.00', 5299.00, 'spreadsheet package', 'assets/svg/excel.svg', '4.7', 'Microsoft Corporation', ''),
(3, 'XAMPP', 'XAMPP is a free and open-source cross-platform web server solution stack package developed by Apache Friends, consisting mainly of the Apache HTTP Server, MariaDB database, and interpreters for scripts written in the PHP and Perl programming languages.', 'XAMPP is a completely free, easy to install Apache distribution containing MariaDB, PHP, and Perl.', '164.00', 0.00, 'server', 'assets/svg/xampp.svg', '4.6', 'Apache Friends', ''),
(4, 'Adobe Photoshop', 'Adobe Photoshop is a raster graphics editor developed and published by Adobe Inc. for Windows and macOS. It was originally created in 1988 by Thomas and John Knoll. Since then, the software has become the industry standard not only in raster graphics editing, but in digital art as a whole.', 'Create Beautiful Images, Graphics, Paintings, And 3D Artwork On Your Desktop And iPad. If You Can Dream It', '1260.00', 19158.95, 'designing software', 'assets/svg/photoshop.svg', '4.1', 'Adobe Systems Incorporated', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(38) DEFAULT NULL,
  `email` varchar(38) NOT NULL,
  `password` text NOT NULL,
  `bod` date DEFAULT NULL,
  `mobile` bigint(15) NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `area` text NOT NULL,
  `block` text NOT NULL,
  `st_no` text NOT NULL,
  `h_no` text NOT NULL,
  `landmark` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bod`, `mobile`, `state`, `city`, `area`, `block`, `st_no`, `h_no`, `landmark`, `created_at`) VALUES
(1, 'amol', 'amol@amol.com', '1', '2001-03-12', 9999999999, 'punjab', 'ludhiana', 'partap pura', 'd', '2', '234', 'mandir', '0000-00-00 00:00:00'),
(7, 'mohit', 'mohit@amol.com', '$2y$10$esqGepqLde42f6sTf0TWh.Ug0sqXltQSgJetnRNP9ulSC5axiVH3C', '2022-04-07', 1112223333, 'punjab', 'ludhiana', 'mdel town', 'D', '2', '123', 'clock town', '2022-04-07 01:23:16'),
(8, 'test', 'test@amol.com', '$2y$10$oy30xvGxAMEZXHody5Sns.Zf7xGK909Ds1iLJIJvu5P4efSYs2VEG', '2022-04-30', 987218988, 'assam', 'leh', 'nice', 'no', 'no', 'no', 'no', '2022-04-07 01:35:56'),
(10, '', '', '$2y$10$KAJ3KvFOVasCdTvcBMJOgeX4HMXonqItlBTI9Y0Y9Wis5M3yRtlay', '0000-00-00', 0, '', '', '', '', '', '', '', '2022-04-08 21:40:14'),
(13, 'mayank', 'mayank@amol.com', '$2y$10$IgvruSjRLgI5kQ7cmckAZeDFTFOCURu5lT.0d7U5ItZWBo6z1kJjG', '2022-04-04', 1112223333, 'punjab', 'ludhiana', 'arya', 'IT', '1', 'lab3', 'none', '2022-04-09 00:12:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;