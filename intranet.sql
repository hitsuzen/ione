-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2016 at 10:46 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intranet`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

CREATE TABLE `advertisers` (
  `advertiser_id` int(11) NOT NULL,
  `advertiser_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertisers`
--

INSERT INTO `advertisers` (`advertiser_id`, `advertiser_nome`) VALUES
(1, 'American Star Veículos'),
(2, 'British Star Motocicletas'),
(3, 'Autostar Comercial e Importadora'),
(4, 'Moto Star Comercio de Motocicletas'),
(5, 'Bikestar Com Motocicletas'),
(6, 'Mondelez - Oreo FINAL'),
(7, 'Senior'),
(8, 'Renault'),
(9, 'Alelo'),
(10, 'Bayer');

-- --------------------------------------------------------

--
-- Table structure for table `briefings`
--

CREATE TABLE `briefings` (
  `briefing_id` int(11) NOT NULL,
  `briefing_descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `briefing_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `advertiser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `briefings`
--

INSERT INTO `briefings` (`briefing_id`, `briefing_descricao`, `user_id`, `briefing_data`, `advertiser_id`) VALUES
(1, 'teste', 1, '2016-08-04 19:41:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `campanhas`
--

CREATE TABLE `campanhas` (
  `campanha_id` int(11) NOT NULL,
  `campanha_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int(11) NOT NULL,
  `campanha_inicio` date NOT NULL,
  `campanha_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campanhas`
--

INSERT INTO `campanhas` (`campanha_id`, `campanha_nome`, `advertiser_id`, `campanha_inicio`, `campanha_fim`) VALUES
(1, 'Jeep - email mkt', 1, '2016-07-07', '2016-07-31'),
(2, 'Triumph - email mkt', 2, '2016-07-01', '2016-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2752e5050acac925dd36b9bb65a3ee2abf523883', '::1', 1470252960, ''),
('59731f2a5fe26f304b23fbcc2b7cd81c16667461', '::1', 1469820399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832303232313b),
('a3d5d6b7606eaaf49aeed84eafcddbfd544e15df', '::1', 1469822309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832323232333b),
('aca473165ed58697d6fea5bf2dbb7b20b5d521b5', '::1', 1469820863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832303732313b),
('cf43e579e9e2c3750099bb1b0041b899ea62a0b3', '::1', 1469821301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832313036333b),
('e0e55bc51896fecfd6f32be9bee07fb6d08d0adf', '::1', 1469821845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832313832363b),
('ea16c6f6b3dde66283d818991b8656b206f42917', '::1', 1469823127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393832333132333b);

-- --------------------------------------------------------

--
-- Table structure for table `pis`
--

CREATE TABLE `pis` (
  `pi_id` int(11) NOT NULL,
  `pi_codigo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pi_valor` decimal(11,0) NOT NULL,
  `advertiser_id` int(11) NOT NULL,
  `pi_file` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pis`
--

INSERT INTO `pis` (`pi_id`, `pi_codigo`, `pi_valor`, `advertiser_id`, `pi_file`) VALUES
(1, '283.234', '2400', 3, 'asdfg.pdf'),
(2, '283.282', '4000', 3, 'qwert.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `plataformas`
--

CREATE TABLE `plataformas` (
  `plataforma _id` int(11) NOT NULL,
  `plataforma_nome` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plataformas`
--

INSERT INTO `plataformas` (`plataforma _id`, `plataforma_nome`) VALUES
(1, 'Partner'),
(2, 'Mobile'),
(3, 'Tail Target'),
(4, 'DBM Display'),
(5, 'DBM Mobile'),
(6, 'Google Adwords'),
(7, 'Google US'),
(8, 'Google BR'),
(9, 'Facebook'),
(10, 'Lijit RTB'),
(11, 'Rubicon'),
(12, 'Casale US'),
(13, 'Criteo US'),
(14, 'OPenX'),
(15, 'Yahoo RMX'),
(16, 'AdTech'),
(17, 'APPNexus'),
(18, 'Pubmatic US'),
(19, 'Smart Adserver'),
(20, 'DFA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default.jpg',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(1, 'admin', 'rud@outlook.com', '$2y$10$KY394.g3QB.5Dtrl5rHxte41dlUQFnomLtkTiSG0onDfrKSxpsa9G', 'default.jpg', '2016-07-29 21:39:00', NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisers`
--
ALTER TABLE `advertisers`
  ADD PRIMARY KEY (`advertiser_id`);

--
-- Indexes for table `briefings`
--
ALTER TABLE `briefings`
  ADD PRIMARY KEY (`briefing_id`);

--
-- Indexes for table `campanhas`
--
ALTER TABLE `campanhas`
  ADD PRIMARY KEY (`campanha_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `pis`
--
ALTER TABLE `pis`
  ADD PRIMARY KEY (`pi_id`);

--
-- Indexes for table `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`plataforma _id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisers`
--
ALTER TABLE `advertisers`
  MODIFY `advertiser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `briefings`
--
ALTER TABLE `briefings`
  MODIFY `briefing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `campanhas`
--
ALTER TABLE `campanhas`
  MODIFY `campanha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pis`
--
ALTER TABLE `pis`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `plataformas`
--
ALTER TABLE `plataformas`
  MODIFY `plataforma _id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
