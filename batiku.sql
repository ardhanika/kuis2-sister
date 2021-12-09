-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: 10.0.0.30:3306
-- Generation Time: Dec 09, 2021 at 01:51 PM
-- Server version: 8.0.27-u2-cloud
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batiku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('1', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `idKategori` int NOT NULL,
  `namaKategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`idKategori`, `namaKategori`) VALUES
(1, 'Pria'),
(2, 'Wanita'),
(3, 'Anak-anak'),
(4, 'Couple'),
(5, 'Sarimbit');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keranjang`
--

CREATE TABLE `tabel_keranjang` (
  `idKeranjang` varchar(11) NOT NULL,
  `idUser` int NOT NULL,
  `idProduk` varchar(11) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `idKomen` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int NOT NULL,
  `stock` int NOT NULL,
  `path` varchar(50) NOT NULL,
  `size` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `ukuran`, `keterangan`, `kategori`, `harga`, `stock`, `path`, `size`) VALUES
(21, 'Batik Pria Panjang', '924183c75013ea920be6c475cbd1f1af', 'L', 'Lengan panjang slimfit\r\nBahan cotton\r\nbatik cetak berkualitas', 'pria', 125000, 21, 'image/924183c75013ea920be6c475cbd1f1af.png', 101728),
(22, 'Kemeja Batik Lengan Panjang Pria', '4e7d919d4262dc94bc06ac9b682c7229', 'XL', 'Bahan kualitas premium', 'pria', 150000, 9, 'image/4e7d919d4262dc94bc06ac9b682c7229.png', 48168),
(23, 'Kemeja Batik Pendek', 'dda3ef641dfb9c3f9876da018575c282', 'M', 'Kemeja Batik Pendek M', 'pria', 90000, 12, 'image/dda3ef641dfb9c3f9876da018575c282.png', 77418),
(24, 'Batik Lengan Pendek Premium', 'ab921a552315ec2583aac748af43564e', 'L', 'Kualitas Premium', 'pria', 200000, 6, 'image/ab921a552315ec2583aac748af43564e.png', 46758),
(25, 'Gaun Batik', '767b0ef6ba07802af0ecd619ceb790ee', 'M', 'Gaun Batik Slim', 'wanita', 320000, 12, 'image/767b0ef6ba07802af0ecd619ceb790ee.png', 138829),
(26, 'Gaun  Batik Sebahu', '4e69e603af1d1d5a0bb02388c3594f51', 'S', 'Gaun  Batik Sebahu', 'wanita', 321000, 9, 'image/4e69e603af1d1d5a0bb02388c3594f51.png', 401299),
(27, 'Batik Formal Office', '2737a4e347b11f27c4250c84e136b78a', 'M', 'Batik Formal Office', 'wanita', 230000, 10, 'image/2737a4e347b11f27c4250c84e136b78a.png', 116487),
(28, 'Batik Summer', '3c536a078cf2d79146a9504904dc928c', 'M', 'Batik Summer', 'wanita', 205000, 12, 'image/3c536a078cf2d79146a9504904dc928c.png', 82566),
(29, 'Batik Couple bown', '8a86349b89b85b34c8702bedcd8b6a9b', 'L', 'Batik Couple bown', 'couple', 729000, 12, 'image/8a86349b89b85b34c8702bedcd8b6a9b.png', 96000),
(30, 'Batik Anak', '7063134b3d7463dd8f050beb009c8e6b', 'M', 'Batik Couple Seasi', 'anak', 100000, 8, 'image/7063134b3d7463dd8f050beb009c8e6b.png', 134794),
(31, 'Batik Anak Pria', 'e341f4d8f115c1553eaf91499e96838c', 'L', 'Batik Anak Pria', 'anak', 90000, 13, 'image/e341f4d8f115c1553eaf91499e96838c.png', 312814),
(32, 'Sarimbit', '0d3e2c4a1cec2ed207000ae267710271', 'M', 'Sarimbit', 'sarimbit', 680000, 12, 'image/0d3e2c4a1cec2ed207000ae267710271.png', 86826);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(3, '1', '0', '0000-00-00', 2623000),
(4, '1', '0', '2017-06-07', 123000),
(5, '1', '0', '2017-06-07', 100000),
(6, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>, Kategori : sarimbit, Jumlah : 1<br>', '2019-12-05', 223000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int NOT NULL,
  `idUser` int NOT NULL,
  `idProduk` int NOT NULL,
  `jumlah` int NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_trolly`
--

INSERT INTO `tabel_trolly` (`idTrolly`, `idUser`, `idProduk`, `jumlah`, `harga`) VALUES
(1, 4, 28, 1, 205000),
(2, 8, 21, 1, 125000),
(3, 10, 21, 1, 125000),
(4, 12, 29, 1, 729000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`idUser`, `namaUser`, `email`, `password`, `alamat`, `telpon`) VALUES
(4, 'Asep', 'asep@outlook.com', 'dc855efb0dc7476760afaa1b281665f1', 'Sukabumi', '087777777777'),
(5, 'user', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Malang', '0897666555'),
(6, 'Ardhanika Muji Rahman Hidayatullah', 'dhsh@gnang.com', '3c6ff13b2a3cad695783dbf94128f2aa', 'asdas', '0813212'),
(7, 'Ardhanika Muji Rahman Hidayatullah', 'ok@gmail.com', '3c6ff13b2a3cad695783dbf94128f2aa', 'asdas', '2013920'),
(8, 'Ardhanika Muji Rahman Hidayatullah', 'a@a.com', 'e110fb45bc4f7cc5d367b06bfbc8e5c3', 'asd', 'asda'),
(9, 'dhani', 'a@b.com', '3c6ff13b2a3cad695783dbf94128f2aa', 'asasd', '0822'),
(10, 'asd', 'asdasd@sad', '7815696ecbf1c96e6894b779456d330e', 'asdasd', '3423'),
(12, 'asd', 'asd@asd.com', '7815696ecbf1c96e6894b779456d330e', 'asd', '123'),
(13, 'Ardhanika Muji Rahman Hidayatullah', 'ardhanika@gmail.com', '200820e3227815ed1756a6b531e7e0d2', 'Ahmad Yani', '123123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `tabel_keranjang`
--
ALTER TABLE `tabel_keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indexes for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`idKomen`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indexes for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `idKomen` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
