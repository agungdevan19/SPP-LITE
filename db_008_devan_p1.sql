-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 09:20 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_008_devan_p1`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(8, 'XII RPL 2', 'Rekayasa Perangkat Lunak'),
(10, 'XII UPW', 'Usaha Perjalan Wisata'),
(12, 'XII MM 1', 'Multi Media'),
(13, 'XII MM 2', 'Multi Media'),
(14, 'XII AP 1', 'Akomodasi Perhotelan'),
(15, 'XII AP 2', 'Akomodasi Perhotelan'),
(17, 'XII JB1', 'Jasa Boga'),
(18, 'XII JB2', 'Jasa Boga'),
(19, 'XII JB3', 'Jasa Boga'),
(20, 'XII JB4', 'Jasa Boga'),
(21, 'XII JB5', 'Jasa Boga'),
(22, 'XII RPL 1', 'Rekayasa Perangkat Lunak'),
(24, 'XII AP 4', 'Akomodasi Perhotelan');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(2, 11, '1212', '2023-04-26', 'Januari', '2021', 4, 515000),
(3, 11, '1234', '2023-04-26', 'April', '2023', 4, 415000),
(4, 3, '123456', '2023-04-26', '--- Pili', '--- ', 4, 115000),
(5, 3, '4561', '2023-04-27', 'Januari', '2023', 4, 200000),
(6, 11, '62680', '2023-04-27', 'Januari', '2022', 4, 500000),
(7, 11, '6260', '2023-04-27', 'Januari', '2023', 3, 450000),
(8, 11, '4555', '2023-04-27', 'Januari', '2022', 5, 4700000),
(9, 11, '7867', '2023-04-27', 'Januari', '2022', 3, 450000),
(10, 3, '6265', '2023-04-27', 'Januari', '2022', 3, 531500),
(11, 3, '6265', '2023-04-27', 'Februari', '2022', 3, 531500),
(12, 11, '1212', '2023-04-27', 'Januari', '2023', 4, 16500),
(13, 11, '123456', '2023-04-27', 'Januari', '2023', 4, 416500),
(14, 11, '4561', '2023-04-27', 'Januari', '2023', 4, 331500),
(15, 11, '9090', '2023-04-27', 'Januari', '2023', 4, 250000),
(16, 11, '9090', '2023-04-27', 'Januari', '2023', 4, 281500),
(17, 11, '1234', '2023-04-28', 'Januari', '2023', 2, 116500),
(18, 11, '62680', '2023-04-28', '--- Pili', '--- ', 2, 31500),
(19, 11, '7867', '2023-04-28', '--- Pili', '--- ', 3, 100000),
(20, 11, '6263', '2023-04-28', 'Januari', '2023', 2, 531500);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(3, 'Petugas', 'petugas', 'Ardito', 'petugas'),
(4, 'Dimas', '123', 'Dimas', 'petugas'),
(11, 'Admin', 'admin', 'Christama', 'admin'),
(13, 'Maul', 'maul', 'Maulana Sutejo', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('1212', '2121', 'Jarwo', 24, 'Gunung Agung', '085163086469', 4),
('1234', '1234', 'Alifa', 15, 'Petitenget', '085169076468', 2),
('123456', '123456', 'Vanesa', 8, 'Buduk', '082166086869', 2),
('4555', '4556', 'Putri Prameswari', 14, 'Dalung Permai 17 blok A', '073185287865', 5),
('4561', '4561', 'Juna', 10, 'Jembrana', '085165647837', 2),
('6260', '6261', 'Ajung Dita', 8, 'Jalan Gajah Mada', '083157789293', 3),
('6263', '1234563', 'NataInd', 22, 'buduk', '081234512343', 2),
('6265', '6265', 'Agung Devan Prawira', 22, 'Perum GTT Jln Cendana VII rumah BB 1', '085163086463', 3),
('62680', '62680', 'Adit', 24, 'Buana raya\r\n', '08123451234', 2),
('7867', '6263', 'Gung Rama', 8, 'Seminyak', '082165437890', 3),
('9090', '9091', 'Febyan', 14, 'Taman Ayunn', '083231267469', 2);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(2, 2023, 531500),
(3, 2020, 6180000),
(4, 2021, 450000),
(5, 2022, 470000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_spp` (`id_spp`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`),
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`id_spp`) REFERENCES `siswa` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
