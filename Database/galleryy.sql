-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 01:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galleryy`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `cover` text NOT NULL,
  `nama_album` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `cover`, `nama_album`, `user_id`, `created_at`) VALUES
(1, '1705932231_5bb9b8779ce3c811f65a.jpg', 'Makanan', 1, '2024-01-22 21:04:23'),
(2, '1705932358_615ab0b921783a7d7cf9.jpg', 'Ruangan', 1, '2024-01-22 15:04:43'),
(4, '1706025748_7fe4aa56786743aacd27.jpg', 'Buku', 2, '2024-01-23 10:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`) VALUES
(1, 1, 1, 'aaa'),
(2, 1, 1, 'pe'),
(3, 2, 1, 'w'),
(4, 1, 1, 'Bagus'),
(5, 4, 1, 'Bagus la'),
(6, 1, 1, 'halo'),
(7, 4, 1, 'Sedap'),
(8, 4, 1, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `status`) VALUES
(8, 5, 1, 'Like'),
(9, 4, 1, ''),
(10, 1, 1, 'Like'),
(11, 6, 1, 'Like'),
(12, 3, 1, 'Like'),
(13, 2, 1, 'Like'),
(14, 1, 2, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `fotop` text NOT NULL,
  `deskripsi` text NOT NULL,
  `user_maker` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `fotop`, `deskripsi`, `user_maker`, `album`, `created_at`) VALUES
(1, '1705932231_5bb9b8779ce3c811f65a.jpg', 'Curry Puff', 1, 1, '2024-01-22 08:03:51'),
(3, '1705932440_9b51ab3c4ebaaf04133e.jpg', 'Kantin', 1, 2, '2024-01-22 08:07:20'),
(4, '1705932474_f4366a4eca33b9a9574d.jpg', 'Kwasong', 2, 1, '2024-01-22 08:07:54'),
(6, '1706025623_721927999a60e27320fb.jpg', 'Dining Room', 1, 2, '2024-01-23 10:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `foto`, `username`, `password`) VALUES
(1, 'test', 'tidaktahu.png', 'test', '0cc175b9c0f1b6a831c399e269772661'),
(2, 'test 1', 'default.jpg', 'test 1', '0cc175b9c0f1b6a831c399e269772661'),
(3, 'p', 'default.jpg', 'p', '83878c91171338902e0fe0fb97a8c47a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
