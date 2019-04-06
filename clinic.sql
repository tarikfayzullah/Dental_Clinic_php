-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 02:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dr_list` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` int(15) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `dr_list`, `date`, `time`, `user_phone`, `email`, `info`, `created_at`, `updated_at`) VALUES
(16, '1', '2', '2', 123456789, 'tarikfayzullah@gmail.com', 'fazuda', '2019-03-23 03:01:34', '2019-03-23 03:01:34'),
(17, '2', '7', '6', 1234556, 'fa@fa.bd', 'fasafa', '2019-03-23 03:02:46', '2019-03-23 03:02:46'),
(18, '3', '3', '3', 567657, 'tarikfayzullah@gmail.com', NULL, '2019-03-23 04:13:39', '2019-03-23 04:13:39'),
(19, '1', '1', '1', 222, 'tarikfayzullah@gmail.com', NULL, '2019-03-23 04:22:19', '2019-03-23 04:22:19'),
(20, '1', '1', '2', 1234556, 'fozuda@gamil.com', NULL, '2019-03-23 04:26:22', '2019-03-23 04:26:22'),
(21, '2', '4', '5', 1234556, 'fa@fa.bd', 'fAAFA', '2019-03-23 04:29:07', '2019-03-23 04:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `date_table`
--

CREATE TABLE `date_table` (
  `id_date` int(11) NOT NULL,
  `date_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_table`
--

INSERT INTO `date_table` (`id_date`, `date_name`) VALUES
(1, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id_doctor` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id_doctor`, `name`, `phone`) VALUES
(1, 'DR. SK. NAZRUL ISLAM', '+8801711528345'),
(2, 'Dr. Md. Abdullah Khan', '+880-2-8625317'),
(3, 'Prof. Dr. Md. Shamsul Alam', '+880-2-9612345-'),
(4, 'Prof. Dr. Khandaker Abdul Azim', '+8802912966256'),
(5, 'Dr. Mohammed Shafi Ullah', '9360331-2');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_13_163454_create_appointments_table', 1),
(4, '2019_03_23_111208_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id_time_slot` int(11) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id_time_slot`, `time`) VALUES
(1, '9.00AM-10.00AM'),
(2, '10.00AM-11.00AM'),
(3, '11.00AM-12.00PM'),
(4, '12.00PM-1.00PM'),
(5, '2.00PM-5.00PM (Only For Root-Canel )');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'user', 'Tarik Fayzullah', 'tarikfayzullah@gmail.com', '2019-03-24 11:11:06', '$2y$10$QXfaVWd.fRSZS0FoAaX6Hu7UIaqhwAYR1mux8.V19SRTya0bRUZUu', NULL, '2019-03-23 05:19:31', '2019-03-23 05:19:31'),
(7, 'admin', 'Mr. Admin', 'admin@gmail.com', '2019-03-24 11:10:58', '$2y$10$HxFSUi/5N51rU8Nyar4CNudo8bZry7GqvHG16kFGVYmNG6gDEz8lW', NULL, '2019-03-24 04:25:37', '2019-03-24 04:25:37'),
(8, 'user', 'Alamin', 'alamin@gmail.com', '2019-03-24 11:52:51', '$2y$10$O57Uhn/ZGsjQoWGgtghaoO3om3ouwyMlLoQM1SuyZV6QykyVOECOm', NULL, '2019-03-24 05:52:51', '2019-03-24 05:52:51'),
(9, 'user', 'Fozuda', 'fozuda@gamil.com', '2019-03-24 12:54:13', '$2y$10$HzZVYyyD8hdY6o76uf35W.vA6JLayIYw74pg.Rf4Kh.lRTv9Hsrtu', NULL, '2019-03-24 06:54:13', '2019-03-24 06:54:13'),
(10, 'user', 'fa', 'fa@gmail.com', '2019-03-24 12:57:08', '$2y$10$1DjyI8e4vmiGBKaxxvH/W.LYl5UTEYedJMwP/rf/JRb4h5BOGe.mC', NULL, '2019-03-24 06:57:08', '2019-03-24 06:57:08'),
(11, 'user', 'sadasd', 'sdsa@sdfsd.com', '2019-03-24 13:00:13', '$2y$10$5G2l9DXMgqRLmOap3XpiEeFYV.xp/a57pZxxDyF5S/gM1l8dZtSwa', NULL, '2019-03-24 07:00:13', '2019-03-24 07:00:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_table`
--
ALTER TABLE `date_table`
  ADD PRIMARY KEY (`id_date`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id_time_slot`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `date_table`
--
ALTER TABLE `date_table`
  MODIFY `id_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id_time_slot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
