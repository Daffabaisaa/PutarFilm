-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2024 at 07:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `putar_putar_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `film_cast`
--

CREATE TABLE `film_cast` (
  `film_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film_cast`
--

INSERT INTO `film_cast` (`film_id`, `cast_id`) VALUES
(5, 1),
(5, 2),
(9, 3),
(9, 4),
(10, 3),
(296, 10),
(296, 14);

-- --------------------------------------------------------

--
-- Table structure for table `film_genre`
--

CREATE TABLE `film_genre` (
  `film_id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film_genre`
--

INSERT INTO `film_genre` (`film_id`, `genre_name`) VALUES
(1, 'Fantasy'),
(1, 'Horror'),
(1, 'Sci-fi'),
(2, 'sci-fi'),
(5, 'Adventure'),
(5, 'Horror'),
(6, 'Adventure'),
(6, 'Comedy'),
(6, 'Romance'),
(7, 'Action'),
(8, 'Drama'),
(8, 'Romance'),
(9, 'Action'),
(9, 'Comedy'),
(9, 'Crime'),
(9, 'Drama'),
(10, 'Action'),
(10, 'Comedy'),
(10, 'Drama'),
(10, 'Romance'),
(11, 'Action'),
(11, 'Mystery'),
(11, 'Sci-Fi'),
(11, 'Thriller'),
(12, 'Action'),
(12, 'Adventure'),
(12, 'Sci-Fi'),
(12, 'Thriller'),
(13, 'Action'),
(13, 'Adventure'),
(13, 'Sci-Fi'),
(13, 'Thriller'),
(14, 'Action'),
(14, 'Adventure'),
(14, 'Mystery'),
(14, 'Sci-Fi'),
(15, 'Action'),
(15, 'Adventure'),
(15, 'Sci-Fi'),
(15, 'Thriller'),
(16, 'Crime'),
(16, 'Drama'),
(16, 'Friendship'),
(16, 'Hope'),
(16, 'Redemption'),
(17, 'Crime'),
(17, 'Drama'),
(17, 'Family'),
(17, 'Mafia'),
(17, 'Power'),
(18, 'Action'),
(18, 'Crime'),
(18, 'Dark Comedy'),
(18, 'Drama'),
(18, 'Thriller'),
(19, 'Action'),
(19, 'Crime'),
(19, 'Drama'),
(19, 'Superhero'),
(19, 'Thriller'),
(20, 'Biography'),
(20, 'Drama'),
(20, 'History'),
(20, 'Holocaust'),
(20, 'War'),
(21, 'Action'),
(21, 'Dark Comedy'),
(21, 'Sci-Fi'),
(21, 'Superhero'),
(22, 'Drama'),
(22, 'Mystery'),
(22, 'Thriller'),
(23, 'Comedy'),
(23, 'Drama'),
(23, 'Romance'),
(24, 'Crime'),
(24, 'Drama'),
(24, 'Mystery'),
(24, 'Thriller'),
(25, 'Drama'),
(25, 'Sci-Fi'),
(25, 'Thriller'),
(26, 'Comedy'),
(26, 'Coming of Age'),
(26, 'Drama'),
(26, 'Romance'),
(27, 'Action'),
(27, 'Comedy'),
(27, 'Crime'),
(27, 'Drama'),
(27, 'Heist'),
(28, 'Dark Fantasy'),
(28, 'Drama'),
(28, 'Horror'),
(28, 'Mystery'),
(28, 'Sci-Fi'),
(29, 'Action'),
(29, 'Mystery'),
(29, 'Sci-Fi'),
(29, 'Survival'),
(29, 'Thriller'),
(30, 'Action'),
(30, 'Adventure'),
(30, 'Drama'),
(30, 'Sci-Fi'),
(31, 'Action'),
(31, 'Adventure'),
(31, 'Fantasy'),
(31, 'Superhero'),
(32, 'Action'),
(32, 'Sci-Fi'),
(32, 'Superhero'),
(32, 'Time Travel'),
(33, 'Action'),
(33, 'Animation'),
(33, 'Superhero'),
(34, 'Action'),
(34, 'Dark comedy'),
(34, 'Superhero'),
(35, 'Adventure'),
(35, 'Fantasy'),
(35, 'Superhero'),
(35, 'Time Travel'),
(36, 'Drama'),
(37, 'Crime'),
(37, 'Drama'),
(37, 'Horror'),
(37, 'Mystery'),
(38, 'Action'),
(38, 'Adventure'),
(38, 'Animation'),
(38, 'Fantasy'),
(38, 'Musical'),
(39, 'Adaptation'),
(39, 'Drama'),
(39, 'Horror'),
(39, 'Mystery'),
(39, 'Thriller'),
(40, 'Adventure'),
(40, 'Comedy'),
(40, 'Fantasy'),
(40, 'Musical'),
(41, 'Adventure'),
(41, 'Animation'),
(41, 'Comedy'),
(41, 'Family'),
(41, 'Fantasy'),
(42, 'Adventure'),
(42, 'Animation'),
(42, 'Comedy'),
(42, 'Family'),
(42, 'Fantasy'),
(43, 'Adventure'),
(43, 'Animation'),
(43, 'Comedy'),
(43, 'Family'),
(43, 'Fantasy'),
(44, 'Adventure'),
(44, 'Animation'),
(44, 'Comedy'),
(44, 'Family'),
(44, 'Fantasy'),
(45, 'Adventure'),
(45, 'Animation'),
(45, 'Comedy'),
(45, 'Family'),
(45, 'Fantasy'),
(46, 'Adventure'),
(46, 'Animation'),
(46, 'Comedy'),
(46, 'Family'),
(46, 'Sport'),
(47, 'Adventure'),
(47, 'Animation'),
(47, 'Comedy'),
(47, 'Family'),
(47, 'Sport'),
(48, 'Adventure'),
(48, 'Animation'),
(48, 'Comedy'),
(48, 'Family'),
(48, 'Sport'),
(49, 'Adventure'),
(49, 'Animation'),
(49, 'Comedy'),
(49, 'Family'),
(49, 'Fantasy'),
(49, 'Musical'),
(50, 'Adventure'),
(50, 'Animation'),
(50, 'Comedy'),
(50, 'Family'),
(50, 'Fantasy'),
(50, 'Musical'),
(51, 'Action'),
(51, 'Cyberpunk'),
(51, 'Drama'),
(51, 'Mystery'),
(52, 'Action'),
(52, 'Crime'),
(52, 'Drama'),
(52, 'Neo-noir'),
(52, 'Thriller'),
(53, 'Adventure'),
(53, 'Comedy'),
(53, 'Drama'),
(53, 'Family'),
(53, 'Fantasy'),
(54, 'Drama'),
(54, 'Romance'),
(55, 'Action'),
(55, 'Crime'),
(55, 'Drama'),
(55, 'Psychological'),
(55, 'Thriller'),
(56, 'Adventure'),
(56, 'Family'),
(56, 'Fantasy'),
(57, 'Adventure'),
(57, 'Family'),
(57, 'Fantasy'),
(57, 'Mystery'),
(58, 'Adventure'),
(58, 'Family'),
(58, 'Fantasy'),
(58, 'Mystery'),
(59, 'Adventure'),
(59, 'Family'),
(59, 'Fantasy'),
(59, 'Mystery'),
(60, 'Adventure'),
(60, 'Family'),
(60, 'Fantasy'),
(60, 'Mystery'),
(61, 'Action'),
(61, 'Adventure'),
(61, 'Crime'),
(61, 'Mystery'),
(61, 'Thriller'),
(62, 'Action'),
(62, 'Animation'),
(62, 'Crime'),
(62, 'Mystery'),
(62, 'Thriller'),
(63, 'Action'),
(63, 'Animation'),
(63, 'Crime'),
(63, 'Mystery'),
(63, 'Thriller'),
(64, 'Action'),
(64, 'Animation'),
(64, 'Crime'),
(64, 'Mystery'),
(64, 'Thriller'),
(65, 'Action'),
(65, 'Animation'),
(65, 'Crime'),
(65, 'Mystery'),
(65, 'Thriller'),
(71, 'Action'),
(71, 'Crime'),
(71, 'Thriller'),
(72, 'Action'),
(72, 'Crime'),
(72, 'Thriller'),
(73, 'Action'),
(73, 'Crime'),
(73, 'Thriller'),
(74, 'Action'),
(74, 'Crime'),
(74, 'Thriller'),
(75, 'Action'),
(75, 'Crime'),
(75, 'Thriller'),
(76, 'action'),
(76, 'adventure'),
(76, 'Drama'),
(76, 'fantasy'),
(76, 'Quest'),
(77, 'action'),
(77, 'adventure'),
(77, 'Drama'),
(77, 'fantasy'),
(77, 'Quest'),
(78, 'action'),
(78, 'adventure'),
(78, 'Drama'),
(78, 'fantasy'),
(78, 'Quest'),
(79, ''),
(79, 'Adventure'),
(79, 'fantasy'),
(79, 'Quest'),
(80, 'Comedy'),
(80, 'drama'),
(80, 'Musical'),
(80, 'romance'),
(81, 'Action'),
(81, 'Adventure'),
(81, 'Animation'),
(81, 'Fantasy'),
(82, 'Action'),
(82, 'Adventure'),
(82, 'Animation'),
(82, 'Fantasy'),
(83, 'Action'),
(83, 'Adventure'),
(83, 'Animation'),
(83, 'Fantasy'),
(84, 'Action'),
(84, 'Adventure'),
(84, 'Animation'),
(84, 'Fantasy'),
(85, 'Action'),
(85, 'Adventure'),
(85, 'Animation'),
(85, 'Fantasy'),
(86, 'Adventure'),
(86, 'Animation'),
(86, 'Comedy'),
(86, 'Family'),
(86, 'Fantasy'),
(87, 'Adventure'),
(87, 'Animation'),
(87, 'Comedy'),
(87, 'Family'),
(87, 'Fantasy'),
(88, 'Adventure'),
(88, 'Animation'),
(88, 'Comedy'),
(88, 'Family'),
(88, 'Fantasy'),
(89, 'Adventure'),
(89, 'Animation'),
(89, 'Comedy'),
(89, 'Family'),
(89, 'Fantasy'),
(90, 'Comedy'),
(90, 'Family'),
(91, 'Action'),
(91, 'Adventure'),
(92, 'Action'),
(92, 'Adventure'),
(92, 'Fantasy'),
(93, 'Action'),
(93, 'Comedy'),
(94, 'Action'),
(94, 'Adventure'),
(95, 'Action'),
(95, 'Adventure'),
(95, 'Crime'),
(95, 'Drama'),
(95, 'Mystery'),
(95, 'Thriller'),
(96, 'Drama'),
(96, 'Romance'),
(97, 'Classic'),
(97, 'Comedy'),
(97, 'Drama'),
(97, 'Romance'),
(98, 'Black comedy'),
(98, 'Family'),
(98, 'Satire'),
(98, 'Tragicomedy.'),
(99, 'Biography'),
(99, 'Drama'),
(99, 'History'),
(100, 'Action'),
(100, 'Adventure'),
(100, 'Drama'),
(100, 'Sci-Fi'),
(101, 'Action'),
(101, 'Adventure'),
(101, 'Anime'),
(101, 'Drama'),
(101, 'Fantasy'),
(102, 'Action'),
(102, 'Adventure'),
(102, 'Anime'),
(102, 'Drama'),
(102, 'Fantasy'),
(103, 'Action'),
(103, 'Adventure'),
(103, 'Anime'),
(103, 'Drama'),
(103, 'Fantasy'),
(104, 'Action'),
(104, 'Boxing'),
(104, 'Drama'),
(104, 'Sci-Fi'),
(104, 'Sport'),
(105, 'Action'),
(105, 'Adventure'),
(105, 'Animation'),
(105, 'Family'),
(105, 'Fantasy'),
(106, 'Comedy'),
(106, 'Crime'),
(106, 'Drama'),
(106, 'Mystery'),
(106, 'Thriller'),
(107, 'Mystery'),
(107, 'Thriller'),
(108, 'Drama'),
(108, 'Romance'),
(109, 'Crime'),
(109, 'Drama'),
(110, 'Drama'),
(110, 'Mystery'),
(110, 'Sci-fi'),
(111, 'Action'),
(111, 'Adventure'),
(111, 'Animation'),
(111, 'Comedy'),
(111, 'Family'),
(111, 'Fantasy'),
(112, 'Action'),
(112, 'Adventure'),
(112, 'Animation'),
(112, 'Comedy'),
(112, 'Drama'),
(112, 'Family'),
(112, 'Fantasy'),
(113, 'Action'),
(113, 'Adventure'),
(113, 'Animation'),
(113, 'Comedy'),
(113, 'Family'),
(113, 'Fantasy'),
(114, 'Action'),
(114, 'Adventure'),
(114, 'Animation'),
(114, 'Comedy'),
(114, 'Family'),
(114, 'Fantasy'),
(115, 'Action'),
(115, 'Comedy'),
(115, 'Fantasy'),
(116, 'Adventure'),
(116, 'Anime'),
(116, 'Drama'),
(116, 'Fantasy'),
(116, 'Super-natural'),
(117, 'Action'),
(117, 'Adventure'),
(117, 'Anime'),
(117, 'Drama'),
(117, 'Fantasy'),
(117, 'Romance'),
(118, 'Adventure'),
(118, 'Anime'),
(118, 'Family'),
(118, 'Fantasy'),
(118, 'Super-natural'),
(119, 'Adventure'),
(119, 'Anime'),
(119, 'Fantasy'),
(119, 'Super-natural'),
(120, 'Adventure'),
(120, 'Anime'),
(120, 'Drama'),
(120, 'Fantasy'),
(120, 'Romance'),
(120, 'Super-natural'),
(121, 'Horror'),
(121, 'Monster Horror'),
(121, 'Sci-Fi'),
(121, 'Space Sci-Fi'),
(121, 'Thriller'),
(122, 'Horror'),
(122, 'Monster Horror'),
(122, 'Sci-Fi'),
(122, 'Space Sci-Fi'),
(122, 'Thriller'),
(123, 'Horror'),
(123, 'Monster Horror'),
(123, 'Sci-Fi'),
(123, 'Space Sci-Fi'),
(123, 'Thriller'),
(124, 'Horror'),
(124, 'Monster Horror'),
(124, 'Sci-Fi'),
(124, 'Space Sci-Fi'),
(124, 'Thriller'),
(125, 'Horror'),
(125, 'Monster Horror'),
(125, 'Sci-Fi'),
(125, 'Space Sci-Fi'),
(125, 'Thriller'),
(131, 'Drama'),
(131, 'Horror'),
(131, 'Psychological Drama'),
(131, 'Psychological Horror'),
(131, 'Supernatural Horror'),
(132, 'Anime'),
(132, 'Drama'),
(132, 'Family'),
(132, 'Romance'),
(132, 'Slice of Life'),
(133, 'Drama'),
(133, 'Psychological Horror'),
(133, 'Psychological Thriller'),
(133, 'Supernatural Horror'),
(133, 'Tragedy'),
(134, 'Crime'),
(134, 'Drama'),
(134, 'Fantasy'),
(134, 'Serial Killer'),
(135, 'Comedy'),
(135, 'Drama'),
(135, 'Romance'),
(135, 'Teen Romance'),
(136, 'Action'),
(136, 'Adventure'),
(136, 'Comedy'),
(137, 'Action'),
(137, 'Adventure'),
(137, 'Comedy'),
(137, 'Thriller'),
(138, 'Drama'),
(138, 'Mystery'),
(138, 'Thriller'),
(139, 'Action'),
(139, 'Crime'),
(140, 'Adventure'),
(140, 'Comedy'),
(140, 'Sci-Fi'),
(141, 'Musical'),
(141, 'Romance'),
(142, 'Comedy'),
(142, 'Musical'),
(142, 'Romance'),
(143, 'Drama'),
(143, 'Family'),
(143, 'Musical'),
(144, 'Drama'),
(144, 'Romance'),
(145, 'Adventure'),
(145, 'Drama'),
(145, 'Family'),
(146, 'Action'),
(146, 'Adventure'),
(146, 'Sci-Fi'),
(147, 'Action'),
(147, 'Adventure'),
(147, 'Sci-Fi'),
(148, 'Action'),
(148, 'Adventure'),
(148, 'Sci-Fi'),
(149, 'Action'),
(149, 'Adventure'),
(149, 'Sci-Fi'),
(150, 'Action'),
(150, 'Adventure'),
(150, 'Sci-Fi'),
(151, 'Action'),
(151, 'Adventure'),
(151, 'Comedy'),
(151, 'Fantasy'),
(151, 'Sci-Fi'),
(151, 'Superhero'),
(152, 'Action'),
(152, 'Adventure'),
(152, 'Comedy'),
(152, 'Fantasy'),
(152, 'Sci-Fi'),
(152, 'Superhero'),
(153, 'Action'),
(153, 'Adventure'),
(153, 'Comedy'),
(153, 'Fantasy'),
(153, 'Sci-Fi'),
(153, 'Superhero'),
(154, 'Adventure'),
(154, 'Animation'),
(154, 'Comedy'),
(154, 'Family'),
(155, 'Adventure'),
(155, 'Animation'),
(155, 'Comedy'),
(155, 'Family'),
(156, 'Horror'),
(156, 'Mystery'),
(156, 'Thriller'),
(157, 'Horror'),
(158, 'Horror'),
(159, 'Action'),
(159, 'Adventure'),
(159, 'Drama'),
(159, 'Fantasy'),
(159, 'Sci-Fi'),
(160, 'Horror'),
(160, 'Mystery'),
(160, 'Thriller'),
(161, 'Drama'),
(161, 'Thriller'),
(162, 'Adventure'),
(162, 'Animation'),
(162, 'Comedy'),
(162, 'Drama'),
(162, 'Fantasy'),
(163, 'Horror'),
(163, 'Mystery'),
(163, 'Thriller'),
(164, 'Horror'),
(164, 'Mystery'),
(164, 'Thriller'),
(165, ''),
(165, 'Adventure'),
(165, 'Animation'),
(171, 'Action'),
(171, 'Adventure'),
(171, 'Animation'),
(171, 'Crime'),
(171, 'Mystery'),
(172, 'Action'),
(172, 'Adventure'),
(172, 'Animation'),
(172, 'Crime'),
(172, 'Mystery'),
(173, 'Action'),
(173, 'Adventure'),
(173, 'Animation'),
(173, 'Crime'),
(173, 'Mystery'),
(174, 'Action'),
(174, 'Adventure'),
(174, 'Animation'),
(174, 'Crime'),
(174, 'Mystery'),
(175, 'Action'),
(175, 'Adventure'),
(175, 'Animation'),
(175, 'Crime'),
(175, 'Mystery'),
(176, 'Drama'),
(176, 'Fantasy'),
(176, 'Horror'),
(176, 'Mystery'),
(176, 'Thriller'),
(177, 'Drama'),
(177, 'History'),
(177, 'Romance'),
(178, 'Drama'),
(178, 'Horror'),
(178, 'Mystery'),
(178, 'Sci-Fi'),
(178, 'Thriller'),
(179, 'Biography'),
(179, 'Drama'),
(179, 'Musical'),
(180, 'Comedy'),
(181, 'Action'),
(181, 'Adventure'),
(181, 'Comedy'),
(181, 'Family'),
(181, 'Sci-Fi'),
(182, 'Action'),
(182, 'Adventure'),
(182, 'Comedy'),
(182, 'Family'),
(182, 'Sci-Fi'),
(183, 'Action'),
(183, 'Adventure'),
(183, 'Comedy'),
(183, 'Family'),
(183, 'Sci-Fi'),
(184, 'Action'),
(184, 'Adventure'),
(184, 'Comedy'),
(184, 'Family'),
(184, 'Sci-Fi'),
(185, 'Action'),
(185, 'Adventure'),
(185, 'Comedy'),
(185, 'Family'),
(185, 'Sci-Fi'),
(186, 'Drama'),
(186, 'Horror'),
(186, 'Sci-Fi'),
(186, 'Thriller'),
(187, 'Drama'),
(187, 'Horror'),
(187, 'Sci-Fi'),
(187, 'Thriller'),
(188, 'Drama'),
(188, 'Mystery'),
(188, 'Thriller'),
(189, 'Drama'),
(189, 'Horror'),
(189, 'Mystery'),
(189, 'Thriller'),
(190, 'Thriller'),
(191, 'Dark'),
(191, 'Drama'),
(191, 'Fantasy'),
(191, 'Romance'),
(191, 'Teen Drama'),
(191, 'Teen Fantasy'),
(191, 'Teen Romance'),
(192, 'Dark'),
(192, 'Drama'),
(192, 'Fantasy'),
(192, 'Romance'),
(192, 'Teen Drama'),
(192, 'Teen Fantasy'),
(192, 'Teen Romance'),
(193, 'Dark'),
(193, 'Drama'),
(193, 'Fantasy'),
(193, 'Romance'),
(193, 'Teen Drama'),
(193, 'Teen Fantasy'),
(193, 'Teen Romance'),
(194, 'Dark'),
(194, 'Drama'),
(194, 'Fantasy'),
(194, 'Romance'),
(194, 'Teen Drama'),
(194, 'Teen Fantasy'),
(194, 'Teen Romance'),
(195, 'Dark'),
(195, 'Drama'),
(195, 'Fantasy'),
(195, 'Romance'),
(195, 'Teen Drama'),
(195, 'Teen Fantasy'),
(195, 'Teen Romance'),
(196, 'Comedy'),
(196, 'Drama'),
(196, 'Fantasy'),
(196, 'Horror'),
(196, 'Romance'),
(197, 'Comedy'),
(197, 'Drama'),
(197, 'Family'),
(197, 'Romance'),
(197, 'Slice of Life'),
(198, 'Drama'),
(198, 'Romance'),
(198, 'Slice of Life'),
(199, 'Crime'),
(199, 'Drama'),
(199, 'Mystery'),
(199, 'Thriller'),
(200, 'Action'),
(200, 'Drama'),
(200, 'Fantasy'),
(200, 'Supernatural'),
(200, 'Thriller'),
(201, 'Horror'),
(201, 'Sci-Fi'),
(201, 'Thriller'),
(202, 'Adventure'),
(202, 'Drama'),
(202, 'Sci-Fi'),
(203, 'Drama'),
(203, 'Mystery'),
(203, 'Thriller'),
(204, 'Crime'),
(204, 'Drama'),
(204, 'Mystery'),
(204, 'Thriller'),
(205, 'Action'),
(205, 'Adventure'),
(205, 'Sci-Fi'),
(205, 'Thriller'),
(206, 'Action'),
(206, 'Adventure'),
(206, 'Kaiju'),
(206, 'Sci-fi'),
(207, 'Action'),
(207, 'Adventure'),
(207, 'Kaiju'),
(207, 'Sci-fi'),
(208, 'Globerotting Adventure'),
(208, 'Mystery'),
(208, 'Suspense Mystery'),
(208, 'Thriller'),
(209, 'Action'),
(209, 'Adventure'),
(209, 'Crime'),
(209, 'Drama'),
(209, 'Mystery'),
(210, 'Action'),
(210, 'Thriller'),
(211, 'Drama'),
(211, 'Horror'),
(211, 'Sci-Fi'),
(211, 'Thriller'),
(212, 'Horror'),
(213, 'Drama'),
(213, 'Horror'),
(213, 'Mystery'),
(213, 'Thriller'),
(214, 'Horror'),
(214, 'Mystery'),
(214, 'Thriller'),
(215, 'Horror'),
(215, 'Mystery'),
(215, 'Thriller'),
(216, 'Drama'),
(216, 'Romance'),
(217, 'Drama'),
(217, 'Romance'),
(218, 'Drama'),
(218, 'Romance'),
(219, 'Drama'),
(219, 'Romance'),
(221, 'Comedy'),
(221, 'Drama'),
(221, 'Romance'),
(222, 'Adventure'),
(222, 'Drama'),
(222, 'Family'),
(231, 'Comedy'),
(231, 'Musical'),
(231, 'Romance'),
(232, 'Crime'),
(232, 'Drama'),
(232, 'Mystery'),
(233, 'Biography'),
(233, 'Crime'),
(233, 'Drama'),
(234, 'Animation'),
(234, 'Family'),
(234, 'Fantasy'),
(235, 'Crime'),
(235, 'Drama'),
(235, 'Thriller'),
(236, 'Adventure'),
(236, 'Animation'),
(236, 'Crime'),
(236, 'Mystery'),
(236, 'Thriller'),
(237, 'Adventure'),
(237, 'Animation'),
(237, 'Crime'),
(237, 'Mystery'),
(237, 'Thriller'),
(238, 'Comedy'),
(238, 'Family'),
(239, 'Comedy'),
(239, 'Family'),
(240, 'Comedy'),
(240, 'Family'),
(241, 'Adventure'),
(241, 'Animation'),
(241, 'Comedy'),
(241, 'Crime'),
(241, 'Family Sci-Fi'),
(242, 'Adventure'),
(242, 'Animation'),
(242, 'Comedy'),
(242, 'Crime'),
(242, 'Family Sci-Fi'),
(243, 'Adventure'),
(243, 'Animation'),
(243, 'Comedy'),
(243, 'Crime'),
(243, 'Family Sci-Fi'),
(244, 'Adventure'),
(244, 'Animation'),
(244, 'Comedy'),
(244, 'Crime'),
(244, 'Family Sci-Fi'),
(245, 'Adventure'),
(245, 'Animation'),
(245, 'Comedy'),
(245, 'Crime'),
(245, 'Family Sci-Fi'),
(246, 'Action'),
(246, 'Adventure'),
(246, 'Fantasy'),
(247, 'Action'),
(247, 'Adventure'),
(247, 'Fantasy'),
(248, 'Action'),
(248, 'Adventure'),
(248, 'Fantasy'),
(249, 'Action'),
(249, 'Adventure'),
(249, 'Fantasy'),
(250, 'Action'),
(250, 'Adventure'),
(250, 'Fantasy'),
(251, 'Anime'),
(251, 'Comedy'),
(251, 'Romance'),
(252, 'Action'),
(252, 'Animation'),
(252, 'Sci-Fi'),
(253, 'Comedy'),
(253, 'Ecchi'),
(253, 'Romance'),
(254, 'Action'),
(254, 'Drama'),
(254, 'Suspense'),
(255, 'Horror'),
(255, 'Mystery'),
(255, 'Thriller'),
(256, 'Action'),
(256, 'Adventure'),
(256, 'Fantasy'),
(256, 'Romance'),
(257, 'Action'),
(257, 'Adventure'),
(257, 'Fantasy'),
(257, 'Romance'),
(258, 'Action'),
(258, 'Adventure'),
(258, 'Fantasy'),
(258, 'Romance'),
(259, 'Action'),
(259, 'Adventure'),
(259, 'Fantasy'),
(259, 'Romance'),
(260, 'Action'),
(260, 'Adventure'),
(260, 'Fantasy'),
(261, 'Drama'),
(261, 'Mystery'),
(261, 'Romance'),
(262, 'Drama'),
(262, 'Romance'),
(262, 'Slice of Life'),
(263, 'Comedy'),
(263, 'Drama'),
(263, 'Romance'),
(264, 'Action'),
(264, 'Crime'),
(264, 'Drama'),
(264, 'Mystery'),
(264, 'Thriller'),
(265, 'Business'),
(265, 'Drama'),
(265, 'Fantasy'),
(265, 'Mystery'),
(265, 'Revenge'),
(266, 'Action'),
(266, 'Adventure'),
(266, 'Martial Arts'),
(267, 'Action'),
(267, 'Adventure'),
(267, 'Martial Arts'),
(268, 'Action'),
(268, 'Adventure'),
(268, 'Martial Arts'),
(271, 'Comedy'),
(271, 'Drama'),
(272, 'Drama'),
(272, 'Romance'),
(273, 'Comedy'),
(273, 'Drama'),
(273, 'Romance'),
(274, 'Mystery'),
(274, 'Thriller'),
(275, 'Action'),
(275, 'Drama'),
(275, 'Mystery'),
(276, 'Comedy'),
(276, 'Horror'),
(277, 'Comedy'),
(277, 'Drama'),
(277, 'Romance'),
(278, 'Comedy'),
(278, 'Musical'),
(278, 'Romance'),
(279, 'Comedy'),
(279, 'Drama'),
(279, 'Musical'),
(279, 'Romance'),
(280, 'Comedy'),
(280, 'Drama'),
(280, 'Romance'),
(296, 'Comedy'),
(296, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `film_platform`
--

CREATE TABLE `film_platform` (
  `film_id` int(11) NOT NULL,
  `name_platform` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film_platform`
