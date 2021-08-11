-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 07:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayd_classes`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_category`
--

CREATE TABLE `my_category` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_category`
--

INSERT INTO `my_category` (`id`, `title`) VALUES
(1, 'Mobile'),
(2, 'Grocery');

-- --------------------------------------------------------

--
-- Table structure for table `my_products`
--

CREATE TABLE `my_products` (
  `id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` int(255) NOT NULL COMMENT '1->Active , 2->Deactive',
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_products`
--

INSERT INTO `my_products` (`id`, `category_id`, `title`, `description`, `image`, `price`, `status`, `added_on`) VALUES
(1, 1, 'Vivo C4', 'slkadj kajsdh kasdh skjadhkjasdhkjsah djska dhjsakhd kjsahd jksdh \r\nasdkjash djkas hdskj', 'beta-old.png', '20000', 1, '2021-07-27 10:16:31'),
(3, 2, 'Pure himalayan white tea hydrolized mask', 'kjsahd kjsahd kjs da', 'egyptian-old.png', '20000', 1, '2021-07-27 10:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `my_user`
--

CREATE TABLE `my_user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Active','Deactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_user`
--

INSERT INTO `my_user` (`id`, `name`, `email`, `contact`, `password`, `image`, `date`, `status`) VALUES
(6, 'Rajan', 'rajan@gmail.com', '09098787878', '7878', '', '2021-07-27 06:15:23', 'Active'),
(8, 'Rustam', 'rustam@gmail.com', '09098787878', '1', '', '2021-07-27 06:15:52', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_category`
--
ALTER TABLE `my_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_products`
--
ALTER TABLE `my_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_user`
--
ALTER TABLE `my_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_category`
--
ALTER TABLE `my_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `my_products`
--
ALTER TABLE `my_products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `my_user`
--
ALTER TABLE `my_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
