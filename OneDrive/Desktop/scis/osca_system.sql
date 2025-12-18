-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 11:18 AM
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
-- Database: `osca_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_logs`
--

CREATE TABLE `access_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `access_logs`
--

INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(1, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:09'),
(2, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:23'),
(3, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:29'),
(4, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(5, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(6, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(7, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(8, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(9, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:35'),
(10, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:40'),
(11, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:09'),
(12, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:18'),
(13, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:41'),
(14, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:43'),
(15, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:22'),
(16, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:28'),
(17, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(18, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(19, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(20, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(21, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(22, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:32'),
(23, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:53'),
(24, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:54'),
(25, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:54'),
(26, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:09'),
(27, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(28, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(29, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(30, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(31, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(32, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:10'),
(33, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:19'),
(34, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(35, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(36, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(37, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(38, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(39, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:39:49'),
(40, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:01'),
(41, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:05'),
(42, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:06'),
(43, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:06'),
(44, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:07'),
(45, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:07'),
(46, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:09'),
(47, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:45'),
(48, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:46'),
(49, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:58'),
(50, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(51, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(52, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(53, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(54, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(55, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(56, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(57, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(58, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(59, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(60, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(61, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(62, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(63, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(64, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(65, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:50'),
(66, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:55'),
(67, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:55'),
(68, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:56'),
(69, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(70, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(71, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(72, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(73, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(74, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(75, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(76, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(77, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(78, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(79, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(80, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(81, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(82, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(83, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(84, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:59:59'),
(85, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:31'),
(86, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:37'),
(87, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:43'),
(88, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:56'),
(89, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:01:17'),
(90, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:07'),
(91, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:18'),
(92, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:22'),
(93, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:58'),
(94, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:02'),
(95, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:08'),
(96, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:09'),
(97, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:14'),
(98, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:29'),
(99, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:31'),
(100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:31'),
(101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:33'),
(102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:52'),
(103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:54'),
(104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:08:07'),
(105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:08:08'),
(106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:10:04'),
(107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:10:38'),
(108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:12:57'),
(109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:00'),
(110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:04'),
(111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:10'),
(112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:18'),
(113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:20'),
(114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:25'),
(115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:40'),
(116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:15'),
(117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:16'),
(118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:21'),
(119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:49'),
(120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:50'),
(121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:52'),
(122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:18'),
(123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:33'),
(124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:36'),
(125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:46'),
(126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:25:05'),
(127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:22'),
(133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:25'),
(139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:28'),
(140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:27:09'),
(141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:29:11'),
(142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:25'),
(143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:28'),
(144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:38'),
(145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:47'),
(146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:54'),
(147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:56'),
(148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:51'),
(149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:52'),
(150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:59'),
(156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:28'),
(157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:35'),
(158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:36'),
(159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:37'),
(160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:37'),
(161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:52'),
(162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:45:39'),
(163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:33'),
(164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:36'),
(165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:41'),
(166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:42'),
(167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:48:54'),
(168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:48:57'),
(169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:07'),
(170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:09'),
(171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:12'),
(172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:56:58'),
(173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:56:59'),
(174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:08:10'),
(175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:22'),
(176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:36'),
(177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:52'),
(178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:31'),
(179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:47'),
(180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:50'),
(181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:05'),
(182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:13'),
(183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:15'),
(184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:21'),
(185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:25'),
(186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:35'),
(187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:56'),
(188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:10'),
(194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:11'),
(195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:16'),
(196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:23'),
(197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:29'),
(198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:32'),
(199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:33'),
(200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:35'),
(201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:36'),
(202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:38'),
(203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:43'),
(204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:48'),
(205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:57'),
(206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:57'),
(207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:58'),
(208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:37:23'),
(209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:38:40'),
(210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:38:41'),
(211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:27'),
(212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:41'),
(213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:46'),
(214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:47'),
(215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:48'),
(216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:49'),
(217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:49'),
(218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:59'),
(219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:37'),
(220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:38'),
(221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:39'),
(222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:40'),
(223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:41'),
(224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:22'),
(225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:37'),
(226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:42'),
(227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:42'),
(228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:43'),
(229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:43'),
(230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:44'),
(231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:50'),
(232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:55'),
(233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:52:44'),
(234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:52:55'),
(235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:01'),
(236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:02'),
(237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:05'),
(238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:07'),
(239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:09'),
(240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:10'),
(241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:58:36'),
(242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:59:02'),
(243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:42'),
(244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:53'),
(245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:56'),
(246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:57'),
(247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:58');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:00'),
(249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:02'),
(250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:03'),
(251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:06'),
(252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:37'),
(253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:46'),
(254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:48'),
(255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:49'),
(256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:51'),
(257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:38:00'),
(258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:39:19'),
(259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:46:05'),
(260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:56:41'),
(261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:09:40'),
(262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:45'),
(263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:46'),
(264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:49'),
(265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:50'),
(266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:52'),
(267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:22'),
(268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:31'),
(269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:36'),
(286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:32:39'),
(287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:32:56'),
(288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:33'),
(289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:41'),
(290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:44'),
(291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:45'),
(292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:46'),
(293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:48'),
(294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:49'),
(295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:50'),
(296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:52'),
(297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:59'),
(298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:01'),
(299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:02'),
(300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:03'),
(301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:04'),
(302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:07'),
(303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:09'),
(304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:13'),
(305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:22'),
(311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:17'),
(312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:27'),
(313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:27'),
(314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:28'),
(315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:40'),
(316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:56'),
(317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:57'),
(318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:04'),
(319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:14'),
(320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:18'),
(321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:19'),
(322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:20'),
(323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:21'),
(324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:23'),
(325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:05'),
(326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:07'),
(327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:16'),
(328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:30'),
(329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:37'),
(330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:39'),
(331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:51'),
(332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:41:00'),
(333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:52:04'),
(334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:13'),
(335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:15'),
(336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:16'),
(337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-16 15:58:05'),
(338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:38:02'),
(339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:10'),
(340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:12'),
(341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:13'),
(342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:16'),
(343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:17'),
(344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:19'),
(345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:22'),
(346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:23'),
(347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:24'),
(348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:26'),
(349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:26'),
(350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:27'),
(351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:29'),
(352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:29'),
(353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:46:17'),
(354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:29'),
(355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:33'),
(356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:34'),
(357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:35'),
(358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:37'),
(359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:11'),
(360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:11'),
(361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:14'),
(362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:15'),
(363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:16'),
(364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:17'),
(365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:39'),
(366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:40'),
(367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:41'),
(368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:43'),
(369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:44'),
(370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:59'),
(371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:45:00'),
(372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:48:23'),
(373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:50:34'),
(374, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:10'),
(375, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:13'),
(376, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:15'),
(377, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:17'),
(378, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:18'),
(379, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:19'),
(380, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:21'),
(381, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:23'),
(382, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:24'),
(383, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:24'),
(384, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:25'),
(385, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(386, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(387, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(388, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(389, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(390, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(391, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:30'),
(392, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:04:30'),
(393, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:09'),
(394, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:15'),
(395, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:16'),
(396, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:18'),
(397, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:21'),
(398, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:23'),
(399, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:26'),
(400, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:28'),
(401, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:30'),
(402, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:31'),
(403, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:36'),
(404, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:38'),
(405, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:40'),
(406, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:06:10'),
(407, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:04'),
(408, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:05'),
(409, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:29'),
(410, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:31'),
(411, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:32'),
(412, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:32'),
(413, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:36'),
(414, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:39'),
(415, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:43'),
(416, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:45'),
(417, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:47'),
(418, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:49'),
(419, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:51'),
(420, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:52'),
(421, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:59'),
(422, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:00'),
(423, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:02'),
(424, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:05'),
(425, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:06'),
(426, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 04:17:51'),
(427, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:27:56'),
(428, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:06'),
(429, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:09'),
(430, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:11'),
(431, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:12'),
(432, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:15'),
(433, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:16'),
(434, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:16'),
(435, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:18'),
(436, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:00'),
(437, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:14'),
(438, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:22'),
(439, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:51:04'),
(440, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:20'),
(441, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:44'),
(442, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:49'),
(443, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:50'),
(444, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:52'),
(445, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:53'),
(446, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:55'),
(447, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:55'),
(448, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:56'),
(449, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:55:33'),
(450, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:55:38'),
(451, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:44'),
(452, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:50'),
(453, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:52'),
(454, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:56'),
(455, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:03'),
(456, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:12'),
(457, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:13'),
(458, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:14'),
(459, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:14'),
(460, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:15'),
(461, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:16'),
(462, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:16'),
(463, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:07:56'),
(464, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(465, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(466, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(467, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(468, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(469, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:30'),
(470, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:37'),
(471, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(472, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(473, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(474, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(475, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(476, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:39'),
(477, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(478, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(479, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(480, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(481, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(482, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:45'),
(483, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:47'),
(484, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:57'),
(485, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:05'),
(486, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:09'),
(487, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:11'),
(488, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:11'),
(489, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:12'),
(490, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:14'),
(491, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:14'),
(492, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:15'),
(493, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:18');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(494, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:21'),
(495, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(496, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(497, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(498, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(499, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(500, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:25'),
(501, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(502, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(503, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(504, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(505, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(506, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:31'),
(507, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(508, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(509, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(510, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(511, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(512, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:54'),
(513, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(514, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(515, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(516, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(517, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(518, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:57'),
(519, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:10:01'),
(520, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:41'),
(521, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:41'),
(522, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:42'),
(523, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:45'),
(524, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:50'),
(525, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:52'),
(526, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:54'),
(527, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:56'),
(528, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:13:34'),
(529, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:04'),
(530, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:07'),
(531, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(532, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(533, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(534, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(535, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(536, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:18'),
(537, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(538, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(539, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(540, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(541, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(542, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(543, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(544, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(545, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(546, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(547, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(548, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:39'),
(549, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:56'),
(550, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:57'),
(551, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:58'),
(552, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:25:15'),
(553, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:42'),
(554, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:53'),
(555, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:56'),
(556, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:01'),
(557, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:02'),
(558, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:03'),
(559, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:04'),
(560, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:04'),
(561, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:05'),
(562, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:19'),
(563, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:24'),
(564, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:32'),
(565, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:35'),
(566, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:40'),
(567, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:41'),
(568, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:42'),
(569, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:43'),
(570, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:43'),
(571, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:44'),
(572, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:45'),
(573, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:53'),
(574, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(575, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(576, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(577, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(578, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(579, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:57'),
(580, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(581, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(582, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(583, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(584, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(585, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:32:02'),
(586, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:33:05'),
(587, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:33:32'),
(588, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(589, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(590, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(591, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(592, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(593, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:33'),
(594, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:35'),
(595, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:35'),
(596, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(597, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(598, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(599, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(600, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(601, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(602, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(603, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:38'),
(604, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:38'),
(605, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(606, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(607, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(608, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(609, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(610, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(611, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(612, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:55'),
(613, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:06'),
(614, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:16'),
(615, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:17'),
(616, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:19'),
(617, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:20'),
(618, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:31'),
(619, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:33'),
(620, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:34'),
(621, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(622, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(623, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(624, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(625, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(626, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:56'),
(627, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(628, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(629, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(630, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(631, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(632, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:33'),
(633, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:15'),
(634, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:18'),
(635, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:19'),
(636, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:20'),
(637, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:22'),
(638, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:23'),
(639, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:25'),
(640, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:26'),
(641, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:28'),
(642, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:30'),
(643, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:33'),
(644, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:39'),
(645, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:44'),
(646, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:50'),
(647, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:51'),
(648, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:56'),
(649, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:48:00'),
(650, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:48:06'),
(651, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:19'),
(652, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:35'),
(653, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:37'),
(654, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(655, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(656, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(657, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(658, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(659, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(660, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(661, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(662, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(663, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:57'),
(664, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:59'),
(665, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(666, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(667, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(668, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(669, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:10'),
(670, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:14'),
(671, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:15'),
(672, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:16'),
(673, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:16'),
(674, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:17'),
(675, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:17'),
(676, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:18'),
(677, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:21'),
(678, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:23'),
(679, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:28'),
(680, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:38'),
(681, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:47'),
(682, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:50'),
(683, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:51'),
(684, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:52'),
(685, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:53'),
(686, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:53'),
(687, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:54'),
(688, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:56'),
(689, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:59'),
(690, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:01'),
(691, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:04'),
(692, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(693, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(694, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(695, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(696, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(697, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:07'),
(698, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:10'),
(699, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(700, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(701, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(702, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:16'),
(703, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:20:57'),
(704, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:35'),
(705, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(706, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(707, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(708, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(709, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(710, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:39'),
(711, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:42'),
(712, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:42'),
(713, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:43'),
(714, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:44'),
(715, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:45'),
(716, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:46'),
(717, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:47'),
(718, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:47'),
(719, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:21'),
(720, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:22'),
(721, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:23'),
(722, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:24'),
(723, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:24'),
(724, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:25'),
(725, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:26'),
(726, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:13:58'),
(727, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:07'),
(728, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:10'),
(729, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:11'),
(730, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:12'),
(731, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:12'),
(732, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:13'),
(733, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:14'),
(734, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:14'),
(735, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:17'),
(736, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(737, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(738, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(739, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(740, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(741, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:27'),
(742, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:30'),
(743, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:21:30'),
(744, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:27:06'),
(745, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:27:58'),
(746, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:00'),
(747, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:01'),
(748, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:01'),
(749, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:02'),
(750, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:02'),
(751, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(752, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(753, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(754, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:04'),
(755, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:05'),
(756, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:16'),
(757, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:18'),
(758, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(759, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(760, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(761, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(762, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(763, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(764, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(765, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(766, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(767, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(768, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:22'),
(769, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:23'),
(770, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:23'),
(771, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:26'),
(772, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(773, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(774, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(775, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(776, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(777, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:12'),
(778, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(779, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(780, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(781, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(782, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(783, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(784, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(785, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(786, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(787, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(788, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(789, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(790, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(791, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(792, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:51'),
(793, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:46:25'),
(794, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:47'),
(795, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:54'),
(796, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:57'),
(797, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(798, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(799, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(800, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(801, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(802, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:13'),
(803, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:16'),
(804, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:46'),
(805, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:55'),
(806, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:58'),
(807, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:59'),
(808, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:00'),
(809, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:01'),
(810, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:01'),
(811, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:02'),
(812, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:02'),
(813, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:04'),
(814, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:06'),
(815, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:08'),
(816, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:09'),
(817, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:09'),
(818, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:10'),
(819, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:12'),
(820, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:17'),
(821, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:20'),
(822, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:22'),
(823, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:29'),
(824, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:43'),
(825, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(826, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(827, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(828, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(829, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(830, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:45'),
(831, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:47'),
(832, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:33:05'),
(833, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:34:05'),
(834, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(835, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(836, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(837, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(838, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(839, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:35:00'),
(840, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:34'),
(841, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:35'),
(842, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:36'),
(843, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:37'),
(844, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:37'),
(845, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:38'),
(846, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:39'),
(847, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:43'),
(848, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:41:06'),
(849, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:45:32'),
(850, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:46'),
(851, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:57'),
(852, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(853, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(854, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(855, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(856, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(857, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(858, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:02'),
(859, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:05'),
(860, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(861, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(862, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(863, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:19'),
(864, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(865, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(866, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(867, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(868, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(869, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:43'),
(870, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(871, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(872, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(873, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(874, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(875, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:50'),
(876, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:53'),
(877, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(878, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(879, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(880, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(881, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(882, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:56'),
(883, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:03'),
(884, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:04'),
(885, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:05'),
(886, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:05'),
(887, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:06'),
(888, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:07'),
(889, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:08'),
(890, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:09'),
(891, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:11'),
(892, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:15'),
(893, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:17'),
(894, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:22'),
(895, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:28'),
(896, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:32'),
(897, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(898, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(899, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(900, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:13'),
(901, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(902, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(903, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(904, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(905, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:21'),
(906, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(907, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(908, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(909, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(910, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(911, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:26'),
(912, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(913, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(914, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(915, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:29'),
(916, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(917, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(918, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(919, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:03'),
(920, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:01:05'),
(921, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:01:07'),
(922, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:02:09'),
(923, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:31'),
(924, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:34'),
(925, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:35'),
(926, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:36'),
(927, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:37'),
(928, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:37'),
(929, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:46'),
(930, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:44'),
(931, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:50'),
(932, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:51'),
(933, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(934, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(935, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(936, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(937, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(938, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:06'),
(939, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(940, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(941, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(942, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(943, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(944, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:09'),
(945, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:20'),
(946, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:22'),
(947, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:24'),
(948, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:32'),
(949, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:44'),
(950, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:52'),
(951, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:52'),
(952, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:53'),
(953, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:21:00'),
(954, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:52'),
(955, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:55'),
(956, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:57'),
(957, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:25:16'),
(958, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:43'),
(959, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:50'),
(960, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:54'),
(961, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:40'),
(962, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:42'),
(963, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:47'),
(964, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:58'),
(965, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:34:02'),
(966, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:34:08'),
(967, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:54'),
(968, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:55'),
(969, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:56'),
(970, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:57'),
(971, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:58'),
(972, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:01'),
(973, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:02'),
(974, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:03'),
(975, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:11'),
(976, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:11'),
(977, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:26'),
(978, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:28'),
(979, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:54'),
(980, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:54'),
(981, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:56'),
(982, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:57'),
(983, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:57'),
(984, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:58'),
(985, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:02');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(986, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:03'),
(987, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:04'),
(988, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:05'),
(989, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:05'),
(990, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:06'),
(991, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:01'),
(992, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:05'),
(993, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:05'),
(994, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:26'),
(995, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:28'),
(996, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:32'),
(997, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:36'),
(998, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:37'),
(999, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:39'),
(1000, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:42'),
(1001, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:42'),
(1002, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:43'),
(1003, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:43'),
(1004, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:44'),
(1005, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:47'),
(1006, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:56'),
(1007, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:00'),
(1008, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:10'),
(1009, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:11'),
(1010, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:14'),
(1011, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:21'),
(1012, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:26'),
(1013, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:33'),
(1014, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:35'),
(1015, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:35'),
(1016, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:36'),
(1017, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:38'),
(1018, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:43'),
(1019, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:44'),
(1020, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:47'),
(1021, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1022, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1023, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1024, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:53:04'),
(1025, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:53:05'),
(1026, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:54:42'),
(1027, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `record_id`, `description`, `old_values`, `new_values`, `timestamp`) VALUES
(1, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:16'),
(2, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:17'),
(3, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:19'),
(4, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:20'),
(5, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:31'),
(6, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:33'),
(7, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:34'),
(8, 7, 'UPDATE', 'senior_citizens', 15, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:16'),
(9, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:18'),
(10, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:19'),
(11, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:20'),
(12, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:22'),
(13, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:23'),
(14, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:25'),
(15, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:26'),
(16, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:28'),
(17, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL COMMENT 'For branch and barangay admins',
  `barangay_id` int(11) DEFAULT NULL COMMENT 'For barangay admins only',
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `employee_id`, `username`, `password_hash`, `first_name`, `middle_name`, `last_name`, `extension`, `position`, `gender_id`, `mobile_number`, `email`, `role_id`, `branch_id`, `barangay_id`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'OSCA-ADMIN-001', 'mainadmin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Main', NULL, 'Administrator', NULL, 'System Administrator', 1, '09171234567', 'admin@osca.gov.ph', 1, NULL, NULL, 1, '2025-12-16 18:14:17', '2025-12-15 01:34:10', '2025-12-16 18:14:17'),
(2, 'OSCA-BRANCH-001', 'branch1admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin One', NULL, 'Field Office Manager', 1, '09171234568', 'field1@osca.gov.ph', 2, 2, NULL, 1, '2025-12-16 18:05:09', '2025-12-15 01:34:10', '2025-12-16 18:05:09'),
(3, 'OSCA-BRANCH-002', 'branch2admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin Two', NULL, 'Field Office Manager', 2, '09171234569', 'field2@osca.gov.ph', 2, 3, NULL, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(4, 'OSCA-BRGY-001', 'tetuan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tetuan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234570', 'tetuan@osca.gov.ph', 3, 2, 79, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(5, 'OSCA-BRGY-002', 'santamaria.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Santa Maria', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 2, '09171234571', 'santamaria@osca.gov.ph', 3, 2, 68, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(6, 'OSCA-BRGY-003', 'guiwan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Guiwan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234572', 'guiwan@osca.gov.ph', 3, 6, 26, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(7, 'OSCA-ADMIN-999', 'admin', '$2y$10$KQ8NHMt5LVbuyjYuW3p1zuzZOeJ7.1q3FSRnWb/Zkqr03YMR7GQxe', 'System', NULL, 'Administrator', NULL, 'Main Administrator', 1, '09999999999', 'admin@osca.local', 1, NULL, NULL, 1, '2025-12-18 08:42:26', '2025-12-16 18:26:07', '2025-12-18 08:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `target_audience` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_published` tinyint(1) DEFAULT 0,
  `published_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `type_id`, `title`, `description`, `event_date`, `event_time`, `location`, `target_audience`, `created_by`, `is_published`, `published_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Medical Mission 2025', 'Free medical checkup and medicines for senior citizens', '2025-10-25', '09:00:00', 'Barangay Hall, Tetuan', 'All Senior Citizens', 1, 1, '2025-01-10 00:00:00', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(2, 1, 'Quarterly Pension (Octogenarian)', 'Distribution of quarterly pension for seniors aged 80-89', '2025-10-25', '09:00:00', 'DSWD Office', 'Ages 80-89', 1, 1, '2025-01-11 00:00:00', '2025-12-15 01:34:59', '2025-12-15 01:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_media`
--

CREATE TABLE `announcement_media` (
  `id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `media_type` enum('image','video','document') NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_types`
--

CREATE TABLE `announcement_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_types`
--

INSERT INTO `announcement_types` (`id`, `name`) VALUES
(3, 'Alert'),
(1, 'Event'),
(2, 'News'),
(4, 'Program');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `application_number` varchar(50) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `submitted_by` int(11) DEFAULT NULL,
  `submission_date` timestamp NULL DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `verification_date` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int(11) DEFAULT NULL,
  `claim_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `application_number`, `senior_id`, `application_type_id`, `status`, `submitted_by`, `submission_date`, `verified_by`, `verification_date`, `approved_by`, `approval_date`, `printed_by`, `print_date`, `claimed_by`, `claim_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'APP-2025-001', 1, 1, 'Verified', 4, '2025-01-15 02:00:00', 1, '2025-01-15 06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(2, 'APP-2025-002', 2, 1, 'Claimed', 5, '2025-01-16 01:00:00', 1, '2025-01-16 07:00:00', NULL, NULL, NULL, NULL, 7, '2025-12-17 15:27:20', NULL, '2025-12-15 01:34:59', '2025-12-17 15:27:20'),
(3, 'APP-2025-003', 3, 1, 'Draft', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `application_documents`
--

CREATE TABLE `application_documents` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_types`
--

