-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2018 at 05:32 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recomuse`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(15) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`id`, `user_name`, `user_password`, `user_email`) VALUES
(1, 'baris', '12345', 'baris@gmail.com'),
(2, 'ilteris', '2504', 'ilteris@gmail.com'),
(3, 'emre', 'birced', 'emre@gmail.com'),
(4, 'sedat', 'ceyhan', 'sedat@gmail.com'),
(5, 'ebru', 'aran', 'ebru@gmail.com'),
(6, 'ali', 'aran', 'ali@gmail.com'),
(7, 'elif', '12345', 'elif@gmail.com'),
(8, 'mehmet', 'kardan', 'mehmet@gmail.com'),
(9, 'metin', 'altinbas', 'metin@gmail.com'),
(10, 'neslihan', 'cekic', 'neslihan@gmail.com'),
(11, 'yusufhoca', '12345', 'yusufhoca@gmail.com'),
(12, 'gokhan', 'mik', 'gokhan@gmail.com'),
(14, 'emir', 'cetinoglu', 'emir@gmail.com'),
(15, 'baris', '12345', 'baris@gmail.com'),
(16, 'ilteris', '2504', 'ilteris@gmail.com'),
(17, 'emre', 'birced', 'emre@gmail.com'),
(18, 'sedat', 'ceyhan', 'sedat@gmail.com'),
(19, 'ebru', 'aran', 'ebru@gmail.com'),
(20, 'ali', 'aran', 'ali@gmail.com'),
(21, 'elif', '12345', 'elif@gmail.com'),
(22, 'mehmet', 'kardan', 'mehmet@gmail.com'),
(23, 'metin', 'altinbas', 'metin@gmail.com'),
(24, 'neslihan', 'cekic', 'neslihan@gmail.com'),
(25, 'yusufhoca', '12345', 'yusufhoca@gmail.com'),
(26, 'gokhan', 'mik', 'gokhan@gmail.com'),
(27, 'emir', 'cetinoglu', 'emir@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `account_libary`
--

CREATE TABLE `account_libary` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `artist_id` int(11) NOT NULL DEFAULT '0',
  `artist_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_libary`
--

INSERT INTO `account_libary` (`user_id`, `artist_id`, `artist_name`) VALUES
(1, 1, 'Periphery'),
(1, 2, 'Tesseract'),
(1, 3, 'Athena'),
(1, 5, 'Polyphia'),
(1, 6, 'Bring Me The Horizon'),
(1, 9, 'Avenged Sevenfold'),
(1, 10, 'Bullet For My Valentine'),
(1, 12, 'Muse'),
(1, 18, 'Red Hot Chilli Peppers'),
(2, 1, 'Periphery'),
(2, 3, 'Athena'),
(2, 8, 'Pink Floyd'),
(2, 9, 'Avenged Sevenfold'),
(3, 3, 'Athena'),
(3, 8, 'Pink Floyd'),
(3, 9, 'Avenged Sevenfold'),
(3, 12, 'Muse'),
(4, 3, 'Athena'),
(4, 9, 'Avenged Sevenfold'),
(4, 11, 'Serdar Ortac'),
(4, 12, 'Muse'),
(5, 3, 'Athena'),
(5, 8, 'Pink Floyd'),
(6, 3, 'Athena'),
(6, 8, 'Pink Floyd'),
(8, 1, 'Periphery'),
(8, 3, 'Athena'),
(8, 8, 'Pink Floyd'),
(9, 1, 'Periphery'),
(10, 12, 'Muse'),
(11, 3, 'Athena'),
(11, 6, 'Bring Me The Horizon'),
(11, 8, 'Pink Floyd'),
(14, 3, 'Athena'),
(14, 11, 'Serdar Ortac'),
(14, 22, 'As I Lay Dying'),
(14, 25, 'Beduk');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(30) NOT NULL DEFAULT '',
  `album_year` year(4) NOT NULL DEFAULT '0000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `album_year`) VALUES
(1, 'Select Difficulty', 2106),
(2, 'Omega', 2014),
(3, 'Polaris', 2015),
(4, 'US', 2002),
(5, 'That\'s The Spirit', 2015),
(6, 'Dark Side Of The Moon', 1978),
(7, 'Drones', 2015),
(8, 'The Stage', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `artist_info`
--

CREATE TABLE `artist_info` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `genre1` varchar(20) DEFAULT NULL,
  `genre2` varchar(20) DEFAULT NULL,
  `genre3` varchar(20) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `year_formed` year(4) DEFAULT NULL,
  `info` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist_info`
--

