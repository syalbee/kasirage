-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 12:56 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_asli` bigint(255) NOT NULL,
  `harga_grosir` bigint(255) NOT NULL,
  `harga_biasa` bigint(255) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_nota` varchar(255) DEFAULT NULL,
  `kode_barang` int(255) DEFAULT NULL,
  `total_beli` int(255) DEFAULT NULL,
  `harga_jual` bigint(255) DEFAULT NULL,
  `sub_total` bigint(255) DEFAULT NULL,
  `jenis_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(60) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_name`, `salary`, `gender`, `city`, `email`) VALUES
(1, 'Tina Palastri M.Pd', '15', 'Dr.', 'Sulawesi Selatan', 'vPertiwi@Laksita.net'),
(2, 'Harsana Jati Maheswara', '10', 'dr.', 'Nusa Tenggara Barat', 'bWastuti@gmail.com'),
(3, 'Zamira Kusmawati', '4', 'Drs.', 'Riau', 'qSuryatmi@Nuraini.tv'),
(4, 'Abyasa Hutapea', '48', 'dr.', 'Kepulauan Riau', 'Adhiarja.Prakasa@yahoo.co.id'),
(5, 'Iriana Ulya Rahimah S.E.I', '52', 'drg.', 'Riau', 'Maimunah57@gmail.co.id'),
(6, 'Umaya Rafid Najmudin S.Farm', '1', 'Ir.', 'Sulawesi Barat', 'Yuni.Rajata@Hasanah.asia'),
(7, 'Carla Palastri', '9', 'H.', 'Kalimantan Tengah', 'Darijan88@Nugroho.sch.id'),
(8, 'Wirda Usamah', '18', 'drg.', 'Sulawesi Barat', 'Clara87@gmail.com'),
(9, 'Taufik Wijaya', '52', 'Drs.', 'Papua Barat', 'oWahyuni@gmail.com'),
(10, 'Nardi Wibowo', '28', 'dr.', 'Bangka Belitung', 'Jasmin.Hastuti@Rahimah.co.id'),
(11, 'Kariman Hidayanto S.Sos', '55', 'Drs.', 'Kalimantan Timur', 'Karma07@gmail.co.id'),
(12, 'Zelda Syahrini Sudiati', '24', 'H.', 'Maluku Utara', 'Bajragin.Farida@Prastuti.go.id'),
(13, 'Almira Rahimah', '19', 'Ir.', 'Bengkulu', 'xWulandari@Andriani.in'),
(14, 'Ade Vanya Widiastuti M.Pd', '7', 'Dr.', 'Kalimantan Utara', 'Lailasari.Heryanto@yahoo.co.id'),
(15, 'Silvia Wastuti', '8', 'H.', 'Papua', 'gOktaviani@Mayasari.co.id'),
(16, 'Irma Lestari M.Ak', '20', 'drg.', 'Gorontalo', 'Among36@Maryadi.net'),
(17, 'Darmana Gaiman Tampubolon M.TI.', '49', 'H.', 'Gorontalo', 'Prayogo17@Saptono.sch.id'),
(18, 'Yance Rahimah S.Kom', '37', 'Ir.', 'Jawa Timur', 'Dinda06@Waluyo.com'),
(19, 'Kenzie Pranowo S.Kom', '13', 'H.', 'Jawa Barat', 'Aryani.Lalita@Pratiwi.asia'),
(20, 'Gara Prima Waskita', '29', 'Drs.', 'DI Yogyakarta', 'iLatupono@Rajasa.web.id'),
(21, 'Widya Yuliarti M.Pd', '15', 'H.', 'Aceh', 'Hidayat.Umaya@Sitompul.biz'),
(22, 'Karsa Saefullah', '17', 'Ir.', 'Kalimantan Utara', 'qSitorus@Siregar.net'),
(23, 'Johan Anggriawan', '51', 'Drs.', 'Sumatera Selatan', 'Mansur.Usyi@yahoo.com'),
(24, 'Dodo Natsir', '11', 'Ir.', 'Jawa Tengah', 'Purwadi19@Uyainah.mil.id'),
(25, 'Daru Anggriawan', '57', 'Drs.', 'Bangka Belitung', 'tUsada@yahoo.com'),
(26, 'Nadine Prastuti M.Kom.', '37', 'drg.', 'Kalimantan Selatan', 'Dabukke.Agnes@Yolanda.or.id'),
(27, 'Sarah Novi Rahmawati', '17', 'Ir.', 'Jawa Timur', 'lPrabowo@gmail.com'),
(28, 'Puti Ratna Nasyidah', '49', 'drg.', 'Kepulauan Riau', 'Harja02@Rahayu.ac.id'),
(29, 'Satya Eman Hidayanto M.Kom.', '34', 'Drs.', 'Kalimantan Tengah', 'Janet.Safitri@gmail.com'),
(30, 'Usman Waluyo', '43', 'H.', 'Kalimantan Utara', 'iSitumorang@Pradana.asia'),
(31, 'Himawan Ardianto', '11', 'Ir.', 'Banten', 'Michelle.Nurdiyanti@Napitupulu.mil.id'),
(32, 'Purwanto Santoso', '21', 'H.', 'Jambi', 'Bahuwirya83@Thamrin.ac.id'),
(33, 'Luluh Sabar Tampubolon', '5', 'H.', 'Jawa Barat', 'Harsanto.Namaga@yahoo.co.id'),
(34, 'Gamblang Ridwan Hidayanto S.Pd', '24', 'Ir.', 'Bengkulu', 'vMardhiyah@Wulandari.biz.id'),
(35, 'Bahuwirya Tarihoran S.E.', '20', 'H.', 'Kalimantan Tengah', 'Cornelia.Novitasari@yahoo.co.id'),
(36, 'Jindra Najmudin', '29', 'drg.', 'Sulawesi Utara', 'hSuryatmi@Novitasari.asia'),
(37, 'Darijan Halim Firgantoro S.Pt', '32', 'Drs.', 'Jawa Timur', 'Virman.Oktaviani@Lestari.org'),
(38, 'Catur Mustofa M.Farm', '39', 'Ir.', 'Sumatera Utara', 'qMaryadi@Natsir.co.id'),
(39, 'Nrima Wijaya M.Pd', '47', 'drg.', 'Kalimantan Timur', 'Sakura58@Namaga.web.id'),
(40, 'Cahyo Unggul Prabowo', '3', 'Ir.', 'Riau', 'Ina.Hakim@Agustina.name'),
(41, 'Nardi Santoso', '12', 'Drs.', 'Sulawesi Barat', 'Rahmi.Jailani@yahoo.com'),
(42, 'Mila Padmasari S.Pd', '11', 'dr.', 'Kalimantan Tengah', 'Putu.Utami@Prastuti.asia'),
(43, 'Dalima Raina Winarsih S.I.Kom', '53', 'Drs.', 'Sulawesi Selatan', 'Hendra.Iswahyudi@gmail.com'),
(44, 'Paris Uyainah', '33', 'Ir.', 'Kalimantan Barat', 'Teguh.Mahendra@yahoo.co.id'),
(45, 'Putri Widiastuti S.H.', '23', 'drg.', 'Bangka Belitung', 'Harsanto.Kurniawan@Wacana.mil.id'),
(46, 'Uli Diana Rahayu M.M.', '22', 'H.', 'Bengkulu', 'Pangestu.Ardianto@gmail.co.id'),
(47, 'Kenari Umay Suryono S.Gz', '54', 'Drs.', 'Kepulauan Riau', 'Sitorus.Tantri@gmail.co.id'),
(48, 'Zamira Nurdiyanti', '7', 'H.', 'Sulawesi Selatan', 'Rika.Salahudin@gmail.co.id'),
(49, 'Rahmi Melani', '4', 'drg.', 'Jambi', 'Saputra.Caraka@Wulandari.in'),
(50, 'Argono Sitorus M.Pd', '59', 'H.', 'Kalimantan Tengah', 'Garang.Yuniar@yahoo.com'),
(51, 'Clara Ami Safitri', '20', 'drg.', 'Sumatera Barat', 'Halima.Wibisono@gmail.com'),
(52, 'Nova Samiah Fujiati S.T.', '60', 'H.', 'Sulawesi Barat', 'kSusanti@Lestari.name'),
(53, 'Salimah Mulyani', '20', 'Drs.', 'Nusa Tenggara Barat', 'Dabukke.Titin@Uwais.asia'),
(54, 'Dasa Lega Prasetya S.Farm', '35', 'Drs.', 'Sulawesi Tengah', 'lMandasari@gmail.com'),
(55, 'Digdaya Ardianto', '56', 'Dr.', 'Jawa Barat', 'pNasyidah@gmail.com'),
(56, 'Elisa Unjani Haryanti M.Pd', '20', 'drg.', 'Sulawesi Selatan', 'Situmorang.Ade@gmail.com'),
(57, 'Darmaji Bahuwirya Zulkarnain', '2', 'Dr.', 'Kalimantan Barat', 'Kasiyah.Wijaya@Ardianto.in'),
(58, 'Jaka Sihotang', '8', 'Dr.', 'Maluku Utara', 'Cawisadi56@gmail.co.id'),
(59, 'Rusman Wasis Rajasa S.Pd', '13', 'Dr.', 'Jawa Tengah', 'Ganda20@yahoo.co.id'),
(60, 'Dalima Wahyuni S.IP', '56', 'Ir.', 'DKI Jakarta', 'Prasetya17@yahoo.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_nota` varchar(255) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `total_bayar` bigint(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin', '$2y$10$MJ7jG.rHezrIl0eD4gH2rOsdYe39XTxNXHtwQ41gxFIjmV1cUholK', 'Admin kasir', '1'),
(2, 'kasir', '$2y$10$MJ7jG.rHezrIl0eD4gH2rOsdYe39XTxNXHtwQ41gxFIjmV1cUholK', 'Kasir biasa', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `no_nota` (`no_nota`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_nota`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`no_nota`) REFERENCES `penjualan` (`no_nota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