CREATE TABLE `application_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `required_documents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_types`
--

INSERT INTO `application_types` (`id`, `name`, `description`, `required_documents`) VALUES
(1, 'New ID', 'New senior citizen ID application', 'Birth Certificate, Barangay Certificate, Photo'),
(2, 'Renewal', 'Renewal of existing ID', 'Old ID, Photo'),
(3, 'Lost ID', 'Replacement for lost ID', 'Affidavit of Loss, Barangay Certificate, Photo'),
(4, 'Damaged ID', 'Replacement for damaged ID', 'Damaged ID, Photo'),
(5, 'Update', 'Update of information', 'Supporting documents for changes');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` int(11) NOT NULL,
  `archive_type` enum('senior_citizen','admin_user') NOT NULL,
  `reference_id` int(11) NOT NULL COMMENT 'Original ID from source table',
  `archive_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`archive_data`)),
  `archive_reason` enum('deceased','deactivated','transferred','other') NOT NULL,
  `archive_notes` text DEFAULT NULL,
  `original_created_at` timestamp NULL DEFAULT NULL,
  `original_updated_at` timestamp NULL DEFAULT NULL,
  `deceased_date` date DEFAULT NULL COMMENT 'For deceased seniors',
  `archived_by` int(11) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `archive_type`, `reference_id`, `archive_data`, `archive_reason`, `archive_notes`, `original_created_at`, `original_updated_at`, `deceased_date`, `archived_by`, `archived_at`) VALUES
(1, 'senior_citizen', 999, '{\"id\":999,\"osca_id\":\"ZC-2024-000999\",\"first_name\":\"Rosa\",\"middle_name\":\"Santos\",\"last_name\":\"Martinez\",\"birthdate\":\"1940-03-15\",\"gender_id\":2,\"barangay_id\":79,\"registration_date\":\"2024-06-10\",\"deceased_info\":\"Natural causes\"}', 'deceased', 'Passed away peacefully. Family reported death on 2024-12-20.', '2024-06-10 00:00:00', '2024-12-20 07:00:00', '2024-12-18', 1, '2024-12-20 08:00:00'),
(2, 'admin_user', 998, '{\"id\":998,\"employee_id\":\"OSCA-BRGY-099\",\"username\":\"old.admin\",\"first_name\":\"Former\",\"last_name\":\"Admin\",\"position\":\"Barangay OSCA Coordinator\",\"branch_id\":2,\"barangay_id\":79,\"role_id\":3,\"deactivation_reason\":\"Resigned\"}', 'deactivated', 'Resigned from position. Account deactivated as per protocol.', '2023-01-15 00:00:00', '2024-11-30 09:00:00', NULL, 1, '2024-11-30 09:30:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `archives_expanded`
-- (See below for the actual view)
--
CREATE TABLE `archives_expanded` (
`id` int(11)
,`archive_type` enum('senior_citizen','admin_user')
,`reference_id` int(11)
,`archive_data` longtext
,`archive_reason` enum('deceased','deactivated','transferred','other')
,`archive_notes` text
,`original_created_at` timestamp
,`original_updated_at` timestamp
,`deceased_date` date
,`archived_by` int(11)
,`archived_by_name` varchar(201)
,`archived_at` timestamp
,`osca_id` longtext
,`first_name` longtext
,`last_name` longtext
,`username` longtext
,`employee_id` longtext
);

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT 'Zamboanga City',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `code`, `name`, `district`, `city`, `created_at`, `updated_at`) VALUES
(1, 'ZC-001', 'Arena Blanco', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(2, 'ZC-002', 'Ayala', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(3, 'ZC-003', 'Baliwasan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(4, 'ZC-004', 'Baluno', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(5, 'ZC-005', 'Boalan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(6, 'ZC-006', 'Bolong', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(7, 'ZC-007', 'Buenavista', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(8, 'ZC-008', 'Bunguiao', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(9, 'ZC-009', 'Busay', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(10, 'ZC-010', 'Cabaluay', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(11, 'ZC-011', 'Cabatangan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(12, 'ZC-012', 'Cacao', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(13, 'ZC-013', 'Calabasa', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(14, 'ZC-014', 'Calarian', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(15, 'ZC-015', 'Campo Islam', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(16, 'ZC-016', 'Canelar', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(17, 'ZC-017', 'Capisan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(18, 'ZC-018', 'Cawit', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(19, 'ZC-019', 'Culianan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(20, 'ZC-020', 'Curuan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(21, 'ZC-021', 'Dita', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(22, 'ZC-022', 'Divisoria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(23, 'ZC-023', 'Dulian (Upper Bunguiao)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(24, 'ZC-024', 'Dulian (Lower Pasonanca)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(25, 'ZC-025', 'Guisao', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(26, 'ZC-026', 'Guiwan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(27, 'ZC-027', 'La Paz', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(28, 'ZC-028', 'Labuan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(29, 'ZC-029', 'Lamisahan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(30, 'ZC-030', 'Landang Gua', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(31, 'ZC-031', 'Landang Laum', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(32, 'ZC-032', 'Lanzones', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(33, 'ZC-033', 'Lapakan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(34, 'ZC-034', 'Latuan (Curuan)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(35, 'ZC-035', 'Licomo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(36, 'ZC-036', 'Limaong', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(37, 'ZC-037', 'Limpapa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(38, 'ZC-038', 'Lubigan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(39, 'ZC-039', 'Lumayang', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(40, 'ZC-040', 'Lumbangan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(41, 'ZC-041', 'Lunzuran', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(42, 'ZC-042', 'Maasin', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(43, 'ZC-043', 'Malagutay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(44, 'ZC-044', 'Mampang', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(45, 'ZC-045', 'Manalipa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(46, 'ZC-046', 'Mangusu', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(47, 'ZC-047', 'Manicahan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(48, 'ZC-048', 'Mariki', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(49, 'ZC-049', 'Mercedes', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(50, 'ZC-050', 'Muti', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(51, 'ZC-051', 'Pamucutan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(52, 'ZC-052', 'Pangapuyan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(53, 'ZC-053', 'Panubigan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(54, 'ZC-054', 'Pasilmanta (Sacol Island)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(55, 'ZC-055', 'Pasonanca', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(56, 'ZC-056', 'Patalon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(57, 'ZC-057', 'Putik', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(58, 'ZC-058', 'Quiniput', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(59, 'ZC-059', 'Recodo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(60, 'ZC-060', 'Rio Hondo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(61, 'ZC-061', 'Salaan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(62, 'ZC-062', 'San Jose Cawa-cawa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(63, 'ZC-063', 'San Jose Gusu', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(64, 'ZC-064', 'San Roque', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(65, 'ZC-065', 'Sangali', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(66, 'ZC-066', 'Santa Barbara', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(67, 'ZC-067', 'Santa Catalina', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(68, 'ZC-068', 'Santa Maria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(69, 'ZC-069', 'Santo Ni?o', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(70, 'ZC-070', 'Sibulao (Caruan)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(71, 'ZC-071', 'Sinubung', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(72, 'ZC-072', 'Sinunuc', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(73, 'ZC-073', 'Tagasilay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(74, 'ZC-074', 'Taguiti', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(75, 'ZC-075', 'Talabaan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(76, 'ZC-076', 'Talisayan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(77, 'ZC-077', 'Talon-talon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(78, 'ZC-078', 'Taluksangay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(79, 'ZC-079', 'Tetuan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(80, 'ZC-080', 'Tictapul', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(81, 'ZC-081', 'Tigbalabag', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(82, 'ZC-082', 'Tigtabon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(83, 'ZC-083', 'Tolosa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(84, 'ZC-084', 'Tugbungan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(85, 'ZC-085', 'Tulungatung', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(86, 'ZC-086', 'Tumaga', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(87, 'ZC-087', 'Tumalutab', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(88, 'ZC-088', 'Tumitus', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(89, 'ZC-089', 'Victoria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(90, 'ZC-090', 'Vitali', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(91, 'ZC-091', 'Zambowood', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(92, 'ZC-092', 'Zone I (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(93, 'ZC-093', 'Zone II (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(94, 'ZC-094', 'Zone III (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(95, 'ZC-095', 'Zone IV (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('discount','pension','medical','event','assistance','privilege') NOT NULL,
  `amount` decimal(10,2) DEFAULT 0.00 COMMENT 'Amount if applicable (pension, cash assistance)',
  `age_requirement` int(11) DEFAULT 60 COMMENT 'Minimum age to qualify',
  `max_age` int(11) DEFAULT NULL COMMENT 'Maximum age (null = no limit)',
  `frequency` enum('one-time','daily','monthly','quarterly','annual','per-use') DEFAULT 'per-use',
  `is_barangay_specific` tinyint(1) DEFAULT 0,
  `barangay_id` int(11) DEFAULT NULL COMMENT 'Specific barangay if exclusive',
  `requires_application` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `code`, `name`, `description`, `type`, `amount`, `age_requirement`, `max_age`, `frequency`, `is_barangay_specific`, `barangay_id`, `requires_application`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SC-DISCOUNT-20', '20% Discount on Basic Necessities', 'Transportation, hotels, restaurants, recreation', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(2, 'SC-MEDICINE-20', '20% Discount on Medicines', 'All prescription and OTC medicines', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(3, 'SC-TRANSPORT-20', '20% Discount on Public Transport', 'Bus, jeepney, LRT, domestic flights', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(4, 'SC-VAT-EXEMPT', 'VAT Exemption', 'VAT exemption on applicable purchases', 'privilege', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(5, 'SC-PRIORITY', 'Priority Lane Access', 'Priority in banks, government offices, etc.', 'privilege', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(6, 'SC-FREE-MEDICAL', 'Free Medical Services', 'Government hospitals and health centers', 'medical', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(7, 'PENSION-OCTOGENARIAN-500', 'Octogenarian Monthly Pension', 'Monthly pension for seniors 80-89 years old', 'pension', 500.00, 80, 89, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(8, 'PENSION-NONAGENARIAN-1000', 'Nonagenarian Monthly Pension', 'Monthly pension for seniors 90-99 years old', 'pension', 1000.00, 90, 99, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(9, 'PENSION-CENTENARIAN-ONETIME-10000', 'Centenarian Cash Gift', 'One-time cash gift upon reaching 100 years old', 'pension', 10000.00, 100, NULL, 'one-time', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(10, 'PENSION-CENTENARIAN-MONTHLY-1500', 'Centenarian Monthly Pension', 'Monthly pension for centenarians (100+)', 'pension', 1500.00, 100, NULL, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(11, 'MED-CHECKUP-FREE', 'Free Annual Health Checkup', 'Complete physical examination', 'medical', 0.00, 60, NULL, 'annual', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(12, 'MED-DENTAL-FREE', 'Free Dental Services', 'Basic dental care in government facilities', 'medical', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(13, 'MED-VACCINATION', 'Free Vaccinations', 'Flu shots and other senior vaccinations', 'medical', 0.00, 60, NULL, 'annual', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(14, 'ASSIST-BURIAL-5000', 'Burial Assistance', 'Financial assistance for burial expenses', 'assistance', 5000.00, 60, NULL, 'one-time', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(15, 'ASSIST-HOSPITALIZATION', 'Hospitalization Assistance', 'Support for hospital expenses', 'assistance', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(16, 'TETUAN-DENTAL-FREE', 'Free Dental Checkup - Tetuan Only', 'Exclusive free dental services for Tetuan residents', 'medical', 0.00, 60, NULL, 'quarterly', 1, 79, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `benefit_history`
--

CREATE TABLE `benefit_history` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `claimed_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `next_eligible_date` date DEFAULT NULL COMMENT 'When can claim again',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benefit_transactions`
--

CREATE TABLE `benefit_transactions` (
  `id` int(11) NOT NULL,
  `transaction_number` varchar(50) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL COMMENT 'Where benefit was claimed',
  `processed_by` int(11) NOT NULL COMMENT 'Staff who processed',
  `verification_document` varchar(255) DEFAULT NULL COMMENT 'Receipt/proof path',
  `notes` text DEFAULT NULL,
  `status` enum('pending','approved','completed','rejected','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `benefit_transactions`
--
DELIMITER $$
CREATE TRIGGER `after_benefit_transaction_insert` AFTER INSERT ON `benefit_transactions` FOR EACH ROW BEGIN
    DECLARE next_date DATE;
    DECLARE benefit_freq VARCHAR(20);
    
    
    SELECT frequency INTO benefit_freq 
    FROM benefits 
    WHERE id = NEW.benefit_id;
    
    
    SET next_date = CASE benefit_freq
        WHEN 'daily' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 DAY)
        WHEN 'monthly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 MONTH)
        WHEN 'quarterly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 3 MONTH)
        WHEN 'annual' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 YEAR)
        WHEN 'one-time' THEN NULL
        ELSE NEW.transaction_date
    END;
    
    
    INSERT INTO benefit_history (senior_id, benefit_id, transaction_id, claimed_date, next_eligible_date)
    VALUES (NEW.senior_id, NEW.benefit_id, NEW.id, NEW.transaction_date, next_date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `branch_head` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `name`, `address`, `contact_number`, `email`, `branch_head`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'OSCA-MAIN', 'OSCA Main Office', 'City Hall, Zamboanga City', '062-991-1234', 'osca.main@zamboanga.gov.ph', 'Main Administrator', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(2, 'OSCA-F1', 'Field Office 1 - East District', 'Tetuan, Zamboanga City', '062-991-1235', 'osca.field1@zamboanga.gov.ph', 'Branch Head 1', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(3, 'OSCA-F2', 'Field Office 2 - West District', 'Baliwasan, Zamboanga City', '062-991-1236', 'osca.field2@zamboanga.gov.ph', 'Branch Head 2', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(4, 'OSCA-F3', 'Field Office 3 - North District', 'Pasonanca, Zamboanga City', '062-991-1237', 'osca.field3@zamboanga.gov.ph', 'Branch Head 3', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(5, 'OSCA-F4', 'Field Office 4 - South District', 'Taluksangay, Zamboanga City', '062-991-1238', 'osca.field4@zamboanga.gov.ph', 'Branch Head 4', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(6, 'OSCA-F5', 'Field Office 5 - Central District', 'Guiwan, Zamboanga City', '062-991-1239', 'osca.field5@zamboanga.gov.ph', 'Branch Head 5', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(7, 'OSCA-F6', 'Field Office 6 - Coastal District', 'Recodo, Zamboanga City', '062-991-1240', 'osca.field6@zamboanga.gov.ph', 'Branch Head 6', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(8, 'OSCA-F7', 'Field Office 7 - Mountain District', 'Curuan, Zamboanga City', '062-991-1241', 'osca.field7@zamboanga.gov.ph', 'Branch Head 7', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `branch_barangays`
--

CREATE TABLE `branch_barangays` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `assigned_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch_barangays`
--

INSERT INTO `branch_barangays` (`id`, `branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(1, 2, 1, '2025-01-01', 1),
(2, 2, 2, '2025-01-01', 1),
(3, 2, 3, '2025-01-01', 1),
(4, 2, 4, '2025-01-01', 1),
(5, 2, 5, '2025-01-01', 1),
(6, 2, 6, '2025-01-01', 1),
(7, 2, 7, '2025-01-01', 1),
(8, 2, 8, '2025-01-01', 1),
(9, 2, 9, '2025-01-01', 1),
(10, 2, 10, '2025-01-01', 1),
(11, 2, 11, '2025-01-01', 1),
(12, 2, 12, '2025-01-01', 1),
(13, 2, 13, '2025-01-01', 1),
(14, 2, 14, '2025-01-01', 1),
(16, 3, 15, '2025-01-01', 1),
(17, 3, 16, '2025-01-01', 1),
(18, 3, 17, '2025-01-01', 1),
(19, 3, 18, '2025-01-01', 1),
(20, 3, 19, '2025-01-01', 1),
(21, 3, 20, '2025-01-01', 1),
(22, 3, 21, '2025-01-01', 1),
(23, 3, 22, '2025-01-01', 1),
(24, 3, 23, '2025-01-01', 1),
(25, 3, 24, '2025-01-01', 1),
(26, 3, 25, '2025-01-01', 1),
(27, 3, 26, '2025-01-01', 1),
(28, 3, 27, '2025-01-01', 1),
(29, 3, 28, '2025-01-01', 1),
(31, 4, 29, '2025-01-01', 1),
(32, 4, 30, '2025-01-01', 1),
(33, 4, 31, '2025-01-01', 1),
(34, 4, 32, '2025-01-01', 1),
(35, 4, 33, '2025-01-01', 1),
(36, 4, 34, '2025-01-01', 1),
(37, 4, 35, '2025-01-01', 1),
(38, 4, 36, '2025-01-01', 1),
(39, 4, 37, '2025-01-01', 1),
(40, 4, 38, '2025-01-01', 1),
(41, 4, 39, '2025-01-01', 1),
(42, 4, 40, '2025-01-01', 1),
(43, 4, 41, '2025-01-01', 1),
(44, 4, 42, '2025-01-01', 1),
(46, 5, 43, '2025-01-01', 1),
(47, 5, 44, '2025-01-01', 1),
(48, 5, 45, '2025-01-01', 1),
(49, 5, 46, '2025-01-01', 1),
(50, 5, 47, '2025-01-01', 1),
(51, 5, 48, '2025-01-01', 1),
(52, 5, 49, '2025-01-01', 1),
(53, 5, 50, '2025-01-01', 1),
(54, 5, 51, '2025-01-01', 1),
(55, 5, 52, '2025-01-01', 1),
(56, 5, 53, '2025-01-01', 1),
(57, 5, 54, '2025-01-01', 1),
(58, 5, 55, '2025-01-01', 1),
(59, 5, 56, '2025-01-01', 1),
(61, 6, 57, '2025-01-01', 1),
(62, 6, 58, '2025-01-01', 1),
(63, 6, 59, '2025-01-01', 1),
(64, 6, 60, '2025-01-01', 1),
(65, 6, 61, '2025-01-01', 1),
(66, 6, 62, '2025-01-01', 1),
(67, 6, 63, '2025-01-01', 1),
(68, 6, 64, '2025-01-01', 1),
(69, 6, 65, '2025-01-01', 1),
(70, 6, 66, '2025-01-01', 1),
(71, 6, 67, '2025-01-01', 1),
(72, 6, 68, '2025-01-01', 1),
(73, 6, 69, '2025-01-01', 1),
(74, 6, 70, '2025-01-01', 1),
(76, 7, 71, '2025-01-01', 1),
(77, 7, 72, '2025-01-01', 1),
(78, 7, 73, '2025-01-01', 1),
(79, 7, 74, '2025-01-01', 1),
(80, 7, 75, '2025-01-01', 1),
(81, 7, 76, '2025-01-01', 1),
(82, 7, 77, '2025-01-01', 1),
(83, 7, 78, '2025-01-01', 1),
(84, 7, 79, '2025-01-01', 1),
(85, 7, 80, '2025-01-01', 1),
(86, 7, 81, '2025-01-01', 1),
(87, 7, 82, '2025-01-01', 1),
(88, 7, 83, '2025-01-01', 1),
(89, 7, 84, '2025-01-01', 1),
(91, 8, 85, '2025-01-01', 1),
(92, 8, 86, '2025-01-01', 1),
(93, 8, 87, '2025-01-01', 1),
(94, 8, 88, '2025-01-01', 1),
(95, 8, 89, '2025-01-01', 1),
(96, 8, 90, '2025-01-01', 1),
(97, 8, 91, '2025-01-01', 1),
(98, 8, 92, '2025-01-01', 1),
(99, 8, 93, '2025-01-01', 1),
(100, 8, 94, '2025-01-01', 1),
(101, 8, 95, '2025-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `complaint_number` varchar(50) NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `violator_name` varchar(255) NOT NULL,
  `violator_contact` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `incident_date` date DEFAULT NULL,
  `incident_location` text DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `amount_billable` decimal(10,2) DEFAULT NULL,
  `filed_by` int(11) NOT NULL,
  `filed_date` date NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `resolved_date` date DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_number`, `complainant_id`, `violator_name`, `violator_contact`, `category_id`, `description`, `incident_date`, `incident_location`, `status_id`, `amount_billable`, `filed_by`, `filed_date`, `assigned_to`, `resolved_date`, `resolution_notes`, `created_at`, `updated_at`) VALUES
(1, 'CMPL-2025-001', 1, 'ABC Drugstore', '09171234444, abc.drugstore@email.com', 1, 'The establishment refused to honor the 20% senior citizen discount when purchasing medicines. Staff claimed they do not offer discounts for over-the-counter medicines.', '2025-01-10', 'ABC Drugstore, Governor Alvarez Avenue, Tetuan, Zamboanga City', 2, 250.00, 4, '2025-01-11', 1, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(2, 'CMPL-2025-002', 2, 'XYZ Supermarket', '062-991-5555', 2, 'Senior citizen was not allowed to use the priority lane despite showing valid ID. Security guard directed senior to regular lane claiming priority lane is for pregnant women only.', '2025-01-12', 'XYZ Supermarket, Pilar Street, Santa Maria, Zamboanga City', 4, NULL, 5, '2025-01-13', 1, '2025-01-20', 'Management issued written apology and conducted retraining for all staff. Establishment now has proper signage for senior priority lanes.', '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(3, 'CMPL-2025-003', 3, 'DEF Restaurant', '09187654321', 1, 'Restaurant only applied 5% discount instead of the mandated 20% senior citizen discount on the total bill. Manager insisted their policy is 5% for dine-in customers.', '2025-01-14', 'DEF Restaurant, Mayor Jaldon Street, Guiwan, Zamboanga City', 3, 450.00, 6, '2025-01-15', 2, NULL, 'Legal notice sent to establishment. Awaiting response and compliance.', '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(4, 'CMPL-2025-004', 1, 'City Bus Line #5', '09198765432', 2, 'Bus conductor refused to let senior citizen board first despite showing senior ID. Conductor was rude and told senior to wait like everyone else.', '2025-01-16', 'Governor Camins Avenue Bus Stop, Zone II, Zamboanga City', 2, NULL, 4, '2025-01-17', 1, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(5, 'CMPL-2025-005', 2, 'GHI Pharmacy', '062-991-6666, ghi.pharmacy@email.com', 1, 'Pharmacy charged full price for prescription medicines and refused to give senior discount. Staff claimed they need special authorization from management which was not available.', '2025-01-18', 'GHI Pharmacy, Tomas Claudio Street, Santa Maria, Zamboanga City', 1, 1200.00, 5, '2025-01-19', NULL, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_categories`
--

CREATE TABLE `complaint_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_categories`
--

INSERT INTO `complaint_categories` (`id`, `name`, `description`) VALUES
(1, 'Discount Denial', 'Establishment refused senior discount'),
(2, 'Priority Lane Violation', 'Denied priority lane access'),
(3, 'Abuse/Neglect', 'Physical or emotional abuse'),
(4, 'Discrimination', 'Age-based discrimination'),
(5, 'Service Denial', 'Denied services for seniors'),
(6, 'Pension Issues', 'Problems with pension distribution'),
(7, 'Other', 'Other complaints');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_documents`
--

CREATE TABLE `complaint_documents` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_statuses`
--

CREATE TABLE `complaint_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_statuses`
--

INSERT INTO `complaint_statuses` (`id`, `name`, `description`, `color_code`) VALUES
(1, 'Submitted', 'Complaint filed', '#FFA500'),
(2, 'Under Investigation', 'Being investigated', '#2196F3'),
(3, 'In Progress', 'Action being taken', '#FF9800'),
(4, 'Resolved', 'Complaint resolved', '#4CAF50'),
(5, 'Closed', 'Case closed', '#9E9E9E'),
(6, 'Rejected', 'Complaint rejected', '#F44336');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `telephone_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `barangay_id` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT 'Zamboanga City',
  `postal_code` varchar(10) DEFAULT '7000',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `mobile_number`, `telephone_number`, `email`, `house_number`, `street`, `barangay_id`, `city`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, '09171111111', '062-991-1111', 'senior1@email.com', '123', 'Rizal Street', 79, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(2, '09172222222', '062-991-2222', 'senior2@email.com', '456', 'Bonifacio Avenue', 68, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(3, '09173333333', NULL, NULL, '789', 'Luna Street', 26, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(4, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:33', '2025-12-17 10:36:33'),
(5, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:35', '2025-12-17 10:36:35'),
(6, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:35', '2025-12-17 10:36:35'),
(7, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(8, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(9, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(10, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(11, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(12, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(13, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(14, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:38', '2025-12-17 10:36:38'),
(15, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:38', '2025-12-17 10:36:38'),
(16, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(17, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(18, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(19, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(20, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(21, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(22, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(23, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:55', '2025-12-17 10:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `name`, `description`, `is_required`) VALUES
(1, 'Birth Certificate', 'Proof of age and identity', 1),
(2, 'Barangay Certificate', 'Certificate of residency', 1),
(3, 'Senior Photo', 'Recent photo for ID', 1),
(4, 'Affidavit of Loss', 'For lost ID replacement', 0),
(5, 'Old/Damaged ID', 'For renewal or replacement', 0),
(6, 'COMELEC ID', 'Voter identification', 0),
(7, 'Medical Certificate', 'For PWD or special cases', 0);

-- --------------------------------------------------------

--
-- Table structure for table `educational_attainment`
--

CREATE TABLE `educational_attainment` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educational_attainment`
--

INSERT INTO `educational_attainment` (`id`, `level`, `description`) VALUES
(1, 'No Formal Education', 'No formal schooling'),
(2, 'Elementary Level', 'Some elementary education'),
(3, 'Elementary Graduate', 'Completed elementary'),
(4, 'High School Level', 'Some high school education'),
(5, 'High School Graduate', 'Completed high school'),
(6, 'Vocational/Technical', 'Vocational or technical training'),
(7, 'College Level', 'Some college education'),
(8, 'College Graduate', 'Completed college degree'),
(9, 'Post Graduate', 'Masters or Doctorate degree');

-- --------------------------------------------------------

--
-- Table structure for table `event_participants`
--

CREATE TABLE `event_participants` (
  `id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `attended` tinyint(1) DEFAULT 0,
  `attendance_date` timestamp NULL DEFAULT NULL,
  `claimed_benefit` tinyint(1) DEFAULT 0,
  `claim_date` timestamp NULL DEFAULT NULL,
  `claimed_by_admin` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `relationship` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(2, 'Female'),
(1, 'Male'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `id_printing_queue`
--

CREATE TABLE `id_printing_queue` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `queue_number` varchar(50) NOT NULL,
  `priority` enum('normal','urgent','express') DEFAULT 'normal',
  `status` enum('pending','in_progress','printed','claimed','cancelled') DEFAULT 'pending',
  `id_type` enum('new','renewal','replacement') NOT NULL,
  `requested_by` int(11) NOT NULL,
  `requested_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `assigned_to` int(11) DEFAULT NULL COMMENT 'Printer operator',
  `assigned_date` timestamp NULL DEFAULT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `printed_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int(11) DEFAULT NULL COMMENT 'Admin who released the ID',
  `claimed_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_printing_queue`
--

INSERT INTO `id_printing_queue` (`id`, `senior_id`, `application_id`, `queue_number`, `priority`, `status`, `id_type`, `requested_by`, `requested_date`, `assigned_to`, `assigned_date`, `printed_by`, `printed_date`, `claimed_by`, `claimed_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PRINT-2025-001', 'normal', 'printed', 'new', 4, '2025-01-14 19:00:00', 1, NULL, 1, '2025-01-16 00:00:00', NULL, NULL, 'ID printed and ready for release', '2025-12-16 15:28:57', '2025-01-16 00:00:00'),
(2, 2, 2, 'PRINT-2025-002', 'normal', 'claimed', 'new', 5, '2025-01-15 18:00:00', 1, NULL, 1, '2025-01-17 01:00:00', 5, '2025-01-18 02:00:00', 'ID claimed by senior citizen on 2025-01-18', '2025-12-16 15:28:57', '2025-01-18 02:00:00'),
(3, 3, 3, 'PRINT-2025-003', 'urgent', 'pending', 'new', 6, '2025-01-16 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Rush request - senior needs ID for medical appointment', '2025-12-16 15:28:57', '2025-12-16 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `id_statuses`
--

CREATE TABLE `id_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_statuses`
--

INSERT INTO `id_statuses` (`id`, `name`, `description`) VALUES
(1, 'Active', 'ID is active and valid'),
(2, 'Expired', 'ID has expired'),
(3, 'Lost', 'ID reported as lost'),
(4, 'Damaged', 'ID reported as damaged'),
(5, 'Suspended', 'ID temporarily suspended'),
(6, 'Replaced', 'ID has been replaced');

-- --------------------------------------------------------

--
-- Table structure for table `mobility_levels`
--

CREATE TABLE `mobility_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobility_levels`
--

INSERT INTO `mobility_levels` (`id`, `level`, `description`) VALUES
(1, 'Independent', 'Able to move without assistance'),
(2, 'Assisted', 'Requires assistance for mobility'),
(3, 'Wheelchair Bound', 'Uses wheelchair'),
(4, 'Bedridden', 'Confined to bed');

-- --------------------------------------------------------

--
-- Table structure for table `registration_statuses`
--

CREATE TABLE `registration_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_statuses`
--

INSERT INTO `registration_statuses` (`id`, `name`, `description`, `color_code`) VALUES
(1, 'Pending', 'Application pending review', '#FFA500'),
(2, 'Approved', 'Application approved', '#4CAF50'),
(3, 'Rejected', 'Application rejected', '#F44336'),
(4, 'For Verification', 'Needs verification', '#2196F3'),
(5, 'For Printing', 'Ready for ID printing', '#9C27B0'),
(6, 'Completed', 'Process completed', '#4CAF50');

-- --------------------------------------------------------

--
-- Table structure for table `senior_citizens`
--

CREATE TABLE `senior_citizens` (
  `id` int(11) NOT NULL,
  `osca_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `educational_attainment_id` int(11) DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT 0.00,
  `occupation` varchar(255) DEFAULT NULL,
  `other_skills` text DEFAULT NULL,
  `socioeconomic_status_id` int(11) DEFAULT NULL,
  `mobility_level_id` int(11) DEFAULT NULL,
  `barangay_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `registration_status_id` int(11) NOT NULL,
  `registered_by` int(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `thumbmark_verified` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deceased` tinyint(1) DEFAULT 0,
  `deceased_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `age` int(11) GENERATED ALWAYS AS (timestampdiff(YEAR,`birthdate`,curdate())) VIRTUAL,
  `qr_code_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior_citizens`
--

INSERT INTO `senior_citizens` (`id`, `osca_id`, `first_name`, `middle_name`, `last_name`, `extension`, `birthdate`, `gender_id`, `contact_id`, `educational_attainment_id`, `monthly_salary`, `occupation`, `other_skills`, `socioeconomic_status_id`, `mobility_level_id`, `barangay_id`, `branch_id`, `registration_date`, `registration_status_id`, `registered_by`, `photo_path`, `thumbmark_verified`, `is_active`, `is_deceased`, `deceased_date`, `created_at`, `updated_at`, `qr_code_path`) VALUES
(1, 'ZC-2025-001001', 'Juan', 'Santos', 'Dela Cruz', NULL, '1953-05-15', 1, 1, 6, 5000.00, 'Retired Teacher', NULL, 2, 1, 79, 2, '2025-01-15', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL),
(2, 'ZC-2025-001002', 'Maria', 'Lopez', 'Garcia', NULL, '1950-08-22', 2, 2, 8, 8000.00, 'Retired Nurse', NULL, 2, 1, 68, 2, '2025-01-16', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL),
(3, 'ZC-2025-001003', 'Pedro', 'Ramos', 'Mendoza', NULL, '1948-12-10', 1, 3, 4, 3000.00, 'Farmer', NULL, 1, 2, 26, 6, '2025-01-17', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `senior_citizens_with_benefits`
-- (See below for the actual view)
--
CREATE TABLE `senior_citizens_with_benefits` (
`id` int(11)
,`osca_id` varchar(50)
,`first_name` varchar(100)
,`middle_name` varchar(100)
,`last_name` varchar(100)
,`extension` varchar(10)
,`birthdate` date
,`age` bigint(21)
,`gender_id` int(11)
,`gender` varchar(50)
,`barangay_id` int(11)
,`barangay` varchar(255)
,`branch_id` int(11)
,`branch` varchar(255)
,`registration_date` date
,`registration_status_id` int(11)
,`registration_status` varchar(50)
,`is_active` tinyint(1)
,`is_deceased` tinyint(1)
,`eligible_benefits` mediumtext
,`benefit_count` bigint(21)
,`monthly_pension_amount` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `senior_eligible_benefits`
--

CREATE TABLE `senior_eligible_benefits` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `eligible_from` date NOT NULL,
  `eligible_until` date DEFAULT NULL COMMENT 'Null = no expiry',
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior_eligible_benefits`
--

INSERT INTO `senior_eligible_benefits` (`id`, `senior_id`, `benefit_id`, `eligible_from`, `eligible_until`, `assigned_date`) VALUES
(1, 1, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(2, 1, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(3, 1, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(4, 1, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(5, 1, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(6, 1, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(7, 1, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(8, 1, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(9, 1, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(10, 1, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(11, 1, 15, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(12, 1, 16, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(16, 2, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(17, 2, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(18, 2, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(19, 2, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(20, 2, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(21, 2, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(22, 2, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(23, 2, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(24, 2, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(25, 2, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(26, 2, 15, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(31, 3, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(32, 3, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(33, 3, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(34, 3, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(35, 3, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(36, 3, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(37, 3, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(38, 3, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(39, 3, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(40, 3, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(41, 3, 15, '2025-12-17', NULL, '2025-12-17 05:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `senior_ids`
--

CREATE TABLE `senior_ids` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL,
  `qr_code` text DEFAULT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `released_by` int(11) DEFAULT NULL,
  `release_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senior_target_sectors`
--

CREATE TABLE `senior_target_sectors` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `other_specification` varchar(255) DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socioeconomic_statuses`
--

CREATE TABLE `socioeconomic_statuses` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `income_range` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socioeconomic_statuses`
--

INSERT INTO `socioeconomic_statuses` (`id`, `category`, `description`, `income_range`) VALUES
(1, 'Low Income', 'Low income household', 'Below ?10,000/month'),
(2, 'Middle Income', 'Middle income household', '?10,000 - ?50,000/month'),
(3, 'High Income', 'High income household', 'Above ?50,000/month'),
(4, 'No Income', 'No regular income', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `target_sectors`
--

CREATE TABLE `target_sectors` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `target_sectors`
--

INSERT INTO `target_sectors` (`id`, `code`, `name`, `description`, `benefits`) VALUES
(1, 'PNGNA', 'PNGNA', 'Member of national senior citizens organization', NULL),
(2, 'WEPC', 'WEPC', 'Female senior citizens in empowerment programs', NULL),
(3, 'PWD', 'PWD', 'Senior with recognized disability', NULL),
(4, 'YNSP', 'YNSP', 'Special care program', NULL),
(5, 'PASP', 'PASP', 'Hope and support program members', NULL),
(6, 'KIA/WIA', 'KIA/WIA', 'Killed in Action/Wounded in Action', NULL),
(7, 'SOLO-PARENT', 'Solo Parents', 'Senior citizen raising children alone', NULL),
(8, 'IP', 'Indigenous Person', 'Member of indigenous community', NULL),
(9, 'RPUD', 'Recovering Person', 'Recovering from substance use', NULL),
(10, '4PS', '4P\'s DSWD Beneficiary', 'Pantawid Pamilyang Pilipino Program beneficiary', NULL),
(11, 'STREET', 'Street Dwellers', 'Homeless or street dwelling', NULL),
(12, 'PSYCHO', 'Psychosocial Disability', 'Mental or learning disability', NULL),
(13, 'STATELESS', 'Stateless Person', 'Stateless or asylum seeker', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `can_view` tinyint(1) DEFAULT 0,
  `can_create` tinyint(1) DEFAULT 0,
  `can_edit` tinyint(1) DEFAULT 0,
  `can_delete` tinyint(1) DEFAULT 0,
  `can_export` tinyint(1) DEFAULT 0,
  `can_print` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `role_id`, `module`, `can_view`, `can_create`, `can_edit`, `can_delete`, `can_export`, `can_print`) VALUES
(1, 1, 'dashboard', 1, 1, 1, 1, 1, 1),
(2, 1, 'registration', 1, 1, 1, 1, 1, 1),
(3, 1, 'senior_citizens', 1, 1, 1, 1, 1, 1),
(4, 1, 'applications', 1, 1, 1, 1, 1, 1),
(5, 1, 'complaints', 1, 1, 1, 1, 1, 1),
(6, 1, 'id_printing', 1, 1, 1, 1, 1, 1),
(7, 1, 'announcements', 1, 1, 1, 1, 1, 0),
(8, 1, 'accounts', 1, 1, 1, 1, 1, 0),
(9, 1, 'archives', 1, 1, 1, 1, 1, 1),
(10, 1, 'reports', 1, 1, 1, 1, 1, 1),
(11, 1, 'heatmap', 1, 1, 1, 1, 1, 1),
(12, 2, 'dashboard', 1, 0, 0, 0, 1, 0),
(13, 2, 'registration', 1, 1, 1, 0, 1, 1),
(14, 2, 'senior_citizens', 1, 1, 1, 0, 1, 1),
(15, 2, 'applications', 1, 1, 1, 0, 1, 1),
(16, 2, 'complaints', 1, 1, 1, 0, 1, 1),
(17, 2, 'id_printing', 1, 0, 0, 0, 0, 1),
(18, 2, 'announcements', 1, 1, 1, 0, 1, 0),
(19, 2, 'accounts', 1, 0, 0, 0, 0, 0),
(20, 2, 'archives', 1, 0, 0, 0, 1, 0),
(21, 2, 'reports', 1, 1, 0, 0, 1, 1),
(22, 2, 'heatmap', 1, 0, 0, 0, 0, 0),
(23, 3, 'dashboard', 1, 0, 0, 0, 1, 0),
(24, 3, 'registration', 1, 1, 1, 0, 1, 0),
(25, 3, 'senior_citizens', 1, 1, 1, 0, 1, 0),
(26, 3, 'applications', 1, 1, 0, 0, 1, 0),
(27, 3, 'complaints', 1, 1, 0, 0, 1, 0),
(28, 3, 'id_printing', 0, 0, 0, 0, 0, 0),
(29, 3, 'announcements', 1, 0, 0, 0, 0, 0),
(30, 3, 'accounts', 0, 0, 0, 0, 0, 0),
(31, 3, 'archives', 1, 0, 0, 0, 1, 0),
(32, 3, 'reports', 1, 0, 0, 0, 1, 0),
(33, 3, 'heatmap', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `level` int(11) NOT NULL COMMENT '1=Main Admin, 2=Branch Admin, 3=Barangay Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `description`, `level`) VALUES
(1, 'Main Admin', 'Full system access - can manage all branches and barangays', 1),
(2, 'Branch Admin', 'Access to assigned branch and its barangays', 2),
(3, 'Barangay Admin', 'Access to specific barangay only', 3);

-- --------------------------------------------------------

--
-- Structure for view `archives_expanded`
--
DROP TABLE IF EXISTS `archives_expanded`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `archives_expanded`  AS SELECT `a`.`id` AS `id`, `a`.`archive_type` AS `archive_type`, `a`.`reference_id` AS `reference_id`, `a`.`archive_data` AS `archive_data`, `a`.`archive_reason` AS `archive_reason`, `a`.`archive_notes` AS `archive_notes`, `a`.`original_created_at` AS `original_created_at`, `a`.`original_updated_at` AS `original_updated_at`, `a`.`deceased_date` AS `deceased_date`, `a`.`archived_by` AS `archived_by`, concat(`au`.`first_name`,' ',`au`.`last_name`) AS `archived_by_name`, `a`.`archived_at` AS `archived_at`, json_unquote(json_extract(`a`.`archive_data`,'$.osca_id')) AS `osca_id`, json_unquote(json_extract(`a`.`archive_data`,'$.first_name')) AS `first_name`, json_unquote(json_extract(`a`.`archive_data`,'$.last_name')) AS `last_name`, json_unquote(json_extract(`a`.`archive_data`,'$.username')) AS `username`, json_unquote(json_extract(`a`.`archive_data`,'$.employee_id')) AS `employee_id` FROM (`archives` `a` left join `admin_users` `au` on(`a`.`archived_by` = `au`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `senior_citizens_with_benefits`
--
DROP TABLE IF EXISTS `senior_citizens_with_benefits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `senior_citizens_with_benefits`  AS SELECT `sc`.`id` AS `id`, `sc`.`osca_id` AS `osca_id`, `sc`.`first_name` AS `first_name`, `sc`.`middle_name` AS `middle_name`, `sc`.`last_name` AS `last_name`, `sc`.`extension` AS `extension`, `sc`.`birthdate` AS `birthdate`, timestampdiff(YEAR,`sc`.`birthdate`,curdate()) AS `age`, `sc`.`gender_id` AS `gender_id`, `g`.`name` AS `gender`, `sc`.`barangay_id` AS `barangay_id`, `b`.`name` AS `barangay`, `sc`.`branch_id` AS `branch_id`, `br`.`name` AS `branch`, `sc`.`registration_date` AS `registration_date`, `sc`.`registration_status_id` AS `registration_status_id`, `rs`.`name` AS `registration_status`, `sc`.`is_active` AS `is_active`, `sc`.`is_deceased` AS `is_deceased`, group_concat(distinct `ben`.`name` order by `ben`.`name` ASC separator ', ') AS `eligible_benefits`, count(distinct `ben`.`id`) AS `benefit_count`, sum(case when `ben`.`type` = 'pension' and `ben`.`frequency` = 'monthly' then `ben`.`amount` else 0 end) AS `monthly_pension_amount` FROM (((((`senior_citizens` `sc` left join `genders` `g` on(`sc`.`gender_id` = `g`.`id`)) left join `barangays` `b` on(`sc`.`barangay_id` = `b`.`id`)) left join `branches` `br` on(`sc`.`branch_id` = `br`.`id`)) left join `registration_statuses` `rs` on(`sc`.`registration_status_id` = `rs`.`id`)) left join `benefits` `ben` on(`ben`.`age_requirement` <= timestampdiff(YEAR,`sc`.`birthdate`,curdate()) and (`ben`.`max_age` is null or `ben`.`max_age` >= timestampdiff(YEAR,`sc`.`birthdate`,curdate())) and (`ben`.`is_barangay_specific` = 0 or `ben`.`barangay_id` = `sc`.`barangay_id`) and `ben`.`is_active` = 1)) GROUP BY `sc`.`id`, `sc`.`osca_id`, `sc`.`first_name`, `sc`.`middle_name`, `sc`.`last_name`, `sc`.`extension`, `sc`.`birthdate`, `sc`.`gender_id`, `g`.`name`, `sc`.`barangay_id`, `b`.`name`, `sc`.`branch_id`, `br`.`name`, `sc`.`registration_date`, `sc`.`registration_status_id`, `rs`.`name`, `sc`.`is_active`, `sc`.`is_deceased` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_logs`
--
ALTER TABLE `access_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_timestamp` (`user_id`,`timestamp`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_module` (`user_id`,`module`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_event_date` (`event_date`),
  ADD KEY `idx_published` (`is_published`),
  ADD KEY `idx_event_date_published` (`event_date`,`is_published`);

--
-- Indexes for table `announcement_media`
--
ALTER TABLE `announcement_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcement_id` (`announcement_id`);

--
-- Indexes for table `announcement_types`
--
ALTER TABLE `announcement_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_number` (`application_number`),
  ADD KEY `application_type_id` (`application_type_id`),
  ADD KEY `submitted_by` (`submitted_by`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `claimed_by` (`claimed_by`),
  ADD KEY `idx_application_number` (`application_number`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_senior` (`senior_id`),
  ADD KEY `idx_application_senior_status` (`senior_id`,`status`),
  ADD KEY `idx_app_senior_created` (`senior_id`,`created_at`);

--
-- Indexes for table `application_documents`
--
ALTER TABLE `application_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `document_type_id` (`document_type_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `application_types`
--
ALTER TABLE `application_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_archive_type` (`archive_type`),
  ADD KEY `idx_reference_id` (`reference_id`),
  ADD KEY `idx_archived_by` (`archived_by`),
  ADD KEY `idx_archive_type_reason` (`archive_type`,`archive_reason`),
  ADD KEY `idx_deceased_date` (`deceased_date`),
  ADD KEY `idx_archived_at` (`archived_at`),
  ADD KEY `idx_archive_reason` (`archive_reason`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `barangay_id` (`barangay_id`),
  ADD KEY `idx_benefit_active` (`is_active`,`type`);

--
-- Indexes for table `benefit_history`
--
ALTER TABLE `benefit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `idx_senior_benefit_history` (`senior_id`,`benefit_id`),
  ADD KEY `idx_next_eligible` (`next_eligible_date`);

--
-- Indexes for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_number` (`transaction_number`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `processed_by` (`processed_by`),
  ADD KEY `idx_senior_benefit` (`senior_id`,`benefit_id`),
  ADD KEY `idx_transaction_date` (`transaction_date`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_transaction_senior_date` (`senior_id`,`transaction_date`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_branch_barangay` (`branch_id`,`barangay_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complaint_number` (`complaint_number`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `filed_by` (`filed_by`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `idx_complaint_number` (`complaint_number`),
  ADD KEY `idx_complainant` (`complainant_id`),
  ADD KEY `idx_status` (`status_id`),
  ADD KEY `idx_complaint_status_date` (`status_id`,`filed_date`);

--
-- Indexes for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_id` (`complaint_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `complaint_statuses`
--
ALTER TABLE `complaint_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangay_id` (`barangay_id`),
  ADD KEY `idx_contact_lookup` (`id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `educational_attainment`
--
ALTER TABLE `educational_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_announcement_senior` (`announcement_id`,`senior_id`),
  ADD KEY `senior_id` (`senior_id`),
  ADD KEY `claimed_by_admin` (`claimed_by_admin`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `idx_family_senior` (`senior_id`,`contact_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queue_number` (`queue_number`),
  ADD KEY `idx_senior_id` (`senior_id`),
  ADD KEY `idx_application_id` (`application_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_requested_date` (`requested_date`),
  ADD KEY `idx_status_priority` (`status`,`priority`),
  ADD KEY `idx_requested_date_status` (`requested_date`,`status`),
  ADD KEY `requested_by` (`requested_by`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `claimed_by` (`claimed_by`);

--
-- Indexes for table `id_statuses`
--
ALTER TABLE `id_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mobility_levels`
--
ALTER TABLE `mobility_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `osca_id` (`osca_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `educational_attainment_id` (`educational_attainment_id`),
  ADD KEY `socioeconomic_status_id` (`socioeconomic_status_id`),
  ADD KEY `mobility_level_id` (`mobility_level_id`),
  ADD KEY `registered_by` (`registered_by`),
  ADD KEY `idx_osca_id` (`osca_id`),
  ADD KEY `idx_barangay` (`barangay_id`),
  ADD KEY `idx_branch` (`branch_id`),
  ADD KEY `idx_status` (`registration_status_id`),
  ADD KEY `idx_name` (`last_name`,`first_name`),
  ADD KEY `idx_senior_barangay_status` (`barangay_id`,`registration_status_id`),
  ADD KEY `idx_senior_branch_status` (`branch_id`,`registration_status_id`),
  ADD KEY `idx_senior_lookup` (`id`,`barangay_id`,`registration_status_id`);

--
-- Indexes for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_senior_benefit` (`senior_id`,`benefit_id`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `idx_eligibility_dates` (`eligible_from`,`eligible_until`);

--
-- Indexes for table `senior_ids`
--
ALTER TABLE `senior_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `released_by` (`released_by`),
  ADD KEY `idx_id_number` (`id_number`),
  ADD KEY `idx_senior` (`senior_id`),
  ADD KEY `idx_senior_id_lookup` (`senior_id`,`issue_date`,`status_id`);

--
-- Indexes for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_senior_sector` (`senior_id`,`sector_id`),
  ADD KEY `sector_id` (`sector_id`),
  ADD KEY `idx_sector_senior_active` (`senior_id`,`is_active`,`sector_id`);

--
-- Indexes for table `socioeconomic_statuses`
--
ALTER TABLE `socioeconomic_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_sectors`
--
ALTER TABLE `target_sectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_role_module` (`role_id`,`module`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_logs`
--
ALTER TABLE `access_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1028;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcement_media`
--
ALTER TABLE `announcement_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_types`
--
ALTER TABLE `announcement_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_documents`
--
ALTER TABLE `application_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_types`
--
ALTER TABLE `application_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `benefit_history`
--
ALTER TABLE `benefit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_statuses`
--
ALTER TABLE `complaint_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `educational_attainment`
--
ALTER TABLE `educational_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event_participants`
--
ALTER TABLE `event_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `id_statuses`
--
ALTER TABLE `id_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mobility_levels`
--
ALTER TABLE `mobility_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `senior_ids`
--
ALTER TABLE `senior_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socioeconomic_statuses`
--
ALTER TABLE `socioeconomic_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `target_sectors`
--
ALTER TABLE `target_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_logs`
--
ALTER TABLE `access_logs`
  ADD CONSTRAINT `access_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_4` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `announcement_types` (`id`),
  ADD CONSTRAINT `announcements_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `announcement_media`
--
ALTER TABLE `announcement_media`
  ADD CONSTRAINT `announcement_media_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`application_type_id`) REFERENCES `application_types` (`id`),
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`submitted_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`verified_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_5` FOREIGN KEY (`approved_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_6` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_7` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `application_documents`
--
ALTER TABLE `application_documents`
  ADD CONSTRAINT `application_documents_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `application_documents_ibfk_2` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `application_documents_ibfk_3` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `archives`
--
ALTER TABLE `archives`
  ADD CONSTRAINT `archives_ibfk_1` FOREIGN KEY (`archived_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `benefits`
--
ALTER TABLE `benefits`
  ADD CONSTRAINT `benefits_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `benefit_history`
--
ALTER TABLE `benefit_history`
  ADD CONSTRAINT `benefit_history_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `benefit_history_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  ADD CONSTRAINT `benefit_history_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `benefit_transactions` (`id`);

--
-- Constraints for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  ADD CONSTRAINT `benefit_transactions_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `benefit_transactions_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  ADD CONSTRAINT `benefit_transactions_ibfk_3` FOREIGN KEY (`processed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  ADD CONSTRAINT `branch_barangays_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_barangays_ibfk_2` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`complainant_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `complaint_categories` (`id`),
  ADD CONSTRAINT `complaints_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `complaint_statuses` (`id`),
  ADD CONSTRAINT `complaints_ibfk_4` FOREIGN KEY (`filed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `complaints_ibfk_5` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  ADD CONSTRAINT `complaint_documents_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaint_documents_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD CONSTRAINT `event_participants_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_participants_ibfk_2` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `event_participants_ibfk_3` FOREIGN KEY (`claimed_by_admin`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `family_members_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  ADD CONSTRAINT `id_printing_queue_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_3` FOREIGN KEY (`requested_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_4` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_5` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_6` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  ADD CONSTRAINT `senior_citizens_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_3` FOREIGN KEY (`educational_attainment_id`) REFERENCES `educational_attainment` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_4` FOREIGN KEY (`socioeconomic_status_id`) REFERENCES `socioeconomic_statuses` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_5` FOREIGN KEY (`mobility_level_id`) REFERENCES `mobility_levels` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_6` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_7` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_8` FOREIGN KEY (`registration_status_id`) REFERENCES `registration_statuses` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_9` FOREIGN KEY (`registered_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  ADD CONSTRAINT `senior_eligible_benefits_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `senior_eligible_benefits_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`);

--
-- Constraints for table `senior_ids`
--
ALTER TABLE `senior_ids`
  ADD CONSTRAINT `senior_ids_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `id_statuses` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_4` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_5` FOREIGN KEY (`released_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  ADD CONSTRAINT `senior_target_sectors_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `senior_target_sectors_ibfk_2` FOREIGN KEY (`sector_id`) REFERENCES `target_sectors` (`id`);

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
