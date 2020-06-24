-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2020 pada 02.05
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

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
-- Struktur dari tabel `basis_kasus`
--

CREATE TABLE `basis_kasus` (
  `id_kasus` int(11) NOT NULL,
  `kd_kasus` char(8) NOT NULL,
  `fk_penyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_kasus`
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
(29, 'K015', 7),
(30, 'K016', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kasus`
--

CREATE TABLE `detail_kasus` (
  `id_detail` int(11) NOT NULL,
  `fk_gejala` int(11) NOT NULL,
  `fk_kasus` int(11) NOT NULL,
  `bobot` enum('1','3','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_kasus`
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
(85, 17, 29, '3'),
(86, 11, 30, '3'),
(87, 13, 30, '1'),
(88, 15, 30, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pemeriksaan`
--

CREATE TABLE `detail_pemeriksaan` (
  `id_detail` int(11) NOT NULL,
  `fk_pemeriksaan` int(11) NOT NULL,
  `fk_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pemeriksaan`
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
(51, 13, 1),
(52, 13, 6),
(53, 13, 8),
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
(108, 30, 3),
(109, 30, 11),
(110, 30, 14),
(111, 30, 18),
(112, 31, 11),
(113, 31, 13),
(114, 31, 15),
(115, 32, 1),
(116, 32, 2),
(117, 32, 3),
(118, 32, 4),
(119, 32, 5),
(120, 32, 6),
(121, 32, 7),
(122, 32, 8),
(123, 32, 9),
(124, 32, 10),
(125, 32, 11),
(126, 32, 12),
(127, 32, 13),
(128, 32, 14),
(129, 32, 15),
(130, 32, 16),
(131, 32, 17),
(132, 32, 18),
(133, 33, 1),
(134, 33, 2),
(135, 33, 3),
(136, 33, 4),
(137, 33, 5),
(138, 33, 6),
(139, 33, 7),
(140, 33, 8),
(141, 33, 9),
(142, 33, 10),
(143, 33, 11),
(144, 33, 12),
(145, 33, 13),
(146, 33, 14),
(147, 33, 15),
(148, 33, 16),
(149, 33, 17),
(150, 33, 18),
(151, 34, 1),
(152, 34, 2),
(153, 34, 3),
(154, 34, 4),
(155, 34, 5),
(156, 34, 6),
(157, 34, 7),
(158, 34, 8),
(159, 34, 9),
(160, 34, 10),
(161, 34, 11),
(162, 34, 12),
(163, 34, 13),
(164, 34, 14),
(165, 34, 15),
(166, 34, 16),
(167, 34, 17),
(168, 34, 18),
(169, 35, 1),
(170, 35, 2),
(171, 35, 3),
(172, 35, 4),
(173, 35, 5),
(174, 35, 6),
(175, 35, 7),
(176, 35, 8),
(177, 35, 9),
(178, 35, 10),
(179, 35, 11),
(180, 35, 12),
(181, 35, 13),
(182, 35, 14),
(183, 35, 15),
(184, 35, 16),
(185, 35, 17),
(186, 35, 18),
(187, 36, 1),
(188, 36, 2),
(189, 36, 3),
(190, 36, 4),
(191, 36, 5),
(192, 36, 6),
(193, 36, 7),
(194, 36, 8),
(195, 36, 9),
(196, 36, 10),
(197, 36, 11),
(198, 36, 12),
(199, 36, 13),
(200, 36, 14),
(201, 36, 15),
(202, 36, 16),
(203, 36, 17),
(204, 36, 18),
(205, 37, 1),
(206, 37, 2),
(207, 37, 3),
(208, 37, 4),
(209, 37, 5),
(210, 37, 6),
(211, 37, 7),
(212, 37, 8),
(213, 37, 9),
(214, 37, 10),
(215, 37, 11),
(216, 37, 12),
(217, 37, 13),
(218, 37, 14),
(219, 37, 15),
(220, 37, 16),
(221, 37, 17),
(222, 37, 18),
(223, 38, 1),
(224, 38, 2),
(225, 38, 3),
(226, 38, 4),
(227, 38, 5),
(228, 38, 6),
(229, 38, 7),
(230, 38, 8),
(231, 38, 9),
(232, 38, 10),
(233, 38, 11),
(234, 38, 12),
(235, 38, 13),
(236, 38, 14),
(237, 38, 15),
(238, 38, 16),
(239, 38, 17),
(240, 38, 18),
(241, 39, 1),
(242, 39, 2),
(243, 39, 3),
(244, 39, 4),
(245, 39, 5),
(246, 39, 6),
(247, 39, 7),
(248, 39, 8),
(249, 39, 9),
(250, 39, 10),
(251, 39, 11),
(252, 39, 12),
(253, 39, 13),
(254, 39, 14),
(255, 39, 15),
(256, 39, 16),
(257, 39, 17),
(258, 39, 18),
(259, 40, 1),
(260, 40, 2),
(261, 40, 3),
(262, 40, 4),
(263, 40, 5),
(264, 40, 6),
(265, 40, 7),
(266, 40, 8),
(267, 40, 9),
(268, 40, 10),
(269, 40, 11),
(270, 40, 12),
(271, 40, 13),
(272, 40, 14),
(273, 40, 15),
(274, 40, 16),
(275, 40, 17),
(276, 40, 18),
(277, 41, 1),
(278, 41, 2),
(279, 41, 3),
(280, 41, 4),
(281, 41, 5),
(282, 41, 6),
(283, 41, 7),
(284, 41, 8),
(285, 41, 9),
(286, 41, 10),
(287, 41, 11),
(288, 41, 12),
(289, 41, 13),
(290, 41, 14),
(291, 41, 15),
(292, 41, 16),
(293, 41, 17),
(294, 41, 18),
(295, 42, 1),
(296, 42, 2),
(297, 42, 3),
(298, 42, 4),
(299, 42, 5),
(300, 42, 6),
(301, 42, 7),
(302, 42, 8),
(303, 42, 9),
(304, 42, 10),
(305, 42, 11),
(306, 42, 12),
(307, 42, 13),
(308, 42, 14),
(309, 42, 15),
(310, 42, 16),
(311, 42, 17),
(312, 42, 18),
(313, 43, 1),
(314, 43, 2),
(315, 43, 3),
(316, 43, 4),
(317, 43, 5),
(318, 43, 6),
(319, 43, 7),
(320, 43, 8),
(321, 43, 9),
(322, 43, 10),
(323, 43, 11),
(324, 43, 12),
(325, 43, 13),
(326, 43, 14),
(327, 43, 15),
(328, 43, 16),
(329, 43, 17),
(330, 43, 18),
(331, 44, 1),
(332, 44, 2),
(333, 44, 3),
(334, 44, 4),
(335, 44, 5),
(336, 44, 6),
(337, 44, 7),
(338, 44, 8),
(339, 44, 9),
(340, 44, 10),
(341, 44, 11),
(342, 44, 12),
(343, 44, 13),
(344, 44, 14),
(345, 44, 15),
(346, 44, 16),
(347, 44, 17),
(348, 44, 18),
(349, 45, 8),
(350, 46, 1),
(351, 46, 10),
(352, 46, 13),
(353, 46, 16),
(354, 47, 3),
(355, 47, 9),
(356, 47, 11),
(357, 48, 4),
(358, 48, 11),
(359, 48, 14),
(360, 49, 9),
(361, 49, 11),
(362, 49, 14),
(363, 50, 6),
(364, 50, 10),
(365, 50, 15),
(366, 50, 16),
(367, 51, 4),
(368, 51, 12),
(369, 51, 13),
(370, 51, 15),
(371, 52, 8),
(372, 52, 11),
(373, 52, 15),
(374, 52, 17),
(375, 53, 3),
(376, 53, 7),
(377, 53, 10),
(378, 53, 12),
(379, 53, 16),
(380, 54, 2),
(381, 54, 7),
(382, 54, 11),
(383, 54, 13),
(384, 54, 15),
(385, 55, 1),
(386, 55, 6),
(387, 55, 13),
(388, 55, 16),
(389, 56, 2),
(390, 56, 7),
(391, 56, 11),
(392, 56, 14),
(393, 57, 6),
(394, 57, 9),
(395, 57, 12),
(396, 57, 16),
(397, 58, 4),
(398, 58, 8),
(399, 58, 14),
(400, 58, 17),
(401, 59, 3),
(402, 59, 8),
(403, 59, 11),
(404, 59, 15),
(405, 60, 2),
(406, 60, 9),
(407, 60, 13),
(408, 60, 16),
(409, 61, 5),
(410, 61, 8),
(411, 61, 12),
(412, 62, 9),
(413, 62, 13),
(414, 62, 16),
(415, 63, 3),
(416, 63, 13),
(417, 63, 16),
(418, 64, 2),
(419, 64, 6),
(420, 64, 14),
(421, 65, 2),
(422, 65, 5),
(423, 65, 16),
(424, 66, 2),
(425, 66, 10),
(426, 66, 17),
(427, 67, 3),
(428, 67, 6),
(429, 68, 4),
(430, 68, 9),
(431, 68, 11),
(432, 69, 4),
(433, 69, 7),
(434, 70, 2),
(435, 71, 7),
(436, 72, 8),
(437, 73, 6),
(438, 74, 5),
(439, 75, 5),
(440, 76, 3),
(441, 77, 4),
(442, 78, 2),
(443, 79, 2),
(444, 79, 12),
(445, 80, 1),
(446, 81, 4),
(447, 82, 1),
(448, 82, 4),
(449, 82, 5),
(450, 82, 6),
(451, 82, 7),
(452, 82, 15),
(453, 83, 1),
(454, 83, 4),
(455, 83, 5),
(456, 83, 6),
(457, 83, 7),
(458, 83, 15),
(459, 84, 1),
(460, 84, 4),
(461, 84, 5),
(462, 84, 6),
(463, 84, 7),
(464, 84, 15),
(465, 85, 1),
(466, 85, 4),
(467, 85, 5),
(468, 85, 6),
(469, 85, 7),
(470, 85, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kd_gejala` varchar(8) NOT NULL,
  `nm_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
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
(18, 'G018', 'Kutil disekitar alat kelamin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `komen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komen`, `komen`) VALUES
(3, 'tampilan sangat menarik, kembangkan! semangat kaka ^^');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
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
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_pemeriksaan`, `tgl_pemeriksaan`, `status`, `fk_penyakit`, `hasil`, `fk_user`, `tgl_direvisi`) VALUES
(1, '2020-05-22', '1', 7, 100, NULL, '0000-00-00'),
(2, '2020-05-22', '1', 4, 100, NULL, '0000-00-00'),
(3, '2020-05-22', '3', 4, 45, 7, '2020-06-22'),
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
(23, '2020-06-15', '4', 7, 45, 7, '2020-06-22'),
(24, '2020-06-15', '1', 7, 100, NULL, NULL),
(25, '2020-06-15', '1', 4, 60, NULL, NULL),
(26, '2020-06-15', '1', 4, 67, NULL, NULL),
(27, '2020-06-15', '4', 1, 45, 7, '2020-06-21'),
(28, '2020-06-15', '4', 7, 42, 7, '2020-06-15'),
(29, '2020-06-15', '1', 7, 100, NULL, NULL),
(30, '2020-06-15', '3', 5, 45, 7, '2020-06-15'),
(31, '2020-06-22', '4', 7, 45, 7, '2020-06-22'),
(32, '2020-06-22', '1', 1, 100, NULL, NULL),
(33, '2020-06-22', '1', 2, 100, NULL, NULL),
(34, '2020-06-22', '1', 4, 100, NULL, NULL),
(35, '2020-06-22', '1', 5, 100, NULL, NULL),
(36, '2020-06-22', '1', 6, 100, NULL, NULL),
(37, '2020-06-22', '1', 7, 100, NULL, NULL),
(38, '2020-06-22', '1', 4, 100, NULL, NULL),
(39, '2020-06-22', '1', 6, 100, NULL, NULL),
(40, '2020-06-22', '1', 4, 100, NULL, NULL),
(41, '2020-06-22', '1', 7, 100, NULL, NULL),
(42, '2020-06-22', '1', 4, 100, NULL, NULL),
(43, '2020-06-22', '1', 7, 100, NULL, NULL),
(44, '2020-06-22', '1', 7, 100, NULL, NULL),
(45, '2020-06-22', '1', 4, 60, NULL, NULL),
(46, '2020-06-23', '1', 7, 100, NULL, NULL),
(47, '2020-06-23', '1', 7, 60, NULL, NULL),
(48, '2020-06-23', '1', 7, 60, NULL, NULL),
(49, '2020-06-23', '1', 7, 60, NULL, NULL),
(50, '2020-06-23', '2', 7, 45, NULL, NULL),
(51, '2020-06-23', '1', 6, 60, NULL, NULL),
(52, '2020-06-23', '1', 7, 80, NULL, NULL),
(53, '2020-06-23', '1', 6, 80, NULL, NULL),
(54, '2020-06-23', '1', 7, 100, NULL, NULL),
(55, '2020-06-23', '1', 7, 100, NULL, NULL),
(56, '2020-06-23', '1', 4, 67, NULL, NULL),
(57, '2020-06-23', '1', 6, 80, NULL, NULL),
(58, '2020-06-23', '1', 4, 60, NULL, NULL),
(59, '2020-06-23', '1', 7, 80, NULL, NULL),
(60, '2020-06-23', '1', 7, 91, NULL, NULL),
(61, '2020-06-23', '1', 4, 80, NULL, NULL),
(62, '2020-06-23', '1', 7, 91, NULL, NULL),
(63, '2020-06-23', '1', 7, 91, NULL, NULL),
(64, '2020-06-23', '1', 4, 100, NULL, NULL),
(65, '2020-06-23', '1', 4, 56, NULL, NULL),
(66, '2020-06-23', '1', 4, 56, NULL, NULL),
(67, '2020-06-23', '2', 7, 43, NULL, NULL),
(68, '2020-06-23', '1', 7, 60, NULL, NULL),
(69, '2020-06-23', '2', 2, 27, NULL, NULL),
(70, '2020-06-23', '1', 4, 56, NULL, NULL),
(71, '2020-06-23', '2', 7, 9, NULL, NULL),
(72, '2020-06-23', '1', 4, 60, NULL, NULL),
(73, '2020-06-23', '2', 4, 33, NULL, NULL),
(74, '2020-06-24', '2', 2, 45, NULL, NULL),
(75, '2020-06-24', '2', 2, 45, NULL, NULL),
(76, '2020-06-24', '2', 7, 43, NULL, NULL),
(77, '2020-06-24', '2', 2, 27, NULL, NULL),
(78, '2020-06-24', '1', 4, 56, NULL, NULL),
(79, '2020-06-24', '1', 6, 60, NULL, NULL),
(80, '2020-06-24', '1', 7, 100, NULL, NULL),
(81, '2020-06-24', '2', 2, 27, NULL, NULL),
(82, '2020-06-24', '1', 2, 100, NULL, NULL),
(83, '2020-06-24', '1', 7, 100, NULL, NULL),
(84, '2020-06-24', '1', 2, 100, NULL, NULL),
(85, '2020-06-24', '1', 7, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kd_penyakit` char(5) NOT NULL,
  `nm_penyakit` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kd_penyakit`, `nm_penyakit`, `detail`, `solusi`) VALUES
(1, 'P001', 'Herpes Genital / HSV-2', 'Herpes genital atau herpes simplex adalah suatu infeksi menular seksual yang disebabkan oleh virus herpes simplex (HSV). Setelah pengidap terinfeksi, virus menetap secara dorman dalam tubuh dan dapat terjadi reaktivasi hingga beberapa kali dalam setahun. Penyakit infeksi ini juga dapat ditularkan melalui luka kecil yang tidak tampak. Herpes kelamin atau herpes genital sering kali tidak disadari, karena bisa tanpa gejala. Jika muncul gejala, biasanya berupa luka lepuh di kelamin yang terasa sakit dan gatal. Luka lepuh ini dapat muncul 2 hari sampai 2 bulan sejak tertular. Virus herpes simpleks (HSV) adalah penyebab dari penyakit herpes genital atau herpes kelamin.', 'Upaya untuk mencegah penularan herpes genital adalah senantiasa melakukan hubungan seksual yang aman dengan tidak bergonta-ganti pasangan. Jika pernah mengalami herpes genital, sebaiknya bicarakan kondisi ini kepada pasangan dan sarankan pasangan untuk melakukan pemeriksaan agar dapat segera diobati jika tertular. Menggunakan kondom saat melakukan hubungan intim dengan pasangan yang tidak jelas status infeksi menular seksualnya.'),
(2, 'P002', 'Trikomoniasis', 'Trikomoniasis adalah penyakit menular seksual yang disebabkan oleh parasit Trichomonas vaginalis. Trikomoniasis menular melalui hubungan seksual. Selain hubungan seksual, berbagi pakai alat bantu seks dengan penderita trikomoniasis juga dapat menularkan penyakit ini. Penyakit trikomoniasis sering kali tidak menimbulkan gejala. Walaupun tanpa gejala, seseorang yang menderita trikomoniasis tetap dapat menularkannya kepada orang lain.', 'Tidak bergonta-ganti pasangan seksual, menggunakan kondom saat berhubungan intim, serta tidak berbagi pakai alat bantu seks, dan membersihkannya setiap selesai digunakan.\r\n'),
(4, 'P004', 'Bacterial Vaginosis (BV)', 'Vaginosis bakterialis adalah infeksi vagina yang disebabkan oleh terganggunya keseimbangan flora normal di dalam vagina. Umumnya, tubuh memiliki bakteri baik yang berfungsi melindungi tubuh dari bakteri jahat yang dapat menyebabkan infeksi. Namun pada penderita vaginosis bakterialis, jumlah bakteri baik di dalam vagina berkurang sehingga tidak mampu melawan infeksi. Vaginosis bakterialis dapat dialami oleh wanita pada segala usia. Namun, sebagian besar vaginosis bakterialis terjadi ketika wanita dalam masa reproduksi, yaitu usia 15-44 tahun. Vaginosis bakterialis termasuk infeksi ringan, namun jika dibiarkan tanpa pengobatan dapat menyebabkan infeksi menular seksual. Bila infeksi bakteri vagina terjadi saat hamil, risiko mengalami komplikasi kehamilan menjadi lebih tinggi.', 'Langkah utama untuk mencegah vaginosis bakterialis adalah menjaga keseimbangan bakteri di dalam vagina. Beberapa cara yang dapat dilakukan untuk menjaga keseimbangan bakteri tersebut, antara lain : Jangan menyiram atau membersihkan vagina dengan semprotan air, Hindari penggunaan sabun dengan kandungan pewangi untuk membersihkan bagian luar vagina, Gunakan celana dalam berbahan katun dan jangan mencuci celana dalam menggunakan sabun cuci dengan kandungan kimia keras, Gunakan pembalut tanpa kandungan pewangi, serta Melakukan hubungan seksual yang aman.'),
(5, 'P005', 'HIV / AIDS', 'HIV (human immunodeficiency virus) adalah virus yang merusak sistem kekebalan tubuh, dengan menginfeksi dan menghancurkan sel CD4. Semakin banyak sel CD4 yang dihancurkan, kekebalan tubuh akan semakin lemah, sehingga rentan diserang berbagai penyakit. Infeksi HIV yang tidak segera ditangani akan berkembang menjadi kondisi serius yang disebut AIDS (Acquired Immune Deficiency Syndrome). AIDS adalah stadium akhir dari infeksi virus HIV. Pada tahap ini, kemampuan tubuh untuk melawan infeksi sudah hilang sepenuhnya. Sampai saat ini belum ada obat untuk menangani HIV dan AIDS. Akan tetapi, ada obat untuk memperlambat perkembangan penyakit tersebut, dan dapat meningkatkan harapan hidup penderita. Penularan HIV terjadi saat darah, sperma, atau cairan vagina dari seseorang yang terinfeksi masuk ke dalam tubuh orang lain. Perlu diketahui, HIV tidak menyebar melalui kontak kulit seperti berjabat tangan atau berpelukan dengan penderita HIV. Penularan juga tidak terjadi melalui ludah, kecuali bila penderita mengalami sariawan, gusi berdarah, atau terdapat luka terbuka di mulut.', 'Gunakan kondom yang baru setiap berhubungan intim, baik hubungan intim vaginal maupun anal. Hindari berhubungan intim dengan lebih dari satu pasangan. Bersikap jujur kepada pasangan jika mengidap positif HIV, agar pasangan juga menjalani tes HIV. Jika menduga baru saja terinfeksi atau tertular virus HIV, seperti setelah melakukan hubungan intim dengan pengidap HIV, maka harus segera ke dokter. Agar bisa mendapatkan obat post-exposure prophylaxis (PEP) yang dikonsumsi selama 28 hari dan terdiri dari 3 obat antiretroviral.\r\n'),
(6, 'P006', 'Kondiloma Akuminata / Kutil Kelamin', 'Kondiloma akuminata disebut juga dengan istilah kutil kelamin. Kutil ini disebabkan oleh virus human papillomavirus (HPV) dan biasanya ditularkan lewat hubungan seks tanpa kondom. Kondiloma akuminata berupa benjolan daging yang menyerupai bunga kol, sehingga sering dikira sebagai tumor atau kanker. Namun dalam banyak kasus, kondiloma akuminata bisa berukuran kecil, sehingga sering tidak terlihat. Selain muncul di area kelamin, kutil ini juga bisa muncul di mulut atau tenggorokan. Kondisi tersebut terjadi karena penularan melalui seks oral. Kondiloma akuminata memang jarang menyebabkan rasa sakit dan dapat sembuh dengan baik dengan penanganan yang tepat. Walau begitu, kondisi ini perlu diwaspadai karena infeksi HPV meningkatkan risiko kanker serviks dan kanker anus.', 'Untuk mencegah kondiloma akuminata, penting untuk menghindari perilaku seks berisiko, misalnya berhubungan seks tanpa kondom atau berhubungan seks dengan lebih dari satu orang. Selain itu, vaksinasi kanker serviks juga dapat mencegah kondiloma akuminata. Vaksin ini bisa diberikan untuk pria dan wanita. Segera periksakan diri ke dokter agar bisa mendapatkan diagnosis dan penanganan yang tepat.'),
(7, 'P007', 'Chancroid / Syankroid / Ulkus Mole', 'Ulkus mole (cancroid) adalah infeksi bakteri yang terjadi di area genitalia, baik pada laki-laki maupun perempuan. Bakteri penyebab infeksi ini adalah Haemophilus ducreyi. Bakteri tersebut menyerang jaringan-jaringan di bagian luar vagina dan penis sehingga menimbulkan luka atau bintil-bintil kecil. Penyakit ini juga dikenal dengan istilah kankroid. Umumnya akan muncul empat benjolan merah atau lebih pada labia, di antara labia dan anus, atau pada paha. Labia adalah lipatan kulit yang menutupi alat kelamin wanita. Setelah benjolan “matang” menjadi luka terbuka, wanita dapat mengalami sensasi terbakar atau nyeri selama buang air kecil atau besar.', 'Untuk mempercepat penyembuhan dan mencegah penyakit ulkus mole datang lagi, sebaiknya hindari gonta-ganti pasangan seksual atau berhubungan seks tanpa kondom. Bila Anda sudah memutuskan untuk tak pakai kondom dengan pasangan, pastikan Anda berdua sama-sama sudah dites bersih dari penyakit menular seksual.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `noWa` char(15) NOT NULL,
  `level` enum('Admin','Pakar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `nama`, `alamat`, `noWa`, `level`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', 'Malang', '0812322755031', 'Admin'),
(6, 'agustinsetya', '81dc9bdb52d04dc20036dbd8313ed055', 'Agustin Setyo', 'Malang', '081232275604', 'Admin'),
(7, 'pakar', '87b7cf2448de01f22b0c016b272f2ec0', 'Pakar', 'Malang', '0341-587473', 'Pakar'),
(8, 'gideonmei', '81dc9bdb52d04dc20036dbd8313ed055', 'Gideon Mei', 'Malang', '081232275503', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `basis_kasus`
--
ALTER TABLE `basis_kasus`
  ADD PRIMARY KEY (`id_kasus`),
  ADD KEY `fk_penyakit` (`fk_penyakit`);

--
-- Indeks untuk tabel `detail_kasus`
--
ALTER TABLE `detail_kasus`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_gejala` (`fk_gejala`),
  ADD KEY `fk_penyakit` (`fk_kasus`);

--
-- Indeks untuk tabel `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_pemeriksaan` (`fk_pemeriksaan`),
  ADD KEY `fk_gejala` (`fk_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indeks untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`),
  ADD KEY `fk_penyakit` (`fk_penyakit`),
  ADD KEY `fk_user` (`fk_user`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_kasus`
--
ALTER TABLE `basis_kasus`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `detail_kasus`
--
ALTER TABLE `detail_kasus`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `basis_kasus`
--
ALTER TABLE `basis_kasus`
  ADD CONSTRAINT `basis_kasus_ibfk_1` FOREIGN KEY (`fk_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_kasus`
--
ALTER TABLE `detail_kasus`
  ADD CONSTRAINT `detail_kasus_ibfk_1` FOREIGN KEY (`fk_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_kasus_ibfk_2` FOREIGN KEY (`fk_kasus`) REFERENCES `basis_kasus` (`id_kasus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pemeriksaan`
--
ALTER TABLE `detail_pemeriksaan`
  ADD CONSTRAINT `detail_pemeriksaan_ibfk_1` FOREIGN KEY (`fk_pemeriksaan`) REFERENCES `pemeriksaan` (`id_pemeriksaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pemeriksaan_ibfk_2` FOREIGN KEY (`fk_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemeriksaan_ibfk_3` FOREIGN KEY (`fk_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
