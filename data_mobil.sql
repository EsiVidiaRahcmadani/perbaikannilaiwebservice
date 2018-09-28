-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 08:07 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_data_mobil`
--

CREATE TABLE `table_data_mobil` (
  `id` int(11) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `plat` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_data_mobil`
--

INSERT INTO `table_data_mobil` (`id`, `merk_mobil`, `warna`, `plat`, `tahun`) VALUES
(1, 'Toyota', 'Biru', 'BE2839FU', '2014'),
(3, 'Ferrari', 'Hitam', 'BE7463DE', '2012'),
(5, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_data_mobil`
--
ALTER TABLE `table_data_mobil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_data_mobil`
--
ALTER TABLE `table_data_mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
