-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 11:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `problem_02`
--

-- --------------------------------------------------------

--
-- Table structure for table `nhomsanpham`
--

CREATE TABLE `nhomsanpham` (
  `manhomsanpham` int(11) NOT NULL,
  `tennhomsanpham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`manhomsanpham`, `tennhomsanpham`, `trangthai`) VALUES
(1, 'Video', 1),
(2, 'BookOnTape', 1),
(3, 'Furniture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manhomsanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `anh` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `giaban` decimal(15,2) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `manhomsanpham`, `soluong`, `anh`, `giaban`, `trangthai`) VALUES
(1, 'video game', 1, 3, 'anh2.png', '100000.00', 0),
(2, 'Book Conan', 2, 4, 'anh1.png', '20000.00', 0),
(3, 'Furniture qweqw', 3, 12, 'anh4.png', '50000.00', 0),
(4, 'video phim điện ảnh', 1, 2, 'Ao5.jpg', '50000.00', 1),
(5, 'Book Math', 2, 3, 'Ao11.jpg', '600000.00', 1),
(6, 'tivi sony', 3, 1, 'Giay12.jpg', '10000000.00', 1),
(7, 'truyện conan', 2, 6, 'image-450w-1574503201.jpg', '100000.00', 1),
(8, 'laptop dell', 3, 3, 'Giay13.jpg', '60000000.00', 1),
(9, 'video game', 1, 5, 'images.png', '200000.00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nhomsanpham`
--
ALTER TABLE `nhomsanpham`
  ADD PRIMARY KEY (`manhomsanpham`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `manhomsanpham` (`manhomsanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nhomsanpham`
--
ALTER TABLE `nhomsanpham`
  MODIFY `manhomsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
