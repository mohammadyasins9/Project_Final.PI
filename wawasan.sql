-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2015 at 06:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wawasan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE IF NOT EXISTS `tb_berita` (
  `id_wartawan` int(100) NOT NULL,
  `tgl` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_point` varchar(2) NOT NULL,
  `point` int(30) NOT NULL,
  `hal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_wartawan`, `tgl`, `judul`, `id_point`, `point`, `hal`) VALUES
(1, '2015-11-28', 'abc', 'A1', 10, 'hal1'),
(4, '2015-12-04', 'berita olahraga', 'A2', -5, 'hal3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_point`
--

CREATE TABLE IF NOT EXISTS `tb_point` (
  `id_point` varchar(2) NOT NULL,
  `score` int(2) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_point`
--

INSERT INTO `tb_point` (`id_point`, `score`, `ket`) VALUES
('A1', 10, 'Hal 1'),
('A2', 20, 'Hal 2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`user_id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'yasin', '81dc9bdb52d04dc20036dbd8313ed055', 'm.yasin.s'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wartawan`
--

CREATE TABLE IF NOT EXISTS `wartawan` (
`id_wartawan` int(50) NOT NULL,
  `nama_wartawan` varchar(100) NOT NULL,
  `status_kar` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `kota` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wartawan`
--

INSERT INTO `wartawan` (`id_wartawan`, `nama_wartawan`, `status_kar`, `status`, `kota`) VALUES
(6, 'adi', 'Tetap', 'belum Menikah', 'semarang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_point`
--
ALTER TABLE `tb_point`
 ADD PRIMARY KEY (`id_point`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wartawan`
--
ALTER TABLE `wartawan`
 ADD PRIMARY KEY (`id_wartawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wartawan`
--
ALTER TABLE `wartawan`
MODIFY `id_wartawan` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
