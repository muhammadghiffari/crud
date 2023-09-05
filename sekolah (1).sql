-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230108.6d2418107a
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 09:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_guru`
--

CREATE TABLE `t_guru` (
  `f_idguru` int(11) NOT NULL,
  `f_nama` varchar(50) DEFAULT NULL,
  `f_deskripsi` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_guru`
--

INSERT INTO `t_guru` (`f_idguru`, `f_nama`, `f_deskripsi`) VALUES
(1, 'Nugro N Agung Pribadi, S.Pd', 'Guru Rekayasa Perangkat Lunak'),
(2, 'Jumanta Hamdayama, S.Pd.M.Si', 'Guru Pendidikan Pancasila\r\n'),
(3, 'Nuraini Azizah, S.Pd', 'Guru Rekayasa Perangkat Lunak'),
(4, 'Haramotan Pandiangan, S.Pd', 'Guru Fisika'),
(5, 'Titi Ambaransih, S.Pd', 'Guru Sejarah'),
(6, 'Drs. Indro Pranoto', 'Guru Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `t_jurusan`
--

CREATE TABLE `t_jurusan` (
  `f_idjurusan` int(11) NOT NULL,
  `f_nama` varchar(50) NOT NULL,
  `f_deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_jurusan`
--

INSERT INTO `t_jurusan` (`f_idjurusan`, `f_nama`, `f_deskripsi`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'Jurusan ini fokus pada pengembangan perangkat lunak, pemrograman, analisis sistem, dan pengelolaan proyek perangkat lunak. Siswa akan mempelajari berbagai bahasa pemrograman, teknologi web, dan praktik pengembangan perangkat lunak.'),
(2, 'Desain Komunikasi Visual', 'Jurusan ini berkaitan dengan desain grafis, komunikasi visual, dan seni digital. Siswa akan memahami prinsip-prinsip desain, alat-alat desain grafis, serta cara menciptakan pesan visual yang efektif melalui gambar, ilustrasi, dan media lainnya.'),
(3, 'Akuntansi', 'Jurusan ini fokus pada bidang akuntansi dan keuangan. Siswa akan mempelajari dasar-dasar akuntansi, pelaporan keuangan, pengelolaan keuangan, dan perpajakan. Mereka akan siap untuk karir di bidang akuntansi dan keuangan.'),
(4, 'Manajemen Perkantoran', 'Jurusan ini membekali siswa dengan keterampilan administrasi perkantoran, manajemen dokumen, komunikasi bisnis, dan penggunaan perangkat lunak perkantoran. Siswa akan menjadi ahli dalam mengelola tugas-tugas administratif.'),
(5, 'Pemasaran', 'Jurusan ini berkaitan dengan pemasaran dan promosi produk atau layanan. Siswa akan memahami strategi pemasaran, riset pasar, manajemen merek, dan aspek lain dari dunia pemasaran. Mereka akan siap untuk berkarir di bidang pemasaran.');

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `f_idkelas` int(11) NOT NULL,
  `f_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`f_idkelas`, `f_nama`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE `t_siswa` (
  `f_idsiswa` int(11) NOT NULL,
  `f_nama` varchar(50) NOT NULL,
  `f_idkelas` int(11) NOT NULL,
  `f_idjurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`f_idsiswa`, `f_nama`, `f_idkelas`, `f_idjurusan`) VALUES
(4, 'Muhammad Ghiffari', 2, 1),
(5, 'Alvaro Mayza', 2, 1),
(6, 'Prawira Sebastian', 2, 2),
(7, 'Muhammad Arkan Karim', 3, 3),
(8, 'Muhammad Dharmawi Salam', 1, 1),
(9, 'Arfa Muhammad Fadhillah', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_guru`
--
ALTER TABLE `t_guru`
  ADD PRIMARY KEY (`f_idguru`);

--
-- Indexes for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
  ADD PRIMARY KEY (`f_idjurusan`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`f_idkelas`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`f_idsiswa`),
  ADD KEY `f_idkelas` (`f_idkelas`),
  ADD KEY `f_idjurusan` (`f_idjurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_guru`
--
ALTER TABLE `t_guru`
  MODIFY `f_idguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
  MODIFY `f_idjurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `f_idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `f_idsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD CONSTRAINT `t_siswa_ibfk_1` FOREIGN KEY (`f_idkelas`) REFERENCES `t_kelas` (`f_idkelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_siswa_ibfk_2` FOREIGN KEY (`f_idjurusan`) REFERENCES `t_jurusan` (`f_idjurusan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