--

INSERT INTO `film_platform` (`film_id`, `name_platform`) VALUES
(5, 'Netflix'),
(9, 'Amazon Prime Video'),
(9, 'Netflix'),
(10, 'Bstation'),
(10, 'Netflix'),
(144, 'Amazon Prime Video'),
(296, 'Amazon Prime Video'),
(296, 'Netflix');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0PPUI93YjotmAFPIK0vkgRHLcRYgHTnwvAwF1c0C', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT0l1d0xtOHVMTHNZSk1ja1lPdXlsN1Z4MWpKVUo5enZpN05Bbm13ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731909367),
('A53ghG2RDm2YwOSkmxVW3FJ8RD0yzuVUMnSeT55s', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ2V5WVFqOXpyblNURDgzT1ZubFFNbEEyZHVicTVRQmVYUTJqRENLVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904331),
('bjfY1TJalvED4FWnTqXLALwVuXvCYvR7zlXOCZjo', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVklkZmJtTjlKNHZ3N2FQajJlOUNSY2o1ZjF0UEg1bFU0SHg2NjgySSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904332),
('BoE6g3FUmQg8I7iUWqnEGko6jbt4g8nRMeBG0bq9', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRE9PNjhNSDFDRWZ3TTM3RmhoSzRFVW4ydzdlZHFlOUMyQkZhRGR5MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904830),
('BUxuM21pboZkHL9WeMnyjOFmqfV1K7r7iruLsfPO', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibkRDTWJndWxFdlVLQlF2RjlxQjdhZ21OTDlNbDVqbEcwNmo5TmxMbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904830),
('dyqBZLKKKMtwmPEXBgfMUdxDuMgI6C1nDzo3u6Ny', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOUZNTzdCZG40dVY1aGNDVEhhSVB5T3REQmNvWjBVZkJFVVo4ZjlaMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904830),
('e1zLoO306o3U9eQBu66WwGOutsN86NL6Y71y2pJb', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejJWNkwzU1RSRnF5MXRSY3RzNnFjSXNuNnRuUGlYd0NCZE5HS2RIbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904829),
('fkamSzVy7PztifnXJucWNTeEWSeB2qvAN37yXPIf', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXAwenNIR0RiNmFGZHloR0pWM2pTeHdPNlFRSTJHU2RDMUtGekwyMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731909366),
('I08RsZvIzh82JduJogcwZFwjsoM76kfejip8JQl0', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmtiWkNvYkJRMEk5R1lGYlh1V3ExSVVvOUVaNk1rSU56Skk1UUxuSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731909366),
('IeQ3rDkoLuoTi4q7TB9igzTioK8HHClFyoNcJ3hi', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSWJQRWlRMWFDdEZPSHpJc2FaU3RMSkxQS1dNaEFrTkpOVFZGanVWZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731909366),
('o1so0s5WxZYWde5okFGNQkNZBtap1gmykvt9ErVC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFlVck1SRUpKSWU4Wll5Y2JiN3NBaUxVZ21BUHQ0dzRQd2tPUzh1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731309265),
('PY9SftOlw3JQndtZe9QXYTN8rrpuWYhH1MksZ5oo', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU9KeGdzdEVKNnMwbWVBWWdMYUxLT0locnhodUp0RVhFR05nMUZqSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9maWxtcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731909497),
('sv1rkuYOviTozAViUXg3OpWfm223pHr3aD1vMoUm', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmxhQ3hQeGZwMjRTY2NoUGl5WmpLUlhOY3RXd3hOTjNMbjZqWEtjUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1731909585),
('t0YovZbFhjTo1hP3wingzTBioMlXBjLjm1UhJI7Y', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWnhNa1Z4M283SnRzaTFnR2R2ZTNES2o2V1oyZTN2OGtUNUx5RG41eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904331),
('TSUdBWQYAWvuyatNbtsQwEyo42gUzmm1fto8PwJ4', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGliN2VuVGJyUkZ5UHNVNU9zQ2wzakdTdldSUTZ5U2FXVUFscUFIQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731909636),
('UyH67xFLmnl5uwmKtLskFysYdyv7BZFrctv1YLp0', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN05zU0ZQQkhEZXZnQnFaOElEUFBkdDV3T04wOEk1MjFiZ2JySHVOTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1731313156),
('XtMRNbTvEADvc8tGS5vWHnRWA3F6MKc6a0tAkZyh', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXBqUEZrWVoyRllSdU9BWU5LaDdLUkpGVHZiZ3hoVmxzMWdjNmpjcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9maWxtLzI5NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1731644113),
('YaViSlVJkI9C285a6tDRYibRZowobAOobY1FTi14', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicGxaeXRIUTM0MjZHMGY1eUpoZ2YxTEhKRnZ2VTFEdXdEMjJXdEpNRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731904332);

-- --------------------------------------------------------

--
-- Table structure for table `tb_award`
--

CREATE TABLE `tb_award` (
  `award_id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `award_title` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `award_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_award`
--

INSERT INTO `tb_award` (`award_id`, `film_id`, `award_title`, `country`, `award_year`) VALUES
(2, 2, 'Juara 1 Balap Karung', 'Indonesia', '2021'),
(7, 296, 'International Indian Film Academy 2014', 'India', '2014');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cast`
--

CREATE TABLE `tb_cast` (
  `cast_id` int(11) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `photo_url` text NOT NULL,
  `birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_cast`
--

INSERT INTO `tb_cast` (`cast_id`, `country`, `name`, `photo_url`, `birth`) VALUES
(1, 'US', 'Jenna Ortega', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Jenna_Ortega-63792_%28cropped%29.jpg/800px-Jenna_Ortega-63792_%28cropped%29.jpg', '2024-10-09'),
(2, 'US', 'Emma Myers', 'https://m.media-amazon.com/images/M/MV5BYzZiM2I5ZmYtMzdkZC00ZjM1LWFkYzItYTBlN2M5NmRhNDc5XkEyXkFqcGc@._V1_.jpg', '2024-10-02'),
(3, 'South Korea', 'Song Joong-ki', 'https://i.mydramalist.com/1kymd_5f.jpg', '2024-10-01'),
(4, 'South Korea', 'Jeon Yeo-been', 'https://m.media-amazon.com/images/M/MV5BZWI1MjhiYjItM2YxNy00MzM0LWI1NDctMjNhZjNjM2FkNDNlXkEyXkFqcGc@._V1_.jpg', '2024-10-03'),
(10, 'India', 'Ranbir Kapoor', 'https://image.tmdb.org/t/p/w500/ymYNHV9luwgyrw17NXHqbOWTQkg.jpg', '2024-11-04'),
(12, 'India', 'Ileana D\'Cruz', 'https://image.tmdb.org/t/p/original/24e16TA3rfDYZHQcupTiL2Qad1Z.jpg', '2024-11-11'),
(13, 'India', 'Priyanka Chopra', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Priyanka-chopra-gesf-2018-7565.jpg/1200px-Priyanka-chopra-gesf-2018-7565.jpg', '2024-11-11'),
(14, 'India', 'Deepika Padukone', 'https://cdn1-production-images-kly.akamaized.net/p6MvnPeBWVAImPIPEQXA2Y7uPPM=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1042425/original/013351100_1446547149-deep.jpg', '2024-11-11'),
(15, 'India', 'Kalki Koechlin', 'https://upload.wikimedia.org/wikipedia/commons/6/68/Kalki_Koechlin_launches_beautifulhomes.jpg', '2024-11-11'),
(16, 'India', 'Aditya Roy Kapur', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Aditya_Roy_Kapur_at_Samsung_S4_launch.jpg', '2024-11-11'),
(17, 'Japan', 'Asep Daiki Sato', 'https://image.tmdb.org/t/p/w500/ymYNHV9luwgyrw17NXHqbOWTQkg.jpg', '2024-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

CREATE TABLE `tb_comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `film_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_comment`
--

INSERT INTO `tb_comment` (`comment_id`, `user_id`, `film_id`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(17, 6, 6, 3, 'Hyun Bin Ganteng bgt kek gw', 'approved', '2024-11-04 08:18:47', '2024-11-04 01:18:47'),
(18, 5, 4, 5, 'Rame bgt gila', 'unapproved', '2024-11-04 08:37:30', '2024-11-04 08:37:30'),
(19, 6, 6, 2, 'Kataranya Cantik Banget', 'unapproved', '2024-11-09 05:21:09', '2024-11-09 05:21:09'),
(20, 5, 6, 5, 'Bagus bgt', 'unapproved', '2024-11-09 06:21:46', '2024-11-09 06:21:46'),
(22, 5, 1, 4, 'Bagus bgt', 'approved', '2024-11-11 08:02:46', '2024-11-11 01:02:46'),
(23, 8, 296, 5, 'bgs bet', 'approved', '2024-11-15 04:15:07', '2024-11-14 21:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`country_name`) VALUES
('China'),
('England'),
('Germany'),
('India'),
('Indonesia'),
('Japan'),
('Malaysia'),
('South Korea'),
('Spain'),
('Taiwan'),
('Thailand'),
('UK'),
('US');

-- --------------------------------------------------------

--
-- Table structure for table `tb_film`
--

CREATE TABLE `tb_film` (
  `film_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alternative_title` varchar(255) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `poster_url` text DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `trailer_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_film`
--

INSERT INTO `tb_film` (`film_id`, `title`, `alternative_title`, `year`, `poster_url`, `country`, `synopsis`, `trailer_url`, `created_at`, `updated_at`) VALUES
(1, 'Black Mirror', NULL, '2019', 'https://posters.movieposterdb.com/20_01/2018/9495224/l_9495224_7ddeafff.jpg', 'UK', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(2, 'Dark', NULL, NULL, 'https://posters.movieposterdb.com/20_01/2017/5753856/l_5753856_c80d9360.jpg', 'UK', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(3, 'The Queen Gambits ', NULL, '2020', 'https://posters.movieposterdb.com/21_06/2005/455275/l_455275_ecb556e5.jpg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(4, 'Avatar the last Airbender ', NULL, '2024', 'https://posters.movieposterdb.com/24_02/2024/9018736/l_avatar-the-last-airbender-movie-poster_eb1f09e2.jpg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(5, 'Wednesday ', NULL, '2022', 'https://posters.movieposterdb.com/22_09/2022/13443470/l_wednesday-movie-poster_b88d004c.png', 'US', 'Follows Wednesday Addams\' years as a student, when she attempts to master her emerging psychic ability, thwart and solve the mystery that embroiled her parents.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(6, 'Crash Landing on You', NULL, '2019', 'https://upload.wikimedia.org/wikipedia/id/6/64/Crash_Landing_on_You_main_poster.jpg', 'South Korea', 'The absolute top secret love story of a chaebol heiress who made an emergency landing in North Korea because of a paragliding accident and a North Korean special officer who falls in love with her and who is hiding and protecting her.', 'https://youtu.be/GVQGWgeVc4k?si=52NMaAQYHKXEtxPT', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(7, 'The Goblin', NULL, '2021', 'https://upload.wikimedia.org/wikipedia/id/6/69/Golbin_Poster.jpg', 'South Korea', 'Former gangster Doo-hyun, known as \"Goblin\", served time for his boss\' murder to protect Young-min. Out of prison, Young-min kidnaps Doo-hyun\'s daughter, forcing him to seek vengeance and reclaim his \"Goblin\" persona.', 'https://youtu.be/vSQ-2incUEM?si=YkoqreKTEvOwRMHz', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(8, 'Itaewon Class', NULL, '2020', 'https://upload.wikimedia.org/wikipedia/id/f/f9/Itaewon_Class_poster.jpg', 'South Korea', 'An ex-con opens a street bar in Itaewon, while also seeking revenge on the family who was responsible for his father\'s death.', 'https://youtu.be/NNP8m3gaaFE?si=naxieCcmL1ZoCZjp', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(9, 'Vincenzo', NULL, '2021', 'https://awsimages.detik.net.id/community/media/visual/2021/03/01/vincenzo-1.png', 'South Korea', 'During a visit to his motherland, a Korean-Italian Mafia lawyer gives an unrivaled conglomerate a taste of its own medicine with a side of justice.', 'https://youtu.be/_J8tYxYB_YU?si=YnLEiQpH7CLVECMW', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(10, 'Descendants of the Sun', NULL, '2016', 'https://upload.wikimedia.org/wikipedia/id/6/6e/DescendantsoftheSun.jpg', 'South Korea', 'This drama tells of the love story that develops between a surgeon and a special forces officer.', 'https://youtu.be/XyzaMpAVm3s?si=C9-C3laIbJZ3tS6w', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(11, 'The Maze Runner', NULL, '2014', 'https://posters.movieposterdb.com/14_08/2014/1790864/s_1790864_fe41cf34.jpg', 'US', 'Awakening in an elevator, remembering nothing of his past, Thomas emerges into a world of about thirty teenage boys, all without past memories, who have learned to survive under their own set of rules in a completely enclosed environment, subsisting on their own agriculture and supplies. With a new boy arriving every thirty days, the group has been in \"The Glade\" for three years, trying to find a way to escape through the Maze that surrounds their living space (patrolled by cyborg monsters named \'Grievers\'). They have begun to give up hope when a comatose girl arrives with a strange note, and their world begins to change with the boys dividing into two factions: those willing to risk their lives to escape and those wanting to hang onto what they\'ve got and survive.—KelseyJ', 'https://youtu.be/AwwbhhjQ9Xk?si=PJjZKZH7amEgeBhA', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(12, 'The Maze Runner: Scorch Trials', NULL, '2015', 'https://posters.movieposterdb.com/15_05/2015/4046784/s_4046784_cbb64415.jpg', 'US', 'The second chapter of the epic \"Maze Runner\" saga. Thomas (Dylan O\'Brien) and his fellow Gladers face their greatest challenge yet: searching for clues about the mysterious and powerful organization known as WCKD. Their journey takes them to the Scorch, a desolate landscape filled with unimaginable obstacles. Teaming up with resistance fighters, the Gladers take on WCKD\'s vastly superior forces and uncover its shocking plans for them all.—20th Century Fox', 'https://youtu.be/-44_igsZtgU?si=7ufXYEqfDzdeZRy2', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(13, 'Maze Runner: The Death Cure', NULL, '2018', 'https://posters.movieposterdb.com/20_06/2018/4500922/s_4500922_2663b144.jpg', 'US', 'In the epic finale to The Maze Runner Saga, Thomas leads his group of escaped Gladers on their final and most dangerous mission yet. To save their friends, they must break into the legendary last city, a WCKD controlled labyrinth that may turn out to be the deadliest maze of all. Anyone who makes it out alive will get the answers to the Questions the Gladers have been asking since they first arrived in the maze. Will Thomas and the crew make it out alive? Or will Ava Paige get her way?', 'https://youtu.be/4-BTxXm8KSg?si=RHS5aQagm2ylIRLq', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(14, 'Divergent', NULL, '2014', 'https://posters.movieposterdb.com/14_03/2014/1840309/s_1840309_2f948395.jpg', 'US', 'In a world divided by factions based on virtues, Tris learns she\'s Divergent and won\'t fit in. When she discovers a plot to destroy Divergents, Tris and the mysterious Four must find out what makes Divergents dangerous before it\'s too late.', 'https://youtu.be/Aw7Eln_xuWc?si=k4I06AV1XEC1TYzb', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(15, 'Insurgent', 'The Divergent Series: Insurgent', '2015', 'https://posters.movieposterdb.com/15_01/2015/2908446/s_2908446_b96edb43.jpg', 'US', 'Beatrice Prior must confront her inner demons and continue her fight against a powerful alliance which threatens to tear her society apart with the help from others on her side.', 'https://youtu.be/OBn_LRp-D7U?si=PozBNB6ftInKVdDe', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(16, 'The Shawshank Redemption', 'Rita Hayworth and the Shawshank Redemption', '1994', 'https://xl.movieposterdb.com/05_03/1994/0111161/xl_8494_0111161_3bb8e662.jpg?v=2024-09-17%2015:12:16', 'US', 'Andy Dufresne, a banker wrongly imprisoned for the murder of his wife and her lover, befriends fellow prisoner Ellis \"Red\" Redding, and together they find solace and eventual redemption through acts of common decency', 'https://www.youtube.com/watch?v=NmzuHjWmXOc', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(17, 'The Godfather', NULL, '1972', 'https://xl.movieposterdb.com/22_12/1991/809433/xl_the-godfather-movie-poster_d53af75d.jpg?v=2023-05-24%2006:59:28', 'US', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son', 'https://www.youtube.com/watch?v=sY1S34973zA', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(18, 'Pulp Fiction', NULL, '1994', 'https://xl.movieposterdb.com/07_10/1994/110912/xl_110912_55345443.jpg?v=2024-09-22%2018:03:29', 'US', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption', 'https://www.youtube.com/watch?v=s7EdQ4FqbhY', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(19, 'The Dark Knight Rises', NULL, '2012', 'https://xl.movieposterdb.com/21_06/2012/1345836/xl_1345836_429edb63.jpg?v=2024-09-18%2021:15:09', 'US', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane', 'https://www.youtube.com/watch?v=g8evyE9TuYk', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(20, 'Schindler\'s List', NULL, '1993', 'https://xl.movieposterdb.com/08_02/1993/108052/xl_108052_6ad6d11e.jpg?v=2024-09-22%2017:58:50', 'US', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis', 'https://www.youtube.com/watch?v=gG22XNhtnoY', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(21, 'The Boys', NULL, '2019', 'https://posters.movieposterdb.com/20_01/2019/1190634/l_1190634_22fcc492.jpg', 'US', 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.', 'https://www.youtube.com/watch?v=5SKP1_F7ReE', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(22, '13 Reasons Why', NULL, '2017', 'https://posters.movieposterdb.com/21_02/2017/1837492/s_1837492_8fa1eebf.jpg', 'US', 'Follows teenager Clay Jensen, in his Quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.', 'https://www.youtube.com/watch?v=QkT-HIMSrRk', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(23, '500 days of summer', NULL, '2009', 'https://posters.movieposterdb.com/09_10/2009/1022603/l_1022603_997c5a61.jpg', 'US', 'After being dumped by the girl he believes to be his soulmate, hopeless romantic Tom Hansen reflects on their relationship to try and figure out where things went wrong and how he can win her back.', 'https://www.youtube.com/watch?v=PsD0NpFSADM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(24, 'Sherlock', NULL, '2010', 'https://posters.movieposterdb.com/10_08/2010/1475582/l_1475582_6c4d4dac.jpg', 'US', 'The quirky spin on Conan Doyle\'s iconic sleuth pitches him as a \"high-functioning sociopath\" in modern-day London. Assisting him in his investigations: Afghanistan War vet John Watson, who\'s introduced to Holmes by a mutual acquaintance.', 'https://www.youtube.com/watch?v=gGqWqGOSTGQ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(25, 'The Butterfly Effect', NULL, '2004', 'https://posters.movieposterdb.com/12_11/2004/289879/s_289879_365cbc14.jpg', 'US', 'Evan Treborn suffers blackouts during significant events of his life. As he grows up, he finds a way to remember these lost memories and a supernatural way to alter his life by reading his journal.', 'https://www.youtube.com/watch?v=LOS5YgJkjZ0', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(26, 'Twenty Five Twenty One', 'Seumuldaseot Seumulhana', '2022', 'https://posters.movieposterdb.com/23_03/2022/17513352/l_twenty-five-twenty-one-movie-poster_83675ed1.jpg', 'South Korea', 'In a time when dreams seem out of reach, a teen fencer pursues big ambitions and meets a hardworking young man who seeks to rebuild his life. At 22 and 18, they say each other\'s names for the first time, at 25 and 21, they fall in love.', 'https://youtu.be/n7F8o-SoK8s?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(27, 'Mencuri Raden Saleh', 'Stealing Raden Saleh', '2022', 'https://posters.movieposterdb.com/23_02/2022/13484872/l_mencuri-raden-saleh-movie-poster_56681bfe.jpg', 'Indonesia', 'To save his father, a master forger sets out to steal an invaluable painting with the help of a motley crew of specialists.', 'https://youtu.be/DN3sRz_veBU?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(28, 'Stranger Things', NULL, '2016', 'https://posters.movieposterdb.com/22_12/2016/4574334/l_stranger-things-movie-poster_5e41833a.jpg', 'US', 'In 1980s Indiana, a group of young friends witness supernatural forces and secret government exploits. As they search for answers, the children unravel a series of extraordinary mysteries.', 'https://youtu.be/mnd7sFt5c3A?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(29, 'Alice in BorderLand', 'Imawa no Kuni no Arisu', '2020', 'https://posters.movieposterdb.com/23_01/2020/10795658/l_alice-in-borderland-movie-poster_5e9fac9b.jpg', 'Japan', 'Obsessed gamer Arisu suddenly finds himself in a strange, emptied-out version of Tokyo in which he and his friends must compete in dangerous games in order to survive.', 'https://youtu.be/49_44FFKZ1M?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(30, 'The Moon', 'Deo mun', '2023', 'https://www.imdb.com/title/tt27688034/mediaviewer/rm2719636225/', 'South Korea', 'A man is left in space due to an unfortunate accident while another man on Earth struggles to bring him back safely.', 'https://youtu.be/gxMM6Ntv78A?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(31, 'Moon Knight', NULL, '2022', 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/D57E6C2B5AC51D335FF7DF86DCA0E76A1AACBC5638033ADF97B28E8E480B011B/scale?width=506&amp;aspectRatio=2.00&amp;format=webp', 'US', 'Steven Grant discovers he\'s been granted the powers of an Egyptian moon god. But he soon finds out that these newfound powers can be both a blessing and a curse to his troubled life.', 'https://www.youtube.com/watch?v=x7Krla_UxRg', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(32, 'Avenger : Endgame', NULL, '2019', 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DB176BD1488D7E4822256EF1778C124FC17388FC1E7F0F6D89B38AFF5FB001F6/scale?width=1200&aspectRatio=1.78&format=webp', 'US', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 'https://www.youtube.com/watch?v=iKaruCq6ZY8', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(33, 'What If...?', NULL, '2021', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLXdZZt0GwN7zCAJcnsbbvYM2mvKYlcYwC3Q&s', 'US', 'Exploring pivotal moments from the Marvel Cinematic Universe and turning them on their head, leading the audience into uncharted territory.', 'https://www.youtube.com/watch?v=x9D0uUKJ5KI', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(34, 'Deadpool 2', NULL, '2018', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.marvel.com%2Fmovies%2Fdeadpool-2&psig=AOvVaw2dKlUvctklnBFvnhyfFDAw&ust=1724739856343000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOC12PCCkogDFQAAAAAdAAAAABAR', 'US', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool) assembles a team of fellow mutant rogues to protect a young boy with abilities from the brutal, time-traveling cyborg Cable.', 'https://youtu.be/20bpjtCbCz0', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(35, 'Loki', NULL, '2021', 'https://cinemags.org/wp-content/uploads/2021/05/loki-poster.jpg', 'US', 'The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame.”', 'https://www.youtube.com/watch?v=nW948Va-l10', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(36, 'The Good Doctor', NULL, '2017', 'https://m.media-amazon.com/images/M/MV5BNjMwNDNkMzEtNzRmNy00YmExLTg3ZWYtM2NjMjFjNWY3MmM0XkEyXkFqcGdeQXVyMTY0Njc2MTUx._V1_FMjpg_UX1000_.jpg', 'US', 'Shaun Murphy, a young surgeon with autism and savant syndrome, relocates from a quiet country life to join a prestigious hospital surgical unit. Alone in the world and unable to personally connect with those around him, Shaun uses his extraordinary medical gifts to save lives and challenge the skepticism of his colleagues.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(37, 'The Outsider', NULL, '2020', 'https://m.media-amazon.com/images/M/MV5BNzgxOTc4ODctNDNhZC00M2UzLTgyYzgtM2Q2OTk3NmQ5NTljXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_.jpg', 'US', 'Terry Maitland, a suburban parent, is accused of a grisly murder. Detective Ralph Anderson struggles to solve the bizarre case as he finds some conflicting clues.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(38, 'Moana', NULL, '2016', 'https://upload.wikimedia.org/wikipedia/id/thumb/2/26/Moana_Teaser_Poster.jpg/220px-Moana_Teaser_Poster.jpg', 'US', 'Moana, daughter of chief Tui, embarks on a journey to return the heart of goddess Te Fitti from Maui, a demigod, after the plants and the fish on her island start dying due to a blight.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(39, 'Five Night At Freddy', NULL, '2023', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Five_Nights_At_Freddy%27s_poster.jpeg/220px-Five_Nights_At_Freddy%27s_poster.jpeg', 'US', 'A troubled security guard begins working at Freddy Fazbear\'s Pizzeria. While spending his first night on the job, he realizes the late shift at Freddy\'s won\'t be so easy to make it through.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(40, 'Wonka', NULL, '2023', 'https://awsimages.detik.net.id/community/media/visual/2023/12/08/film-wonka-2.jpeg?w=600&q=90', 'US', 'Armed with nothing but a hatful of dreams, young chocolatier Willy Wonka manages to change the world, one delectable bite at a time.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(41, 'Toy Story 1', NULL, '1995', 'https://www.imdb.com/title/tt0114709/mediaviewer/rm3813007616/?ref_=tt_ov_i', 'US', 'A little boy named Andy loves to be in his room, playing with his toys, especially his doll named \"Woody\". But, what do the toys do when Andy is not with them, they come to life. Woody believes that his life (as a toy) is good. However, he must worry about Andy\'s family moving, and what Woody does not know is about Andy\'s birthday party. Woody does not realize that Andy\'s mother gave him an action figure known as Buzz Lightyear, who does not believe that he is a toy, and quickly becomes Andy\'s new favorite toy. Woody, who is now consumed with jealousy, tries to get rid of Buzz. Then, both Woody and Buzz are now lost. They must find a way to get back to Andy before he moves without them, but they will have to pass through a ruthless toy killer, Sid Phillips.', 'https://www.youtube.com/watch?v=v-PjgYDrg70', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(42, 'Toy Story 2', NULL, '1999', 'https://www.imdb.com/title/tt0120363/mediaviewer/rm1969689600/?ref_=tt_ov_i', 'US', 'While Andy is away at summer camp Woody has been toynapped by Al McWiggin, a greedy collector and proprietor of \"Al\'s Toy Barn\". In this all-out rescue mission, Buzz and his friends Mr. Potato Head, Slinky Dog, Rex and Hamm spring into action to rescue Woody from winding up as a museum piece. They must find a way to save him before he gets sold in Japan forever and they\'ll never see him again.', 'https://www.youtube.com/watch?v=xNWSGRD5CzU', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(43, 'Toy Story 3', NULL, '2010', 'https://www.imdb.com/title/tt0435761/mediaviewer/rm3038678784/?ref_=tt_ov_i', 'US', 'Woody, Buzz and the whole gang are back. As their owner Andy prepares to depart for college, his loyal toys find themselves in daycare where untamed tots with their sticky little fingers do not play nice. So, it\'s all for one and one for all as they join Barbie\'s counterpart Ken, a thespian hedgehog named Mr. Pricklepants and a pink, strawberry-scented teddy bear called Lots-o\'-Huggin\' Bear to plan their great escape.', 'https://www.youtube.com/watch?v=JcpWXaA2qeg', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(44, 'Toy Story 4', NULL, '2019', 'https://www.imdb.com/title/tt1979376/mediaviewer/rm3789906688/?ref_=tt_ov_i', 'US', 'Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody\'s slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they\'re two worlds apart when it comes to what they want from life as a toy.', 'https://www.youtube.com/watch?v=wmiIUN-7qhE', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(45, 'UP', NULL, '2009', 'https://www.imdb.com/title/tt1049413/mediaviewer/rm3826338560/?ref_=tt_ov_i', 'US', 'As a boy, Carl Fredricksen wanted to explore South America and find the forbidden Paradise Falls. About 64 years later he gets to begin his journey along with Boy Scout Russell by lifting his house with thousands of balloons. On their journey, they make many new friends including a talking dog, and figure out that someone has evil plans. Carl soon realizes that this evildoer is his childhood idol.', 'https://www.youtube.com/watch?v=ORFWdXl_zJ4', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(46, 'Cars 1', NULL, '2006', 'https://www.imdb.com/title/tt0317219/mediaviewer/rm3794114560/?ref_=tt_ov_i', 'US', 'While traveling to California for the dispute of the final race of the Piston Cup against The King and Chick Hicks, the famous Lightning McQueen accidentally damages the road of the small town Radiator Springs and is sentenced to repair it. Lightning McQueen has to work hard and finds friendship and love in the simple locals, changing its values during his stay in the small town and becoming a true winner.', 'https://youtu.be/WGByijP0Leo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(47, 'Cars 2', NULL, '2011', 'https://www.imdb.com/title/tt1216475/mediaviewer/rm1951513344/?ref_=tt_ov_i', 'US', 'The famous race car Lightning McQueen and his team are invited to compete in the World Grand Prix race. There, McQueen\'s best friend Mater finds himself involved in international espionage, and alongside two professional British spies attempts to uncover a secret plan led by a mysterious mastermind and his criminal gang, which threatens the lives of all competitors in the tournament.', 'https://youtu.be/WGByijP0Leo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(48, 'Cars 3', NULL, '2017', 'https://www.imdb.com/title/tt3606752/mediaviewer/rm3965727488/?ref_=tt_ov_i', 'US', 'Blindsided by a new generation of blazing-fast racers, the legendary Lightning McQueen is suddenly pushed out of the sport he loves. To get back in the game, he will need the help of an eager young race technician with her own plan to win, inspiration from the late Fabulous Hudson Hornet, and a few unexpected turns. Proving that #95 isn\'t through yet will test the heart of a champion on Piston Cup Racing\'s biggest stage!', 'https://youtu.be/2LeOH9AGJQM ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(49, 'Frozen 1', NULL, '2013', 'https://www.imdb.com/title/tt2294629/mediaviewer/rm3873693440/?ref_=tt_ov_i', 'US', 'Fearless optimist Anna teams up with rugged mountain man Kristoff and his loyal reindeer Sven and sets off on an epic journey to find her sister Elsa, whose icy powers have trapped the kingdom of Arendelle in eternal winter. Encountering Everest-like conditions, mystical trolls and a hilarious snowman named Olaf, Anna and Kristoff battle the elements in a race to save the kingdom. From the outside Elsa looks poised, regal and reserved, but in reality she lives in fear as she wrestles with a mighty secret: she was born with the power to create ice and snow. It\'s a beautiful ability, but also extremely dangerous. Haunted by the moment her magic nearly killed her younger sister Anna, Elsa has isolated herself, spending every waking minute trying to suppress her growing powers. Her mounting emotions trigger the magic, accidentally setting off an eternal winter that she can\'t stop. She fears she\'s becoming a monster and that no one, not even her sister, can help her', 'https://youtu.be/DSgMD4ofCmo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(50, 'Frozen 2', NULL, '2019', 'https://www.imdb.com/title/tt4520988/mediaviewer/rm1974176257/?ref_=tt_ov_i', 'US', 'Having harnessed her ever-growing power after lifting the dreadful curse of eternal winter in Frozen (2013), Queen Elsa, the grand conjurer of snow and ice, and her sister, Princess Anna, now enjoy a happy life in the peaceful kingdom of Arendelle. However, a melodious, insistent voice only Elsa can hear keeps her awake, inviting the Snow Queen to a fabled mystical forest. As a result, unable to block the thrilling call of the secret siren, Elsa follows the voice into the perpetually misty realm in the woods to find answers. But, more and more, an inexplicable imbalance hurts her kingdom and the neighboring tribe of Northuldra. Is Queen Elsa\'s legendary magic enough to restore peace and stability?', 'https://youtu.be/bwzLiQZDw2I', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(51, 'Blade Runner 2049', NULL, '2017', 'https://www.imdb.com/title/tt1856101/mediaviewer/rm2677875712/?ref_=tt_ov_i', 'US', 'Thirty years after the events of Blade Runner (1982), a new Blade Runner, L.A.P.D. Officer \"K\" (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a Quest to find Rick Deckard (Harrison Ford), a former L.A.P.D. Blade Runner, who has been missing for thirty years.', 'https://www.youtube.com/watch?v=gCcx85zbxz4', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(52, 'Drive', NULL, '2011', 'https://www.imdb.com/title/tt0780504/mediaviewer/rm1089084160/?ref_=tt_ov_i', 'US', 'A skilled Hollywood stuntman, who also moonlights as a getaway driver for criminals, lives a solitary life. However, his world changes when he forms a bond with his neighbor, Irene, and her young son. When Irene\'s husband returns from prison and gets involved in a dangerous deal, the driver offers to help. This decision draws him into a deadly underworld of crime and violence, where he must navigate betrayal and survival.', 'https://www.youtube.com/watch?v=KBiOF3y1W0Y', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(53, 'Barbie (2023)', NULL, '2023', 'https://www.imdb.com/title/tt1517268/mediaviewer/rm431105281/?ref_=tt_ov_i', 'US', 'Barbie lives in the perfect world of Barbieland, but she begins to experience an existential crisis that sends her on an adventure into the real world. Accompanied by Ken, she learns about life outside her utopian universe, discovering self-discovery, identity, and empowerment along the way.', 'https://www.youtube.com/watch?v=pBk4NYhWNMM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(54, 'The notebook', NULL, '2004', 'https://www.imdb.com/title/tt0332280/mediaviewer/rm2532203265/?ref_=tt_ov_i', 'US', 'A young couple falls deeply in love during one summer, but circumstances and social expectations drive them apart. Years later, their story is retold through a notebook, revealing the enduring power of their love as they navigate life, loss, and rediscovery.', 'https://www.youtube.com/watch?v=BjJcYdEOI0k', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(55, 'Fight club', NULL, '1999', 'https://www.imdb.com/title/tt0137523/mediaviewer/rm1412004864/?ref_=tt_ov_i', 'US', 'A disillusioned white-collar worker forms an underground fight club with a charismatic soap salesman as a form of male bonding and release from their mundane lives. As the club grows, it spirals into a dangerous and anarchic organization, pushing the limits of their rebellion and self-destruction.', 'https://www.youtube.com/watch?v=qtRKdVHc-cE', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(56, 'Harry Potter and The Sorcerer’s Stone', NULL, '2001', 'https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg', 'England', 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.', 'https://youtu.be/VyHV0BRtdxo?si=N2ih8rFKoiAkckUf', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(57, 'Harry Potter and The Chamber of Secrets', NULL, '2002', 'https://m.media-amazon.com/images/M/MV5BMjE0YjUzNDUtMjc5OS00MTU3LTgxMmUtODhkOThkMzdjNWI4XkEyXkFqcGdeQXVyMTA3MzQ4MTc0._V1_.jpg', 'England', 'Harry Potter lives his second year at Hogwarts with Ron and Hermione when a message on the wall announces that the legendary Chamber of Secrets has been opened. The trio soon realize that, to save the school, it will take a lot of courage.', 'https://youtu.be/nE11U5iBnH0?si=-CH0iV5bZbi80wrM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(58, 'Harry Potter and The Prisoner of Azkaban', NULL, '2004', 'https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_QL75_UY281_CR0,0,190,281_.jpg', 'England', 'Harry Potter (Daniel Radcliffe) is having a tough time with his relatives (yet again). He runs away after using magic to inflate Uncle Vernon\'s (Richard Griffiths\') sister Marge (Pam Ferris), who was being offensive towards Harry\'s parents. Initially scared for using magic outside the school, he is pleasantly surprised that he won\'t be penalized after all. However, he soon learns that a dangerous criminal and Voldemort\'s trusted aide Sirius Black (Gary Oldman) has escaped from Azkaban Prison and wants to kill Harry to avenge the Dark Lord.', 'https://youtu.be/lAxgztbYDbs?si=tut5hAV7M_emnl3S', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(59, 'Harry Potter and The Goblet of Fire', NULL, '2005', 'https://m.media-amazon.com/images/M/MV5BMTI1NDMyMjExOF5BMl5BanBnXkFtZTcwOTc4MjQzMQ@@._V1_QL75_UY281_CR0,0,190,281_.jpg', 'England', 'Harry\'s (Daniel Radcliffe\'s) fourth year at Hogwarts is about to start and he is enjoying the summer vacation with his friends. They get the tickets to The Quidditch World Cup Final, but after the match is over, people dressed like Lord Voldemort\'s (Ralph Fiennes\') \"Death Eaters\" set a fire to all of the visitors\' tents, coupled with the appearance of Voldemort\'s symbol, the \"Dark Mark\" in the sky, which causes a frenzy across the magical community. That same year, Hogwarts is hosting \"The Triwizard Tournament\", a magical tournament between three well-known schools of magic : Hogwarts, Beauxbatons, and Durmstrang. The contestants have to be above the age of seventeen, and are chosen by a magical object called \"The Goblet of Fire\". On the night of selection, however, the Goblet spews out four names instead of the usual three, with Harry unwittingly being selected as the Fourth Champion. Since the magic cannot be reversed, Harry is forced to go with it and brave three exceedingly difficult tasks.', 'https://youtu.be/80kuiBq95So?si=KEohlGlDGuNqK0PP', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(60, 'Harry Potter and The Order of The Phoenix', NULL, '2007', 'https://m.media-amazon.com/images/M/MV5BYWJmM2M1YzItMjY1Ni00YzRmLTg5YWYtNDFmNTJjNzQ0ODkyXkEyXkFqcGc@._V1_QL75_UX190_CR0,2,190,281_.jpg', 'England', 'After a lonely summer on Privet Drive, Harry (Daniel Radcliffe) returns to a Hogwarts full of ill-fortune. Few of students and parents believe him or Dumbledore (Sir Michael Gambon) that Voldemort (Ralph Fiennes) is really back. The ministry had decided to step in by appointing a new Defense Against the Dark Arts teacher, Professor Dolores Umbridge (Imelda Staunton), who proves to be the nastiest person Harry has ever encountered. Harry also can\'t help stealing glances with the beautiful Cho Chang (Katie Leung). To top it off are dreams that Harry can\'t explain, and a mystery behind something for which Voldemort is searching. With these many things, Harry begins one of his toughest years at Hogwarts School of Witchcraft and Wizardry.', 'https://youtu.be/LLAaW1EgyY8?si=ZfUjJaveL1TjUXA5', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(61, 'Meitantei Konan Kurogane no Sabumarin', 'Detective Conan: Black Iron Submarine', '2023', 'https://www.movieposterdb.com/detective-conan-black-iron-submarine-i27521477', 'Japan', 'Many engineers from around the world gather at the Interpol marine facility \"Pacific Buoy\" on Hachijo-jima, in the sea south of central Tokyo Prefecture coast, to witness the launch of a new system that connects all law enforcement camera systems around the world and enables facial recognition worldwide. Conan, along with his friends Kogoro, Ran, Agasa, Haibara, and the Detective Boys, also heads to the island with an invitation from Sonoko to see the whales. He receives a message from Subaru, who says that a Europol agent has been murdered in Germany by Gin. Perturbed, Conan sneaks onto the police ship led by Kuroda, which is bringing them to the island to protect the completion work, and tours the new facility, just in time for the Black Organization to kidnap a female engineer, seeking a piece of important data in her USB drive. A terrifying howl of screws is heard from the ocean as an unknown person approaches Haibara.', 'https://www.youtube.com/watch?v=0rNpSmVmN2U', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(62, 'Meitantei Conan: Halloween no Hanayome', 'Detective Conan: The Bride of Halloween', '2022', 'https://www.movieposterdb.com/detective-conan-the-bride-of-halloween-i19770970', 'Japan', 'During the wedding of Takagi and Sato, an assailant breaks and tries to attack Sato. But Takagi protects her while getting injured. The attacker escapes, but the situation is settled, although Sato is rightfully rattled by it all.', 'https://www.youtube.com/watch?v=LzCD9wPNd6A', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(63, 'Meitantei Conan: Tokei-jikake no matenrou', 'Detective Conan: The Time-Bombed Skyscraper', '1997', 'https://www.movieposterdb.com/meitantei-conan-tokei-jikake-no-matenrou-i131479', 'Japan', 'Detective Shinichi Kudo was once a brilliant teenage detective until he was given a poison that reverted him to a 4 year old. He\'s taken the name Conan Edogawa so no one (except an eccentric inventor) will know the truth. Now he\'s got to solve a series of bombings before his loved ones become victims. Who is this madman and why is he doing this. Only the young genius can save the day but will even he be up to the task?', 'https://www.youtube.com/watch?v=N4CP6BMyn2s', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(64, 'Meitantei Conan: 14 banme no target', 'Detective Conan: The Fourteenth Target', '1998', 'https://www.movieposterdb.com/meitantei-conan-14-banme-no-target-i965649', 'Japan', 'an’s secret past revealed! Ten years ago, something happened between her mom and dad. Now, plagued by nightmares, Ran is starting to remember… Meanwhile, a murderous card dealer breaks out of jail to seek revenge. His target: Ran’s father. Can Conan stop him in time and save his girlfriend’s family?', 'https://www.youtube.com/watch?v=BlJsEmOWQ1E', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(65, 'Meitantei Conan: Meikyuu no crossroad', 'Detective Conan: Crossroad in the Ancient Capital', '2003', 'https://www.movieposterdb.com/meitantei-conan-meikyuu-no-crossroad-i1133935', 'Japan', 'As the police struggle to find a lead, a Kyoto temple seeks the renowned detective Kogorou Mouri\'s help after receiving a mysterious puzzle. Joined by the young sleuth Conan Edogawa and high school detective Heiji Hattori, they embark on a Quest to decipher the riddle, unravel the killer\'s identity, and confront their shared pasts.', 'https://www.youtube.com/watch?v=OEWgyMspNR4', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(66, 'Good Will Hunting', NULL, '1997', 'https://posters.movieposterdb.com/10_09/1997/119217/l_119217_a4210c61.jpg', 'US', 'Will Hunting, a janitor at MIT, has a gift for mathematics, but needs help from a psychologist to find direction in his life.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(67, 'Oppenheimer', NULL, '2023', 'https://posters.movieposterdb.com/23_06/2023/15398776/l_oppenheimer-movie-poster_a83f1cbb.jpg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(68, 'The Amazing Spider-Man', NULL, '2012', 'https://posters.movieposterdb.com/12_04/2012/948470/l_948470_406a814a.jpg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(69, 'Spider-Man: Into the Spider-Verse', NULL, '2018', 'https://posters.movieposterdb.com/22_10/2018/4633694/l_spider-man-into-the-spider-verse-movie-poster_a7f62b30.jpeg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(70, 'Spider-Man: Across the Spider-Verse', NULL, '2023', 'https://posters.movieposterdb.com/23_06/2022/11290914/l_spider-man-across-the-spider-verse-part-one-movie-poster_37d41ec0.jpg', 'US', NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(71, 'The Fast and the Furious', NULL, '2001', 'https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_FMjpg_UX1000_.jpg', 'US', 'Los Angeles street racer Dominic Toretto falls under the suspicion of the LAPD as a string of high-speed electronics truck robberies rocks the area. Brian O\'Connor, an officer of the LAPD, joins the ranks of Toretto\'s highly skilled racing crew undercover to convict Toretto. However, O\'Connor finds himself both enamored with this new world and in love with Toretto\'s sister, Mia. As a rival racing crew gains strength, O\'Connor must decide where his loyalty really lies.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(72, 'The Fast and the Furious: Tokyo Drift', NULL, '2006', 'https://posters.movieposterdb.com/06_07/2006/0463985/l_121979_0463985_7f210517.jpg', 'US', 'A teenager becomes a major competitor in the world of drift racing after moving in with his father in Tokyo to avoid a jail sentence in America.', 'https://www.youtube.com/watch?v=p8HQ2JLlc4E', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(73, 'The Fast and Furious 6', NULL, '2013', 'https://posters.movieposterdb.com/13_04/2013/1905041/l_1905041_1f36429c.jpg', 'US', 'Hobbs has Dominic and Brian reassemble their crew to take down a team of mercenaries: Dominic unexpectedly gets convoluted also facing his presumed deceased girlfriend, Letty.', 'https://www.youtube.com/watch?v=oc_P11PNvRs', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(74, 'Fast Five', NULL, '2011', 'https://posters.movieposterdb.com/11_04/2011/1596343/l_1596343_63064b8e.jpg', 'US', 'Dominic Toretto and his crew of street racers plan a massive heist to buy their freedom while in the sights of a powerful Brazilian drug lord and a dangerous federal agent.', 'https://www.youtube.com/watch?v=vcn2GOuZCKI', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(75, 'Furious 7', NULL, '2015', 'https://posters.movieposterdb.com/22_05/2009/940657/l_940657_2a184c06.jpg', 'US', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', 'https://www.youtube.com/watch?v=Skpu5HaVkOc', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(76, 'The Lord of the Rings: The Fellowship of the Ring', NULL, '2001', 'lord_of_the_rings_the_fellowship_of_the_ring_2001_advance_original_film_art_50ea31a0-b4d5-489c-89e4-c494a7966b4e_5000x.jpg (1018×1500) (originalfilmart.com)', 'US', 'An ancient Ring thought lost for centuries has been found, and through a strange twist of fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic Quest to the Cracks of Doom in order to destroy it. However, he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir, and his three Hobbit friends Merry, Pippin, and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their Quest to destroy the One Ring is the only hope for the end of the Dark Lords reign', 'https://youtu.be/V75dMMIW2B4?si=FxXoVC24ce1f47mn', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(77, 'The Lord of the Rings: The Return of the King', NULL, '2003', 'LordoftheRingsReturnoftheKing_2003_original_film_art_5000x.webp (2047×3000) (originalfilmart.com)', 'US', 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their Quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron\'s evil army at the stone city of Minas Tirith.', 'https://youtu.be/r5X-hFf6Bwo?si=j2t_y_QMMrdJrr5t', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(78, 'The lord of the rings: The Two Towers', NULL, '2002', 'lord_of_the_rings_the_two_towers_2002_original_film_art_5dd21feb-10ab-41a1-84a1-4c4b082e9626_5000x.webp (1357×2000) (originalfilmart.com)', 'US', 'The continuing Quest of Frodo and the Fellowship to destroy the One Ring. Frodo and Sam discover they are being followed by the mysterious Gollum. Aragorn, the Elf archer Legolas, and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman\'s deadly spell', 'https://youtu.be/LbfMDwc4azU?si=WVpfJHeqh8wUDcmo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(79, 'The hobbit: an unexpected journey', NULL, '2012', 'latest (2000×3000) (nocookie.net)', 'US', 'Bilbo Baggins is swept into a Quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug. Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield. Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Giant Spiders, Shapeshifters and Sorcerers. Although their goal lies to the East and the wastelands of the Lonely Mountain first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever ... Gollum. Here, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of guile and courage that surprise even him, he also gains possession of Gollum\'s \"precious\" ring that holds unexpected and useful qualities ... A simple, gold ring that is tied to the fate of all Middle-earth in ways Bilbo cannot begin to know.', 'https://youtu.be/SDnYMbYB-nU?si=67YeVvzNZKEKsOZG', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(80, 'la la land', NULL, '2016', 'uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg (2000×3000) (tmdb.org)', 'US', 'Aspiring actress serves lattes to movie stars in between auditions and jazz musician Sebastian scrapes by playing cocktail-party gigs in dingy bars. But as success mounts, they are faced with decisions that fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart', 'https://youtu.be/0pdqf4P9MB8?si=qVuEeA9xFesBvS35', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(81, 'Overlord I', NULL, '2015', 'https://image.tmdb.org/t/p/original/hRshcrYYVkmrpKzbH9gNhYCcpGt.jpg', 'Japan', 'The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own! Confronted with this abnormal situation, Momonga commands his loyal servants to help him investigate and take control of this new world, with the hopes of figuring out what has caused this development and if there may be others in the same predicament.', 'https://www.youtube.com/embed/3jE9moHQePI?enablejsapi=1&wmode=opaque&autoplay=1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(82, 'Overlord II', NULL, '2018', 'https://image.tmdb.org/t/p/original/jdzYWuAz58vVcTNqtm3aj4yUKa7.jpg', 'Japan', 'Ainz Ooal Gown, the undead sorcerer formerly known as Momonga, has accepted his place in this new world. Though it bears similarities to his beloved virtual reality game Yggdrasil, it still holds many mysteries which he intends to uncover, by utilizing his power as ruler of the Great Tomb of Nazarick. However, ever since the disastrous brainwashing of one of his subordinates, Ainz has become wary of the impending dangers of the Slane Theocracy, as well as the possible existence of other former Yggdrasil players. Meanwhile, Albedo, Demiurge and the rest of Ainz\'s loyal guardians set out to prepare for the next step in their campaign: Nazarick\'s first war… Overlord II picks up immediately after its prequel, continuing the story of Ainz Ooal Gown, his eclectic army of human-hating guardians, and the many hapless humans affected by the Overlord\'s arrival.', 'https://www.youtube.com/embed/p2ksX48PBQY?enablejsapi=1&wmode=opaque&autoplay=1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(83, 'Overlord III', NULL, '2018', 'https://image.tmdb.org/t/p/original/uuYAJYqawtCqZD9ftxDclu5zXPN.jpg', 'Japan', 'Following the horrific assault on the Re-Estize capital city, the Guardians of the Great Tomb of Nazarick return home to their master Ainz Ooal Gown. After months of laying the groundwork, they are finally ready to set their plans of world domination into action. As Ainz\'s war machine gathers strength, the rest of the world keeps moving. The remote Carne Village, which Ainz once saved from certain doom, continues to prosper despite the many threats on its doorstep. And in the northeastern Baharuth Empire, a certain Bloody Emperor sets his sights on the rising power of Nazarick. Blood is shed, heroes fall, and nations rise. Can anyone, or anything, challenge the supreme power of Ainz Ooal Gown?', 'https://www.youtube.com/embed/awYU-9jVZxE?enablejsapi=1&wmode=opaque&autoplay=1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(84, 'Overlord IV', NULL, '2022', 'https://image.tmdb.org/t/p/original/lB0IMdLr4rwbBGx0aYVSjXvxzh.jpg', 'Japan', 'E-Rantel, the capital city of the newly established Sorcerer Kingdom, suffers from a dire shortage of goods. Once a prosperous city known for its trade, it now faces a crisis due to its caution—or even fear—of its king, Ainz Ooal Gown. To make amends, Ainz sends Albedo to the city as a diplomatic envoy. Meanwhile, the cardinals of the Slane Theocracy discuss how to retaliate against Ainz after his attack crippled the Re-Estize Kingdom\'s army, plotting for the Baharuth Empire to take over the Sorcerer Kingdom. However, when Emperor Jircniv Rune Farlord El Nix arranges a meeting with the Theocracy\'s messengers at a colosseum, he is confronted by none other than Ainz himself. With their secret gathering now out in the open, the emperor and his guests learn that Ainz has challenged the Warrior King, the empire\'s greatest fighter, to a duel. With Ainz\'s motivations beyond his comprehension, Jircniv can do nothing but watch as humanity\'s future changes before his very eyes.', 'https://www.youtube.com/embed/tNYQjEyTO6s?enablejsapi=1&wmode=opaque&autoplay=1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(85, 'Overlord: The Sacred Kingdom', 'Overlord Movie 3: Sei Oukoku-hen', '2024', 'https://image.tmdb.org/t/p/original/fggkIB6oeVi5Mpwl0fALLVevAFN.jpg', 'Japan', 'The Sacred Kingdom has enjoyed a great many years without war thanks to a colossal wall constructed after a historic tragedy. They understand best how fragile peace can be. When the terrible demon Jaldabaoth takes to the field at the head of a united army of monstrous tribes, the Sacred Kingdom\'s leaders know their defenses are not enough. With the very existence of the country at stake, the pious have no choice but to seek help wherever they can get it, even if it means breaking taboo and parlaying with the undead king of the Nation of Darkness!', 'https://www.youtube.com/embed/vniS5g48wHA?enablejsapi=1&wmode=opaque&autoplay=1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(86, 'The SpongeBob SquarePants Movie', NULL, '2004', 'https://xl.movieposterdb.com/15_08/2004/345950/xl_345950_4a997ac0.jpg?v=2024-08-25%2022:27:45', 'US', 'SpongeBob takes leave from Bikini Bottom in order to track down, with Patrick, King Neptune\'s stolen crown.', 'https://youtu.be/47ceXAEr2Oo?si=obQrt5lOPjfWtvCM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(87, 'The SpongeBob Movie: Sponge Out of Water', NULL, '2015', 'https://xl.movieposterdb.com/14_08/2014/2279373/xl_2279373_fd7068e6.jpg?v=2023-08-25%2020:53:52', 'US', 'When a diabolical pirate above the sea steals the secret Krabby Patty formula, SpongeBob and his friends team up in order to get it back.', 'https://youtu.be/4zoI4L4x1i0?si=yeutQVxsxUtJr_ua', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(88, 'The SpongeBob Movie: Sponge on the Run', NULL, '2021', 'https://xl.movieposterdb.com/21_05/2020/4823776/xl_4823776_ee929659.jpg?v=2024-07-22%2015:50:22', 'US', 'After SpongeBob\'s beloved pet snail Gary is snail-napped, he and Patrick embark on an epic adventure to the Lost City of Atlantic City to bring Gary home.', 'https://youtu.be/a2cowVH03Xo?si=SqYPcZQc8Tp9DSQO', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(89, 'Saving Bikini Bottom: The Sandy Cheeks Movie', NULL, '2024', 'https://xl.movieposterdb.com/23_03/0/23063732/xl_saving-bikini-bottom-the-sandy-cheeks-movie-movie-poster_da43a426.jpg', 'US', 'When Bikini Bottom is suddenly scooped out of the ocean, Sandy Cheeks and SpongeBob journey to Sandy\'s home state of Texas, where they meet Sandy\'s family and must save Bikini Bottom from the hands of an evil CEO.', 'https://youtu.be/Ud6-SGnzH3k?si=c9j26OgFgRx0W_kA', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(90, 'Mr. Bean\'s Holiday', NULL, '2007', 'https://xl.movieposterdb.com/07_08/2007/453451/xl_453451_781d47f2.jpg?v=2024-07-23%2015:02:08', 'US', 'Mr. Bean wins a trip to Cannes where he unwittingly separates a young boy from his father and must help the two reunite. On the way he discovers France, bicycling, and true love.', 'https://youtu.be/LZfIzJ6XwPQ?si=EKjeOXWGZpuPc54G', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(91, 'Black Panther', NULL, '2018', 'https://www.imdb.com/title/tt1825683/mediaviewer/rm172972800/?ref_=ext_shr_lnk', 'US', 'T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.', 'https://youtu.be/xjDjIWPwcPU?si=jOYpfoPjbr--vOM6', '2024-11-10 07:03:11', '2024-11-10 07:07:08');
INSERT INTO `tb_film` (`film_id`, `title`, `alternative_title`, `year`, `poster_url`, `country`, `synopsis`, `trailer_url`, `created_at`, `updated_at`) VALUES
(92, 'Thor the dark world', NULL, '2013', 'https://www.imdb.com/title/tt1981115/mediaviewer/rm1847122688/?ref_=ext_shr_lnk', 'US', 'When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster.', 'https://youtu.be/npvJ9FTgZbM?si=KSBIYQsinBQhFeI9', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(93, 'Ant-Man', NULL, '2015', 'https://www.imdb.com/title/tt0478970/mediaviewer/rm124909312/?ref_=ext_shr_lnk', 'US', 'Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, pull off a plan that will save the world.', 'https://youtu.be/pWdKf3MneyI?si=G8ESHBzqLeSnefN3', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(94, 'Capten Marvel', NULL, '2019', 'https://www.imdb.com/title/tt4154664/mediaviewer/rm123368960/?ref_=ext_shr_lnk', NULL, 'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.', 'https://youtu.be/Z1BCujX3pw8?si=7BDO34-ax1A_MhJl', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(95, 'Sheriff', NULL, '2024', 'https://www.imdb.com/title/tt28547912/mediaviewer/rm1709262081/?ref_=ext_shr_lnk', 'Malaysia', 'Sheriff and Nazri, police officers from different departments, team up to take down Tony, a ruthless drug kingpin running a methamphetamine syndicate responsible for numerous deaths, known as the Meth Killer.', 'https://youtu.be/gG3UbB_e_UY?si=rkI_-X_dQcQcV9JZ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(96, 'You\'re the Apple of My Eye', NULL, '2011', 'https://upload.wikimedia.org/wikipedia/id/a/aa/You_Are_the_Apple_of_My_Eye_film_poster.jpg', 'Taiwan', 'A group of close friends who attend a private school all have a debilitating crush on the sunny star pupil, Shen Jiayi. The only member of the group who claims not to is Ke Jingteng, but he ends up loving her as well.', 'https://youtu.be/v5H6wE47FrI?si=9RdYiil_FUnL09rj', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(97, 'Modern Family', NULL, '2009', 'https://i.ebayimg.com/images/g/QLgAAOSwvLJfPEnL/s-l1600.webp', 'US', 'Three different, but related, families face trials and tribulations in their own uniquely comedic ways.', 'https://youtu.be/Ub_lfN2VMIo?si=MrRO8uzMkUP7R1sM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(98, 'Succession', NULL, '2018', 'https://alternativemovieposters.com/wp-content/uploads/2023/05/Colton-Tisdall_Succession.jpg', 'US', 'The series centers on the Roy family, the owners of global media and entertainment conglomerate Waystar RoyCo, and their fight for control of the company amidst uncertainty about the health of the family\'s patriarch. Brian Cox portrays the family patriarch Logan Roy.', 'https://youtu.be/OzYxJV_rmE8?si=7HDytmEz7rZpLteT', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(99, 'Schindler\'s List', NULL, '1993', 'https://i.pinimg.com/564x/e1/42/a5/e142a53687a5d1fcd838f2127d267999.jpg', 'US', 'In Kraków during World War II, the Nazis force local Polish Jews into the overcrowded Kraków Ghetto. Oskar Schindler, a German Nazi Party member from Czechoslovakia, arrives in the city, hoping to make his fortune. He bribes Wehrmacht (German armed forces) and SS officials, acquiring a factory to produce enamelware. Schindler hires Itzhak Stern, a Jewish official with contacts among black marketeers and the Jewish business community; he handles administration and helps Schindler arrange financing. Stern ensures that as many Jewish workers as possible were deemed essential to the German war effort to prevent them from being taken by the SS to concentration camps or killed. Meanwhile, Schindler maintains friendly relations with the Nazis and enjoys his new wealth and status as an industrialist.', 'https://youtu.be/gG22XNhtnoY?si=C16w6rNkL9UXLl9P', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(100, 'Dune', NULL, '2021', 'https://upload.wikimedia.org/wikipedia/id/5/5e/DunePartPost2021.jpg', 'US', 'A mythic and emotionally charged hero\'s journey, \"Dune\" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, who must travel to the most dangerous planet in the universe to ensure the future of his family and his people.', 'https://youtu.be/n9xhJrPXop4?si=mdFM9kcL4HOuMGS_', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(101, 'Fate/stay night [Heaven\'s Feel] I. presage flower', 'Gekijouban Fate/stay night [Heaven\'s Feel] I. presage flower', '2017', 'Fate/stay night [Heaven\'s Feel] I. presage flower (2017) (imdb.com)', 'Japan', 'Shirou Emiya is a young mage who attends Homurahara Academy in Fuyuki City. One day after cleaning the Archery Dojo in his school, he catches a glimpse of a fight between superhuman beings, and he gets involved in the Holy Grail War, a ritual where mages called Masters fight each other with their Servants in order to win the Holy Grail. Shirou joins the battle to stop an evildoer from winning the Grail and to save innocent people, but everything goes wrong when a mysterious \"Shadow\" begins to indiscriminately kill people in Fuyuki.', 'https://youtu.be/AMr5pXzpvP0?si=Wrqrp_iXyxIG4dw5', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(102, 'Fate/stay night [Heaven\'s Feel] II. lost butterfly', 'Gekijouban Fate/stay night [Heaven\'s Feel] II. lost butterfly', '2019', 'Fate/stay night [Heaven\'s Feel] II. lost butterfly (2019) (imdb.com)', 'Japan', 'The story focuses on the Holy Grail War and explores the relationship between Shirou Emiya and Sakura Matou, two teenagers participating in this conflict. The story continues immediately from Fate/stay night: Heaven\'s Feel I. presage flower, following Shirou as he continues to participate in the Holy Grail War even after being eliminated as a master.', 'https://youtu.be/nfzKXkL_i54?si=zm6E1OQ54bidiUnf', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(103, 'Fate/stay night [Heaven\'s Feel] III. spring song', 'Gekijouban Fate/stay night [Heaven\'s Feel] III. spring song', '2020', 'Fate/stay night [Heaven\'s Feel] III. spring song (2020) (imdb.com)', 'Japan', 'The final chapter in the Heaven\'s Feel trilogy. Angra Mainyu has successfully possessed his vessel Sakura Matou. It\'s up to Rin, Shirou, and Rider to cleanse the grail or it will be the end of the world and magecraft as we all know it.', 'https://youtu.be/KlJIMiZfxCY?si=0Lxh1O7xkwxIXi5d', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(104, 'Real Steel', NULL, '2011', 'Real Steel (2011) (imdb.com)', 'US', 'In a near future where robot boxing is a top sport, a struggling ex-boxer feels he\'s found a champion in a discarded robot.', 'https://youtu.be/1VFd5FMbZ64?si=ItKqmKxKBM6r4Whv', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(105, 'Dragon Nest: Warrior\'s Dawn', 'Long Zhi Gu: Po Xiao Qi Bing', '2014', 'https://www.imdb.com/title/tt0433035/mediaviewer/rm1078443008/?ref_=tt_ov_i', 'China', 'Lambert joins the Dragon Slayers\' League to save Altera from the Black Dragon.', 'https://youtu.be/0ak7gLnPZfw?si=ZbnsWQCARu5FjAqm', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(106, 'knives out', NULL, '2019', 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/726b1b0e4005ab2219e31b5582e0602a_500x749.jpg?v=1573572660', 'US', 'A detective investigates the death of the patriarch of an eccentric, combative family.', 'Knives Out (2019 Movie) Official Trailer — Daniel Craig, Chris Evans, Jamie Lee Curtis - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(107, 'memento', NULL, '2000', 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/c15059527ae4d9c832dbb365b418369e_7c2bb4af-8bcd-428c-8904-27ddc512a45c_500x749.jpg?v=1573594896', 'US', 'Leonard Shelby, an insurance investigator, suffers from anterograde amnesia and uses notes and tattoos to hunt for the man he thinks killed his wife, which is the last thing he remembers.', 'Memento Original 35 mm Anamorphic Trailer (HD) (CC) - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(108, 'the forest gump', NULL, '1994', 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/forrest-gump---24x36_500x749.jpg?v=1645558337', 'US', 'The history of the United States from the 1950s to the \'70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.', 'Forrest Gump - Trailer - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(109, 'pulp fiction', NULL, '1994', 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/ab401c136cca10812cda5ac64c3f7c2e_bb5e62f7-b34f-4547-b5c7-495cc2dd1bd9_500x749.jpg?v=1573591339', 'US', 'Jules Winnfield (Samuel L. Jackson) and Vincent Vega (John Travolta) are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace (Ving Rhames). Wallace has also asked Vincent to take his wife Mia (Uma Thurman) out a few days later when Wallace himself will be out of town. Butch Coolidge (Bruce Willis) is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents. ??Soumitra', 'Pulp Fiction | Official Trailer (HD) - John Travolta, Uma Thurman, Samuel L. Jackson | MIRAMAX - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(110, 'the prestige', NULL, '2006', 'https://www.movieposters.com/cdn/shop/files/prestige.mp.140332_480x.progressive.jpg?v=1709237534', 'US', 'The Prestige (2006) In the end of the nineteenth century, in London, Robert Angier, his beloved wife Julia McCullough, and Alfred Borden are friends and assistants of a magician. When Julia accidentally dies during a performance, Robert blames Alfred for her death, and they become enemies. Both become famous and rival magicians, sabotaging the performance of the other on the stage. When Alfred performs a successful trick, Robert becomes obsessed trying to disclose the secret of his competitor with tragic consequences. ??Claudio Carvalho, Rio de Janeiro, Brazil', 'The Prestige (2006) Trailer #1 | Movieclips Classic Trailers - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(111, 'Kung Fu Panda', NULL, '2008', 'https://www.imdb.com/title/tt0441773/mediaviewer/rm3096332288/?ref_=tt_ov_i', 'US', 'It\'s the story about a lazy, irreverent slacker panda, named Po, who is the biggest fan of Kung Fu around...which doesn\'t exactly come in handy while working every day in his family\'s noodle shop. Unexpectedly chosen to fulfill an ancient prophecy, Po\'s dreams become reality when he joins the world of Kung Fu and studies alongside his idols, the legendary Furious Five -- Tigress, Crane, Mantis, Viper and Monkey -- under the leadership of their guru, Master Shifu. But before they know it, the vengeful and treacherous snow leopard Tai Lung is headed their way, and it\'s up to Po to defend everyone from the oncoming threat. Can he turn his dreams of becoming a Kung Fu master into reality? Po puts his heart - and his girth - into the task, and the unlikely hero ultimately finds that his greatest weaknesses turn out to be his greatest strengths.', 'Kung Fu Panda | Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(112, 'Kung Fu Panda 2', NULL, '2011', 'https://www.imdb.com/title/tt1302011/mediaviewer/rm848057600/?ref_=tt_ov_i', 'US', 'After a year of being the dragon warrior, obesitized but fearless Po (Black) is a hero in China along with Crane (Cross), Mantis (Rogen), Monkey (Chan), Viper (Liu), Tigress (Jolie), and Shifu (Hoffman). But trouble pops out when villian Shen (Oldman) begins chaos. Everybody is ready to fight, but Po is unprepared when he learns Shen was his enemy in his infancy.', 'Kung Fu Panda 2 | Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(113, 'Kung Fu Panda 3', NULL, '2016', 'https://www.imdb.com/title/tt2267968/mediaviewer/rm375908608/?ref_=tt_ov_i', 'US', 'When Po\'s long-lost panda father suddenly reappears, the reunited duo travels to a secret panda paradise to meet scores of hilarious new panda characters. But when the supernatural villain Kai begins to sweep across China defeating all the kung fu masters, Po must do the impossible-learn to train a village full of his fun-loving, clumsy brethren to become the ultimate band of Kung Fu Pandas.', 'Kung Fu Panda 3 | Official Trailer #1', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(114, 'Kung Fu Panda 4', NULL, '2024', 'https://www.imdb.com/title/tt21692408/mediaviewer/rm3773712385/?ref_=tt_ov_i', 'US', 'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.', 'KUNG FU PANDA 4 | Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(115, 'Kung Fu Hustle', NULL, '2004', 'https://www.imdb.com/title/tt0373074/mediaviewer/rm2422949889/?ref_=tt_ov_i', 'China', 'Set in Canton, China in the 1940s, the story revolves in a town ruled by the Axe Gang, Sing who desperately wants to become a member. He stumbles into a slum ruled by eccentric landlords who turns out to be the greatest kung-fu masters in disguise. Sing\'s actions eventually cause the Axe Gang and the slumlords to engage in an explosive kung-fu battle. Only one side will win and only one hero will emerge as the greatest kung-fu master of all.', 'Kung Fu Hustle | Official Trailer ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(116, 'Spirited Away', 'Sen to Chihiro no kamikakushi', '2001', 'Spirited Away (2001)', 'Japan', 'The fanciful adventures of a ten-year-old girl named Chihiro, who discovers a secret world when she and her family get lost and venture through a hillside tunnel. When her parents undergo a mysterious transformation, Chihiro must fend for herself as she encounters strange spirits, assorted creatures and a grumpy sorceress who seeks to prevent her from returning to the human world', 'Spirited Away - Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(117, 'Princess Mononoke', 'Mononoke-hime', '1997', 'https://www.imdb.com/title/tt0119698/mediaviewer/rm1586705153/?ref_=ext_shr_lnk', 'Japan', 'While protecting his village from rampaging boar-god/demon, a confident young warrior, Ashitaka, is stricken by a deadly curse. To save his life, he must journey to the forests of the west. Once there, he\'s embroiled in a fierce campaign that humans were waging on the forest. The ambitious Lady Eboshi and her loyal clan use their guns against the gods of the forest and a brave young woman, Princess Mononoke, who was raised by a wolf-god. Ashitaka sees the good in both sides and tries to stem the flood of blood. This is met by animosity by both sides as they each see him as supporting the enemy.', 'Princess Mononoke - Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(118, 'My Neighbor Totoro', 'Tonari no Totoro', '1988', 'https://www.imdb.com/title/tt0096283/mediaviewer/rm3112135425/?ref_=ext_shr_lnk', 'Japan', 'Excited about reuniting with their ailing mother, close-knit sisters Satsuki and Mei embark on an exciting adventure when they move with their loving professor father to a new house in the verdant countryside of 1950s summer Japan. Now, nothing can stop them. And with mum in the hospital, the girls have all the time in the world to explore nature and the dense adjacent forest, the home of bashful mystical creatures only children can see. Under the clear blue sky\'s cloudless bliss and the bright yellow sun\'s promise of a luminous future, nothing can blemish the young sisters\' flawless fantasy--not even life\'s trying times. After all, mother is getting better. Then, one radiant morning, as the shimmering green leaves of the towering camphor trees swayed in the soft morning breeze, the wide-eyed siblings stumbled upon a Totoro. But who is the enchanting visitor? Will the rotund neighbour, with his fluffy fur and mysterious eyes, be the girls\' forever friend?', 'My Neighbor Totoro - Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(119, 'The Boy and The Heron', 'Kimitachi wa dou ikiru ka', '2023', 'https://www.imdb.com/title/tt6587046/mediaviewer/rm1725845761/?ref_=ext_shr_lnk', 'Japan', 'After losing his mother during the war, young Mahito moves to his family\'s estate in the countryside. There, a series of mysterious events lead him to a secluded and ancient tower, home to a mischievous gray heron. When Mahito\'s new stepmother disappears, he follows the gray heron into the tower, and enters a fantastic world shared by the living and the dead. As he embarks on an epic journey with the heron as his guide, Mahito must uncover the secrets of this world, and the truth about himself. Featuring the voices of Christian Bale, Dave Bautista, Gemma Chan, Willem Dafoe, Karen Fukuhara, Mark Hamill, Robert Pattinson and Florence Pugh.', 'THE BOY AND THE HERON | Official English Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(120, 'Howl\'s Moving Castle', 'Hauru no ugoku shiro', '2004', 'https://www.imdb.com/title/tt0347149/mediaviewer/rm1534369024/?ref_=ext_shr_lnk', 'Japan', 'With her country\'s peace constantly under threat, Sophie, a lively but unloved milliner, catches the attention of an unexpected defender. But as the wide-eyed damsel in distress crosses paths with handsome Howl, a talented young magician with excess emotional baggage, a fit of jealousy turns the hat maker\'s world upside down forever. Now, stained by the indelible mark of the wicked Witch of the Waste, Sophie must move mountains to break the pitiless spell, including facing her fears and the mysterious sorcerer. However, has anyone ever set foot in Howl\'s impenetrable home, a walking wonder powered by a fiery heart, and lived to tell the tale?', 'Howl\'s Moving Castle - Official Trailer', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(121, 'Prey', NULL, '2022', 'https://www.imdb.com/title/tt11866324/mediaviewer/rm4094888705/?ref_=ext_shr_lnk ', 'US', 'Naru, a skilled warrior of the Comanche Nation, fights to protect her tribe against one of the first highly-evolved Predators to land on Earth.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(122, 'The Predator', NULL, '2018', 'https://www.imdb.com/title/tt3829266/mediaviewer/rm3117827584/?ref_=ext_shr_lnk', 'US', 'When a young boy accidentally triggers the universe\'s most lethal hunters\' return to Earth, only a ragtag crew of ex-soldiers and a disgruntled scientist can prevent the end of the human race.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(123, 'Alien: Romulus', NULL, '2024', 'https://www.imdb.com/title/tt18412256/mediaviewer/rm3993072385/?ref_=ext_shr_lnk', 'US', 'While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(124, 'Alien vs Predator: Requiem', NULL, '2007', 'https://www.imdb.com/title/tt0758730/mediaviewer/rm3172046848/?ref_=ext_shr_lnk', 'US', 'Warring Alien and Predator races descend on a rural Colorado town, where unsuspecting residents must band together for any chance of survival.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(125, 'Alien vs Predator', NULL, '2004', 'https://www.imdb.com/title/tt0370263/mediaviewer/rm3021379584/?ref_=ext_shr_lnk', 'US', 'During an archaeological expedition on Bouvetøya Island in Antarctica, a team of archaeologists and other scientists find themselves caught up in a battle between the two legends. Soon, the team realize that only one species can win.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(126, 'THE EQUALIZER', NULL, '2014', NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(127, 'THE EQUALIZER 2', NULL, '2018', NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(128, 'THE EQUALIZER 3', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(130, 'TRAIN TO BUSAN', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(131, 'The Shining', NULL, '1980', 'https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg', 'US', 'A family heads to an isolated hotel for the winter, where a sinister presence influences the father into violence. At the same time, his psychic son sees horrifying forebodings from both the past and the future.', 'https://www.youtube.com/watch?v=FZQvIJxG9Xs', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(132, 'I Want to Eat Your Pancreas', 'Kimi no suizô o tabetai', '2018', 'https://m.media-amazon.com/images/M/MV5BMTQ1ODIzOGQtOGFkZC00MWViLTgyYmUtNWJkNmIxZjYxMTdmXkEyXkFqcGc@._V1_.jpg', 'Japan', 'A high school student discovers one of his classmates, Sakura Yamauchi, is suffering from a terminal illness. This secret brings the two together, as she lives out her final moments.', 'https://www.youtube.com/watch?v=HuN15mDKakk', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(133, 'Hereditary', NULL, '2018', 'https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_.jpg', 'US', 'A grieving family is haunted by tragic and disturbing occurrences.', 'https://www.youtube.com/watch?v=V6wWKNij_1M', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(134, 'Perfume: The Story of a Murderer', NULL, '2006', 'https://m.media-amazon.com/images/M/MV5BMTg2Mzk2NjkzNl5BMl5BanBnXkFtZTYwMzIzOTc2._V1_.jpg', 'Germany', 'Jean-Baptiste Grenouille, born with a superior olfactory sense, creates the world\'s finest perfume. His work, however, takes a dark turn as he searches for the ultimate scent.', 'https://www.youtube.com/watch?v=_-qv0EnGhJU', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(135, 'Boys Over Flowers', 'Kkotboda namja', '2009', 'https://m.media-amazon.com/images/M/MV5BZmNmMTdhNzItNjM4ZC00NjgxLWIwNWMtMzkxZWZkZWVjMzZkXkEyXkFqcGdeQXVyMzE4MDkyNTA@._V1_.jpg', 'South Korea', 'Geum Jan Di gets a scholarship to the elite Shin Hwa High School. She is picked on by Gu Jun Pyo, one of the richest and most popular students, but soon Jun Pyo finds himself attracted to her.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(136, 'Kingsman: The Secret Service', NULL, '2014', 'https://a.ltrbxd.com/resized/film-poster/1/4/8/2/0/0/148200-kingsman-the-secret-service-0-1000-0-1500-crop.jpg?v=cd49b739cf', 'England', 'The story of a super-secret spy organization that recruits an unrefined but promising street kid into the agency’s ultra-competitive training program just as a global threat emerges from a twisted tech genius.', 'https://www.youtube.com/watch?v=m4NCribDx4U&pp=ygUba2luZ3NtYW4gdGhlIHNlY3JldCBzZXJ2aWNl', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(137, 'Kingsman: The Golden Circle', NULL, '2017', 'https://a.ltrbxd.com/resized/sm/upload/3h/o6/gc/iy/yOGf8Or1k78Y6OLdYmTTSGHW1dP-0-1000-0-1500-crop.jpg?v=9a2da8212b', 'England', 'When an attack on the Kingsman headquarters takes place and a new villain rises, Eggsy and Merlin are forced to work together with the American agency known as the Statesman to save the world.', 'https://www.youtube.com/watch?v=6Nxc-3WpMbg&pp=ygUaa2luZ3NtYW4gdGhlIGdvbGRlbiBjaXJjbGU%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(138, 'Behind Her Eyes', NULL, '2021', 'https://posters.movieposterdb.com/22_06/2021/9698442/l_9698442_818a3641.jpg', 'England', 'It follows Louise, a single mum with a son and a part-time job in a psychiatrist\'s office. She begins an affair with her boss and strikes up an unlikely friendship with his wife.', 'https://www.youtube.com/watch?v=c4LtoWQaLxk&pp=ygUXYmVoaW5kIGhlciBleWVzIHRyYWlsZXI%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(139, 'Baby Driver', NULL, '2017', 'https://a.ltrbxd.com/resized/film-poster/2/6/8/9/5/0/268950-baby-driver-0-1000-0-1500-crop.jpg?v=61304ddfc8', 'England', 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', 'https://www.youtube.com/watch?v=zTvJJnoWIPk', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(140, 'Back to the Future', NULL, '1985', 'https://a.ltrbxd.com/resized/film-poster/5/1/9/4/5/51945-back-to-the-future-0-1000-0-1500-crop.jpg?v=6662417358', 'US', 'Eighties teenager Marty McFly is accidentally sent back in time to 1955, inadvertently disrupting his parents’ first meeting and attracting his mother’s romantic interest. Marty must repair the damage to history by rekindling his parents’ romance and - with the help of his eccentric inventor friend Doc Brown - return to 1985.', 'https://www.youtube.com/watch?v=qb7Fd0l_BRo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(141, 'Ae Dil Hai Mushkil', NULL, '2016', 'https://posters.movieposterdb.com/21_11/2016/4559006/l_4559006_2672b3c1.jpg', 'India', 'Ayan goes on a Quest for true love when Alizeh does not reciprocate his feelings. On his journey, he meets different people who make him realize the power of unrequited love.', 'https://www.youtube.com/watch?v=Z_PODraXg4E', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(142, 'Kal Ho Naa Ho', NULL, '2003', 'https://posters.movieposterdb.com/12_05/2003/347304/s_347304_e7f7919b.jpg', 'India', 'Naina\'s neighbor, Aman, introduces her to optimism, and makes her fall in love. But tragedy stopped him from moving forward. In fact, he encouraged his friend Rohit to seduce her.', 'https://www.youtube.com/watch?v=tVMAQAsjsOU', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(143, 'Kabhi Khushi Kabhie Gham', NULL, '2001', 'https://posters.movieposterdb.com/10_08/2001/248126/s_248126_0a404d08.jpg', 'India', 'Rahul is sad because his father disapproves of his relationship with the poor Anjali, but still marries her and moves to London. 10 years later, Rahul\'s younger brother wants to reconcile his father and brother.', 'https://www.youtube.com/watch?v=7uY1JbWZKPA', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(144, 'Jab Tak Hai Jaan', NULL, '2012', 'https://posters.movieposterdb.com/12_09/2012/2176013/s_2176013_f513dba4.jpg', 'India', 'Samar Anand is forced to leave his girlfriend, Khushi (Katrina Kaif). From London, he returns to Kashmir leaving his past behind, and meets Akira, a cheerful woman who works for a television program about wildlife. Will Samar still hope for Khushi or choose to start a new life with Akira?', 'https://www.youtube.com/watch?v=v0UXgoJ9Shg', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(145, 'Bajrangi Bhaijaan', NULL, '2015', 'https://posters.movieposterdb.com/15_09/2015/3863552/s_3863552_b160f1f4.jpg', 'India', 'Pavan, a devotee of Hanuman, faces various challenges when he tries to reunite Munni with her family after Munni goes missing while traveling back home with her mother.', 'https://www.youtube.com/watch?v=4nwAra0mz_Q', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(146, 'Transformers: Revenge of the Fallen', NULL, '2009', 'https://m.media-amazon.com/images/M/MV5BNjk4OTczOTk0NF5BMl5BanBnXkFtZTcwNjQ0NzMzMw@@._V1_.jpg', 'US', 'A youth chooses manhood. The week Sam Witwicky starts college, the Decepticons make trouble in Shanghai. A presidential envoy believes it\'s because the Autobots are around; he wants them gone. He\'s wrong: the Decepticons need access to Sam\'s mind to see some glyphs imprinted there that will lead them to a fragile object that, when inserted in an alien machine hidden in Egypt for centuries, will give them the power to blow out the sun. Sam, his girlfriend Mikaela Banes, and Sam\'s parents are in danger. Optimus Prime and Bumblebee are Sam\'s principal protectors. If one of them goes down, what becomes of Sam?', 'https://youtu.be/fnXzKwUgDhg?si=OQS8kGFiwTr7QiNx', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(147, 'Transformers: Dark of the Moon', NULL, '2011', 'https://m.media-amazon.com/images/M/MV5BMTkwOTY0MTc1NV5BMl5BanBnXkFtZTcwMDQwNjA2NQ@@._V1_FMjpg_UY478_.jpg', 'US', 'Autobots Bumblebee, Ratchet, Ironhide, Mirage (aka Dino), Wheeljack (aka Que) and Sideswipe led by Optimus Prime, are back in action taking on the evil Decepticons, who are eager to avenge their recent defeat. The Autobots and Decepticons become involved in a perilous space race between the United States and Russia to reach a hidden Cybertronian spacecraft on the moon and learn its secrets, and once again Sam Witwicky has to go to the aid of his robot friends. The new villain Shockwave is on the scene while the Autobots and Decepticons continue to battle it out on Earth.', 'https://youtu.be/97wCoDn0RrA?si=e5YzLTIFpIwrYnYe', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(148, 'Transformers: Age of Extinction', NULL, '2014', 'https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_FMjpg_UY749_.jpg', 'US', 'After the battle between the Autobots and Decepticons that leveled Chicago, humanity thinks that all alien robots are a threat. So Harold Attinger, a CIA agent, establishes a unit whose sole purpose is to hunt down all of them. But it turns out that they are aided by another alien robot who is searching for Optimus Prime. Cade Yeager, a \"robotics expert\", buys an old truck and upon examining it, he thinks it\'s a Transformer. When he powers it up, he discovers it\'s Optimus Prime. Later, men from the unit show up looking for Optimus. He helps Yeager and his daughter Tessa escape but are pursued by the hunter. They escape and Yeager learns from technology he took from the men that a technology magnate and defense contractor named Joshua Joyce is part of what\'s going on, so they go to find out what\'s going on.', 'https://youtu.be/T9bQCAWahLk?si=8FrmWIM7-aw4mbPX', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(149, 'Transformers: The Last Knight', NULL, '2017', 'https://m.media-amazon.com/images/M/MV5BYWNlNjU3ZTItYTY3Mi00YTU1LTk4NjQtYjQ3MjFiNjcyODliXkEyXkFqcGc@._V1_.jpg', 'US', 'Having left Earth, Optimus Prime finds his dead home planet, Cybertron, and discovers that he was in fact responsible for its destruction. Optimus learns that he can bring Cybertron back to life, but in order to do so, he will need an artifact that is hidden on Earth.', 'https://youtu.be/6Vtf0MszgP8?si=jChC9qfWPfCUXZIv', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(150, 'Transformers: Rise of the Beasts', NULL, '2023', 'https://m.media-amazon.com/images/M/MV5BZTVkZWY5MmItYjY3OS00OWY3LTg2NWEtOWE1NmQ4NGMwZGNlXkEyXkFqcGc@._V1_FMjpg_UY711_.jpg', 'US', 'Returning to the action and spectacle that has captivated moviegoers around the world, Transformers: Rise of the Beasts will take audiences on a global \'90s adventure with the Autobots and introduce a new faction of Transformers - the Maximals - to join them as allies in the war. the ongoing battle on earth. Directed by Steven Caple Jr. and starring Anthony Ramos and Dominique Fishback', 'https://youtu.be/itnqEauWQZM?si=7JF9i9hFZ3PDlpPw', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(151, 'Spider-Man : Homecoming', NULL, '2017', 'https://www.imdb.com/title/tt2250912/mediaviewer/rm3554683648/?ref_=ext_shr_lnk', 'US', 'Peter Parker tries to stop Adrian \'The Vulture\' Toomes from selling weapons made with advanced Chitauri technology while trying to balance his life as an ordinary high school student.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(152, 'Spider-Man : Far From Home', NULL, '2019', 'https://www.imdb.com/title/tt6320628/mediaviewer/rm2921502465/?ref_=tt_ov_i', 'US', 'Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(153, 'Spider-Man : No Way Home', NULL, '2021', 'https://www.imdb.com/title/tt10872600/mediaviewer/rm2798542593/?ref_=ext_shr_lnk', 'US', 'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(154, 'Finding Nemo', NULL, '2003', 'https://www.imdb.com/title/tt0266543/mediaviewer/rm1261017088/?ref_=ext_shr_lnk', 'US', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(155, 'Finding Dory', NULL, '2016', 'https://www.imdb.com/title/tt2277860/mediaviewer/rm2983925248/?ref_=ext_shr_lnk', 'US', 'Friendly but forgetful blue tang Dory begins a search for her long-lost parents and everyone learns a few things about the real meaning of family along the way.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(156, 'Danur: I Can See Ghosts', NULL, '2017', 'https://www.imdb.com/title/tt6496236/mediaviewer/rm3741201152/?ref_=ext_shr_lnk', 'Indonesia', 'As a young girl, Risa has the ability to see ghosts. Due to her parents busy with work, Risa befriends 3 ghosts in her estate. However things turned south when a malevolent spirit decided to take her younger sister. Risa will soon find out what secret lies in her house.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(157, 'Danur 2: Maddah', NULL, '2018', 'https://www.imdb.com/title/tt7981182/mediaviewer/rm540562944/?ref_=ext_shr_lnk', 'Indonesia', 'As Risa\'s ability to see ghosts continues to disrupt her life, her uncle\'s peculiar behavior leads her to discover a haunting mystery at his new house.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(158, 'Danur 3: Sunyaruri', NULL, '2019', 'https://www.imdb.com/title/tt10698468/mediaviewer/rm459846145/?ref_=ext_shr_lnk', 'Indonesia', 'After years of being friendly with her little ghosts, Risa begins to feel that she must have a normal life like other women. Especially now Risa has a boyfriend named Dimas, a radio announcer. Risa does not tell Dimas about her ability to see ghosts, and that she has five little friends who were not human.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08');
INSERT INTO `tb_film` (`film_id`, `title`, `alternative_title`, `year`, `poster_url`, `country`, `synopsis`, `trailer_url`, `created_at`, `updated_at`) VALUES
(159, 'Sri Asih', NULL, '2022', 'data:image/jpeg;base64,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', 'Indonesia', 'Alana does not understand why she is always overcome by anger. But she always tried to fight it. She was born during a volcanic eruption that separated her and her parents. She is adopted by a rich woman who tries to help her live a normal life. But as an adult, Alana discovers the truth about her origins. She\'s not an ordinary human', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(160, 'Exhuma', 'Pamyo', '2024', 'https://www.imdb.com/title/tt27802490/mediaviewer/rm4170924801/?ref_=ext_shr_lnk', 'South Korea', 'When a renowned shaman and her protégé are hired by a wealthy, enigmatic family, they begin investigating the cause of a disturbing supernatural illness that affects only the first-born children of each generation. With the help of a knowledgeable mortician and the country\'s most revered geomancer , they soon trace the affliction\'s origin to a long-hidden family grave located on sacred ground', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(161, 'Parasite', 'Gisaengchung', '2019', 'https://www.imdb.com/title/tt6751668/mediaviewer/rm3194916865/?ref_=tt_ov_i', 'South Korea', 'Greed and class discrimination threaten the newly-formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(162, 'Turning Red', NULL, '2022', 'https://www.imdb.com/title/tt8097030/mediaviewer/rm1685446657/?ref_=tt_ov_i', 'US', 'A thirteen-year-old girl named Mei Lee is torn between staying her mother\'s dutiful daughter and the changes of adolescence. And as if the challenges were not enough, whenever she gets overly excited she transforms into a giant red panda.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(163, 'The Conjuring', NULL, '2013', 'https://www.imdb.com/title/tt1457767/mediaviewer/rm1035247872/?ref_=tt_ov_i ', 'US', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(164, 'The Conjuring 2', NULL, '2016', 'https://www.imdb.com/title/tt3065204/mediaviewer/rm2478051584/?ref_=tt_ov_i', 'US', 'Ed and Lorraine Warren travel to North London to help a single mother raising four children alone in a house plagued by a supernatural spirit.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(165, 'Tangled', NULL, '2010', 'https://www.imdb.com/title/tt0398286/mediaviewer/rm798852608/?ref_=tt_ov_i', 'US', 'The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(166, 'Seven Samurai', NULL, NULL, 'https://www.imdb.com/title/tt0047478/mediaviewer/rm1230920705/?ref_=tt_ov_i', NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(167, 'Star Wars : The Rise Of Skywalker', NULL, NULL, '  ', NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(168, 'Star Wars : The Phantom Menace', NULL, '1999', 'https://www.imdb.com/title/tt0120915/mediaviewer/rm2234464000/?ref_=tt_ov_i', NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(169, 'Star Wars : Revenge Of The Sith', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(170, 'Star Wars : Return Of The Jedi', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(171, 'Detective Conan Movie: The Sniper from Another Dimension\n\n', 'Meitantei Conan: Ijigen no Sniper', '2014', 'https://xl.movieposterdb.com/14_04/2014/3455204/xl_3455204_18202e5c.jpg', 'Japan', 'After participating in the opening ceremony, Conan, Professor Agasa, Ran, Haibara, and the Detective Boys are enjoying the view from the observation deck of the 635-metre tall Bell Tree Tower. Suddenly, a bullet breaks through a window, strikes a man\'s chest and breaks a TV screen, causing everyone to panic. Conan stays calm and, using the zoom function on his tracking glasses to follow the path of the bullet to its source, spots the sniper. He and Masumi Sera, who had been present at the Tower as part of an assignment to shadow the victim, pursue the fleeing culprit on Masumi\'s motorcycle, but the chase takes a violent turn when the suspect uses a handgun and even hand grenades to take out his pursuers. Even the FBI get involved in the chase, but the culprit and the mysteries of the sniping end up vanishing into the ocean.', 'Detective Conan movie 18 sniper from another dimension full trailer HD - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(172, 'Detective Conan: The Darkest Nightmare', 'Meitantei Conan: Junkoku no Nightmare\n', '2016', 'https://xl.movieposterdb.com/19_12/2016/4954660/xl_4954660_625971f4.jpg?v=2020-01-02%2013:32:54', 'Japan', 'A spy infiltrated the Japanese National Police Agency, retrieving secret files of Britain\'s MI6, Germany\'s BND and America\'s CIA and FBI. Rei Furuya and a group of Tokyo Police PSB intercepted the spy during the getaway, and just before the major car accident, FBI Agent Shuichi Akai sniped and crashed the spy\'s vehicle. The next day, at the aquarium in Tokyo with the Ferris wheel, Conan and the Detective Boys found a woman with heterochromia iris who suffered memory loss and had a broken cell phone. Having decided to stay and help the woman regain her memory, Conan and the Detective Boys are under the watchful eye of Vermouth.\n', 'DETECTIVE CONAN: THE DARKEST NIGHTMARE - Official Trailer (In cinemas 7 July) - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(173, 'Detective Conan: Zero The Enforcer', 'Meitantei Conan: Zero no Shikkounin', '2018', 'https://xl.movieposterdb.com/20_01/2018/7880466/xl_7880466_fb8b1bfb.jpg?v=2020-01-02%2015:53:38', 'Japan', 'Detective Conan investigates an explosion that occurs on the opening day of a large Tokyo resort and convention center.\n\n', 'DETECTIVE CONAN: ZERO THE ENFORCER Official Indonesia Trailer - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(174, 'Detective Conan :The Lost Ship in the Sky\n\n', 'Meitantei Conan: Tenkuu no rosuto shippu', '2010', 'https://xl.movieposterdb.com/10_08/2010/1636815/xl_1636815_c926bd5b.jpg ', 'Japan', 'Kid has his eyes set on the \"Lady of the Sky\" jewel aboard Bell 3, the largest airship in the world. However, a mysterious terrorist group called Red Shamu-neko has hijacked the airship, along with Conan and his allies Kogoro and Ran.\n', 'Detective Conan Movie 14 _ Lost Ship In The Sky OFFICIAL TRAILER - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(175, 'Detective Conan: The Sunflower Of Inferno', 'Meitantei Conan: Gouka no Himawari\n', '2015', 'https://xl.movieposterdb.com/15_08/2015/3737650/xl_3737650_927f2a54.jpg', 'Japan', 'Conan and his friends must prevent Kid from stealing a famous painting.\n\n', 'Detective Conan: Sunflowers of Inferno Official Trailer - YouTube', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(176, 'Locke and Key', NULL, '2020', 'https://m.media-amazon.com/images/M/MV5BOTdkMDY3NDctZTgyZi00Yzc3LTk1ZWEtNWUxNTVlN2YzNDU3XkEyXkFqcGdeQXVyNDk3ODk4OQ@@._V1_.jpg', 'US', 'After their father is murdered under mysterious circumstances, the three Locke siblings and their mother move into their ancestral home, Keyhouse, which they discover is full of magical keys that may be connected to their father\'s death.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(177, 'Gadis Kretek', 'Cigarette Girl', '2023', 'https://m.media-amazon.com/images/M/MV5BYzcxYzIzODItMTljNy00OGYwLWJmMWUtNzIyZDdiOTI1MWNlXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'Indonesia', 'Amid the evocative blend of flavorful spices to create the perfect kretek cigarette, two souls embark on an epic romance set in 1960s Indonesia.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(178, 'Nightmares and Daydreams', NULL, '2024', 'https://m.media-amazon.com/images/M/MV5BMTc4N2M4OTEtMGExMS00MDJkLWJkYjUtOTI5MmQ4NjhjYjJiXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'Indonesia', 'Ordinary people encountering strange phenomenons that may be keys to the answer about the origin of our world and the imminent threat we will soon face.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(179, 'Bohemian Rhapsody', NULL, '2018', 'https://m.media-amazon.com/images/M/MV5BMTA2NDc3Njg5NDVeQTJeQWpwZ15BbWU4MDc1NDcxNTUz._V1_FMjpg_UX1000_.jpg', 'US', 'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985)', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(180, 'Young Sheldon', NULL, '2017', 'https://m.media-amazon.com/images/M/MV5BZTlmYjk0ZTItODNhMC00YmIyLWExZWEtYjk0YWQzMGNhOTZmXkEyXkFqcGdeQXVyMTY0Njc2MTUx._V1_FMjpg_UX1000_.jpg', 'US', 'Meet a child genius named Sheldon Cooper (already seen as an adult in The Big Bang Theory (2007)) and his family. Some unique challenges face Sheldon, who is socially impaired.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(181, 'Spy Kids', NULL, '2001', 'https://m.media-amazon.com/images/M/MV5BY2JhODU1NmQtNjllYS00ZmQwLWEwZjYtMTE5NjA1M2YyMzdjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_QL75_UX190_CR0,0,190,281_.jpg', 'US', 'The film opens with Carmen and Juni Cortez (Alexa Vega and Daryl Sabara) being tucked into bed by their mother, Ingrid (Carla Gugino). While Juni applies wart killer to his fingers, Carmen reQuests to hear the bedtime story, \"The Two Spies Who Fell in Love\".', 'https://youtu.be/GE5aHKJp6HI?si=rwvzLkvs829Sn2qE', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(182, 'Spy Kids 2: The Island of Lost Dreams', NULL, '2002', 'https://m.media-amazon.com/images/I/51UtV22RQPL._AC_UF1000,1000_QL80_.jpg', 'US', 'The Cortez siblings set out for a mysterious island, where they encounter a genetic scientist and a set of rival spy kids.', 'https://youtu.be/8tTJ7kMgANg?si=w5iOj2O2Y07Jm0LG', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(183, 'Spy Kids 3-D: Game Over', NULL, '2003', 'https://m.media-amazon.com/images/I/51J30GKHNGL._AC_UF894,1000_QL80_.jpg', 'US', 'Carmen\'s caught in a virtual reality game designed by the Kids\' new nemesis, the Toymaker. It\'s up to Juni to save his sister, and ultimately the world.', 'https://youtu.be/GeFgj3CsfpI?si=8qIqAfIdRUVQ4yoR', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(184, 'Spy Kids: All the Time in the World', NULL, '2011', 'https://m.media-amazon.com/images/I/810QZaXJdML._AC_UF894,1000_QL80_.jpg', 'US', 'A retired spy is called back into action, and to bond with her new step-children, she invites them along for the adventure to stop the evil Timekeeper from taking over the world.', 'https://youtu.be/yUdkW8Nvpx8?si=-ong0RPOvUgjAAC7', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(185, 'Spy Kids: Armageddon', NULL, '2023', 'https://m.media-amazon.com/images/M/MV5BYzRkYjRmNDYtOGYyYS00ZWJjLWIzMTYtYmIyYTYwN2M1NTM4XkEyXkFqcGdeQXVyNDc5NDc2Nw@@._V1_.jpg', 'US', 'Tony (Connor Esterson) and Patty (Everly Carganilla) were quite good at playing online games, and they spend most of their time doing that, which is why their parents, Terrence Tango (Zachary Levi) and Nora Torrez (Gina Rodriguez), had some strict rules in place. Terrence has these rules as Terence and Nora are spies and their computers host the top-secret Armageddon code, and they are afraid that someone might use their kids\' computers to hack into their network and steal the Armageddon code. Both spies are told by their boss Devlin that unknown assailants are trying to break into OSS servers to get to the Armageddon code.', 'https://youtu.be/TuiRw0v3bAw?si=cbsMjAM9vs090sIv', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(186, 'A Quite Place ', NULL, '2018', 'https://www.imdb.com/title/tt6644200/mediaviewer/rm2582992384/?ref_=tt_ov_i', 'US', 'In a devastated Earth overrun by myriads of invincible extraterrestrial predators, the Abbotts struggle to survive in the desolate death trap of New York City. In this muffled dystopia, utter silence may offer a chance to stay alive, as even the slightest noise can attract the deadly invaders. However, despite twelve months of relentless terror, the resilient Abbotts remain unbroken, mastering the art of survival. But now, more than ever, they must live by one rule: don\'t make a sound or suffer the consequences.—Nick Riganas', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(187, 'A Quite Place Part II', NULL, '2020', 'https://www.imdb.com/title/tt8332922/mediaviewer/rm3613618433/?ref_=tt_ov_i', 'US', 'Armed with bitter knowledge of the invading creatures\' fatal weakness, a grief-stricken Evelyn Abbott suddenly finds herself with two teens, a newborn son, and no place to hide. And now, 474 days after the all-out alien attack in A Quiet Place (2018), the Abbotts must do the impossible. As the resilient survivors embark on a life-threatening Quest to find civilisation, Evelyn must expand beyond the boundaries and venture into her backyard\'s eerily quiet, hostile territory. But hoping for a miracle won\'t cut it. This time, the enemy is everywhere.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(188, 'Missing', NULL, '2023', 'https://www.imdb.com/title/tt10855768/mediaviewer/rm276381441/?ref_=tt_ov_i', 'US', 'When her mother disappears while on vacation in Colombia with her new boyfriend, June\'s search for answers is hindered by international red tape. However, as she digs deeper, her digital sleuthing soon raises more Questions than answers.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(189, 'Run', NULL, '2020', 'https://www.imdb.com/title/tt8633478/mediaviewer/rm1929891073/?ref_=tt_ov_i', 'US', 'Chloe, a teenager who is confined to a wheelchair, is homeschooled by her mother, Diane. Chloe soon becomes suspicious of her mother and begins to suspect that she may be harboring a dark secret.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(190, 'Christmas Carol', NULL, '2022', 'https://www.imdb.com/title/tt23746764/mediaviewer/rm3947969025/?ref_=tt_ov_i', 'South Korea', 'A Christmas Carol\' is a story about a twin brother who goes to a juvenile detention center on his own to avenge the death of his twin brother.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(191, 'Twilight', NULL, '2008', 'https://www.imdb.com/title/tt1099212/mediaviewer/rm2266076160/?ref_=ext_shr_lnk', 'US', 'When Bella Swan moves to a small town in the Pacific Northwest, she falls in love with Edward Cullen, a mysterious classmate who reveals himself to be a 108-year-old vampire.', 'https://youtu.be/uxjNDE2fMjI?si=gHtuavf6Lpoo2uYH', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(192, 'The Twilight Saga : New Moon', NULL, '2009', 'https://www.imdb.com/title/tt1259571/mediaviewer/rm365071872/?ref_=ext_shr_lnk', 'US', 'After Edward leaves because of an incident involving Bella, Jacob Black becomes her best friend. But what Bella doesn\'t realize is that Jacob also has a secret that will change their lives suddenly.\n', 'https://youtu.be/q58iQSHhZGg?si=30wn0_omCoJbp7zM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(193, 'The Twilight Saga : Eclipse', NULL, '2010', 'https://www.imdb.com/title/tt1325004/mediaviewer/rm2166430209/?ref_=ext_shr_lnk', 'US', 'As a string of mysterious killings grips Seattle, Bella, whose high school graduation is fast approaching, is forced to choose between her love for vampire Edward and her friendship with werewolf Jacob.', 'https://youtu.be/S2HIda5wSVU?si=m2pSeToxE55gSMqo', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(194, 'The Twilight Saga : Breaking Dawn - Part 1', NULL, '2011', 'https://www.imdb.com/title/tt1324999/mediaviewer/rm582373889/?ref_=ext_shr_lnk', 'US', 'The Quileutes close in on expecting parents Edward and Bella, whose unborn child poses a threat to the Wolf Pack and the towns people of Forks.', 'https://youtu.be/PQNLfo-SOR4?si=fnOflQyp2KHuqu0F', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(195, 'The Twilight Saga : Breaking Dawn - Part 2', NULL, '2012', 'https://www.imdb.com/title/tt1673434/mediaviewer/rm2619415041/?ref_=ext_shr_lnk', 'US', 'After the birth of Renesmee/Nessie, the Cullens gather other vampire clans in order to protect the child from a false allegation that puts the family in front of the Volturi.', 'https://youtu.be/5gRpIQfvNLA?si=WzlHOUNxqJrobFcp', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(196, 'Oh My Ghost', '오 나의 귀신님 (Oh Naui Gwisinnim)', '2015', 'https://thumbor.prod.vidiocdn.com/AcDmZjSup_7kgrDdRlExK4r-Jrw=/filters:quality(70)/vidio-media-production/uploads/image/source/4683/384411.jpg', 'South Korea', 'The story follows a shy assistant chef who gets possessed by a lustful virgin ghost. With her newfound confidence, she tries to seduce her boss, but things get complicated as they all get entangled in the ghost\'s unfinished business.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(197, 'Reply1988', '응답하라 1988 (Eungdabhara 1988)', '2015', 'https://upload.wikimedia.org/wikipedia/id/d/d8/TVN%27s_Reply_1988_%28%EC%9D%91%EB%8B%B5%ED%95%98%EB%9D%BC_1988%29_poster.jpg', 'South Korea', 'Set in the late 1980s, this drama follows five childhood friends who live in the same neighborhood. It captures the warmth and hardships of their families, the joys of friendship, and the sweet moments of first love.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(198, 'My Liberation Notes', '나의 해방일지 (Naui Haebangilji)', '2022', 'https://asianwiki.com/images/1/14/My_Liberation_Notes-p1.jpg', 'South Korea', 'This series portrays the lives of three siblings who long to escape their mundane lives and find true liberation. They meet a mysterious stranger who changes their perspectives on life.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(199, 'Mouse', '마우스 (Mauseu)', '2021', 'https://assets-a1.kompasiana.com/items/album/2021/06/29/mouse-03-60dae4471525104a40180012.jpg', 'South Korea', 'A suspenseful thriller that explores the Question of whether psychopaths are born or made. The story follows a rookie police officer who encounters a psychopathic killer that leads to a chase filled with mind games.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(200, 'Moving', '무빙 (Mubing)', '2023', 'https://asianwiki.com/images/e/ec/Moving-MP1.jpeg', 'South Korea', 'A supernatural drama about a group of teenagers who inherit superpowers from their parents. They struggle to protect their secrets while trying to understand the origins of their abilities.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(201, 'The Mist', 'Stephen King\'s The Mist', '2007', 'https://www.imdb.com/title/tt0884328/mediaviewer/rm1226609408/?ref_=tt_ov_i', 'US', 'The Draytons - David, Steff and their son Billy - live in a small Maine town. One night a ferocious storm hits the area, damaging their house. The storm is accompanied by a strange mist the following morning. David and Billy and their neighbour Brent Norton go into town and find themselves trapped in a grocery store with several other people. There they discover that the mist contains something frightening and intent on killing humans.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(202, 'Interstellar', NULL, '2014', 'https://www.imdb.com/title/tt0816692/mediaviewer/rm4043724800/?ref_=ext_shr_lnk', 'US', 'In the near future around the American Midwest, Cooper, an ex-science engineer and pilot, is tied to his farming land with his daughter Murph and son Tom. As devastating sandstorms ravage Earth\'s crops, the people of Earth realize their life here is coming to an end as food begins to run out. Eventually stumbling upon a N.A.S.A. base 6 hours from Cooper\'s home, he is asked to go on a daring mission with a few other scientists into a wormhole because of Cooper\'s scientific intellect and ability to pilot aircraft unlike the other crew members. In order to find a new home while Earth decays, Cooper must decide to either stay, or risk never seeing his children again in order to save the human race by finding another habitable planet.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(203, 'Shutter Island', NULL, '2010', 'https://www.imdb.com/title/tt0482571/mediaviewer/rm4031813632/?ref_=tt_ov_i', 'US', 'In 1954, up-and-coming U.S. marshal Teddy Daniels is assigned to investigate the disappearance of a patient from Boston\'s Shutter Island Ashecliffe Hospital. He\'s been pushing for an assignment on the island for personal reasons, but before long he thinks he\'s been brought there as part of a twisted plot by hospital doctors whose radical treatments range from unethical to illegal to downright sinister. Teddy\'s shrewd investigating skills soon provide a promising lead, but the hospital refuses him access to records he suspects would break the case wide open. As a hurricane cuts off communication with the mainland, more dangerous criminals \"escape\" in the confusion, and the puzzling, improbable clues multiply, Teddy begins to doubt everything - his memory, his partner, even his own sanity.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(204, 'The Invisible Guest', 'Contratiempo', '2016', 'https://www.imdb.com/title/tt4857264/mediaviewer/rm2063468288/?ref_=tt_ov_i', 'Spain', 'Adrián Doria, a wealthy businessman named Man of the Year due to his high-tech company and his trade agreements with the Asian market, meets Virginia Goodman, a veteran lawyer expert in witness preparation and judicial declaration, recommended by Adrián\'s lawyer Felix Leiva in order to create a credible defense. Arrested by the police in a mountain hotel room with the corpse of his lover at his side, photographer Laura Vidal, Adrián talks Virginia about the crime and his relationship with Laura, revealing that both suffered a car crash where a man called Daniel Garrido died, and how Laura manipulated Adrián to avoid the jail by Daniel\'s death. At the same time that Félix is looking for a clue that it could change the course of the events, Virginia and Adrián keep talking about the case but her, unconvinced of the Adrián\'s testimony, forces him to clear the dark points of his history, in a puzzle where the truth and the lie are easily exchangeable.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(205, 'Inception', NULL, '2010', 'https://www.imdb.com/title/tt1375666/mediaviewer/rm3426651392/?ref_=ext_shr_lnk', 'US', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(206, 'Pacific Rim', NULL, '2013', 'https://m.media-amazon.com/images/M/MV5BMTY3MTI5NjQ4Nl5BMl5BanBnXkFtZTcwOTU1OTU0OQ@@._V1_.jpg', 'US', 'Long ago, legions of monstrous creatures called Kaiju arose from the sea, bringing with them all-consuming war. To fight the Kaiju, mankind developed giant robots called Jaegers, designed to be piloted by two humans locked together in a neural bridge. However, even the Jaegers are not enough to defeat the Kaiju, and humanity is on the verge of defeat. Mankind\'s last hope now lies with a washed-up ex-pilot, an untested trainee and an old, obsolete Jaeger.', 'https://youtu.be/5guMumPFBag?si=5lGCXjccMSJB37yy', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(207, 'Pacific Rim: Uprising', NULL, '2018', 'https://m.media-amazon.com/images/M/MV5BMjI3Nzg0MTM5NF5BMl5BanBnXkFtZTgwOTE2MTgwNTM@._V1_.jpg', 'US', 'Jake Pentecost is a once-promising Jaeger pilot whose legendary father gave his life to secure humanity\'s victory against the monstrous Kaiju. Jake has since abandoned his training only to become caught up in a criminal underworld. But when an even more unstoppable threat is unleashed to tear through cities and bring the world to its knees, Jake is given one last chance by his estranged sister, Mako Mori, to live up to his father\'s legacy.', 'https://youtu.be/8BAhwgjMvnM?si=9OdTE_h4sGgCLVce', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(208, 'The Da Vinci Code', NULL, '2006', 'https://upload.wikimedia.org/wikipedia/id/9/9b/The_da_vinci_code.jpg', 'US', 'A murder in Paris\' Louvre Museum and cryptic clues in some of Leonardo da Vinci\'s most famous paintings lead to the discovery of a religious mystery. For 2,000 years a secret society closely guards information that -- should it come to light -- could rock the very foundations of Christianity.', 'https://youtu.be/5sU9MT8829k?si=hlYLoPjj0NzxCTS3', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(209, 'Inferno', NULL, '2016', 'https://m.media-amazon.com/images/M/MV5BMTUzNTE2NTkzMV5BMl5BanBnXkFtZTgwMDAzOTUyMDI@._V1_.jpg', 'US', 'Famous symbologist Robert Langdon (Tom Hanks) follows a trail of clues tied to Dante, the great medieval poet. When Langdon wakes up in an Italian hospital with amnesia, he teams up with Sienna Brooks (Felicity Jones), a doctor he hopes will help him recover his memories. Together, they race across Europe and against the clock to stop a madman (Ben Foster) from unleashing a virus that could wipe out half of the world\'s population.', 'https://youtu.be/RH2BD49sEZI?si=M0D6nbooVBubx2qI', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(210, '6 Underground', NULL, '2019', 'https://m.media-amazon.com/images/M/MV5BNzE2ZjQxNjEtNmI2ZS00ZmU0LTg4M2YtYzVhYmRiYWU0YzI1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 'US', 'Six individuals from all around the globe, each the very best at what they do, have been chosen not only for their skill, but for a unique desire to delete their pasts to change the future.', 'https://youtu.be/YLE85olJjp8?si=RhBp3nlYhwKVT7p5', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(211, 'American Horror Story', NULL, '2011', 'https://m.media-amazon.com/images/M/MV5BNDM4OThkN2MtZWU0MC00NzE5LWEwZWUtZGNjNWE5MWFiMDhlXkEyXkFqcGdeQXVyMTU1ODIwMTM1._V1_FMjpg_UY2048_.jpg', 'US', 'Physical and psychological horrors affect a decomposing family, workers and residents of an insane asylum, a coven of witches, a cast of circus freaks, the employees and guests at a struggling hotel, a family who moved into a mysterious farmhouse, the members of a small suburb in Michigan, the surviving members of the Apocalypse and the counselors of a creepy summer camp in this haunting anthology series, focusing on the themes of infidelity, sanity, oppression, discrimination, addiction and exploitation.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(212, 'The Amityville Horror', NULL, '2005', 'https://m.media-amazon.com/images/M/MV5BMTZlZDQxZDktYmQ3Ny00Nzk5LWI0N2YtYmFjMjBhYWViYzJmXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_FMjpg_UY2048_.jpg', 'US', 'In December 1975, George and Kathy Lutz along with their three children move into an elegant Long Island house. What they don\'t know is that the house was the site of a horrific mass murder a year before. They decide to keep the house and attempt to keep the horror in the past, but are now haunted by a murderous presence. This is until, George starts to behave weirdly and their daughter, Chelsea starts to see people. What follows is 28 days of sheer, unbridled terror for the family with demonic visions of the dead. Based on the true story of George and Kathy Lutz, The Amityville Horror remains one of the most horrifying haunted house stories ever told - because it actually happened.—Film_Fan', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(213, 'A Classic Horror Story', NULL, '2021', 'https://m.media-amazon.com/images/M/MV5BNGZmODA3ZjAtMDU4Zi00MWMxLWEzNTAtMGZmMmNjZGFlOTRhXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_FMjpg_UX729_.jpg', 'US', 'Five carpoolers travel in a motorhome to reach a common destination. Night falls, and to avoid a dead animal carcass, they crash into a tree. When they come to their senses, they find themselves in the middle of nowhere. The road they were traveling on has disappeared and there is only a dense, impenetrable forest and a wooden house in the middle of a clearing, which they discover is the home of a spine-chilling cult.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(214, 'Insidious', NULL, '2010', 'https://m.media-amazon.com/images/M/MV5BMTRmYjE3MjItNWJiNC00NWNkLTgyZjYtYmYwOGE2M2U0MTQzXkEyXkFqcGc@._V1_FMjpg_UX470_.jpg', 'US', 'A gripping story of a family in search of help for their son, Dalton, who fell into a coma after a mysterious incident in the attic. Little do they know that there is much more to this endless sleep than meets the eye as they explore the paranormal, and rediscover the past; the key to getting their son back once and for all.—David Murray Arthur', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(215, 'Insidious: Chapter 2', NULL, '2013', 'https://m.media-amazon.com/images/M/MV5BMTg0OTA5ODIxNF5BMl5BanBnXkFtZTcwNTUzNDg4OQ@@._V1_QL75_UX380_CR0,1,380,562_.jpg', 'US', 'Renai is interrogated by a police detective about the supernatural events in the house. While the police investigate the house, the Lambert family temporarily moves to the old house of Lorraine Lambert. Renai is haunted by a woman in white and Josh has a strange behavior at home. Meanwhile Lorraine seeks out Elise\'s partners Specs and Tucker expecting to find answers.—Claudio Carvalho, Rio de Janeiro, Brazil', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(216, 'Before Midnight', NULL, '2013', 'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/qbGKJmNUroDz75kh5Oafoall89e.jpg', 'US', 'It has been nine years since we last met Jesse and Celine, the French-American couple who once met on a train in Vienna. They now live in Paris with twin daughters but have spent a summer in Greece at the invitation of an author colleague of Jesse\'s. When the vacation is over and Jesse must send his teenage son off to the States, he begins to Question his life decisions, and his relationship with Celine is at risk.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(217, 'Before Sunrise', NULL, '1995', 'https://image.tmdb.org/t/p/w1280/kf1Jb1c2JAOqjuzA3H4oDM263uB.jpg', 'US', 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(218, 'Before Sunset', NULL, '2004', 'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/gycdE1ARByGQcK4fYR2mgpU6OO.jpg', 'US', 'Nine years later, Jesse travels across Europe giving readings from a book he wrote about the night he spent in Vienna with Celine. After his reading in Paris, Celine finds him, and they spend part of the day together before Jesse has to again leave for a flight. They are both in relationships now, and Jesse has a son, but as their strong feelings for each other start to return, both confess a longing for more.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(219, 'Her', NULL, '2003', 'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/lEIaL12hSkqqe83kgADkbUqEnvk.jpg', 'US', 'Di Los Angeles di masa depan yang tidak jauh, seorang penulis kesepian mengembangkan hubungan dengan \"Samantha\", entitas artifisial yang berwawasan luas dan sensitif.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(220, '500 days of summer', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(221, '10 Things I Hate About You', NULL, '1999', 'https://www.imdb.com/title/tt0147800/mediaviewer/rm953815296/?ref_=ext_shr_lnk', 'US', 'A high-school boy, Cameron, cannot date Bianca until her anti-social older sister, Kat, has a boyfriend. So, Cameron pays a mysterious boy, Patrick, to charm Kat.', 'https://youtu.be/uE7qjQlfoRs?si=A4BpkWgOnDRd4lY9', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(222, 'Jalan yang Jauh, Jangan Lupa Pulang', NULL, '2023', 'https://www.imdb.com/title/tt23472308/mediaviewer/rm1705851905/?ref_=ext_shr_lnk', 'Indonesia', 'Studying abroad in London, Aurora struggles with her relationships while away from her family in this sequel to \"One Day We\'ll Talk About Today.\"', 'https://youtu.be/RX_F6AoQphc?si=ZIif06-9t4DiXvlv', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(223, 'The Medium', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(224, 'Ngeri-Ngeri Sedap', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08');
INSERT INTO `tb_film` (`film_id`, `title`, `alternative_title`, `year`, `poster_url`, `country`, `synopsis`, `trailer_url`, `created_at`, `updated_at`) VALUES
(225, '1922', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(226, 'Breaking Bad', NULL, '2008', 'https://www.imdb.com/title/tt0903747/mediaviewer/rm3116305665/?ref_=tt_ov_i', 'US', 'A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student to secure his family\'s future.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(227, 'Better Call Saul', NULL, '2015', 'https://www.imdb.com/title/tt3032476/mediaviewer/rm1307512577/?ref_=tt_ov_i', 'US', 'The trials and tribulations of criminal lawyer Jimmy McGill in the years leading up to and into his fateful run-in with Walter White and Jesse Pinkman.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(228, 'Narcos', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(229, 'Oppenheimer ', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(230, 'Shaolin Soccer', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(231, 'You\'re Beautiful ', NULL, '2009', 'https://s-media-cache-ak0.pinimg.com/564x/7a/87/30/7a873069c66b38b6cb6f35e60eb04074.jpg', 'South Korea', 'Go Mi-Nyu, a girl about to become a nun, is asked to cover for her indisposed twin brother, Mi-Nam, who\'s on the verge of becoming a k-idol. To do so, she disguises herself as a boy and joins A.N.Jell, a really popular boy band.', 'https://www.youtube.com/watch?v=Va3jnNTzmZY&pp=ygUgeW91cmUgYmVhdXRpZnVsIG9mZmljaWFsIHRyYWlsZXI%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(232, 'Castle', NULL, '2009', 'https://static.cinemagia.ro/img/db/movie/03/49/80/castle-160337l.jpg', 'US', 'When a psychopath commits murders based on novelist Castle\'s books, Detective Beckett seeks his help to solve the case. He decides to work with her and uses his experiences as research for his novels.', 'https://www.youtube.com/watch?v=aaorTM2wB9o&pp=ygUXY2FzdGxlIG9mZmljaWFsIHRyYWlsZXI%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(233, 'Molly\'s Game', NULL, '2017', 'https://4.bp.blogspot.com/-jbVXtigI4no/WkCLBVdBCXI/AAAAAAAAfvA/4orTYwz3gAwy1jastsvDestxZIyuOGiNwCLcBGAs/s1600/mollys-game-341902ID1b_MollysGame_OneSheet_RGB_ComingSoon_Trim_email%255B2%255D_rgb.jpg', 'US', 'The true story of Molly Bloom, an Olympic-class skier who ran the world\'s most exclusive high-stakes poker game and became an FBI target.', 'https://www.youtube.com/watch?v=Vu4UPet8Nyc&pp=ygUcbW9sbHlzIGdhbWUgb2ZmaWNpYWwgdHJhaWxlcg%3D%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(234, 'Kiki\'s Delivery Service', NULL, '0000', 'https://m.media-amazon.com/images/M/MV5BYTQ1ZTM1ZTgtN2Q2Ny00YjFkLTliNjEtN2I1ZmY5ZTY1OTEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg', 'Japan', 'Along with her black cat Jiji, Kiki settles in a seaside town and starts a high-flying delivery service. Here begins her magical encounter with independence and responsibility, making lifelong friends and finding her place in the world.', 'https://www.youtube.com/watch?v=4bG17OYs-GA&pp=ygUoa2lraSdzIGRlbGl2ZXJ5IHNlcnZpY2Ugb2ZmaWNpYWwgdHJhaWxlcg%3D%3D', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(235, 'Criminal Mind', NULL, '2005', 'https://picfiles.alphacoders.com/125/thumb-1920-125663.jpg', 'US', 'A group of criminal profilers who work for the FBI as members of its Behavioral Analysis Unit (BAU) using behavioral analysis and profiling to help investigate crimes and find the suspect known as the unsub.', 'https://www.youtube.com/watch?v=d73rBmyRNH4&pp=ygUeY3JpbWluYWwgbWluZCBvZmZpY2lhbCB0cmFpbGVy', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(236, 'Detective Conan: The Last Wizard of the Century', 'Meitantei Konan: Seikimatsu no Majutsushi', '1999', 'https://www.detectiveconanworld.com/wiki/images/thumb/6/6f/Movie3poster.jpg/275px-Movie3poster.jpg', 'Japan', 'Conan takes on the notorious thief Kaitou Kid in a battle of wits involving a precious Russian Easter egg.', 'https://youtu.be/YW_t7Y93Rnc?si=o0cLyqfNEmw20s9w', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(237, 'Detective Conan: Captured in Her Eyes', 'Meitantei Konan: Hitomi no Naka no Ansatsusha', '2000', 'https://www.detectiveconanworld.com/wiki/images/thumb/5/59/Movie4poster.jpg/275px-Movie4poster.jpg', 'Japan', 'After witnessing a murder, Ran loses her memory and Conan must protect her from being targeted by the killer.', 'https://youtu.be/kZGz0zrzlQw?si=HzeIPA9FWfM5TN0M', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(238, 'Home Alone', NULL, '1990', 'https://upload.wikimedia.org/wikipedia/en/7/76/Home_alone_poster.jpg', 'US', 'An 8-year-old boy is accidentally left home alone by his family during Christmas vacation and must defend his home against two inept burglars.', 'https://youtu.be/NOIgZYlYvyk?si=WRFYgNPzHPNAeNy0', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(239, 'Home Alone 2: Lost in New York', NULL, '1992', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Home_Alone_2.jpg/220px-Home_Alone_2.jpg', 'US', 'Kevin accidentally boards a flight to New York City and gets separated from his family who are on their way to Miami. He then bumps into two of his old enemies, who plan to rob a toy store.', 'https://youtu.be/5h9VDUNtoto?si=B0bqZ_SQxU9Exswt', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(240, 'Home Alone 3', NULL, '1997', 'https://upload.wikimedia.org/wikipedia/en/c/cc/Home_Alone_3_film.jpg', 'US', 'Alex Pruitt, an 8-year-old boy living in Chicago, must fend off international spies who seek a top-secret computer chip in his toy car.', 'https://youtu.be/PP--dDh4axI?si=OV6lgDXfIUOAD8Qk', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(241, 'Despicable Me', NULL, '2010', 'https://xl.movieposterdb.com/10_06/2010/1323594/xl_1323594_2b69270c.jpg?v=2024-08-05%2013:30:11', 'US', 'In a happy suburban neighborhood surrounded by white picket fences with flowering rose bushes, sits a black house with a dead lawn. Unbeknownst to the neighbors, hidden beneath this house is a vast secret hideout. Surrounded by a small army of minions, we discover Gru (Steve Carell), planning the biggest heist in the history of the world. He is going to steal the moon. Gru delights in all things wicked. Armed with his arsenal of shrink rays, freeze rays, and battle-ready vehicles for land and air, he vanquishes all who stand in his way. Until the day he encounters the immense will of three little orphaned girls who look at him and see something that no one else has ever seen: a potential Dad. The world\'s greatest villain has just met his greatest challenge: three little girls named Margo (Miranda Cosgrove), Edith (Dana Gaier), and Agnes (Elsie Fisher).', 'https://youtu.be/zzCZ1W_CUoI?si=9zVVTZI8tBr7SxkQ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(242, 'Despicable Me 2', NULL, '2013', 'https://xl.movieposterdb.com/15_02/2013/1690953/xl_1690953_473a6949.jpg?v=2024-05-16%2019:32:27', 'US', 'While Gru, the ex-supervillain is adjusting to family life and an attempted honest living in the jam business, a secret Arctic laboratory is stolen. The Anti-Villain League decides it needs an insider\'s help and recruits Gru in the investigation. Together with the eccentric AVL agent, Lucy Wilde, Gru concludes that his prime suspect is the presumed dead supervillain, El Macho, whose his teenage son is also making the moves on his eldest daughter, Margo. Seemingly blinded by his overprotectiveness of his children and his growing mutual attraction to Lucy, Gru seems on the wrong track even as his minions are being quietly kidnapped en masse for some malevolent purpose.', 'https://youtu.be/TlbnGSMJQbQ?si=7fwRoOeiDCimK7Yq', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(243, 'Despicable Me 3', NULL, '2017', 'https://xl.movieposterdb.com/20_06/2017/3469046/xl_3469046_30126921.jpg?v=2024-08-06%2019:50:11', 'US', 'After he is fired from the Anti-Villain League for failing to take down the latest bad guy to threaten humanity, Gru (Steve Carell) finds himself in the midst of a major identity crisis. But when a mysterious stranger shows up to inform Gru that he has a long-lost twin brother - a brother who desperately wishes to follow in his twin\'s despicable footsteps - one former supervillain will rediscover just how good it feels to be bad.', 'https://youtu.be/6DBi41reeF0?si=M3-e-Dc0alqjbnZ6', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(244, 'Despicable Me 4', NULL, '2024', 'https://xl.movieposterdb.com/24_02/2024/7510222/xl_despicable-me-4-movie-poster_3c4ff16e.jpg?v=2024-08-19%2012:46:58', 'US', 'Gru, Lucy, Margo, Edith, and Agnes welcome a new member to the family, Gru Jr., who is intent on tormenting his dad. Gru faces a new nemesis in Maxime Le Mal and his girlfriend Valentina, and the family is forced to go on the run.', 'https://youtu.be/LtNYaH61dXY?si=iuxTe-GH10U-jktB', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(245, 'Minions', NULL, '2015', 'https://xl.movieposterdb.com/15_02/2015/2293640/xl_2293640_644af6d9.jpg?v=2024-08-06%2001:11:59', 'US', 'Ever since the dawn of time, the Minions have lived to serve the most despicable of masters. From the T-Rex to Napoleon, the easily distracted tribe has helped the biggest and the baddest of villains. Now, join protective leader Kevin, teenage rebel Stuart, and lovable little Bob on a global road trip. They\'ll earn a shot to work for a new boss, the world\'s first female supervillain, and try to save all of Minionkind from annihilation.', 'https://youtu.be/eisKxhjBnZ0?si=6CXztBK0pwJoTU2V', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(246, 'Pirates of the Caribbean: The Curse of the Black Pearl', NULL, '2003', 'https://a.ltrbxd.com/resized/film-poster/2/6/9/5/2695-pirates-of-the-caribbean-the-curse-of-the-black-pearl-0-1000-0-1500-crop.jpg?v=272b36c0d8', 'US', 'This swash-buckling tale follows the Quest of Captain Jack Sparrow, a savvy pirate, and Will Turner, a resourceful blacksmith, as they search for Elizabeth Swann. Elizabeth, the daughter of the governor and the love of Will\'s life, has been kidnapped by the feared Captain Barbossa. Little do they know, but the fierce and clever Barbossa has been cursed. He, along with his large crew, are under an ancient curse, doomed for eternity to neither live, nor die. That is, unless a blood sacrifice is made', 'https://youtu.be/naQr0uTrH_s?si=v4LXSox8FcDrPK6y', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(247, 'Pirates of the Caribbean: Dead Man\'s Chest', NULL, '2006', 'https://a.ltrbxd.com/resized/film-poster/5/1/9/8/9/51989-pirates-of-the-caribbean-dead-man-s-chest-0-1000-0-1500-crop.jpg?v=f9c46ae728', 'US', 'Once again we\'re plunged into the world of sword fights and \"savvy\" pirates. Captain Jack Sparrow is reminded he owes a debt to Davy Jones, who captains the flying Dutchman, a ghostly ship, with a crew from hell. Facing the \"locker\" Jack must find the heart of Davy Jones but to save himself he must get the help of quick-witted Will Turner and Elizabeth Swann. If that\'s not complicated enough, Will and Elizabeth are sentenced to hang, unless Will can get Lord Cutler Beckett Jack\'s compass. Will is forced to join another crazy adventure with Jack.', 'https://youtu.be/SNA-Ezahmok?si=Sh13Whh-ESV4Hukc', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(248, 'Pirates of the Caribbean: At World\'s End', NULL, '2007', 'https://a.ltrbxd.com/resized/film-poster/5/1/7/7/3/51773-pirates-of-the-caribbean-at-world-s-end-0-1000-0-1500-crop.jpg?v=6d572cf726', 'US', 'After losing Jack Sparrow to the locker of Davy Jones, the team of Will Turner, Elizabeth Swan and Captain Barbossa make their final alliances with the pirate world to take on the forces of Lord Cutler Beckett and his crew, including Davy Jones, who he now has control over. It\'s not going to be easy, as they must rescue Sparrow, convince all the pirate lords to join them and defeats Beckett, whilst each individual pirate has their own route which they wish to follow. ', 'https://youtu.be/HKSZtp_OGHY?si=Yf_jU7WrbUvWgf2n', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(249, 'Pirates of the Caribbean: On Stranger Tides', NULL, '2011', 'https://a.ltrbxd.com/resized/film-poster/5/0/7/3/5/50735-pirates-of-the-caribbean-on-stranger-tides-0-1000-0-1500-crop.jpg?v=84b9897282', 'US', 'Captain Jack Sparrow (Johnny Depp) crosses paths with a woman from his past, Angelica (Penélope Cruz), and he\'s not sure if it\'s love, or if she\'s a ruthless con artist who\'s using him to find the fabled Fountain of Youth. When she forces him aboard the Queen Anne\'s Revenge, the ship of the formidable pirate Blackbeard (Ian McShane), Jack finds himself on an unexpected adventure in which he doesn\'t know who to fear more: Blackbeard or the woman from his past.', 'https://youtu.be/0BXCVe8Yww4?si=J1wWAZ4nziK5UT_U', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(250, 'Pirates of the Caribbean: Dead Men Tell No Tales', NULL, '2017', 'https://a.ltrbxd.com/resized/film-poster/1/2/3/0/6/6/123066-pirates-of-the-caribbean-dead-men-tell-no-tales-0-1000-0-1500-crop.jpg?v=67c23b3308', 'US', 'Captain Jack Sparrow (Johnny Depp) finds the winds of ill-fortune blowing even more strongly when deadly ghost pirates led by his old nemesis, the terrifying Captain Salazar (Javier Bardem), escape from the Devil\'s Triangle, determined to kill every pirate at sea...including him. Captain Jack\'s only hope of survival lies in seeking out the legendary Trident of Poseidon, a powerful artifact that bestows upon its possessor total control over the seas.', 'https://youtu.be/Hgeu5rhoxxY?si=skbqzd6mgLHh4Fio', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(251, 'Tokidoki Bosotto Russia-go de Dereru Tonari no Alya-san', 'Alya Sometimes Hides Her Feelings in Russian', '2024', 'https://cdn.myanimelist.net/images/anime/1825/142258.jpg', 'Japan', 'Seirei Academy is a prestigious school attended by the very best students in Japan. Alisa Mikhailovna \"Alya\" Kujou, the half-Russian and half-Japanese treasurer of the school\'s student council, is known for her intelligence, stunning looks, and rigid personality. Contrasting her near-flawless persona, Alya\'s unmotivated classmate Masachika Kuze slacks off during lessons and seems to show no interest in her.\n\nInitially irritated, Alya gradually becomes more intrigued by Masachika and starts expressing her affection for him in Russian. However, she is oblivious to his secret—he understands the language fluently! Due to a childhood friend who was temporarily staying in Japan, Masachika has been studying Russian in hopes of reuniting with her.\n\nAs the two spend more time together, the playful and eccentric relationship between them quickly deepens. In the meantime, both must learn to navigate their new growing feelings for one another.', 'https://www.youtube.com/watch?v=pBX6TtOlYow', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(252, 'Godzilla x Kong: The New Empire', NULL, '2024', 'https://posters.movieposterdb.com/24_03/2024/14539740/s_godzilla-x-kong-the-new-empire-movie-poster_df4bd47b.jpg', 'US', 'Two ancient titans, Godzilla and Kong, clash in an epic battle as humans unravel their intertwined origins and connection to Skull Island\'s mysteries.', 'https://www.youtube.com/watch?v=lV1OOlGwExM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(253, 'Kiss x Sis', NULL, '2010', 'https://cdn.myanimelist.net/images/anime/1660/121553.jpg', 'Japan', 'After Keita Suminoe\'s mother passed away, his father promptly remarried, introducing two step-sisters into Keita\'s life: twins Ako and Riko. But since their fateful first encounter, a surge of incestuous love for their younger brother overcame the girls, beginning a lifelong feud for his heart.\n\nNow at the end of his middle school career, Keita studies fervently to be able to attend Ako and Riko\'s high school. While doing so however, he must resolve his conflicting feelings for his siblings and either reject or succumb to his sisters\' intimate advances. Fortunately—or perhaps unfortunately for Keita—his sisters aren\'t the only women lusting after him, and there\'s no telling when the allure of temptation will get the better of the boy as well.', 'https://youtu.be/hemw2TBFtP8', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(254, 'Shingeki no Kyojin Season 3 Part 2', 'Attack on Titan Season 3 Part 2', '2019', 'https://cdn.myanimelist.net/images/anime/1517/100633.jpg', 'Japan', 'Seeking to restore humanity\'s diminishing hope, the Survey Corps embark on a mission to retake Wall Maria, where the battle against the merciless \"Titans\" takes the stage once again.\n\nReturning to the tattered Shiganshina District that was once his home, Eren Yeager and the Corps find the town oddly unoccupied by Titans. Even after the outer gate is plugged, they strangely encounter no opposition. The mission progresses smoothly until Armin Arlert, highly suspicious of the enemy\'s absence, discovers distressing signs of a potential scheme against them.\n\nShingeki no Kyojin Season 3 Part 2 follows Eren as he vows to take back everything that was once his. Alongside him, the Survey Corps strive—through countless sacrifices—to carve a path towards victory and uncover the secrets locked away in the Yeager family\'s basement.', 'https://youtu.be/hKHepjfj5Tw', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(255, 'Annabelle', NULL, '2014', 'https://posters.movieposterdb.com/14_09/2014/3322940/l_3322940_9caff983.jpg', 'US', 'A couple begins to experience terrifying supernatural occurrences involving a vintage doll shortly after their home is invaded by satanic cultists.', 'https://www.youtube.com/watch?v=paFgQNPGlsg', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(256, 'InuYasha', NULL, '2000', 'https://cdn.myanimelist.net/images/anime/1589/95329.jpg', 'Japan', 'Kagome Higurashi\'s 15th birthday takes a sudden turn when she is forcefully pulled by a demon into the old well of her family\'s shrine. Brought to the past, when demons were a common sight in feudal Japan, Kagome finds herself persistently hunted by these vile creatures, all yearning for an item she unknowingly carries: the Shikon Jewel, a small sphere holding extraordinary power. Amid such a predicament, Kagome encounters a half-demon boy named Inuyasha who mistakes her for Kikyou, a shrine maiden he seems to resent. Because of her resemblance to Kikyou, Inuyasha takes a violent dislike to Kagome. However, after realizing the dire circumstances they are both in, he sets aside his hostility and lends her a hand. Unfortunately, during a fight for the Shikon Jewel, the miraculous object ends up shattered into pieces and scattered across the land. Fearing the disastrous consequences of this accident, Kagome and Inuyasha set out on a challenging Quest to recover the shards before they fall into the wrong hands.', 'https://youtu.be/n5f47FVUlrs', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(257, 'InuYasha: Kanketsu-hen', 'InuYasha: The Final Act', '2009', 'https://cdn.myanimelist.net/images/anime/7/75570.jpg', 'Japan', 'Thwarted again by Naraku, Inuyasha, Kagome Higurashi, and their friends must continue their hunt for the few remaining Shikon Jewel shards, lest they fully form into a corrupted jewel at the hands of Naraku. But Naraku has plans of his own to acquire them, and will destroy anyone and anything standing in his way—even his own underlings. The persistent, unyielding danger posed by Naraku forces Sango and Miroku to decide what is most important to them—each other or their duty in battle. Meanwhile, Inuyasha must decide whether his heart lies with Kikyou or Kagome, before fate decides for him. Amid the race to find the shards, Inuyasha and his brother Sesshoumaru must also resolve their feud and cooperate for their final confrontation with Naraku, as it is a battle they must win in order to put a stop to his evil and cruelty once and for all.', 'https://youtu.be/BcAuqVLCsZE', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(258, 'InuYasha Movie 1: Toki wo Koeru Omoi', 'InuYasha the Movie: Affections Touching Across Time', '2001', 'https://cdn.myanimelist.net/images/anime/1683/94370.jpg', 'Japan', 'During their Quest in the feudal era to recover the shards of the miraculous Shikon Jewel, Inuyasha, Kagome Higurashi, and their friends become the target of Menoumaru Hyouga—a demon awakened by one of the Shikon fragments, now in pursuit of Inuyasha\'s heirloom sword Tessaiga. Following a clash between the fathers of Inuyasha and Menoumaru, the weapon is the only means to restore Menoumaru his rightful family heritage. However, upon ambushing Inuyasha, Menoumaru discovers that Tessaiga\'s owner alone can wield it. Determined to achieve his objective regardless, he kidnaps Kagome to force Inuyasha to use his blade and release the sealed powers of the Hyouga clan. With their dependable companions\' assistance, Inuyasha and Kagome oppose Menoumaru, unaware that his sinister intentions and alarming potential will endanger not only their world but also its distant future.', 'https://youtu.be/hGhgHK4xKF4?si=ai_aipVgrpsYm_eZ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(259, 'InuYasha Movie 2: Kagami no Naka no Mugenjou', 'InuYasha the Movie 2: The Castle Beyond the Looking Glass', '2002', 'https://cdn.myanimelist.net/images/anime/1162/92219.jpg', 'Japan', 'Fortune smiles on Inuyasha and his allies when they finally defeat their nemesis Naraku, who has caused them unrelenting hardships. Overjoyed by the long-awaited victory, they all hurry to resume their former lives, unaware that danger still lurks around. Kanna and Kagura, two of Naraku\'s subordinates, make arrangements to set free a sealed demonic entity that claims to be Kaguya, the legendary Princess of the Heavens. Although preoccupied with their own endeavors, Inuyasha\'s group members reunite by a string of unusual coincidences involving Kanna and Kagura along with an inexplicable phenomenon of repeated full-moon nights. Upon realizing that Kaguya is behind the troubling events and that she holds a terrible power, they join forces once more to stop the disastrous fate she has planned for the world.', 'https://youtu.be/BZiXEbZ9OQg', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(260, 'Hanyou no Yashahime: Sengoku Otogizoushi', 'Yashahime: Princess Half-Demon', '2020', 'https://cdn.myanimelist.net/images/anime/1005/114781.jpg', 'Japan', 'Half-demon twins Towa and Setsuna were always together, living happily in Feudal Japan. But their joyous days come to an end when a forest fire separates them and Towa is thrown through a portal to modern-day Japan. There, she is found by Souta Higurashi, who raises her as his daughter after Towa finds herself unable to return to her time. Ten years later, 14-year-old Towa is a relatively well-adjusted student, despite the fact that she often gets into fights. However, unexpected trouble arrives on her doorstep in the form of three visitors from Feudal Japan; Moroha, a bounty hunter; Setsuna, a demon slayer and Towa\'s long-lost twin sister; and Mistress Three-Eyes, a demon seeking a mystical object. Working together, the girls defeat their foe, but in the process, Towa discovers to her horror that Setsuna has no memory of her at all. Hanyou no Yashahime: Sengoku Otogizoushi follows the three girls as they endeavor to remedy Setsuna\'s memory loss, as well as discover the truth about their linked destinies.', 'https://youtu.be/O9c9AWheBdQ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(261, 'Who are You: School 2015', 'School 2015: Who Are You?', '2015', 'https://www.movieposterdb.com/huayu-hakgyo-2015-i5087824', 'South Korea', 'The story revolves around a high school girl, Lee Eun-bi, who loses her memory and later discovers she has a twin sister. She takes over her sister\'s life in an elite school, unraveling secrets and mysteries as she tries to find her true identity.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(262, 'Record of Youth', 'The Moment of 18', '2020', 'https://h7.alamy.com/comp/2DA5DMM/record-of-youth-aka-chungchungirok-poster-from-left-byeon-woo-seok-park-so-dam-park-bo-gum-season-1-premiered-in-the-us-sep-7-2020-photo-netflix-courtesy-everett-collection-2DA5DMM.jpg', 'South Korea', 'The series follows the lives of three young adults as they navigate the challenges of pursuing their dreams in the competitive world of entertainment and fashion while dealing with love, friendship, and family.', 'https://youtu.be/tahWtPeNkM0', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(263, 'Start-Up', 'Sandbox', '2020', 'https://cinemags.org/?attachment_id=159160', 'South Korea', 'Start-Up is set in the fictional South Korean Silicon Valley called Sandbox and follows the story of young entrepreneurs striving to build their own companies, navigating challenges in business and relationships.', 'https://youtu.be/QLiAdBBAVxI', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(264, 'Kill It', NULL, '2019', 'https://www.movieposterdb.com/kill-it-i9772814', 'South Korea', 'The story revolves around a skilled assassin who secretly works as a veterinarian and embarks on a journey to find his true identity while being pursued by a detective who is determined to catch him.', 'https://www.youtube.com/watch?v=bHhxocusS7M', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(265, 'Reborn Rich', 'The Youngest Son of a Conglomerate', '2022', 'https://www.viu.com/ott/id/articles/wp-content/uploads/2022/10/song-joong-ki-poster-reborn-rich-sub-indo-viu-600x857.jpg', 'South Korea', 'Reborn Rich follows the story of a loyal employee who is reborn into the family that betrayed him as the youngest son. He uses his newfound position and knowledge to exact revenge and take control of the conglomerate.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(266, 'Ong-Bak 1', ' Muay Thai Warrior', '2003', 'https://image.tmdb.org/t/p/original/5iG1Ql7pQJd5gnG77BruaVYjLUq.jpg', 'Thailand', '\"Ong Bak\" follows a Muay Thai fighter named Ting who embarks on a Quest to retrieve a stolen Buddha statue’s head from his village. Ting faces numerous obstacles and dangerous enemies in Bangkok.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(267, 'Ong-Bak 2', 'The Beginning ', '2008', 'https://image.tmdb.org/t/p/original/dAOREYQcl0qWwpN2SPp4yDUk1VG.jpg', 'Thailand', 'This sequel serves as a prequel to the first film, following the story of a hero born as the son of a ruler who becomes a warrior seeking revenge. The film explores Ting’s journey to avenge his family and combat enemies who have destroyed his life.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(268, 'Ong-Bak 3', NULL, '2010', 'https://es.web.img3.acsta.net/r_1280_720/medias/nmedia/18/82/35/79/19840043.jpg', 'Thailand', 'This film continues from \"Ong Bak 2,\" with Ting now as a ruler striving to restore honor and peace to his kingdom after various conflicts. Ting must confront enemies and challenges to save his village.', NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(271, 'Miracle in Cell No.7', '7beonbang-ui Seonmul', '2013', 'https://www.imdb.com/title/tt2659414/mediaviewer/rm317480448/?ref_=tt_ov_i', 'South Korea', 'A story about the love between a mentally-ill father and his lovingly adorable daughter.', 'https://youtu.be/h9MGZFy-gog?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(272, 'Our Blues', 'Uridurui Beulluseu', '2022', 'https://www.imdb.com/title/tt19115260/mediaviewer/rm250027777/?ref_=tt_ov_i', 'South Korea', 'Romance is sweet and bitter - and life riddled with ups and downs - in multiple stories about people who live and work on bustling Jeju Island.', 'https://youtu.be/WX1A-iyTAAM?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(273, 'Dream High', 'Deurimhai', '2011', 'https://www.imdb.com/title/tt1996607/mediaviewer/rm4144287489/?ref_=tt_ov_i', 'South Korea', 'Six students at Kirin Art High School work to achieve their dreams of becoming stars.Students at an arts and entertainment school mature as they face incidents and struggles', 'https://youtu.be/Dh8t8tdwAiA?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(274, 'Pyramid Game', 'Piramideu Geim', '2024', 'https://www.imdb.com/title/tt29311421/mediaviewer/rm1041136641/?ref_=tt_ov_i', 'South Korea', 'Each person is graded through a popular vote against the backdrop of a girl\'s high school and if they receive an F grade, they become legitimate victims of school violence.', 'https://youtu.be/BcYin0vw1yc?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(275, 'All of Us Are Dead', 'Jigeum Uri Hakgyoneun', '2022', 'https://www.imdb.com/title/tt14169960/mediaviewer/rm1351868929/?ref_=tt_ov_i', 'South Korea', 'A high school becomes ground zero for a zombie virus outbreak. Trapped students must fight their way out or turn into one of the rabid infected.', 'https://youtu.be/IN5TD4VRcSM?feature=shared', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(276, 'Pee Mak Phrakanong', NULL, '2013', 'https://xl.movieposterdb.com/13_04/2013/2776344/xl_2776344_a3e9a2f0.jpg?v=2024-09-06%2003:26:37', 'Thailand', 'After serving in the war, Mak invites his four soldier friends to his home. Upon arrival they witness the village terrified of a ghost. The four friends hear rumors that the ghost is Mak\'s wife Nak. Based on Thai folklore.', 'https://www.youtube.com/watch?v=B9xbj_UK1pc', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(277, 'Top Secret: Wai roon pun lan', NULL, '2011', 'https://xl.movieposterdb.com/12_03/2011/2292955/xl_2292955_4e3dd665.jpg', 'Thailand', 'Teen gamer turned businessman launches bestselling seaweed snack brand after family bankruptcy, earning 800 million baht yearly revenue by age 26.', 'https://www.youtube.com/watch?v=3jocFB7TZaQ', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(278, 'SuckSeed: Huay Khan Thep', NULL, '2011', 'https://media-cache.cinematerial.com/p/500x/rumdotbn/suckseed-huay-khan-thep-thai-movie-poster.jpg?v=1576006547', 'Thailand', 'As a young boy, Ped was a geeky kid who held a crush on classmate Ern. When Ern moved away with her family to Bangkok, Ped was crushed. Now in high school, Ped and Ern are reunited after she backs to her hometown and attends the same school. Ped\'s best friend Koong then hatches a plan to get the attention of Ern and other girls. They will form a rock band! The boys are in for a bigger surprise when they learn Ern is a talented guitarist and joins their band. A talent show competition looms ahead for the band, while Ped and Koong find themselves vying for the attention of Ern ....', 'https://www.youtube.com/watch?v=GEgbtJV1D7w', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(279, 'Seasons change: Phror arkad plian plang boi', NULL, '2006', ' https://xl.movieposterdb.com/12_02/2006/880477/xl_880477_1c18464f.jpg', 'Thailand', 'The story takes place at the College of Music, Mahidol University over one year and covers the three seasons that Bangkok typically experiences - summer, winter and monsoon. It chronicles the life of a young high school student, Pom, and his impulsive decision to attend a music school, unknown to his parents, because of a girl he has secretly liked for three years, Dao. At the music school, he befriends Aom, who eventually becomes his best friend at the academy. As a talented rock drummer he aids a wise Japanese instructor, Jitaro in research. He also forms a rock band with two friends, Ched and Chat. However, in order to become closer to the talented violinist Dao, he joins the orchestra and is assigned by the feisty conductor, Rosie, to play timpani. Eventually, as time schedule collides, he is forced to choose between playing in a rock band or the orchestra, and is also forced to choose between his crush on Dao, or his best friend, Aom.', 'https://www.youtube.com/watch?v=ophEFZt9iiU', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(280, 'Rot fai faa... Maha na ter', NULL, '2009', 'https://xl.movieposterdb.com/11_04/2009/1621642/xl_1621642_8ef2bf4a.jpg', 'Thailand', 'An urban love story set in the center of Bangkok where 30-year-old Mei Li is struggling to find true love. When Mei Li accidentally meets a handsome BTS engineer whom she considers the right man, she plans to make her first move. Though too many obstacles keep popping up, Mei Li will never give up.', 'https://www.youtube.com/watch?v=ZSMUF8izOJM', '2024-11-10 07:03:11', '2024-11-10 07:07:08'),
(296, 'yeh jawaani hai deewani', 'ये जवानी है दीवानी', '2013', 'https://upload.wikimedia.org/wikipedia/id/1/15/Yeh_jawani_hai_deewani.jpg', 'India', 'Yeh Jawaani Hai Deewani is the story of the relationship between two characters, Bunny (Ranbir Kapoor) & Naina (Deepika Padukone), at two separate but defining times in their lives... first, when they are just out of college and standing on the crossroads of multiple decisions that will shape who and what they become... and then later on, in their late-twenties when they meet again, holding on to certain fulfilled and certain unfulfilled dreams, at a crossroads of another nature this time... how these two characters affect, change, befriend and eventually fall in love with each other is the journey the film aspires to take us on..', 'https://www.youtube.com/watch?v=nQ3FYUgSjC8', '2024-11-11 01:18:27', '2024-11-11 01:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `tb_genre`
--

CREATE TABLE `tb_genre` (
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_genre`
--

INSERT INTO `tb_genre` (`genre_name`) VALUES
(''),
('aaa'),
('Action'),
('Adaptation'),
('Adventure'),
('Animation'),
('Anime'),
('Biography'),
('Black comedy'),
('Boxing'),
('Business'),
('Classic'),
('Comedy'),
('Coming of Age'),
('Crime'),
('Cyberpunk'),
('Dark'),
('Dark Comedy'),
('Dark Fantasy'),
('Drama'),
('Ecchi'),
('Family'),
('Family Sci-Fi'),
('Fantasy'),
('Friendship'),
('Globerotting Adventure'),
('Heist'),
('History'),
('Holocaust'),
('Hope'),
('Horror'),
('Kaiju'),
('Mafia'),
('Martial Arts'),
('Monster Horror'),
('Musical'),
('Mystery'),
('Neo-noir'),
('Power'),
('Psychological'),
('Psychological Drama'),
('Psychological Horror'),
('Psychological Thriller'),
('Quest'),
('Redemption'),
('Revenge'),
('Romance'),
('Satire'),
('Sci-fi'),
('Serial Killer'),
('Slice of Life'),
('Space Sci-Fi'),
('Sport'),
('Super-natural'),
('Superhero'),
('Supernatural'),
('Supernatural Horror'),
('Survival'),
('Suspense'),
('Suspense Mystery'),
('Teen Drama'),
('Teen Fantasy'),
('Teen Romance'),
('Thriller'),
('Time Travel'),
('Tragedy'),
('Tragicomedy.'),
('War');

-- --------------------------------------------------------

--
-- Table structure for table `tb_platform`
--

CREATE TABLE `tb_platform` (
  `name_platform` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_platform`
--

INSERT INTO `tb_platform` (`name_platform`) VALUES
('Amazon Prime Video'),
('Bstation'),
('Disney +'),
('Netflix');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `role` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `email`, `password`, `profile_picture`, `role`) VALUES
(1, 'Gibran', 'fufufafa@gmail.com', '11111111', 'https://cdn.antaranews.com/cache/1200x800/2023/09/13/Gibran-ruang-publik.jpg', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(16) DEFAULT NULL,
  `profile_pic_url` text DEFAULT NULL,
  `user_status` varchar(16) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `profile_pic_url`, `user_status`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Daffa', 'daffabaisa011@gmail.com', NULL, '$2y$12$HjRtDReGfg4h3342kMXSPulLfWcNPYg6vSPKmAnpdaDoRBSdsUdEq', 'USER', 'https://cdn.idntimes.com/content-images/community/2022/03/defending-jacob-chris-evans-b619f653fb1c2b1965d5375ac1d27a66-dd4dacbb018ed3bf22780f3f907dce5c_600x400.jpg', 'unapproved', 1, NULL, '2024-10-30 08:10:28', '2024-11-11 01:09:02'),
(6, 'Yusuf', 'yusuf@gmail.com', NULL, '$2y$12$L1nTdL0zwVIWDzdgicRNVeOJjZ9fyHLqHjsZeENex7cMWMHtMCgUS', 'ADMIN', 'https://cdn-icons-png.flaticon.com/512/456/456283.png', 'approved', 1, NULL, '2024-10-30 08:20:14', '2024-10-30 08:20:14'),
(8, 'Kasmir', 'kasmir@gmail.com', NULL, '$2y$12$hSW4I7p9rRrZ28ACOQYZT.L4hIUjH3Q1FNDq9dccyrI/ZMuzBucHG', 'ADMIN', 'https://www.shutterstock.com/image-photo/positive-handsome-arabic-businessman-beard-600nw-2510267591.jpg', 'approved', 1, NULL, '2024-11-10 20:04:17', '2024-11-10 20:04:17'),
(9, 'fathir', 'fathir@gmail.com', NULL, '$2y$12$7Ip8wxAQZlqUfn3KCdBB8uqISA1gpDrq0xME8zbjInwUGUuJrqk46', 'USER', 'https://ffis3.is3.cloudhost.id/profile/photo/1157/Fathir-Muchtar.jpg', 'approved', 1, NULL, '2024-11-10 20:35:40', '2024-11-10 20:35:40'),
(10, 'Wulan', 'Wulan@gmail.com', NULL, '$2y$12$MopKwKVFgMQwmUD337DsgeDYqspL43scQmcgVaY88ZrKRQQwQNFQ6', 'USER', 'https://cdn-icons-png.flaticon.com/512/456/456283.png', 'approved', 1, NULL, '2024-11-11 01:06:15', '2024-11-11 01:06:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `film_cast`
--
ALTER TABLE `film_cast`
  ADD PRIMARY KEY (`film_id`,`cast_id`),
  ADD KEY `film_id` (`film_id`,`cast_id`),
  ADD KEY `cast_id` (`cast_id`);

--
-- Indexes for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD PRIMARY KEY (`film_id`,`genre_name`),
  ADD KEY `film_id` (`film_id`,`genre_name`),
  ADD KEY `genre_name` (`genre_name`);

--
-- Indexes for table `film_platform`
--
ALTER TABLE `film_platform`
  ADD PRIMARY KEY (`film_id`,`name_platform`),
  ADD KEY `film_id` (`film_id`,`name_platform`),
  ADD KEY `name_platform` (`name_platform`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tb_award`
--
ALTER TABLE `tb_award`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `film_id` (`film_id`,`country`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `tb_cast`
--
ALTER TABLE `tb_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`,`film_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`country_name`);

--
-- Indexes for table `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`genre_name`);

--
-- Indexes for table `tb_platform`
--
ALTER TABLE `tb_platform`
  ADD PRIMARY KEY (`name_platform`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_award`
--
ALTER TABLE `tb_award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_cast`
--
ALTER TABLE `tb_cast`
  MODIFY `cast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_cast`
--
ALTER TABLE `film_cast`
  ADD CONSTRAINT `film_cast_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `tb_film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_cast_ibfk_2` FOREIGN KEY (`cast_id`) REFERENCES `tb_cast` (`cast_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `film_genre_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `tb_film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_genre_ibfk_2` FOREIGN KEY (`genre_name`) REFERENCES `tb_genre` (`genre_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_platform`
--
ALTER TABLE `film_platform`
  ADD CONSTRAINT `film_platform_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `tb_film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_platform_ibfk_2` FOREIGN KEY (`name_platform`) REFERENCES `tb_platform` (`name_platform`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_award`
--
ALTER TABLE `tb_award`
  ADD CONSTRAINT `tb_award_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `tb_film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_award_ibfk_2` FOREIGN KEY (`country`) REFERENCES `tb_country` (`country_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_cast`
--
ALTER TABLE `tb_cast`
  ADD CONSTRAINT `tb_cast_ibfk_1` FOREIGN KEY (`country`) REFERENCES `tb_country` (`country_name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `tb_film` (`film_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_comment_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_film`
--
ALTER TABLE `tb_film`
  ADD CONSTRAINT `tb_film_ibfk_1` FOREIGN KEY (`country`) REFERENCES `tb_country` (`country_name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
