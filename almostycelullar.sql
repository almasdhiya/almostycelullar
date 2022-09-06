-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 03:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almostycelullar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(25, 'POCO X3 PRO Black', 'POCO X3 PRO Black RAM/MEMORY 6/256', 'xiaomi', 4699000, 100, 'pocox3pro.jpg'),
(26, 'Xiaomi Redmi 10', 'Xiaomi Redmi 10 Blue RAM/Memory 8/256 GB', 'xiaomi', 2788000, 12, 'redmi10.jpg'),
(27, 'Samsung S21 Black', 'Samsung S21 Black RAM/Memory 8/512 GB', 'samsung', 15999000, 43, 'samsungs21.jpg'),
(28, 'Samsung Z Flip Black', 'Samsung Z Flip Black RAM/Memory 8/256 GB', 'samsung', 20999000, 33, 'samsungzflip.jpg'),
(29, 'Asus Zenfone Max Pro Dark Blue', 'Asus Zenfone Max Pro Dark Blue RAM/Memory 8/128 GB', 'asus', 6899000, 48, 'asuszenfonepro.jpg'),
(30, 'Oppo Reno 6 Purple Aurora', 'Oppo Reno 6 Purple Aurora RAM/Memory 8/256 GB', 'oppo', 12999000, 15, 'opporeno6.jpg'),
(31, 'Asus ROG Phone 5', 'Asus ROG Phone 5 Black RAM/Memory 8/512 GB', 'asus', 7999000, 45, 'rogphone5.jpg'),
(32, 'Iphone 12 Blue', 'Iphone 12 Blue RAM/Memory 8/512 GB', 'iphone', 14999000, 68, '12 blue.jpg'),
(33, 'Samsung A52 Awesome Mint', 'Samsung A52 Awesome Mint RAM/Memory 8/128 GB', 'samsung', 4999000, 55, 'a52 mint.jpg'),
(34, 'Samsung S10 Black', 'Samsung S10 Black RAM/Memory 8/256 GB', 'samsung', 10599000, 17, 'samsungs10.jpg'),
(35, 'Xiaomi Redmi 9 Pro White', 'Xiaomi Redmi 9 Pro White RAM/Memory 6/64 GB', 'xiaomi', 3699000, 25, 'redmi9pro.jpg'),
(36, 'OPPO A95 Purple', 'OPPO A95 Purple RAM/Memory 8/256 GB', 'oppo', 8999000, 57, 'oppoa95.jpg'),
(37, 'Oppo A74 Prism Blue', 'Oppo A74 Prism Blue RAM/Memory 6/128', 'oppo', 4799000, 80, 'oppoa74.jpg'),
(38, 'Asus Zenfone 5z Silver', 'Asus Zenfone 5z Silver RAM/Memory 8/126 GB', 'asus', 5299000, 77, 'asuszenfone5z.jpg'),
(39, 'Asus Zenfone 6 Blue White', 'Asus Zenfone 6 Blue White RAM/Memory 8/128', 'asus', 3999000, 13, 'asuszenfone6.jpg'),
(40, 'Iphone 12 Purple', 'Iphone 12 Purple RAM/Memory 8/512', 'iphone', 17999000, 70, '12 ungu.jpg'),
(41, 'POCO F3 Pro White', 'POCO F3 Pro White RAM/Memory 8/256 GB', 'xiaomi', 5199000, 19, 'pocof3pro.jpg'),
(42, 'samsung a52 violet', 'samsung a52 Violet RAM/Memory 8/256 GB', 'samsung', 5700000, 50, 'a52_violet.jpg'),
(43, 'samsung s20 red', 'samsung s20 red ram/memory 8/256 GB', 'samsung', 6999000, 80, 's20_red.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(8, 'almas', 'graha prima GA 15', '2021-12-31 15:39:27', '2022-01-01 15:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'Asus', 2, 200000000, ''),
(3, 2, 3, 'Samsung s10', 1, 200039840, ''),
(4, 3, 3, 'Samsung s10', 2, 200039840, ''),
(9, 6, 27, 'Samsung S21 Black', 1, 15999000, ''),
(10, 7, 31, 'Asus ROG Phone 5', 1, 7999000, ''),
(11, 7, 24, 'Samsung S20 Red', 1, 6999000, ''),
(12, 8, 29, 'Asus Zenfone Max Pro Dark Blue', 1, 6899000, ''),
(13, 8, 27, 'Samsung S21 Black', 1, 15999000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW Update tb_barang SET stok = stok-NEW.jumlah
	where id_brg = NEW.id_brg
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'user', 'user', 'user', 2),
(5, 'sa', 'sa', 'sa', 2),
(6, 'shifa', 'shifa', 'shifa', 2),
(7, 'almas', 'almas', 'almas', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
