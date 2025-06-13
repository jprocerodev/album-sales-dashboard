-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 13, 2025 at 09:05 AM
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
-- Database: `rocerosdsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `sales` int(11) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `date_released` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `name`, `year`, `sales`, `cover_image`, `date_released`, `last_update`, `created_at`, `updated_at`) VALUES
(1, 1, 'Complete with You: Special Album', '2022', 43058, 'https://via.placeholder.com/300x300.png/00bb11?text=album+ullam', '2022-01-17', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(2, 2, 'Savage', '2021', 19629, 'https://via.placeholder.com/300x300.png/001188?text=album+omnis', '2021-10-05', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(3, 3, 'Horn', '2022', 58641, 'https://via.placeholder.com/300x300.png/0000ee?text=album+corporis', '2022-02-14', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(4, 4, 'Zero: Fever Epilogue', '2021', 3578, 'https://via.placeholder.com/300x300.png/0044ee?text=album+mollitia', '2021-12-10', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(5, 5, 'Intersection: Blaze', '2022', 16801, 'https://via.placeholder.com/300x300.png/006644?text=album+ratione', '2022-03-30', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(6, 6, 'B', '2022', 87540, 'https://via.placeholder.com/300x300.png/00ee77?text=album+velit', '2022-01-18', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(7, 7, '2', '2022', 6933, 'https://via.placeholder.com/300x300.png/00ff66?text=album+quos', '2022-03-02', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(8, 8, 'The Collective Soul and Unconscious: Chapter One', '2022', 66885, 'https://via.placeholder.com/300x300.png/007744?text=album+aliquid', '2022-02-23', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(9, 9, 'Bobbin', '2022', 17719, 'https://via.placeholder.com/300x300.png/001144?text=album+quam', '2022-01-03', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(10, 10, 'Seoul', '2022', 2596, 'https://via.placeholder.com/300x300.png/0022aa?text=album+et', '2022-04-20', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(11, 11, 'Thank You', '2022', 33605, 'https://via.placeholder.com/300x300.png/00bb11?text=album+provident', '2022-03-15', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(12, 12, 'Be Together', '2022', 121528, 'https://via.placeholder.com/300x300.png/0000ee?text=album+voluptatem', '2022-02-21', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(13, 13, 'Smiley', '2022', 84346, 'https://via.placeholder.com/300x300.png/006666?text=album+neque', '2022-01-17', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(14, 14, 'Liberty: In Our Cosmos Part.2', '2022', 123922, 'https://via.placeholder.com/300x300.png/00ddcc?text=album+numquam', '2022-03-22', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(15, 15, 'Cherry Wish', '2022', 20250, 'https://via.placeholder.com/300x300.png/00ccee?text=album+voluptates', '2022-03-02', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(16, 16, 'Love', '2022', 41148, 'https://via.placeholder.com/300x300.png/00ddff?text=album+sapiente', '2022-01-26', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(17, 17, 'Chase, Ep.2-Maum', '2022', 118583, 'https://via.placeholder.com/300x300.png/00cc33?text=album+nisi', '2022-04-12', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(18, 18, 'Apocalypse: Save Us', '2022', 94706, 'https://via.placeholder.com/300x300.png/0088aa?text=album+reprehenderit', '2022-04-12', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(19, 19, 'Villian', '2022', 37535, 'https://via.placeholder.com/300x300.png/007788?text=album+consequuntur', '2022-01-17', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(20, 20, 'Roar', '2022', 48695, 'https://via.placeholder.com/300x300.png/00dd44?text=album+ex', '2022-04-27', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(21, 21, 'Dimension: Dilemma', '2021', 27591, 'https://via.placeholder.com/300x300.png/00aa88?text=album+sint', '2021-10-12', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(22, 21, 'Dimension: Answer', '2022', 621425, 'https://via.placeholder.com/300x300.png/008877?text=album+cum', '2022-01-10', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(23, 22, 'Book of Anxiety Chapter1. 21st Century Boys', '2022', 71584, 'https://via.placeholder.com/300x300.png/005588?text=album+tempore', '2022-04-11', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(24, 23, 'Epik High is Here', '2022', 5382, 'https://via.placeholder.com/300x300.png/00cccc?text=album+quae', '2022-02-14', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(25, 24, 'There and Back Again', '2022', 2183, 'https://via.placeholder.com/300x300.png/006644?text=album+asperiores', '2022-01-07', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(26, 25, 'Return of the Girl', '2021', 2450, 'https://via.placeholder.com/300x300.png/0099cc?text=album+doloribus', '2021-12-01', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(27, 26, 'Midnight Guest', '2022', 120245, 'https://via.placeholder.com/300x300.png/0000ee?text=album+enim', '2022-01-17', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(28, 27, 'I Never Die', '2022', 198589, 'https://via.placeholder.com/300x300.png/0088ff?text=album+est', '2022-03-14', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(29, 28, 'Arcade: V', '2022', 9311, 'https://via.placeholder.com/300x300.png/000066?text=album+quo', '2022-04-07', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(30, 29, 'You', '2022', 18717, 'https://via.placeholder.com/300x300.png/0066aa?text=album+enim', '2022-02-09', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(31, 30, 'Daydream', '2022', 86293, 'https://via.placeholder.com/300x300.png/0077dd?text=album+sit', '2022-03-21', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(32, 31, 'Love in Bloom', '2022', 3181, 'https://via.placeholder.com/300x300.png/00aacc?text=album+corrupti', '2022-04-04', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(33, 32, 'Eleven', '2021', 37284, 'https://via.placeholder.com/300x300.png/003388?text=album+atque', '2021-12-01', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(34, 32, 'Love Dive', '2022', 440067, 'https://via.placeholder.com/300x300.png/001111?text=album+assumenda', '2022-04-05', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(35, 33, 'Restore', '2022', 57401, 'https://via.placeholder.com/300x300.png/00cc11?text=album+soluta', '2022-01-17', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(36, 34, 'Just Begun', '2022', 51504, 'https://via.placeholder.com/300x300.png/0055ff?text=album+porro', '2022-04-14', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(37, 35, 'Peaches', '2021', 5373, 'https://via.placeholder.com/300x300.png/008855?text=album+ut', '2021-11-30', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(38, 36, 'Winter Special Album: W', '2022', 18305, 'https://via.placeholder.com/300x300.png/0000aa?text=album+sit', '2022-01-04', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(39, 37, 'First Impact', '2022', 271048, 'https://via.placeholder.com/300x300.png/000000?text=album+iste', '2022-01-03', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(40, 38, 'Voyager', '2022', 141407, 'https://via.placeholder.com/300x300.png/008800?text=album+voluptatem', '2022-03-15', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(41, 39, 'The Letter', '2021', 9639, 'https://via.placeholder.com/300x300.png/00aa00?text=album+quibusdam', '2021-12-28', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(42, 40, 'Dimension', '2022', 55470, 'https://via.placeholder.com/300x300.png/008833?text=album+id', '2022-03-17', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(43, 41, 'Savior', '2022', 28082, 'https://via.placeholder.com/300x300.png/001144?text=album+ipsam', '2022-04-22', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(44, 42, 'Reve: 3rd Desire', '2022', 67957, 'https://via.placeholder.com/300x300.png/00ff66?text=album+placeat', '2022-03-07', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(45, 43, 'Illusoin', '2022', 51754, 'https://via.placeholder.com/300x300.png/0099bb?text=album+voluptates', '2022-01-10', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(46, 44, 'History of Kingdom: Pt. 4: Dann', '2022', 19450, 'https://via.placeholder.com/300x300.png/003399?text=album+qui', '2022-03-31', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(47, 45, 'Color', '2022', 55923, 'https://via.placeholder.com/300x300.png/00ee11?text=album+eveniet', '2022-04-04', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(48, 46, 'Love Story (4 Season Project 季)', '2022', 37215, 'https://via.placeholder.com/300x300.png/00cc00?text=album+quia', '2022-01-25', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(49, 47, 'Same Spot', '2022', 7673, 'https://via.placeholder.com/300x300.png/00ffff?text=album+non', '2022-03-24', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(50, 48, 'Even if it becomes ruins', '2021', 7640, 'https://via.placeholder.com/300x300.png/0099cc?text=album+ut', '2021-11-24', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(51, 49, 'Lalisa', '2021', 73336, 'https://via.placeholder.com/300x300.png/00aa55?text=album+assumenda', '2021-09-10', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(52, 50, 'Moonlight', '2022', 3705, 'https://via.placeholder.com/300x300.png/001100?text=album+est', '2022-01-17', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(53, 51, 'Devil', '2022', 21831, 'https://via.placeholder.com/300x300.png/00cc99?text=album+minus', '2022-01-13', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(54, 52, 'Marvelous', '2022', 48067, 'https://via.placeholder.com/300x300.png/0011ee?text=album+at', '2022-01-12', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(55, 53, 'My', '2022', 90064, 'https://via.placeholder.com/300x300.png/004411?text=album+fugiat', '2022-04-27', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(56, 54, 'No Limit', '2021', 23015, 'https://via.placeholder.com/300x300.png/00dd55?text=album+nihil', '2021-11-19', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(57, 54, 'Shape of Love', '2022', 284668, 'https://via.placeholder.com/300x300.png/00dd66?text=album+nam', '2022-04-26', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(58, 55, 'Refuge', '2022', 144205, 'https://via.placeholder.com/300x300.png/0066cc?text=album+consequatur', '2022-03-15', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(59, 56, '6equence', '2022', 78120, 'https://via.placeholder.com/300x300.png/0033cc?text=album+est', '2022-01-19', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(60, 56, 'CITT: Cheese in the Trap', '2022', 86508, 'https://via.placeholder.com/300x300.png/00ee77?text=album+non', '2022-04-28', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(61, 57, 'Sticker', '2021', 31194, 'https://via.placeholder.com/300x300.png/003377?text=album+ipsa', '2021-09-17', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(62, 57, 'Favorite', '2021', 30331, 'https://via.placeholder.com/300x300.png/008833?text=album+sit', '2021-10-25', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(63, 58, 'Universe', '2021', 118633, 'https://via.placeholder.com/300x300.png/002233?text=album+nihil', '2021-12-14', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(64, 59, 'Glitch Mode', '2022', 1649993, 'https://via.placeholder.com/300x300.png/0011aa?text=album+et', '2022-03-28', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(65, 60, 'New World', '2022', 3618, 'https://via.placeholder.com/300x300.png/00dd55?text=album+perferendis', '2022-03-30', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(66, 61, 'Ad Mare', '2022', 406936, 'https://via.placeholder.com/300x300.png/007711?text=album+molestias', '2022-02-22', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(67, 62, 'Need & Bubble: Nu\'est the Best Album', '2022', 63446, 'https://via.placeholder.com/300x300.png/005555?text=album+aperiam', '2022-03-15', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(68, 63, 'Real Love', '2022', 66912, 'https://via.placeholder.com/300x300.png/0022bb?text=album+at', '2022-03-28', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(69, 64, 'Love Me Like', '2022', 86941, 'https://via.placeholder.com/300x300.png/00ccff?text=album+ut', '2022-01-05', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(70, 65, 'Dice', '2022', 119006, 'https://via.placeholder.com/300x300.png/00ee22?text=album+rerum', '2022-04-11', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(71, 66, 'Planet Nine: Voyager', '2022', 18075, 'https://via.placeholder.com/300x300.png/009944?text=album+voluptatem', '2022-01-04', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(72, 67, 'Goosebumps', '2021', 4396, 'https://via.placeholder.com/300x300.png/0033cc?text=album+totam', '2021-12-03', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(73, 68, 'Instint, Pt.2', '2022', 49362, 'https://via.placeholder.com/300x300.png/004466?text=album+et', '2022-01-14', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(74, 69, 'Disharmony: Find Out', '2022', 91969, 'https://via.placeholder.com/300x300.png/0066dd?text=album+ea', '2022-01-03', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(75, 70, 'In:Vite U', '2022', 90114, 'https://via.placeholder.com/300x300.png/006688?text=album+fugiat', '2022-01-24', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(76, 71, 'Memem', '2022', 32266, 'https://via.placeholder.com/300x300.png/0088cc?text=album+esse', '2022-03-29', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(77, 72, 'Love & Fight', '2022', 10359, 'https://via.placeholder.com/300x300.png/00cc00?text=album+ipsam', '2022-02-08', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(78, 73, 'The Reve Festival 2022: Feel My Rhythm', '2022', 560838, 'https://via.placeholder.com/300x300.png/00ff66?text=album+fugiat', '2022-03-21', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(79, 74, 'Yellow Punch', '2022', 20055, 'https://via.placeholder.com/300x300.png/00ffbb?text=album+porro', '2022-02-28', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(80, 75, 'Attacca', '2021', 30049, 'https://via.placeholder.com/300x300.png/005511?text=album+deleniti', '2021-10-22', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(81, 76, 'Face', '2022', 43599, 'https://via.placeholder.com/300x300.png/006688?text=album+quas', '2022-03-16', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(82, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 56940, 'https://via.placeholder.com/300x300.png/00aa66?text=album+soluta', '2021-12-27', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(83, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 12971, 'https://via.placeholder.com/300x300.png/000066?text=album+facere', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(84, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 5974, 'https://via.placeholder.com/300x300.png/003311?text=album+consequatur', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(85, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 74162, 'https://via.placeholder.com/300x300.png/00cc44?text=album+rerum', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(86, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 74087, 'https://via.placeholder.com/300x300.png/00cc22?text=album+vel', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(87, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 41833, 'https://via.placeholder.com/300x300.png/00dddd?text=album+saepe', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(88, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 5265, 'https://via.placeholder.com/300x300.png/0033ee?text=album+inventore', '2021-12-27', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(89, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 62545, 'https://via.placeholder.com/300x300.png/00dd00?text=album+excepturi', '2021-12-27', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(90, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 14336, 'https://via.placeholder.com/300x300.png/004422?text=album+itaque', '2021-12-27', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(91, 77, '2021 Winter SMTOWN: SMCU Express', '2021', 2218, 'https://via.placeholder.com/300x300.png/0044ff?text=album+et', '2021-12-27', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(92, 78, 'Gray Suit', '2022', 186465, 'https://via.placeholder.com/300x300.png/00dd11?text=album+nobis', '2022-04-04', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(93, 79, 'Young-Luv.com', '2022', 182131, 'https://via.placeholder.com/300x300.png/003388?text=album+cumque', '2022-02-21', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(94, 80, 'Christmas EveL', '2021', 14418, 'https://via.placeholder.com/300x300.png/002233?text=album+quas', '2021-11-29', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(95, 80, 'Oddinary', '2022', 1000088, 'https://via.placeholder.com/300x300.png/00ff22?text=album+maiores', '2022-03-18', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(96, 81, 'The Road: Winter for Spring', '2022', 142663, 'https://via.placeholder.com/300x300.png/0022bb?text=album+quas', '2022-02-28', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(97, 82, 'Countdown Zero (Epilogue)', '2021', 8458, 'https://via.placeholder.com/300x300.png/00cc88?text=album+voluptas', '2021-12-09', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(98, 83, 'INVU', '2022', 179611, 'https://via.placeholder.com/300x300.png/001155?text=album+quas', '2022-02-14', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(99, 84, 'It\'s Me, It\'s We', '2022', 82307, 'https://via.placeholder.com/300x300.png/00bb22?text=album+cum', '2022-03-02', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(100, 85, 'Limited Edition \'1TAN\'', '2022', 8870, 'https://via.placeholder.com/300x300.png/00bb44?text=album+officiis', '2022-03-10', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(101, 86, 'Maverick', '2021', 5566, 'https://via.placeholder.com/300x300.png/00aa33?text=album+natus', '2021-11-01', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(102, 86, 'Webtoon Level Up Alone (OST)', '2022', 10573, 'https://via.placeholder.com/300x300.png/008899?text=album+accusamus', '2022-03-18', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(103, 87, 'The Second Step: Chapter One', '2022', 668539, 'https://via.placeholder.com/300x300.png/0055cc?text=album+dolores', '2022-02-15', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(104, 88, 'Blue Set Chapter 1. Tracks', '2022', 6170, 'https://via.placeholder.com/300x300.png/0055dd?text=album+saepe', '2022-01-05', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(105, 89, 'Formula of Love: OT=<3', '2021', 8293, 'https://via.placeholder.com/300x300.png/00dd33?text=album+repellat', '2021-12-17', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(106, 90, 'Novella', '2022', 31415, 'https://via.placeholder.com/300x300.png/0066aa?text=album+mollitia', '2022-01-03', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(107, 91, 'Serioues O-Round 3: Whole', '2022', 97187, 'https://via.placeholder.com/300x300.png/00ff33?text=album+id', '2022-04-25', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(108, 92, 'Chronograph', '2022', 60959, 'https://via.placeholder.com/300x300.png/00ee44?text=album+laborum', '2022-01-18', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(109, 93, 'Beam of Prism', '2022', 43638, 'https://via.placeholder.com/300x300.png/0044bb?text=album+cumque', '2022-02-10', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(110, 94, 'Play Game: Awake', '2022', 81537, 'https://via.placeholder.com/300x300.png/0099dd?text=album+beatae', '2022-03-07', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(111, 95, 'Love Pt. 1: First Love', '2022', 119853, 'https://via.placeholder.com/300x300.png/000022?text=album+et', '2022-03-16', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(112, 96, 'Whee', '2022', 69470, 'https://via.placeholder.com/300x300.png/00aa88?text=album+tenetur', '2022-01-17', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(113, 97, 'Obsession', '2022', 56627, 'https://via.placeholder.com/300x300.png/00aa77?text=album+consequatur', '2022-02-16', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(114, 98, 'Pilmography', '2022', 33668, 'https://via.placeholder.com/300x300.png/003399?text=album+qui', '2022-02-10', '2022-02-28', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(115, 99, 'Super Yuppers!', '2022', 15135, 'https://via.placeholder.com/300x300.png/004455?text=album+iure', '2022-01-05', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(116, 100, 'End Theory Final Ed.', '2022', 7001, 'https://via.placeholder.com/300x300.png/00ff00?text=album+officiis', '2022-03-30', '2022-03-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(117, 101, 'Miro', '2022', 6595, 'https://via.placeholder.com/300x300.png/009977?text=album+ut', '2022-04-27', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(118, 102, 'Youni-Birth', '2022', 21927, 'https://via.placeholder.com/300x300.png/0077ff?text=album+voluptatem', '2022-04-22', '2022-04-30', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(119, 103, 'Rec.', '2022', 22970, 'https://via.placeholder.com/300x300.png/00aa55?text=album+adipisci', '2022-01-21', '2022-01-31', '2025-06-13 18:01:52', '2025-06-13 18:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ART2696', 'AB6IX', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(2, 'ART7852', 'aespa', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(3, 'ART7185', 'Apink', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(4, 'ART1187', 'ATEEZ', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(5, 'ART9637', 'BAE173', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(6, 'ART5504', 'BamBam', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(7, 'ART3264', 'Bang Yongguk', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(8, 'ART0161', 'Billlie', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(9, 'ART1783', 'Blitzers', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(10, 'ART0449', 'Bolbbalgan4', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(11, 'ART4573', 'Brave Girls', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(12, 'ART9745', 'BTOB', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(13, 'ART1376', 'Choi Yena', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(14, 'ART2787', 'Cravity', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(15, 'ART2786', 'Cherry Bullet', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(16, 'ART3058', 'Def.', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(17, 'ART5922', 'DKZ', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(18, 'ART0028', 'Dreamcatcher', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(19, 'ART7204', 'Drippin', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(20, 'ART0002', 'E\'LAST', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(21, 'ART4760', 'Enhypen', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(22, 'ART3163', 'Epex', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(23, 'ART8432', 'Epik High', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(24, 'ART9444', 'Eric Nam', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(25, 'ART2903', 'Everglow', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(26, 'ART8792', 'fromis_9', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(27, 'ART7812', '(G)I-dle', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(28, 'ART3618', 'Ghost9', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(29, 'ART1497', 'Ha Sungwoon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(30, 'ART5619', 'Highlight', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(31, 'ART4017', 'ILY:1', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(32, 'ART8204', 'IVE', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(33, 'ART8097', 'Jinjin & Rocky', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(34, 'ART5670', 'Just B', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(35, 'ART6417', 'Kai', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(36, 'ART6668', 'Kang Hyewon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(37, 'ART1460', 'Kep1er', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(38, 'ART0292', 'Kihyun', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(39, 'ART7980', 'Kim Jaehwan', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(40, 'ART8921', 'Kim Junsu', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(41, 'ART5526', 'Kim Sungkyu', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(42, 'ART2218', 'Kim Wooseok', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(43, 'ART7938', 'Kim Yohan', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(44, 'ART8073', 'Kingdom', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(45, 'ART7101', 'Kwon Eunbi', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(46, 'ART7783', 'Kyuhyun', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(47, 'ART7884', 'Lee Seokhoon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(48, 'ART1234', 'Lee Seungyoon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(49, 'ART2216', 'Lisa', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(50, 'ART5047', 'LUNA', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(51, 'ART0588', 'Max Changmin', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(52, 'ART1523', 'Mirae', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(53, 'ART4965', 'Miyeon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(54, 'ART9878', 'Monsta X', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(55, 'ART6512', 'Moonbin & Sanha', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(56, 'ART9235', 'Moonbyul', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(57, 'ART6225', 'NCT 127', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(58, 'ART4754', 'NCT 2021', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(59, 'ART0687', 'NCT Dream', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(60, 'ART0422', 'NINE.i', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(61, 'ART9831', 'NMIXX', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(62, 'ART3703', 'NU\'EST', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(63, 'ART7743', 'Oh My Girl', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(64, 'ART5494', 'Omega X', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(65, 'ART0632', 'Onew', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(66, 'ART5716', 'ONEWE', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(67, 'ART3265', 'ONF', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(68, 'ART1843', 'OnlyOneOf', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(69, 'ART4538', 'P1Harmony', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(70, 'ART4437', 'Pentagon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(71, 'ART1290', 'Purple Kiss', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(72, 'ART5421', 'Ravi', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(73, 'ART9115', 'Red Velvet', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(74, 'ART2261', 'Rocket Punch', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(75, 'ART0954', 'Seventeen', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(76, 'ART2277', 'Solar', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(77, 'ART0014', 'SMTOWN', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(78, 'ART3166', 'Suho', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(79, 'ART7463', 'StayC', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(80, 'ART7036', 'Stray Kids', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(81, 'ART7791', 'Super Junior', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(82, 'ART8617', 'Super Junior - D&E', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(83, 'ART2453', 'Taeyeon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(84, 'ART0400', 'Tempest', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(85, 'ART3765', 'Tan', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(86, 'ART2954', 'The Boyz', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(87, 'ART7609', 'Treasure', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(88, 'ART8068', 'Trendz', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(89, 'ART0709', 'Twice', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(90, 'ART8155', 'UP10TION', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(91, 'ART3425', 'Verivery', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(92, 'ART3567', 'Victon', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(93, 'ART2009', 'Viviz', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(94, 'ART1466', 'Weeekly', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(95, 'ART0971', 'WEi', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(96, 'ART0710', 'Wheein', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(97, 'ART0473', 'Wonho', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(98, 'ART4006', 'Wonpil', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(99, 'ART7657', 'WJSN Chocome', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(100, 'ART1514', 'Younha', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(101, 'ART0448', 'Yoon Jisung', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(102, 'ART3808', 'Younite', '2025-06-13 18:01:52', '2025-06-13 18:01:52'),
(103, 'ART1342', 'Yuju', '2025-06-13 18:01:52', '2025-06-13 18:01:52');

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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_13_044856_create_personal_access_tokens_table', 1),
(5, '2025_06_13_044943_modify_users_table_add_username', 1),
(6, '2025_06_13_050413_create_artists_table', 1),
(7, '2025_06_13_050452_create_albums_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_artist_id_foreign` (`artist_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artists_code_unique` (`code`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
