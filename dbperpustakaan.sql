-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 05:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbperpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode` varchar(15) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `jumlah` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode`, `judul`, `pengarang`, `penerbit`, `tahun`, `jumlah`) VALUES
('book011216', 'Tentang Kamu', 'Tere Liye', 'Google Books', '2016', '3'),
('book040502', 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka', '2002', '2'),
('book130310', 'Sang Pemimpi', 'Andrea Hirata', 'Bintang Pustaka', '2010', '1'),
('book211208', 'Koala Kumal', 'Raditya Dika', 'Kaskus', '2008', '2');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `npm` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `jekel` varchar(15) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`npm`, `nama`, `password`, `jekel`, `jurusan`, `nohp`) VALUES
('01', 'Admin', '01', 'pria', 'admin', '081398989898');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nopinjam` varchar(10) NOT NULL,
  `id` varchar(10) DEFAULT NULL,
  `npm` varchar(15) DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL,
  `jumlah` varchar(5) DEFAULT NULL,
  `tglpinjam` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`nopinjam`, `id`, `npm`, `kode`, `jumlah`, `tglpinjam`) VALUES
('loan0307', 'pb2006', '182877455', 'book130310', '3', '27-05-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hak` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`nopinjam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
