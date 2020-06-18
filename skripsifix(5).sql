-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 01:23 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsifix`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_kasus`
--

CREATE TABLE `basis_kasus` (
  `id_kasus` int(11) NOT NULL,
  `kd_kasus` varchar(8) NOT NULL,
  `fk_penyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_kasus`
--

INSERT INTO `basis_kasus` (`id_kasus`, `kd_kasus`, `fk_penyakit`) VALUES
(1, 'K001', 1),
(2, 'K002', 2),
(4, 'K004', 4),
(5, 'K005', 5),
(6, 'K006', 6),
(7, 'K007', 7),
(15, 'K010', 4),
(18, 'K011', 6),
(26, 'K012', 4),
(27, 'K013', 7),
(28, 'K014', 4),
(29, 'K015', 7);

-- --------------------------------------------------------

--
-- Table structure for table `detail_kasus`
--

CREATE TABLE `detail_kasus` (
  `id_detail` int(11) NOT NULL,
  `fk_gejala` int(11) NOT NULL,
  `fk_kasus` int(11) NOT NULL,
  `bobot` enum('1','3','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_kasus`
--

INSERT INTO `detail_kasus` (`id_detail`, `fk_gejala`, `fk_kasus`, `bobot`) VALUES
(1, 1, 1, '3'),
(2, 2, 1, '5'),
(3, 3, 1, '3'),
(4, 4, 1, '3'),
(5, 5, 2, '5'),
(6, 1, 2, '3'),
(7, 4, 2, '3'),
(12, 8, 4, '5'),
(13, 1, 4, '5'),
(14, 3, 5, '5'),
(15, 10, 5, '3'),
(16, 11, 5, '3'),
(17, 12, 5, '3'),
(18, 13, 5, '5'),
(19, 14, 5, '5'),
(20, 15, 5, '5'),
(24, 17, 6, '5'),
(25, 6, 6, '1'),
(26, 1, 6, '1'),
(27, 18, 6, '5'),
(29, 1, 7, '1'),
(44, 1, 15, '1'),
(45, 8, 15, '1'),
(46, 12, 15, '1'),
(47, 12, 18, '3'),
(48, 16, 18, '1'),
(49, 18, 18, '1'),
(74, 1, 26, '1'),
(75, 8, 26, '3'),
(76, 12, 26, '1'),
(77, 7, 27, '1'),
(78, 13, 27, '5'),
(79, 16, 27, '5'),
(80, 2, 28, '5'),
(81, 6, 28, '3'),
(82, 14, 28, '1'),
(83, 3, 29, '3'),
(84, 9, 29, '1'),
(85, 17, 29, '3');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemeriksaan`
--

CREATE TABLE `detail_pemeriksaan` (
  `id_detail` int(11) NOT NULL,
  `fk_pemeriksaan` int(11) NOT NULL,
  `fk_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pemeriksaan`
--

INSERT INTO `detail_pemeriksaan` (`id_detail`, `fk_pemeriksaan`, `fk_gejala`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 11),
(4, 1, 17),
(5, 1, 18),
(6, 2, 1),
(7, 2, 8),
(8, 2, 12),
(9, 3, 1),
(10, 3, 8),
(11, 3, 12),
(14, 5, 7),
(15, 5, 13),
(16, 5, 16),
(17, 6, 2),
(18, 6, 11),
(19, 6, 13),
(20, 6, 17),
(21, 6, 18),
(22, 7, 6),
(23, 7, 8),
(24, 7, 10),
(25, 7, 13),
(26, 7, 18),
(27, 8, 6),
(28, 8, 8),
(29, 8, 10),
(30, 8, 13),
(31, 8, 18),
(32, 9, 1),
(33, 9, 3),
(34, 9, 4),
(35, 9, 10),
(36, 9, 18),
(37, 10, 1),
(38, 10, 4),
(39, 10, 6),
(40, 10, 11),
(41, 10, 15),
(42, 11, 1),
(43, 11, 5),
(44, 11, 6),
(45, 11, 7),
(46, 11, 14),
(47, 12, 1),
(48, 12, 6),
(49, 12, 8),
(50, 12, 19),
(51, 13, 1),
(52, 13, 6),
(53, 13, 8),
(54, 13, 19),
(59, 16, 8),
(60, 16, 13),
(61, 16, 16),
(62, 16, 17),
(63, 17, 1),
(64, 17, 9),
(65, 17, 14),
(66, 17, 18),
(67, 18, 2),
(68, 18, 6),
(69, 18, 14),
(70, 19, 1),
(71, 19, 3),
(72, 19, 5),
(73, 19, 15),
(74, 20, 12),
(75, 20, 16),
(76, 20, 18),
(82, 22, 2),
(83, 22, 6),
(84, 22, 12),
(85, 22, 16),
(86, 22, 18),
(87, 23, 6),
(88, 23, 16),
(89, 23, 19),
(90, 24, 1),
(91, 24, 10),
(92, 24, 18),
(93, 25, 4),
(94, 25, 8),
(95, 25, 15),
(96, 26, 2),
(97, 26, 9),
(98, 26, 14),
(99, 27, 5),
(100, 27, 10),
(101, 27, 18),
(102, 28, 3),
(103, 28, 9),
(104, 28, 17),
(105, 29, 1),
(106, 29, 17),
(107, 29, 19),
(108, 30, 3),
(109, 30, 11),
(110, 30, 14),
(111, 30, 18);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kd_gejala` varchar(8) NOT NULL,
  `nm_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kd_gejala`, `nm_gejala`) VALUES
(1, 'G001', 'Rasa terbakar atau gatal dan ada kemerahan disekitar alat kelamin'),
(2, 'G002', 'Timbul bintil berkelompok seperti anggur yang sangat nyeri pada kemaluan'),
(3, 'G003', 'Pembengkakan kelenjar getah bening di selangkangan'),
(4, 'G004', 'Nyeri atau panas saat buang air kecil'),
(5, 'G005', 'Keluar cairan dari alat kelamin, encer, dan baunya busuk'),
(6, 'G006', 'Pendarahan setelah berhubungan seksual'),
(7, 'G007', 'Nyeri di perut bagian bawah'),
(8, 'G008', 'Keluarnya cairan dari alat kelamin berwana putih atau abu-abu'),
(9, 'G009', 'Pembesaran kelenjar getah bening diseluruh tubuh'),
(10, 'G010', 'Sariawan yang berlebih dan tidak segera sembuh, mual, lemas'),
(11, 'G011', 'Ruam di kulit'),
(12, 'G012', 'Diare yang sering'),
(13, 'G013', 'Kehilangan berat badan dengan cepat'),
(14, 'G014', 'Penurunan kekebalan tubuh'),
(15, 'G015', 'Demam berkepanjangan'),
(16, 'G016', 'Luka disekitar alat kelamin, lebih dari satu dengan diameter +- 2 cm, cekung, dan pinggirnya tidak teratur'),
(17, 'G017', 'Terdapat benjolan menyerupai bunga kol'),
(18, 'G018', 'Kutil disekitar alat kelamin'),
(19, 'G019', 'Rasa terbakar saat kencing');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `komen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komen`, `komen`) VALUES
(2, 'tampilannya sudah cukup menarik, hanya saja pada pengoperasiannya butuh tutorial'),
(3, 'tampilan sangat menarik, kembangkan! semangat kaka ^^');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id_pemeriksaan` int(11) NOT NULL,
  `tgl_pemeriksaan` date NOT NULL,
  `status` enum('1','2','3','4') NOT NULL,
  `fk_penyakit` int(11) DEFAULT NULL,
  `hasil` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `tgl_direvisi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_pemeriksaan`, `tgl_pemeriksaan`, `status`, `fk_penyakit`, `hasil`, `fk_user`, `tgl_direvisi`) VALUES
(1, '2020-05-22', '1', 7, 100, NULL, '0000-00-00'),
(2, '2020-05-22', '1', 4, 100, NULL, '0000-00-00'),
(3, '2020-05-22', '2', 4, 45, 7, '2020-06-15'),
(5, '2020-05-22', '4', 7, 17, 7, '2020-06-13'),
(6, '2020-05-22', '1', 6, 83, NULL, '0000-00-00'),
(7, '2020-05-28', '1', 4, 50, NULL, '0000-00-00'),
(8, '2020-05-28', '1', 6, 50, NULL, '0000-00-00'),
(9, '2020-05-28', '1', 7, 100, NULL, '0000-00-00'),
(10, '2020-05-30', '1', 7, 100, NULL, '0000-00-00'),
(11, '2020-06-07', '1', 7, 100, NULL, '0000-00-00'),
(12, '2020-06-07', '1', 4, 100, NULL, '0000-00-00'),
(13, '2020-06-07', '1', 7, 100, NULL, '0000-00-00'),
(14, '2020-06-07', '1', 7, 100, NULL, '0000-00-00'),
(16, '2020-06-11', '1', 4, 50, NULL, '0000-00-00'),
(17, '2020-06-12', '1', 7, 100, NULL, '0000-00-00'),
(18, '2020-06-12', '4', 4, 36, 7, '2020-06-15'),
(19, '2020-06-12', '1', 7, 100, NULL, '0000-00-00'),
(20, '2020-06-12', '4', 6, 42, 7, '0000-00-00'),
(22, '2020-06-12', '1', 6, 50, NULL, '0000-00-00'),
(23, '2020-06-15', '2', 7, 45, NULL, NULL),
(24, '2020-06-15', '1', 7, 100, NULL, NULL),
(25, '2020-06-15', '1', 4, 60, NULL, NULL),
(26, '2020-06-15', '1', 4, 67, NULL, NULL),
(27, '2020-06-15', '2', 2, 45, NULL, NULL),
(28, '2020-06-15', '4', 7, 42, 7, '2020-06-15'),
(29, '2020-06-15', '1', 7, 100, NULL, NULL),
(30, '2020-06-15', '3', 5, 45, 7, '2020-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kd_penyakit` char(5) NOT NULL,
  `nm_penyakit` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kd_penyakit`, `nm_penyakit`, `detail`, `solusi`) VALUES
(1, 'P001', 'Herpes Genital / HSV-2', '', ''),
(2, 'P002', 'Trikomoniasis', '', ''),
(4, 'P004', 'Bacterial Vaginosis (BV)', '', ''),
(5, 'P005', 'HIV / AIDS', '', ''),
(6, 'P006', 'Kondilomata Akuminata / Kutil Kelamin', '', ''),
(7, 'P007', 'Chancroid / Syankroid / Ulkus Mole', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `noWa` char(15) NOT NULL,
  `level` enum('Admin','Pakar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `email`, `password`, `nama`, `alamat`, `noWa`, `level`) VALUES
(1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', 'Malang', '081232275503', 'Admin'),
(6, 'agustinsetya38@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Agustin Setyo', 'Malang', '081232275604', 'Admin'),
(7, 'pakar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Pakar 1', 'Malang', '0341-587473', 'Pakar'),
(8, 'gideonmei@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Gideon Mei', 'Malang', '081232275503', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_kasus`
--
ALTER TABLE `basis_kasus`
  ADD PRIMARY KEY (`id_kasus`),
  ADD KEY `fk_penyakit` (`fk_penyakit`);

--
-- Indexes for table `detail_kasus`
--
ALTER TABLE `detail_kasus`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_gejala` (`fk_gejala`),
  ADD KEY `fk_penyakit` (`fk_kasus`);

--
-- Indexes for table `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_pemeriksaan` (`fk_pemeriksaan`),
  ADD KEY `fk_gejala` (`fk_gejala`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`),
  ADD KEY `fk_penyakit` (`fk_penyakit`),
  ADD KEY `fk_user` (`fk_user`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_kasus`
--
ALTER TABLE `basis_kasus`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `detail_kasus`
--
ALTER TABLE `detail_kasus`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basis_kasus`
--
ALTER TABLE `basis_kasus`
  ADD CONSTRAINT `basis_kasus_ibfk_1` FOREIGN KEY (`fk_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_kasus`
--
ALTER TABLE `detail_kasus`
  ADD CONSTRAINT `detail_kasus_ibfk_1` FOREIGN KEY (`fk_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_kasus_ibfk_2` FOREIGN KEY (`fk_kasus`) REFERENCES `basis_kasus` (`id_kasus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  ADD CONSTRAINT `detail_pemeriksaan_ibfk_1` FOREIGN KEY (`fk_pemeriksaan`) REFERENCES `pemeriksaan` (`id_pemeriksaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pemeriksaan_ibfk_2` FOREIGN KEY (`fk_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemeriksaan_ibfk_3` FOREIGN KEY (`fk_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
