-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 03:31 AM
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
-- Database: `db_spkfzzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(2) NOT NULL COMMENT '1''admin'':2''user'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(2, 'taufik', 'dd2eb170076a5dec97cdbbbbff9a4405', 2),
(4, 'user123', '12dea96fec20593566ab75692c9949596833adc9', 2),
(5, 'userr', '12dea96fec20593566ab75692c9949596833adc9', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_data` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `permintaan` int(11) NOT NULL,
  `persediaan` int(11) NOT NULL,
  `produksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_data`, `tanggal`, `permintaan`, `persediaan`, `produksi`) VALUES
(1, '2022-05-01', 450, 1580, 368),
(2, '2022-05-02', 545, 1212, 395),
(3, '2022-05-03', 305, 817, 293),
(4, '2022-05-04', 380, 524, 335),
(5, '2022-05-05', 640, 4024, 384),
(6, '2022-05-06', 490, 3640, 395),
(7, '2022-05-07', 200, 3245, 253),
(8, '2022-05-08', 430, 2992, 372),
(9, '2022-05-09', 360, 2620, 327),
(10, '2022-05-10', 355, 2293, 328),
(11, '2022-05-11', 460, 1965, 371),
(12, '2022-05-12', 780, 1594, 412),
(13, '2022-05-13', 600, 1182, 381),
(14, '2022-05-14', 540, 801, 435),
(15, '2022-05-15', 800, 4670, 480),
(16, '2022-05-16', 650, 4269, 388),
(17, '2022-05-17', 280, 3945, 318),
(18, '2022-05-18', 445, 3576, 373),
(19, '2022-05-19', 620, 3171, 467),
(20, '2022-05-20', 420, 2808, 363),
(21, '2022-05-21', 230, 2568, 278),
(22, '2022-05-22', 950, 1991, 475),
(23, '2022-05-23', 750, 1590, 400),
(24, '2022-05-24', 650, 1231, 378),
(25, '2022-05-25', 960, 4870, 611),
(26, '2022-05-26', 850, 4364, 506);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `permintaan` int(2) NOT NULL COMMENT '1="sedikit":2="sedang":3="banyak"',
  `persediaan` int(2) NOT NULL COMMENT '1="sedikit":2="sedang":3="banyak"',
  `produksi` int(2) NOT NULL COMMENT '1="sedikit":2="sedang":3="banyak"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `permintaan`, `persediaan`, `produksi`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 2, 1, 2),
(5, 2, 2, 2),
(6, 2, 3, 2),
(7, 3, 1, 2),
(8, 3, 2, 3),
(9, 3, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