INSERT INTO `artist_info` (`id`, `name`, `genre1`, `genre2`, `genre3`, `area`, `year_formed`, `info`) VALUES
(1, 'Periphery', 'Djent', 'Progressive Metal', 'Modern Metal', 'USA', 2009, 'Very good band.'),
(2, 'Tesseract', 'Djent', 'Ambient Metal', 'Progressive Metal', 'UK', 2008, 'Super!!!'),
(3, 'Athena', 'Ska', 'Rock', 'Punk', 'Turkey', 1995, 'asdfqgdsfvsadfasf'),
(4, 'Rihanna', 'Pop', 'R&B', 'Rap', 'USA', 2004, 'asdfasdfasdfasdf'),
(5, 'Polyphia', 'Modern Metal', 'Experimental', 'Djent', 'UK', 2011, 'sdfebddca'),
(6, 'Bring Me The Horizon', 'Metalcore', 'Modern Rock', 'Modern Metal', 'UK', 2005, 'adsfasdfavasdcd'),
(7, 'Sebnem Ferah', 'Rock', NULL, NULL, 'Turkey', 1992, 'adfasvsadfads'),
(8, 'Pink Floyd', 'Rock', 'Progressive Rock', NULL, 'USA', 1970, 'Very important rock band through history of music.'),
(9, 'Avenged Sevenfold', 'Rock', 'Metalcore', 'Heavy Metal', 'USA', 2004, 'sfavvasddavas'),
(10, 'Bullet For My Valentine', 'Metalcore', 'Heavy Metal', 'Rock', 'UK', 2003, 'jkbjollkml?m'),
(11, 'Serdar Ortac', 'Pop', NULL, NULL, 'Turkey', 1992, 'Les muzik, dinlemeyin'),
(12, 'Muse', 'Rock', 'Progressive Rock', NULL, 'USA', 1997, 'fvaassam?dva'),
(13, 'Kings Of Leon', 'Indie Rock', NULL, NULL, 'USA', 2005, 'Mehmet\'s favourite band.'),
(14, 'Cashflow', 'Arabesk Rap', NULL, NULL, 'Turkey', 2007, 'Berk\'s favourite band.'),
(15, 'Tiesto', 'Electronic', 'Big Room House', 'Bass House', 'Netherlands', 1985, 'Dede.'),
(16, 'Mustafa Sandal', 'Pop', NULL, NULL, 'Turkey', 1992, 'Ama onun arabasi var.'),
(17, 'Jonathan Young', 'Modern Metal', 'Rock', 'Heavy Metal', 'USA', 2014, 'Popular Youtube artist.'),
(18, 'Red Hot Chilli Peppers', 'Funk', 'Alternative Rock', 'Pop Rock', 'USA', 1984, 'Give it away now.'),
(19, 'Queen', 'Rock', NULL, NULL, 'UK', 1965, 'One of the greatest bands of all time.'),
(20, 'Tarkan', 'Pop', 'Turk Sanat Muzigi', NULL, 'Turkey', 1991, 'Cuppa cuppa'),
(21, 'Saniser', 'Rap', 'Indie', NULL, 'Turkey', 2010, 'Good Turkish rap.'),
(22, 'As I Lay Dying', 'Metalcore', 'Modern Metal', NULL, 'USA', 2004, 'aasdcasdcas'),
(23, 'As Lions', 'Rock', 'Metal', 'Alternative Rock', 'UK', 2015, 'asdcasdcasc'),
(24, 'Asking Alexandria', 'Metalcore', 'Rock', 'Modern Metal', 'UK', 2008, 'asdcasdcasdcasdc'),
(25, 'Beduk', 'Electronic', 'Pop', NULL, 'Turkey', 2003, 'asdcasdcas'),
(26, 'Crown The Empire', 'Metalcore', 'Modern Metal', 'Rock', 'USA', 2005, 'asdcasdcascd'),
(27, 'Endur', 'Rock', 'Metal', 'Industrial Metal', 'USA', 2013, 'asdfasdvcasdcda'),
(28, 'I See Stars', 'Metalcore', 'Electronic Metal', 'Modern Metal', 'USA', 2010, 'asdcdascasc'),
(29, 'In Motive', 'Ambient Metal', 'Modern Metal', 'Rock', 'USA', 2016, 'adsfasdcdasc'),
(30, 'Jason Richardson', 'Djent', 'Progressive Metal', 'Metalcore', 'USA', 2015, 'asdfsdcasdca');

-- --------------------------------------------------------

--
-- Table structure for table `has_album`
--

CREATE TABLE `has_album` (
  `artist_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_album`
--

INSERT INTO `has_album` (`artist_id`, `album_id`) VALUES
(1, 1),
(2, 3),
(1, 2),
(12, 7),
(8, 6),
(3, 4),
(6, 5),
(9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `has_song`
--

CREATE TABLE `has_song` (
  `song_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_song`
--

INSERT INTO `has_song` (`song_id`, `album_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(5, 3),
(4, 1),
(10, 5),
(13, 4),
(9, 8),
(8, 8),
(6, 1),
(7, 7),
(11, 5),
(12, 4),
(14, 6);

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`) VALUES
(1, 'Prayer Position'),
(2, 'Bad Thing'),
(3, 'Messenger'),
(4, 'Lune'),
(5, 'Hexes'),
(6, 'Marigold'),
(7, 'The Handler'),
(8, 'Higher'),
(9, 'God Damn'),
(10, 'Doomed'),
(11, 'Throne'),
(12, 'Yalan'),
(13, 'For Real'),
(14, 'Speak To Me');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_libary`
--
ALTER TABLE `account_libary`
  ADD PRIMARY KEY (`user_id`,`artist_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `artist_info`
--
ALTER TABLE `artist_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `has_album`
--
ALTER TABLE `has_album`
  ADD KEY `has_album_ibfk_1` (`artist_id`),
  ADD KEY `has_album_ibfk_2` (`album_id`);

--
-- Indexes for table `has_song`
--
ALTER TABLE `has_song`
  ADD KEY `has_song_ibfk_1` (`album_id`),
  ADD KEY `has_song_ibfk_2` (`song_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `artist_info`
--
ALTER TABLE `artist_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_libary`
--
ALTER TABLE `account_libary`
  ADD CONSTRAINT `account_libary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account_info` (`id`),
  ADD CONSTRAINT `account_libary_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist_info` (`id`);

--
-- Constraints for table `has_album`
--
ALTER TABLE `has_album`
  ADD CONSTRAINT `has_album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist_info` (`id`),
  ADD CONSTRAINT `has_album_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `has_song`
--
ALTER TABLE `has_song`
  ADD CONSTRAINT `has_song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `has_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
