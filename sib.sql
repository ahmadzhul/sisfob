-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2017 at 08:36 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sib`
--

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_admin`
--

CREATE TABLE `60900114053_tb_admin` (
  `id_admin` int(2) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `60900114053_tb_admin`
--

INSERT INTO `60900114053_tb_admin` (`id_admin`, `email`, `username`, `password`, `foto`) VALUES
(1, 'admin@gamerzone.com', 'admin', 'admin', '11.PNG'),
(5, 'zhulachmad@yahoo.com', 'zhul', '123', 'default.jpg'),
(6, 'ahmad@zhul.com', 'root', 'root', 'logooo.jpg'),
(7, 'ahmed@gmail.com', 'ahmed', 'ahmed', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_order`
--

CREATE TABLE `60900114053_tb_order` (
  `id_order` int(2) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `total_bayar` int(15) NOT NULL,
  `alamat_kirim` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `60900114053_tb_order`
--

INSERT INTO `60900114053_tb_order` (`id_order`, `id_pelanggan`, `id_produk`, `jumlah`, `total_bayar`, `alamat_kirim`, `status`) VALUES
(20, 12, 15, 1, 5000000, 'Makassar', 'Belum Di kirim');

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_pelanggan`
--

CREATE TABLE `60900114053_tb_pelanggan` (
  `id_pelanggan` int(5) NOT NULL,
  `no_id` int(30) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `60900114053_tb_pelanggan`
--

INSERT INTO `60900114053_tb_pelanggan` (`id_pelanggan`, `no_id`, `nama_pelanggan`, `alamat`, `kota`, `provinsi`, `jenis_kelamin`, `no_telp`, `email_pelanggan`, `password`) VALUES
(12, 1234567, 'Zulkifli Ahmad', 'Pallangga Gowa', 'Makassar', 'Sulawesi Selatan', 'Laki-Laki', '089653253443', 'zhul@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_penjualan`
--

CREATE TABLE `60900114053_tb_penjualan` (
  `id_penjualan` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `stok` int(5) NOT NULL,
  `jumlah_jual` int(10) NOT NULL,
  `sisa_stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_produk`
--

CREATE TABLE `60900114053_tb_produk` (
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `stok` int(5) NOT NULL,
  `harga` int(15) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `60900114053_tb_produk`
--

INSERT INTO `60900114053_tb_produk` (`id_produk`, `nama_produk`, `kategori`, `stok`, `harga`, `gambar`, `keterangan`) VALUES
(4, ' Rexus Elite Gaming Mouse USB ', 'Mouse', 100, 200000, 'q.PNG', 'Kini Rexus Menghadirkan model mouse gaming usb terbarunya yakni Mouse Rexus X3 dengan resolusi up to'),
(9, 'Fantech Keyboard Gaming K10 Hu', 'Keyboard', 100, 250000, 'da1.PNG', 'fantech\'s switch tekanan 40g--jumlah tombol 112 tombol-Masa pakai tombol 5 juta kali--Nilai ultrapolling 1000Hz-Kabel tembaga-ukuran 446 (W) x 177 (L) x 28 (H'),
(10, ' Rexus Gaming Keyboard K7M - B', 'Keyboard', 100, 250000, '113.PNG', 'Rexus K9 RGB Backlight Gaming Keyboard merupakan keyboard gaming dengan warna background yang dapat diset menyala rainbow atau mati tanpa lampu. Rexus K9 memiliki 104 tombol dan dapat bertahan digunakan hingga 6 juta kali ketuk. Keyboard ini dilengkapi dengan 19 kunci anti-ghosting dan kabel nylon t'),
(11, 'Sades Headset Gaming G Power -', 'Headphone', 50, 170000, 'aae.PNG', 'Sades Gaming Headset SA-708 didesain dengan bentuk yang unik dan penuh gaya. Bagian headbandnya yang dapat disesuaikan memberikan kenyamanan maksimal saat sedang dikenakan. Bagian bantalan ear-pad nya yang lembut memberikan kenyamanan sekaligus terlihat elegan. Dengan 40mm Hi-fi driver, Anda akan me'),
(15, 'Microsoft XBOX 360 Slim - 4 GB', 'Console', 100, 5000000, 'xbo.PNG', 'Xbox 360 adalah game konsol yang dikembangkan oleh Microsoft yang memiliki pilihan permainan yang sangat beragam dengan grafis yang mengagumkan. Selain bisa dimainkan dengan game controller biasa, XBOX 360 juga memiliki teknologi yang disebut Kinect, yang mampu memainkan permainan dengan gerakan tub'),
(16, 'SONY Playstation 4 Pro 1TB CUH', 'Console', 50, 5500000, 'ps41.PNG', 'SONY kembali meluncurkan seri terbaru dari Playstation 4, yaitu Playstation 4 Pro. Kelebihan Playstation 4 Pro ini adalah pada gambar yang dihasilkan. Dengan output support pada TV 4K dan HDR ini sungguh menjanjikan sebuah pengalaman visual yang luar biasa serta peningkatan frame rate yang sangat si'),
(17, 'Microsoft Xbox Stick 360 Kabel', 'JoyStick', 40, 500000, 'ww1.PNG', 'Microsoft Controller Xbox 360 merupakan perangkat controller yang digunakan untuk memainkan konsol Xbox 360. Tidak hanya itu, perangkat controller ini juga mampu digunakan untuk bermain game dengan PC melalui slot USB yang tersedia. Perangkat controller dengan Kabel Tanpa Harus menggunakan Battery'),
(18, 'Microsoft XBOX 360 Slim - 250 ', 'Console', 50, 2750000, 'rete2.PNG', 'Mesin Xbox360 Slim Rekondisi Import,Mesin RGH versi terbaru,'),
(19, 'Rexus Keyboard Mouse Combo + M', 'Keyboard', 50, 250000, '56.PNG', 'Hadir Paketan Keyboard + Mouse + Mousepad Gaming terbaru dari Rexus. Rexus Keyboard Mouse Combo + Mousepad Gaming VR1 Warfaction Backlight ini merupakan paketan keyboard+mouse+mousepad Gaming Multimedia dengan tipe koneksi USB 2.0.Pemakaiannya sangat mudah, cukup plug n\' play tanpa perlu menginstall');

-- --------------------------------------------------------

--
-- Table structure for table `60900114053_tb_temporder`
--

CREATE TABLE `60900114053_tb_temporder` (
  `id_temporder` int(5) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `temp_jumlah` int(3) NOT NULL,
  `temp_total_bayar` int(12) NOT NULL,
  `temp_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `60900114053_tb_temporder`
--

INSERT INTO `60900114053_tb_temporder` (`id_temporder`, `id_pelanggan`, `id_produk`, `nama_produk`, `temp_jumlah`, `temp_total_bayar`, `temp_status`) VALUES
(26, 12, 15, 'Microsoft XBOX 360 Slim - 4 GB', 1, 5000000, 'Sudah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `60900114053_tb_admin`
--
ALTER TABLE `60900114053_tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `60900114053_tb_order`
--
ALTER TABLE `60900114053_tb_order`
  ADD PRIMARY KEY (`id_order`,`id_produk`),
  ADD KEY `FK_60900114053_tb_order` (`id_produk`);

--
-- Indexes for table `60900114053_tb_pelanggan`
--
ALTER TABLE `60900114053_tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `no_id` (`no_id`);

--
-- Indexes for table `60900114053_tb_penjualan`
--
ALTER TABLE `60900114053_tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `FK_60900114053_tb_penjualan` (`id_produk`);

--
-- Indexes for table `60900114053_tb_produk`
--
ALTER TABLE `60900114053_tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `60900114053_tb_temporder`
--
ALTER TABLE `60900114053_tb_temporder`
  ADD PRIMARY KEY (`id_temporder`),
  ADD KEY `FK_60900114053_tb_temporderr` (`id_pelanggan`),
  ADD KEY `FK_60900114053_tb_temporderrr` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `60900114053_tb_admin`
--
ALTER TABLE `60900114053_tb_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `60900114053_tb_order`
--
ALTER TABLE `60900114053_tb_order`
  MODIFY `id_order` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `60900114053_tb_pelanggan`
--
ALTER TABLE `60900114053_tb_pelanggan`
  MODIFY `id_pelanggan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `60900114053_tb_penjualan`
--
ALTER TABLE `60900114053_tb_penjualan`
  MODIFY `id_penjualan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `60900114053_tb_produk`
--
ALTER TABLE `60900114053_tb_produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `60900114053_tb_temporder`
--
ALTER TABLE `60900114053_tb_temporder`
  MODIFY `id_temporder` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `60900114053_tb_order`
--
ALTER TABLE `60900114053_tb_order`
  ADD CONSTRAINT `FK_60900114053_tb_order` FOREIGN KEY (`id_produk`) REFERENCES `60900114053_tb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `60900114053_tb_penjualan`
--
ALTER TABLE `60900114053_tb_penjualan`
  ADD CONSTRAINT `FK_60900114053_tb_penjualan` FOREIGN KEY (`id_produk`) REFERENCES `60900114053_tb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `60900114053_tb_temporder`
--
ALTER TABLE `60900114053_tb_temporder`
  ADD CONSTRAINT `FK_60900114053_tb_temporderr` FOREIGN KEY (`id_pelanggan`) REFERENCES `60900114053_tb_pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_60900114053_tb_temporderrr` FOREIGN KEY (`id_produk`) REFERENCES `60900114053_tb_produk` (`id_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
