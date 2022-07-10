-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 12:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(9, 'Elektronik'),
(10, 'Furniture'),
(11, 'Komputer'),
(12, 'Busana'),
(13, 'Makanan');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `kategori_id`, `produk_nama`, `harga`, `deskripsi`, `produk_image`, `status`, `date_created`) VALUES
(8, 13, 'Mi Samyang', 8000, 'Samyang merupakan mi instan yang diproduksi oleh Samyang Food dari Korea Selatan yang memiliki rasa pedas.', 'produk1657314578.jpeg', 1, '2022-07-08 19:32:51'),
(11, 11, 'Laptop ROG', 16000000, 'ROG didirikan dengan tujuan menciptakan laptop gaming paling kuat dan serbaguna di dunia dalam industri. Perangkat premium kami meningkatkan pengalaman bermain game dengan tampilan terbaik di kelasnya, grafis tingkat atas, dan solusi pendinginan inovatif yang membawa kinerja ke tingkat yang lebih tinggi.', 'produk1657314551.jpeg', 1, '2022-07-08 19:39:30'),
(12, 12, 'Hoodie', 135000, ' jaket hoodie adalah pakaian berlengan panjang yang memiliki desain kantong atau saku pada bagian depannya. Kata hoodie sendiri berasal dari bahasa Inggris, yaitu hood yang berarti tudung atau penutup kepala.', 'produk1657314538.jpeg', 1, '2022-07-08 19:40:38'),
(13, 10, 'Meja Belajar', 300000, 'Setiap rumah pasti memiliki meja belajar di kamar atau ruang khusus. Lantas, apa yang dimaksud meja belajar? Secara istilah, meja belajar berarti meja yang digunakan seseorang untuk belajar atau menulis.', 'produk1657314482.jpeg', 1, '2022-07-08 19:41:42'),
(14, 9, 'Rice Cooker', 350000, 'Rice cooker adalah produk yang pertama kali dikenal sebelum magic jar dan magic com. Rice cooker pertama kali berfungsi sebagai alat untuk menanak nasi. Saat itu, rice cooker hanya sebuah pot alumunium dengan koil pemanas.', 'produk1657314637.jpeg', 1, '2022-07-08 21:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_nama`, `username`, `password`, `no_telepon`, `email`, `alamat`) VALUES
(1, 'Hilmi Yahya', 'admin', 'admin123', '085123456789', 'hilmiyahya199@gmail.com', 'Wonosari, Pagu, Kediri, Jawa Timur, Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
