-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql6.freesqldatabase.com
-- Generation Time: 26 Nov 2022 pada 05.26
-- Versi Server: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6580832`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`id`, `exercise_id`, `question_id`, `user_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 'b', '2022-11-23 17:05:26', '2022-11-23 17:05:26'),
(2, 1, 2, 4, 'c', '2022-06-17 12:55:44', '2022-06-17 12:55:44'),
(3, 1, 3, 4, 'a', '2022-06-17 12:55:44', '2022-06-17 12:55:44'),
(4, 1, 4, 4, 'c', '2022-06-17 12:55:44', '2022-06-17 12:55:44'),
(5, 1, 5, 4, 'd', '2022-06-17 12:55:44', '2022-06-17 12:55:44'),
(6, 1, 6, 4, 'b', '2022-06-17 12:55:44', '2022-06-17 12:55:44'),
(7, 1, 7, 4, 'd', '2022-06-17 13:01:35', '2022-06-17 13:01:35'),
(8, 1, 8, 4, 'c', '2022-06-17 13:01:35', '2022-06-17 13:01:35'),
(9, 1, 9, 4, 'b', '2022-06-17 13:01:35', '2022-06-17 13:01:35'),
(10, 1, 10, 4, 'b', '2022-06-17 13:01:35', '2022-06-17 13:01:35'),
(13, 1, 11, 4, 'd', '2022-11-23 17:09:33', '2022-11-23 17:09:33'),
(14, 1, 1, 7, 'a', '2022-11-26 11:26:00', '2022-11-26 11:26:00'),
(15, 1, 2, 7, 'b', '2022-11-26 11:26:12', '2022-11-26 11:26:12'),
(16, 1, 3, 7, 'a', '2022-11-26 11:26:22', '2022-11-26 11:26:22'),
(17, 1, 4, 7, 'd', '2022-11-26 11:26:48', '2022-11-26 11:26:48'),
(18, 1, 5, 7, 'c', '2022-11-26 11:26:57', '2022-11-26 11:26:57'),
(20, 1, 6, 7, 'd', '2022-11-26 11:27:51', '2022-11-26 11:27:51'),
(21, 1, 7, 7, 'a', '2022-11-26 11:27:58', '2022-11-26 11:27:58'),
(22, 1, 8, 7, 'c', '2022-11-26 11:28:07', '2022-11-26 11:28:07'),
(23, 1, 9, 7, 'd', '2022-11-26 11:28:24', '2022-11-26 11:28:24'),
(24, 1, 10, 7, 'b', '2022-11-26 11:28:31', '2022-11-26 11:28:31'),
(25, 1, 11, 7, 'a', '2022-11-26 11:28:38', '2022-11-26 11:28:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `description`) VALUES
(1, 'Olimpiade Matematika SMA', 'Olimpiade Matematika tingkat SMA Jawa Timur 2099'),
(2, 'Sains', 'Exercises about sains'),
(3, 'Sains', 'Exercises about sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_answer` text NOT NULL,
  `score` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `exercise_id`, `body`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `score`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Berapa Jumlah hasil dari 1 + 1?', '0.2', '2', '2.2', '22', 'b', 10, 1, '2022-06-15 14:01:08', '2022-06-15 14:01:08'),
(2, 1, 'Berapa Jumlah hasil dari 2 + 2?', '4', '4.4', '44', '0.4', 'a', 10, 1, '2022-06-15 14:01:08', '2022-06-15 14:01:08'),
(3, 1, 'Berapa Jumlah hasil dari 1 x 1?', '0.1', '1', '1.1', '11', 'b', 10, 1, '2022-06-15 14:09:22', '2022-06-15 14:09:22'),
(4, 1, 'Berapa Jumlah hasil dari 3 x 3?', '999', '9', '9.9', '99', 'b', 10, 1, '2022-06-15 14:09:50', '2022-06-15 14:09:50'),
(5, 1, 'Berapa hasil dari 2 + 3?', '0.5', '0.55', '-5', '5', 'd', 10, 1, '2022-06-15 14:11:13', '2022-06-15 14:11:13'),
(6, 1, 'Berapa hasil dari 23 x 0.1?', '0.1', '0.23', '23', '2.3', 'd', 10, 1, '2022-06-15 14:12:07', '2022-06-15 14:12:07'),
(7, 1, 'Jika 3 - 2 = 1, berapakah hasil dari 3 + 1?', '4', '5', '6', '7', 'a', 10, 1, '2022-06-15 14:15:16', '2022-06-15 14:15:16'),
(8, 1, 'Jika 2 + 2 = 4, berapakah hasil dari 3 + 3?', '23', '33', '6', '5', 'c', 10, 1, '2022-06-15 14:15:43', '2022-06-15 14:15:43'),
(9, 1, 'Jika 10 + 1 = 11, berapakah hasil dari 30 x 1?', '31', '13', '4', '30', 'd', 10, 1, '2022-06-15 14:15:47', '2022-06-15 14:15:47'),
(10, 1, 'Berapa hasil dari 9 + 3?', '11', '12', '13', '14', 'b', 10, 1, '2022-06-15 14:15:50', '2022-06-15 14:15:50'),
(11, 1, 'Berapakah hasil dari 6 % 4?', '2', '3', '1', '0', 'a', 10, 4, '2022-11-23 17:04:05', '2022-11-23 17:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `no_hp` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'admin@gmail.com', 'ini password', '08171122233333', '2022-06-15 13:02:09', '2022-06-15 13:02:09'),
(2, 'ahsan', 'ahsan@mail.com', '$2a$10$mM7/GAbcxBE1.Z2ALg83puE3Vcqn75UlAEexxa/xbIaQCmjb8PKoa', '', '2022-06-15 23:45:44', '2022-06-15 23:45:44'),
(3, 'ahsan', 'ahsan2@mail.com', '$2a$10$UOJAFVPbm4QtObtejd0fy.RduB5brNCqGx4Kv10XpAVxmYIhOT9Vi', '', '2022-06-16 19:21:49', '2022-06-16 19:21:49'),
(4, 'Sigit', 'AYU', '$2a$10$U45xg5m.E8eMGJ6t.iI7b.sAHzTFATWMb5evS9IF1FHLZkilBH3pW', '', '2022-11-23 08:25:58', '2022-11-23 08:25:58'),
(6, 'sigit-ih', 'sasyua23@gmail.com', '$2a$10$s.84.10lbL6dHvWTfydn6eNUVrmIVp/DSa7waGDwoLkx3S7kUlAki', '088009900110', '2022-11-26 11:19:14', '2022-11-26 11:19:14'),
(7, 'sasyua26', 'sasyua26@gmail.com', '$2a$10$fjfkpB3tpxmAUV/AYvo/vuAz9MViL1QO2SNgYxKkGpYaDy/R3kFBa', '088888888888', '2022-11-26 11:24:57', '2022-11-26 11:24:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `answers_user_id_IDX` (`user_id`,`question_id`) USING BTREE,
  ADD KEY `answers_FK` (`exercise_id`),
  ADD KEY `answers_FK_1` (`question_id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_FK` (`exercise_id`),
  ADD KEY `questions_FK_1` (`creator_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_FK` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`),
  ADD CONSTRAINT `answers_FK_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_FK_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_FK` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`),
  ADD CONSTRAINT `questions_FK_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
